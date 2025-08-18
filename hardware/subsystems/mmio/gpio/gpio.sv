// gpio.sv
// `include "../../const.sv"
`timescale 1ns / 1ps

//------------------------------------------------------------
// Module: gpio
// Description:
//     General Purpose Input-Output Interface for bottons, switches, and LEDs.
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
//     in_ports     - NUM_INPUT-bit input ports to the input elements such as LEDs on the chip
//     out_ports    - NUM_OUTPUT-bit output ports to the output elements such as switches/buttons on the chip
//
// Author: Mongolian
// Date: 07/04/2025
//------------------------------------------------------------
module gpio
    #(parameter NUM_INPUT = 8,
    parameter NUM_OUTPUT = 8)
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
    output logic slave_error, decode_error,
    // external interface: with buttons, switches, and LEDs
    input logic [8:0] in_ports,
    output logic [3:0] out_ports,
    // debug
    output logic [1:0] debug_gpio_r_state, debug_gpio_w_next_state
    );

    // signal declaration
    logic w_en_rd, w_en;
    logic w_wr_done, w_rd_done;
    logic w_slave_error, w_decode_error;
    logic [31:0] w_rd_data;
    logic [8:0] r_input_data, r_input_data_sync;
    logic [3:0] w_led_data;

    enum logic [1:0] {
        IDLE   = 2'b00, 
        ACTIVE = 2'b01,
        DONE   = 2'b10
    } r_state, w_next_state;

    assign debug_gpio_r_state = r_state;
    assign debug_gpio_w_next_state = w_next_state;

    // enabling signals
    assign w_en = chip_select && (read || write);

    // FSM for interface
    always_comb begin
        w_wr_done = 1'b0;
        w_rd_done = 1'b0;
        w_rd_data = 32'd0;
        w_slave_error = 1'b0;
        w_decode_error = 1'b0;
        w_led_data = out_ports;

        case (r_state)
            IDLE: begin
                w_next_state = (w_en) ? ACTIVE : IDLE;
            end
            ACTIVE: begin
                w_next_state = DONE;
                if (write) begin
                    case (addr)
                        8'h00: begin
                            w_wr_done = 1'b1;
                            w_led_data[0] = wr_data[0];
                        end
                        8'h04: begin
                            w_wr_done = 1'b1;
                            w_led_data[1] = wr_data[0];
                        end
                        8'h08: begin
                            w_wr_done = 1'b1;
                            w_led_data[2] = wr_data[0];
                        end
                        8'h0c: begin
                            w_wr_done = 1'b1;
                            w_led_data[3] = wr_data[0];
                        end
                        default: begin
                            w_decode_error = 1'b1;
                        end
                    endcase
                end else if (read) begin
                    case (addr)
                        8'h10: begin
                            w_rd_done = 1'b1;
                            w_rd_data = r_input_data[0];
                        end
                        8'h14: begin
                            w_rd_done = 1'b1;
                            w_rd_data = r_input_data[0];
                        end
                        8'h18: begin
                            w_rd_done = 1'b1;
                            w_rd_data = r_input_data[0];
                        end
                        8'h1c: begin
                            w_rd_done = 1'b1;
                            w_rd_data = r_input_data[0];
                        end
                        8'h20: begin
                            w_rd_done = 1'b1;
                            w_rd_data = r_input_data[0];
                        end
                        8'h24: begin
                            w_rd_done = 1'b1;
                            w_rd_data = r_input_data[0];
                        end
                        8'h28: begin
                            w_rd_done = 1'b1;
                            w_rd_data = r_input_data[0];
                        end
                        8'h2c: begin
                            w_rd_done = 1'b1;
                            w_rd_data = r_input_data[0];
                        end
                        8'h30: begin
                            w_rd_done = 1'b1;
                            w_rd_data = r_input_data[0];
                        end
                        default: begin
                            w_decode_error = 1'b1;
                        end
                    endcase
                end
            end
            DONE: begin
                w_slave_error = slave_error;
                w_decode_error = decode_error;
                w_next_state = (transaction_completed) ? IDLE : DONE;
            end
        endcase
    end

    // write
    always_ff @(posedge clk, negedge arst_n) begin
        if (!arst_n) begin
            out_ports <= 0;
        end
        else
            out_ports <= w_led_data;
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
            slave_error <= 1'b0;
            decode_error <= 1'b0;
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

    // swicth register
    always_ff @(posedge clk, negedge arst_n) begin
        if (!arst_n) begin
            r_input_data_sync <= 0;
            r_input_data <= 0;
        end else begin
            r_input_data_sync <= in_ports;
            r_input_data <= r_input_data_sync;
        end
    end

    // fsm
    always_ff @(posedge clk, negedge arst_n) begin
        if (!arst_n) begin
            r_state <= IDLE;
        end else
            r_state <= w_next_state;
    end

endmodule : gpio
