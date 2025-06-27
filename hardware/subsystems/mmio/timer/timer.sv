// timer.sv
`include "../../const.sv"
`timescale 1ns / 1ps

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
    input logic [3:0] addr,
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
    logic w_write_done;

    assign w_en = chip_select && (read || write);
    assign finished = (r_control[1] ? (r_counter == 32'd0)
                      : (r_counter >= r_auto_reload));
    assign pre_finished = (r_control[1] ? (r_counter - 1 == 32'd0)
                      : (r_counter + 1 == r_auto_reload));
    assign idle = r_status[4];

    // decoding logic
    always_comb begin
        rd_data = 32'b0;
        slave_error = 1'b0;
        decode_error = 1'b0;
        w_auto_reload = r_auto_reload;
        w_control = r_control;
        w_status = r_status;
        w_status[0] = r_control[0];
        w_status[1] = pre_finished;
        w_status[3:2] = 2'b0;
        w_status[4] = !w_en;
        rd_done = 1'b0;
        w_write_done = 1'b0;
        w_eg = r_eg;

        if (w_en) begin
            case (addr)
                4'd0: begin
                    if (write) begin
                        slave_error = 1'b1;
                        w_status[2] = 1'b1;
                        w_write_done = 1'b1;
                    end
                    else begin
                        rd_data = r_counter;
                        rd_done = 1'b1;
                    end
                end
                4'd1: begin
                    if (write) begin
                        w_auto_reload = wr_data;
                        w_write_done = 1'b1;
                    end
                    else begin
                        rd_data = r_auto_reload;
                        rd_done = 1'b1;
                    end
                end
                4'd2: begin
                    if (write) begin
                        w_control = wr_data[1:0];
                        w_write_done = 1'b1;
                    end
                    else begin
                        rd_data = {30'b0, r_control};
                        rd_done = 1'b1;
                    end
                end
                4'd3: begin
                    if (write) begin
                        w_eg = wr_data[0];
                        w_write_done = 1'b1;
                    end
                    else begin
                        rd_data = {31'b0, r_eg};
                        rd_done = 1'b1;
                    end
                end
                4'd4: begin
                    if (write) begin
                        slave_error = 1'b1;
                        w_status[2] = 1'b1;
                        w_write_done = 1'b1;
                    end
                    else begin
                        rd_data = {27'b0, r_status};
                        rd_done = 1'b1;
                    end
                end
                default: begin
                    decode_error = 1'b1;
                    w_status[3] = 1'b1;
                    if (write) begin
                        w_write_done = 1'b1;
                    end
                    else begin
                        rd_done = 1'b1;
                    end
                end
            endcase
        end
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

    always_ff @(posedge clk, negedge arst_n) begin
        if (!arst_n)
            wr_done <= 'b0;
        else 
            wr_done <= w_write_done;
    end

endmodule: timer