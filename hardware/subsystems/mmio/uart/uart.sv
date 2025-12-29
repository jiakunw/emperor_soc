// uart.sv
// `include "../../const.sv"
`timescale 1ns / 1ps
// `default_nettype none

//------------------------------------------------------------
// Module: buad_clock
// Description:
//     A buad rate clock generator. The most commonly used sampling rate is 16 times
//     the buad rate, which means each serial bit is sampled 16 times. That being said
//     we generate a tick every clock_freq/16*buad_rate.
//
// Parameters:
//     DVSR_WIDTH      - width of the divisor
//
// Ports:
//     clk          - System clock input.
//     arst_n       - Asynchronous active-low reset signal.
//
//     dvsr         - valud of 16 * buad_rate
//     tick         - clock tick. Sample at rising edge
//
// Author: Mongolian
// Date: 06/22/2025
//------------------------------------------------------------
module buad_generator
    #(parameter DVSR_WIDTH = 10)
    (
    input logic clk, arst_n,
    input logic [DVSR_WIDTH-1:0] dvsr,
    output logic tick
    );

    // signal declaration
    logic [DVSR_WIDTH-1:0] r_cnt, w_next_cnt;

    always_ff @(posedge clk, negedge arst_n) begin
        if (!arst_n)
            r_cnt <= 0;
        else  
            r_cnt <= w_next_cnt;
    end

    // clock logic
    assign w_next_cnt = (r_cnt == dvsr) ? 0 : r_cnt + 1;
    assign tick = (r_cnt == 0);

endmodule : buad_generator

//------------------------------------------------------------
// Module: uart_core
// Description:
//     An UART core cosists of RX and TX and their corrosponding FIFOs, 
//     as well as a baud rate generator. All the read and write operations
//     will be performed to the FIFOs. User cannot manipulate TX and RX directly.
//     For receiving data, RX will push the data form its shift register to its
//     corrosponding FIFO. User will receive it from RX FIFO. For sending data,
//     user will push the data to TX's FIFO. TX's FIFO will pop the head element
//     to its shift register and send it serially.
//
// Parameters:
//     DATA_BITS       - how many bits of the entire data
//     DVSR_WIDTH      - width of the divisor
//     STOP_BIT_TICK   - how many bits of the stop bit (1-bit, 1.5-bit, and 2-bit)
//     FIFO_LENGTH     - length of RX and TX FIFOs
//
// Ports:
//     clk          - System clock input.
//     arst_n       - Asynchronous active-low reset signal.
//
//     read         - Read signal
//     write        - Write signal
//     wr_data      - Data to write to TX FIFO
//     dvsr         - valud of 16 * buad_rate
//     rd_data      - Data read from RX FIFO
//     tx_full      - TX FIFO is full
//     rx_empty     - RX FIFO is empty
//
//     rx           - RX wire, receiving data serially
//     tx           - TX wire, sending data serially
//
// Author: Mongolian
// Date: 07/05/2025
//------------------------------------------------------------
module uart_core
    #(parameter DATA_BITS = 8,
    DVSR_WIDTH = 10,
    STOP_BIT_TICK = 16,
    FIFO_LENGTH = 8,
    FIFO_ADDR_WIDTH = $clog2(FIFO_LENGTH)
    )
    (
    input logic clk, arst_n,
    // interface with upstream
    input logic read, write,
    input logic clr_rx, clr_tx,
    input logic [DATA_BITS-1:0] wr_data,
    input logic [DVSR_WIDTH-1:0] dvsr,
    output logic [DATA_BITS-1:0] rd_data,
    output logic tx_full, tx_empty, rx_full, rx_done_tick,
    output logic rx_empty, overrun_error, tx_idle,
    // interface with downstream (external device)
    input logic rx,
    output logic tx,
    // debug
    output logic debug_uart_tick
    );

    // signal declaration
    logic tick, tx_done;
    logic [DATA_BITS-1:0] dout, din;

    assign debug_uart_tick = tick;

    buad_generator #(
        .DVSR_WIDTH(DVSR_WIDTH)
    ) buad_gen (
        .clk, 
        .arst_n,
        .dvsr,
        .tick
    );

    rx #(
        .DATA_BITS(DATA_BITS),
        .STOP_BIT_TICK(STOP_BIT_TICK)
    ) rx_inst (
        .clk, 
        .arst_n,
        .rx, 
        .tick,
        .rx_full,
        .overrun_error,
        .rx_done_tick,
        .dout
    );

    fifo #(
        .LENGTH(FIFO_LENGTH),
        .DATA_WIDTH(DATA_BITS),
        .ADDR_WIDTH(FIFO_ADDR_WIDTH)
    ) rx_fifo (
        .clk, 
        .arst_n,
        .read, 
        .clear(clr_rx),
        .write(rx_done_tick),
        .wr_data(dout),
        .empty(rx_empty), 
        .full(rx_full),
        .rd_data
    );

    tx #(
        .DATA_BITS(DATA_BITS),
        .STOP_BIT_TICK(STOP_BIT_TICK)
    ) tx_inst (
        .clk, 
        .arst_n,
        .start(~tx_empty), 
        .tick,
        .din,
        .tx_idle,
        .tx_done,
        .tx
    );

    fifo #(
        .LENGTH(FIFO_LENGTH),
        .DATA_WIDTH(DATA_BITS),
        .ADDR_WIDTH(FIFO_ADDR_WIDTH)
    ) tx_fifo (
        .clk, 
        .arst_n,
        .read(tx_idle), 
        .clear(clr_tx),
        .write,
        .wr_data,
        .empty(tx_empty), 
        .full(tx_full),
        .rd_data(din)
    );

