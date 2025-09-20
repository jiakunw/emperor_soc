// fifo.sv
// `include "../../const.sv"
`timescale 1ns / 1ps
`default_nettype none

//------------------------------------------------------------
// Module: fifo_controller
// Description:
//     Control circular fifo's enque and deque signals to a register file. 
//     If current write pointer is the same as next read pointer, then
//     our fifo is empty.
//     If current read pointer is the same as the next write pointer, then
//     our fifo is full.
//     Every read/write operation will increment it's corrosponding next pointer.
//     Read and Write can be done at the same time.
//
// Ports:
//     clk          - System clock input.
//     arst_n       - Asynchronous active-low reset signal.
//
//     rd           - read signal
//     wr           - write signal
//     empty        - fifo is empty
//     full         - fifo is full
//     w_addr       - write address (to the register file)
//     r_addr       - read address (to the register file)
//
// Author: Mongolian
// Date: 07/04/2025
//------------------------------------------------------------
module fifo_controller
    #(parameter LENGTH = 8,
                ADDR_WIDTH = $clog2(LENGTH))
    (
    input logic clk, arst_n,
    input logic rd, wr, clear,
    output logic empty, full, valid_rd,
    output logic [ADDR_WIDTH-1:0] w_addr,
    output logic [ADDR_WIDTH-1:0] r_addr,
    output logic [ADDR_WIDTH:0] num_elements
    );

    // signal declaration
    logic [ADDR_WIDTH-1:0] r_wr_logic, w_wr_next, w_wr_ptr_succ;
    logic [ADDR_WIDTH-1:0] r_rd_logic, w_rd_next, w_rd_ptr_succ;
    logic w_empty_next, w_full_next;
    logic [ADDR_WIDTH:0] w_next_num_elements;

    assign w_addr = r_wr_logic;
    assign r_addr = r_rd_logic;

    // FF for read and write ptrs
    always_ff @(posedge clk, negedge arst_n) begin
        if (!arst_n) begin
            full <= 1'b0;
            empty <= 1'b1;
            r_wr_logic <= 'd0;
            r_rd_logic <= 'd0;
            num_elements <= 'd0;
        end else if (clear) begin
            full <= 1'b0;
            empty <= 1'b1;
            r_wr_logic <= 'd0;
            r_rd_logic <= 'd0;
            num_elements <= 'd0;
        end else begin
            r_wr_logic <= w_wr_next;
            r_rd_logic <= w_rd_next;
            empty <= w_empty_next;
            full <= w_full_next;
            num_elements <= w_next_num_elements;
        end
    end

    // next state logic
    always_comb begin
        // next read/write pointers
        w_wr_ptr_succ = r_wr_logic + 1;
        w_rd_ptr_succ = r_rd_logic + 1;
        // default for old values
        w_wr_next = r_wr_logic;
        w_rd_next = r_rd_logic;
        w_empty_next = empty;
        w_full_next = full;
        valid_rd = 1'b0;
        w_next_num_elements = num_elements;

        unique case ({wr, rd})
            2'b01: begin  // read
                if (!empty) begin
                    valid_rd = 1'b1;
                    w_full_next = 1'b0;
                    w_rd_next = w_rd_ptr_succ;
                    w_next_num_elements = num_elements - 1;
                    if (r_wr_logic == w_rd_ptr_succ)
                        w_empty_next = 1'b1;
                    else 
                        w_empty_next = 1'b0;
                end
            end
            2'b10: begin  // write
                if (!full) begin
                    w_empty_next = 1'b0;
                    w_wr_next = w_wr_ptr_succ;
                    w_next_num_elements = num_elements + 1;
                    if (w_wr_ptr_succ == r_rd_logic)
                        w_full_next = 1'b1;
                    else
                        w_full_next = 1'b0;
                end
            end
            2'b11: begin  // read+Write
                if (empty) begin
                    w_empty_next = 1'b0;
                    w_wr_next = w_wr_ptr_succ;
                    w_next_num_elements = num_elements + 1;
                    if (w_wr_ptr_succ == r_rd_logic)
                        w_full_next = 1'b1;
                    else
                        w_full_next = 1'b0;
                end else begin
                    valid_rd = 1'b1;
                    w_wr_next = w_wr_ptr_succ;
                    w_rd_next = w_rd_ptr_succ;
                end
            end
            default: ; // doing nothing
        endcase
    end

