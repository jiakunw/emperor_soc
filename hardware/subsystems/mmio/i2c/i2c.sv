// i2c.sv
`timescale 1ns / 1ps
`default_nettype none

//------------------------------------------------------------
// Module: i2c
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
//     scl          - SCL wire, master drives clock signal, logic high is high impedence
//     sda          - SDA wire, bidirectional, master send data/read data to/from slave, 
//                    logic high is high impedence
//
// Register Mapping:
//     - 32'h00: RX's FIFO, read only
//     - 32'h04: TX's FIFO
//     - 32'h08: Slave address register
//     - 32'h0c: Divisor's register
//     - 32'h10: Control Register: 7 bit register for I2C command, 
//              and clear TX FIFO:
//                 0th bit: I2C enable
//                 [3:1] bit: storing I2C command
//                 4th bit: clear TX FIFO
//                 5th bit: master ACK enable
//                 6th bit: I2C write enable
//     - 32'h14: Status Register: status of I2C, 4 bits, read only
//                 0th bit: 1'b1 if RX's FIFO has valid data (not empty)
//                 1th bit: 1'b1 if RX's FIFO is full 
//                 2th bit: 1'b1 if TX's FIFO is not empty
//                 3th bit: 1'b1 is TX's FIFO is full
//                 4th bit: 1'b1 RX ACK
//                 5th bit: 1'b1 if bus busy: after START/RESTART before STOP
//                 6th bit: 1'b1 if invalid read has occured.
//                          This bit is cleared when the status register is read.
//                 7th bit: 1'b1 if invalid write has occured.
//                          This bit is cleared when the status register is read.
//                 
// Notes:
//     - This is a timer that keep counting to a certain value.
//     - User can have access to the states of the timer through reading a
//       writing to the registers listed above.
//
// Author: Mongolian
// Date: 09/11/2025
//------------------------------------------------------------
module i2c
    #(parameter DATA_BITS = 8,
    DVSR_WIDTH = 16,
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
    // external interface: SCL and SDA
    output tri scl,
    input tri sda
    );

    // signal declaractions
    logic w_tx_full, w_tx_empty, w_rx_empty, w_rx_full;
    logic [DVSR_WIDTH-1:0] w_dvsr, r_dvsr;
    logic [6:0] r_control, w_control;
    logic [7:0] r_status, w_status;
    logic [6:0] r_slave_addr, w_slave_addr;
    logic w_wr_done, w_rd_done;
    logic w_slave_error, w_decode_error;
    logic [31:0] w_rd_data;
    logic w_en;
    logic [7:0] w_tx_fifo_in, w_tx_fifo_out, w_rx_fifo_in, w_rx_fifo_out;
    logic done_tick, w_ack_slave;
    i2c_cmd_t r_cmd;
    logic w_fifo_rd, w_fifo_wr;
    logic w_ready;
    
    enum logic [1:0] {
        IDLE   = 2'b00, 
        ACTIVE = 2'b01,
        DONE   = 2'b10
    } r_state, w_next_state;

    // module instantiation
    // i2c master
    i2c_master i2c_core (
        .clk, 
        .arst_n,
        .din(w_tx_fifo_out),
        .slave_addr(r_slave_addr),
        .dvsr(r_dvsr),
        .cmd(r_cmd),
        .rx_full(w_rx_full),
        .tx_empty(w_tx_empty),
        .en_ack(r_control[5]),
        .en_i2c(r_control[0]),
        .en_wr(r_control[6]),
        .scl,
        .sda,
        .ready(w_ready), 
        .done_tick, 
        .ack(w_ack_slave),
        .dout(w_rx_fifo_in)
    );

    // rx fifo
    fifo #(
        .LENGTH(FIFO_LENGTH),
        .DATA_WIDTH(DATA_BITS),
        .ADDR_WIDTH(FIFO_ADDR_WIDTH)
    ) rx_fifo (
        .clk, 
        .arst_n,
        .read(w_fifo_rd), 
        .clear(1'b0),
        .write(done_tick && (r_cmd == RD_CMD)),
        .wr_data(w_rx_fifo_in),
        .empty(w_rx_empty), 
        .full(w_rx_full),
        .rd_data(w_rx_fifo_out)
    );

    // tx fifo
    fifo #(
        .LENGTH(FIFO_LENGTH),
        .DATA_WIDTH(DATA_BITS),
        .ADDR_WIDTH(FIFO_ADDR_WIDTH)
    ) tx_fifo (
        .clk, 
        .arst_n,
        .read(done_tick && (r_cmd == WR_CMD)), 
        .clear(r_control[5]),
        .write(w_fifo_wr),
        .wr_data(w_tx_fifo_in),
        .empty(w_tx_empty), 
        .full(w_tx_full),
        .rd_data(w_tx_fifo_out)
    );

    assign w_en = chip_select & (read | write);
    assign r_cmd = i2c_cmd_t'(r_control[3:1]);

    // decoder
    always_comb begin : decode
        idle = 1'b1;
        w_wr_done = 1'b0;
        w_rd_data = w_rx_fifo_out;
        w_fifo_rd = 1'b0;
        w_fifo_wr = 1'b0;
        w_dvsr = r_dvsr;
        w_slave_error = 1'b0;
        w_decode_error = 1'b0;
        w_control = r_control;
        w_status[0] = ~w_rx_empty;
        w_status[1] = w_rx_full;
        w_status[2] = ~w_tx_empty;
        w_status[3] = w_tx_full;
        w_status[4] = (done_tick) ? w_ack_slave : r_status[4];
        w_status[5] = ~w_ready;
        w_status[6] = r_status[6];
        w_status[7] = r_status[7];
        w_slave_addr = r_slave_addr;
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
                            if (w_rx_empty) begin  // cannot read when rx fifo empty
                                w_slave_error = 1'b1;
                                w_status[6] = 1'b1;
                            end else begin
                                w_fifo_rd = 1'b1;
                                w_rd_data = {{(32-DATA_BITS){1'b0}}, w_rx_fifo_out};
                            end
                        end else if (write) begin   // rx fifo is read only
                            w_wr_done = 1'b1;
                            w_slave_error = 1'b1;
                            w_status[7] = 1'b1;
                        end
                    end
                    8'h04: begin  // write to tx fifo
                        if (write) begin
                            w_wr_done = 1'b1;
                            if (w_tx_full) begin  // cannot write when tx fifo full
                                w_slave_error = 1'b1;
                                w_status[7] = 1'b1;
                            end else begin
                                w_fifo_wr = 1'b1;
                            end
                        end else if (read) begin   // tx fifo is write only
                            w_slave_error = 1'b1;
                            w_status[6] = 1'b1;
                            w_rd_done = 1'b1;
                        end
                    end
                    8'h0c: begin  // dvsr register
                        if (write) begin
                            w_wr_done = 1'b1;
                            w_dvsr = wr_data[DVSR_WIDTH-1:0];
                        end else if (read) begin
                            w_rd_done = 1'b1;
                            w_rd_data = {{(32-DVSR_WIDTH){1'b0}}, r_dvsr};
                        end
                    end
                    8'h08: begin   // slave address register
                        if (write) begin
                            w_wr_done = 1'b1;
                            w_slave_addr = wr_data[6:0];
                        end else if (read) begin
                            w_rd_done = 1'b1;
                            w_rd_data = {25'b0, r_slave_addr};
                        end
                    end
                    8'h10: begin   // control register
                        if (write) begin
                            w_wr_done = 1'b1;
                            w_control = wr_data[6:0];
                        end else if (read) begin
                            w_rd_done = 1'b1;
                            w_rd_data = {26'b0, r_control};
                        end
                    end
                    8'h14: begin   // status register read only
                        if (write) begin
                            w_wr_done = 1'b1;
                            w_slave_error = 1'b1;
                            w_status[7] = 1'b1;
                        end else if (read) begin
                            w_rd_done = 1'b1;
                            w_status[7:6] = 2'd0;
                            w_rd_data = {24'b0, r_status};
                        end
                    end
                    default: begin
                        w_rd_done = read;
                        w_wr_done = write;
                        w_decode_error = 1'b1;
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

    // slave address register 
    always_ff @(posedge clk, negedge arst_n) begin
        if (!arst_n)
            r_slave_addr <= 7'b0;
        else 
            r_slave_addr <= w_slave_addr;
    end

    // dvsr register
    always_ff @(posedge clk, negedge arst_n) begin
        if (!arst_n)
            r_dvsr <= 0;
        else 
            r_dvsr <= w_dvsr;
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

    // error signals register
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

endmodule : i2c