endmodule : uart_core

//------------------------------------------------------------
// Module: uart
// Description:
//     An UART device directly interact with the MMIO Subsystem. 
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
//     rx           - RX wire, receiving data serially
//     tx           - TX wire, sending data serially
//
// Register Mapping:
//     - 4'h00: RX's FIFO, read only
//     - 4'h04: TX's FIFO
//     - 4'h08: Divisor's register
//     - 4'h0c: Control Register: determined by wr_data[0]:
//                 wr_data[0]: 1'b1 will clear RX's FIFO
//                 wr_data[1]: 1'b1 will clear TX's FIFO
//     - 4'h10: Status Register: status of UART, 4 bits, read only
//                 0th bit: 1'b1 if RX's FIFO has valid data (not empty)
//                 1th bit: 1'b1 if RX's FIFO is full 
//                 2th bit: 1'b1 if TX's FIFO is not empty
//                 3th bit: 1'b1 is TX's FIFO is full
//                 4th bit: 1'b1 if interrupt enabled
//                 5th bit: 1'b1 if overrun error occured (new char received but RX fifo  full)
//                          This bit is cleared when the status register is read.
//                 6th bit: 1'b1 if frame error occured (stop bit is 1 instead of 0)
//                          This bit is cleared when the status register is read.
//                 7th bit: 1'b1 is parity error.
//                          This bit is cleared when the status register is read.
//                 8th bit: 1'b1 if invalid read has occured.
//                          This bit is cleared when the status register is read.
//                 9th bit: 1'b1 if invalid write has occured.
//                          This bit is cleared when the status register is read.
//                 
// Notes:
//     - This is a timer that keep counting to a certain value.
//     - User can have access to the states of the timer through reading a
//       writing to the registers listed above.
//
// Author: Mongolian
// Date: 07/05/2025
//------------------------------------------------------------
module uart
    #(parameter DATA_BITS = 8,
    DVSR_WIDTH = 10,
    STOP_BIT_TICK = 16,
    FIFO_LENGTH = 8,
    FIFO_ADDR_WIDTH = $clog2(FIFO_LENGTH)
    )
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
    // interface with downstream (external device)
    input logic rx,
    output logic tx,
    // debug
    output logic debug_uart_tick
    );

    // signal declaration
    logic w_en_rd, w_en_wr;
    logic w_en_dvsr;
    logic tx_full, tx_empty, rx_empty, rx_full;
    logic [DVSR_WIDTH-1:0] r_dvsr;
    logic [1:0] r_control, w_control;
    logic [9:0] r_status, w_status;
    logic [DATA_BITS-1:0] w_received_data, w_data_to_send;
    logic overrun_error;
    logic w_wr_done, w_rd_done;
    logic w_slave_error, w_decode_error;
    logic [31:0] w_rd_data;
    logic w_en;

    enum logic [1:0] {
        IDLE   = 2'b00, 
        ACTIVE = 2'b01,
        DONE   = 2'b10
    } r_state, w_next_state;

    uart_core #(
        .DATA_BITS(DATA_BITS),
        .DVSR_WIDTH(DVSR_WIDTH),
        .STOP_BIT_TICK(STOP_BIT_TICK),
        .FIFO_LENGTH(FIFO_LENGTH),
        .FIFO_ADDR_WIDTH(FIFO_ADDR_WIDTH)
    ) core (
        .clk, 
        .arst_n,
        .read(w_en_rd), 
        .write(w_en_wr),
        .wr_data(wr_data[DATA_BITS-1:0]),
        .dvsr(r_dvsr),
        .rd_data(w_received_data),
        .clr_rx(r_control[0]), 
        .clr_tx(r_control[1]),
        .tx_full, 
        .tx_empty,
        .rx_empty,
        .rx_full,
        .overrun_error,
        .rx,
        .tx,
        .debug_uart_tick
    );

    assign w_en = chip_select && (read || write);

    // decoder
    always_comb begin : decode
        w_wr_done = 1'b0;
        idle = 1'b1;
        w_rd_data = rd_data;
        w_en_rd = 1'b0;
        w_en_wr = 1'b0;
        w_en_dvsr = 1'b0;
        w_slave_error = 1'b0;
        w_decode_error = 1'b0;
        w_control = 2'b0;
        w_status = r_status;
        w_status[0] = ~rx_empty;
        w_status[1] = rx_full;
        w_status[2] = ~tx_empty;
        w_status[3] = tx_full;
        w_status[5] = overrun_error;
        w_rd_done = 1'b0;

        case (r_state)
            IDLE: begin
                w_next_state = (w_en) ? ACTIVE : IDLE;
            end
            ACTIVE: begin
                w_next_state = DONE;
                case (addr)
                    8'h00: begin  // read rx's fifo
                        if (read) begin
                            w_rd_done = 1'b1;
                            if (rx_empty) begin  // cannot read when rx fifo empty
                                w_slave_error = 1'b1;
                                w_status[8] = 1'b1;
                            end else begin
                                w_en_rd = 1'b1;
                                w_rd_data = {{(32-DATA_BITS){1'b0}}, w_received_data};
                            end
                        end else if (write) begin   // rx fifo is read only
                            w_wr_done = 1'b1;
                            w_slave_error = 1'b1;
                            w_status[9] = 1'b1;
                        end
                    end
                    8'h04: begin  // write to tx fifo
                        if (write) begin
                            w_wr_done = 1'b1;
                            if (tx_full) begin  // cannot write when tx fifo full
                                w_slave_error = 1'b1;
                                w_status[9] = 1'b1;
                            end else begin
                                w_en_wr = 1'b1;
                            end
                        end else if (read) begin   // tx fifo is write only
                            w_slave_error = 1'b1;
                            w_status[8] = 1'b1;
                            w_rd_done = 1'b1;
                        end
                    end
                    8'h08: begin  // dvsr register
                        if (write) begin
                            w_wr_done = 1'b1;
                            w_en_dvsr = 1'b1;
                        end else if (read) begin
                            w_rd_done = 1'b1;
                            w_rd_data = {{(32-DVSR_WIDTH){1'b0}}, r_dvsr};
                        end
                    end
                    8'h0c: begin   // control register
                        if (write) begin
                            w_wr_done = 1'b1;
                            w_control = wr_data[1:0];
                        end else if (read) begin
                            w_rd_done = 1'b1;
                            w_rd_data = {30'b0, r_control};
                        end
                    end
                    8'h10: begin   // status register read only
                        if (write) begin
                            w_wr_done = 1'b1;
                            w_slave_error = 1'b1;
                            w_status[9] = 1'b1;
                        end else if (read) begin
                            w_rd_done = 1'b1;
                            w_status[9:5] = 4'd0;
                            w_rd_data = {22'b0, r_status};
                        end
                    end
                    default: begin
                        w_rd_done = 1'b1;
                        w_wr_done = 1'b1;
                        w_decode_error = 1'b1;
                    end
                endcase
            end
            DONE: begin
                w_rd_done = 1'b1;
                w_wr_done = 1'b1;
                w_slave_error = slave_error;
                w_decode_error = decode_error;
                w_next_state = (transaction_completed) ? IDLE : DONE;
            end
        endcase
    end

    // dvsr register
    always_ff @(posedge clk, negedge arst_n) begin
        if (!arst_n)
            r_dvsr <= 0;
        else if (w_en_dvsr)
            r_dvsr <= wr_data[DVSR_WIDTH-1:0];
    end

    // control register
    always_ff @(posedge clk, negedge arst_n) begin
        if (!arst_n)
            r_control <= 0;
        else 
            r_control <= w_control;
    end

    // status register
    always_ff @(posedge clk, negedge arst_n) begin
        if (!arst_n)
            r_status <= 0;
        else 
            r_status <= w_status;
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

    // next state register
    always_ff @(posedge clk, negedge arst_n) begin
        if (!arst_n)
            r_state <= IDLE;
        else 
            r_state <= w_next_state;
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

endmodule : uart
