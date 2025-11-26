// timer.sv
// `include "../../const.sv"
`timescale 1ns / 1ps
// `default_nettype none

//------------------------------------------------------------
// Module: timer
// Description:
//     A basic memory-mapped timer module interface for SoC or FPGA-based systems.
//     This module supports register-based read and write access via a standard
//     slot interface. 
//
// Ports:
//     clk          - System clock input.
//     arst_n       - Asynchronous active-low reset signal.
//
//     chip_select  - Active-high chip select signal; enables access to this timer.
//     read         - Active-high read enable signal.
//     write        - Active-high write enable signal.
//     addr         - 5-bit address input used to select internal registers.
//     wr_data      - 32-bit data bus for write operations.
//     rd_data      - 32-bit data bus for read operations (assumes combinational read).
//
//     slave_error  - 1-bit error indicating an ilegal operation to timer.
//                    The only ilegal operations are ilegal read/write to certain registers
//     decode_error - 1-bit error indicating an invalid address access:
//                    accessing an address not listed below.
//
// Register Mapping:
//     - 4'b0000: Counter Value, read only
//     - 4'b0001: Auto-Reload Register: determines max counter value by wr_data
//     - 4'b0010: Control Register: determined by wr_data[1:0]
//                 wr_data[0]: 1'b1 enables Counter, 1'b0 disables Counter
//                 wr_data[1]: 1'b1 counts down, 1'b0 counts up
//     - 4'b0011: Event Generation Register: determined by wr_data[0]:
//                 wr_data[0]: 1'b1 restarts when finish counting (reaches 0 or ARR)
//                 wr_data[0]: 1'b0 does not restarts when done
//     - 4'b0100: Status Register: status of Timer, 4 bits, read only
//                 0th bit: 1'b1 if enabled, 1'b0 otherwise
//                 1th bit: 1'b1 if finished counting, 1'b0 otherwise
//                 2th bit: error bit, 1'b1 if accessing read-only register, 1'b0 otherwise
//                 3th bit: error bit, 1'b1 if addr not one of the listed above, 1'b0 otherwise
//                 4th bit: idle bit
//                 
// Notes:
//     - This is a timer that keep counting to a certain value.
//     - User can have access to the states of the timer through reading a
//       writing to the registers listed above.
//
// Author: Mongolian
// Date: 06/22/2025
//------------------------------------------------------------
module timer
    (
    input logic clk, arst_n,
    // slot interface
    input logic chip_select,
    input logic read, write,
    input logic transaction_completed,
    input logic [7:0] addr,
    input logic [31:0] wr_data,
    output logic [31:0] rd_data,
    output logic wr_done, rd_done, idle,
    output logic slave_error, decode_error
    );

    logic [31:0] r_counter, r_auto_reload, w_auto_reload;
    logic [1:0] r_control, w_control;
    logic [4:0] r_status, w_status;
    logic r_eg, w_eg;
    logic w_en;
    logic finished, pre_finished;
    logic w_wr_done, w_rd_done;
    logic w_slave_error, w_decode_error;
    logic [31:0] w_rd_data;

    enum logic [1:0] {
        IDLE   = 2'b00, 
        ACTIVE = 2'b01,
        DONE   = 2'b10
    } r_state, w_next_state;

    assign w_en = chip_select && (read || write);
    assign finished = (r_control[1] ? (r_counter == 32'd0)
                      : (r_counter >= r_auto_reload));
    assign pre_finished = (r_control[1] ? (r_counter - 1 == 32'd0)
                      : (r_counter + 1 == r_auto_reload));
    assign idle = r_status[4];

    // decoding logic
    always_comb begin
        w_auto_reload = r_auto_reload;
        w_control = r_control;
        w_status = r_status;
        w_status[0] = r_control[0];
        w_status[1] = pre_finished;
        w_status[3:2] = 2'b0;
        w_status[4] = !w_en;
        w_wr_done = 1'b0;
        w_eg = r_eg;

        case (r_state)
            IDLE: begin
                w_next_state = (w_en) ? ACTIVE : IDLE;
            end
            ACTIVE: begin
                w_next_state = DONE;
                case (addr)
                8'h00: begin
                    if (write) begin
                        w_slave_error = 1'b1;
                        w_status[2] = 1'b1;
                        w_wr_done = 1'b1;
                    end
                    else if (read) begin
                        w_rd_data = r_counter;
                        w_rd_done = 1'b1;
                    end
                end
                8'h04: begin
                    if (write) begin
                        w_auto_reload = wr_data;
                        w_wr_done = 1'b1;
                    end
                    else if (read) begin
                        w_rd_data = r_auto_reload;
                        w_rd_done = 1'b1;
                    end
                end
                8'h08: begin
                    if (write) begin
                        w_control = wr_data[1:0];
                        w_wr_done = 1'b1;
                    end
                    else if (read) begin
                        w_rd_data = {30'b0, r_control};
                        w_rd_done = 1'b1;
                    end
                end
                4'h0c: begin
                    if (write) begin
                        w_eg = wr_data[0];
                        w_wr_done = 1'b1;
                    end
                    else if (read) begin
                        w_rd_data = {31'b0, r_eg};
                        w_rd_done = 1'b1;
                    end
                end
                4'h10: begin
                    if (write) begin
                        w_slave_error = 1'b1;
                        w_status[2] = 1'b1;
                        w_wr_done = 1'b1;
                    end
                    else if (read) begin
                        w_rd_data = {27'b0, r_status};
                        w_rd_done = 1'b1;
                    end
                end
                default: begin
                    w_decode_error = 1'b1;
                    w_status[3] = 1'b1;
                    if (write) begin
                        w_wr_done = 1'b1;
                    end
                    else begin
                        w_rd_done = 1'b1;
                    end
                end
                endcase
            end
            DONE: begin
                w_slave_error = slave_error;
                w_decode_error = decode_error;
                w_next_state = (transaction_completed) ? IDLE : DONE;
            end
        endcase
    end

    // next state register
    always_ff @(posedge clk, negedge arst_n) begin
        if (!arst_n)
            r_state <= IDLE;
        else 
            r_state <= w_next_state;
    end

    // counter register
    always_ff @(posedge clk, negedge arst_n) begin : counter_reg
        if (!arst_n)
            r_counter <= 32'b0;
        else if (!r_control[0])
            r_counter <= 32'b0;
        else if (r_control[0] && !r_control[1] && !finished)
            r_counter <= r_counter + 1;
        else if (r_control[0] && r_control[1] && !finished)
            r_counter <= r_counter - 1;
        else if (r_control[0] && finished && r_eg && !r_control[1])
            r_counter <= 0;
        else if (r_control[0] && finished && r_eg && r_control[1])
            r_counter <= r_auto_reload;
    end

    // auto-reload register
    always_ff @(posedge clk, negedge arst_n) begin
        if (!arst_n)
            r_auto_reload <= 'b0;
        else  
            r_auto_reload <= w_auto_reload;
    end

    // control register
    always_ff @(posedge clk, negedge arst_n) begin
        if (!arst_n)
            r_control <= 'b0;
        else 
            r_control <= w_control;
    end

    // status register
    always_ff @(posedge clk, negedge arst_n) begin
        if (!arst_n)
            r_status <= 'b0;
        else 
            r_status <= w_status;
    end

    // event generation register
    always_ff @(posedge clk, negedge arst_n) begin
        if (!arst_n)
            r_eg <= 'b0;
        else 
            r_eg <= w_eg;
    end

    // slot read/write done
    always_ff @(posedge clk, negedge arst_n) begin
        if (!arst_n) begin
            wr_done <= 1'b0;
            rd_done <= 1'b0;
        end
        else begin
            wr_done <= w_wr_done;
            rd_done <= w_rd_done;
        end
    end

    // error signal register
    always_ff @(posedge clk, negedge arst_n) begin
        if (!arst_n) begin
            slave_error <= 1'b1;
            decode_error <= 1'b1;
        end else begin
            slave_error <= w_slave_error;
            decode_error <= w_decode_error;
        end
    end

    // read data register
    always_ff @(posedge clk, negedge arst_n) begin
        if (!arst_n) begin
            rd_data <= 32'd0;
        end else begin
            rd_data <= w_rd_data;
        end
    end

endmodule: timer