endmodule : fifo_controller

//------------------------------------------------------------
// Module: register_file
// Description:
//     Stores an array of data.
//
// Parameters:
//     LENGTH       - length of the register file
//     DATA_WIDTH   - width of the data in register file
//     ADDR_WIDTH   - address width
//
// Ports:
//     clk          - System clock input.
//     arst_n       - Asynchronous active-low reset signal.
//
//     read         - read signal
//     write        - write signal
//     clear        - cpear the register file
//     w_addr       - write address 
//     r_addr       - read address 
//     w_data       - data to write to register file
//     r_data       - data read from register file
//
// Author: Mongolian
// Date: 07/04/2025
//------------------------------------------------------------
module register_file
    #(parameter LENGTH = 8,
                DATA_WIDTH = 32,
                ADDR_WIDTH = $clog2(LENGTH)
    )
    (
    input logic clk, arst_n,
    input logic write, read, clear,
    input logic [ADDR_WIDTH-1:0] w_addr, r_addr,
    input logic [DATA_WIDTH-1:0] w_data,
    output logic [DATA_WIDTH-1:0] r_data
    );

    // signal declaration
    logic [DATA_WIDTH-1:0] r_reg_array [LENGTH-1:0];

    assign r_data = (read) ? r_reg_array[r_addr] : 0;

    always_ff @(posedge clk, negedge arst_n) begin
        if (!arst_n) begin
            for (int i = 0; i < LENGTH; i++) begin
                r_reg_array[i] <= 0;
            end
        end
        else if (clear) begin
            for (int i = 0; i < LENGTH; i++) begin
                r_reg_array[i] <= 0;
            end
        end
        else if (write)
            r_reg_array[w_addr] <= w_data;
    end

endmodule : register_file

//------------------------------------------------------------
// Module: fifo
// Description:
//     A circular FIFO realized by register file and FIFO controller above.
//
// Parameters:
//     LENGTH       - length of the register file
//     DATA_WIDTH   - width of the data in register file
//     ADDR_WIDTH   - address width
//
// Ports:
//     clk          - System clock input.
//     arst_n       - Asynchronous active-low reset signal.
//
//     read         - read signal
//     write        - write signal
//     clear        - clear the FIFO
//     empty        - fifo is empty
//     full         - fifo is full
//     w_data       - data to write to register file
//     r_data       - data read from register file
//
// Author: Mongolian
// Date: 07/04/2025
//------------------------------------------------------------
module fifo
    #(parameter LENGTH = 8,
                DATA_WIDTH = 32,
                ADDR_WIDTH = $clog2(LENGTH)
    )
    (
    input logic clk, arst_n,
    input logic read, write, clear,
    input logic [DATA_WIDTH-1:0] wr_data,
    output logic empty, full, valid_rd,
    output logic [DATA_WIDTH-1:0] rd_data,
    output logic [ADDR_WIDTH:0] num_elements
    );

    // signal declaration
    logic [ADDR_WIDTH-1:0] w_wr_addr, w_rd_addr;
    logic w_wr_en;

    fifo_controller #(.ADDR_WIDTH(ADDR_WIDTH)) control (
        .clk,
        .arst_n,
        .empty,
        .full,
        .clear,
        .rd(read), 
        .wr(write),
        .valid_rd,
        .num_elements,
        .w_addr(w_wr_addr),
        .r_addr(w_rd_addr)
    );

    register_file #(
        .LENGTH(LENGTH),
        .DATA_WIDTH(DATA_WIDTH),
        .ADDR_WIDTH(ADDR_WIDTH)
    ) rf (
        .clk,
        .arst_n,
        .read,
        .write,
        .clear,
        .w_addr(w_wr_addr),
        .r_addr(w_rd_addr),
        .w_data(wr_data),
        .r_data(rd_data)
    );

endmodule : fifo