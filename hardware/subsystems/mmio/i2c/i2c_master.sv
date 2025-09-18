// i2c_master.sv
`timescale 1ns / 1ps

//------------------------------------------------------------
// Module: i2c_master
// Description:
//   A simplified I²C Master controller.
//   - Generates START / STOP conditions, 8 data bits + 9th ACK/NACK
//   - Supports both write and read transactions
//   - Bus is modeled as open-drain (wired-AND):
//       * Drive '0' to pull low
//       * Drive 'Z' (high-impedance) to release the line (pulled high by resistors)
//
//
// Ports:
//     clk          - System clock input.
//     arst_n       - Asynchronous active-low reset signal.
//
//     din          - Input write data
//     dvsr         - Clock divisor = f_sys/4*f_i2c
//     cmd          - I2C command
//     en_i2c       - Write enable signal
//     ready        - I2C ready or not                                                                                                                                                                                 
//     done         - Done sending/receiving data
//     ack          - ACK from slave (master write only)
//     dout         - Read data from slave
//
//     scl          - SCL wire, master drives clock signal, logic high is high impedence
//     sda          - SDA wire, bidirectional, master send data/read data to/from slave, 
//                    logic high is high impedence
//
// Notes:
//   - SCL and SDA must be driven through IOBUFs in real hardware
//   - Master is the only driver of SCL (slaves never drive SCL)
//   - SDA is bidirectional: master drives it during write or START/STOP,
//     releases it during read and ACK phases
//   - Master must issue START, then an address+R/W, then read/write data bytes,
//     and finally STOP (standard I²C transaction sequence).
//
// Author: Mongolian
// Date: 09/10/2025
//------------------------------------------------------------
module i2c_master
(
    input logic clk, arst_n,
    input logic [7:0] din, 
    input logic [6:0] slave_addr,
    input logic [15:0] dvsr,
    input i2c_cmd_t cmd,
    input logic en_ack, en_i2c, en_wr,
    input logic rx_full, tx_empty,
    output logic ready, done_tick, ack,
    output logic [7:0] dout,
    // external
    output tri scl,
    input tri sda
);

    // signal declarations
    i2c_state_t r_state, w_next_state;
    i2c_cmd_t r_cmd, w_next_cmd;
    logic [15:0] r_cnt, w_next_cnt;
    logic [15:0] w_half;
    logic [8:0] r_tx, w_next_tx;    // need an extra bit for ACK/NACK
    logic [8:0] r_rx, w_next_rx;    // need an extra bit for ACK/NACK
    logic [2:0] r_bit, w_next_bit;
    logic r_scl, w_next_scl, r_sda, w_next_sda;
    logic w_master_nack, w_slave_control, w_data_phase;

    //**************************************************************
    // output control logic
    //**************************************************************
    always_ff @(posedge clk, negedge arst_n) begin
        if (!arst_n) begin
            r_sda <= 1'b1;
            r_scl <= 1'b1;
        end else begin
            r_sda <= w_next_sda;
            r_scl <= w_next_scl;
        end
    end

    // only master drives SCL wire
    assign scl = (r_scl) ? 1'bz : 1'b0;

    // gives slave control only in data phase when:
    //  1. master is reading from slave
    //  2. waiting for slave to send ACK
    assign w_slave_control = (w_data_phase && r_cmd==RD_CMD && r_bit<8) ||
                             (w_data_phase && (r_cmd==WR_CMD || r_cmd==START_CMD) && r_bit==8);

    // sda wire driven by w_slave_control when the condition is met, otherwise by master
    assign sda = (w_slave_control || r_sda) ? 1'bz : 1'b0; 

    // output
    assign dout = r_rx[8:1];
    assign ack = r_rx[0];
    assign w_master_nack = rx_full | ~en_ack | ~en_i2c;  // used by master in read operation
    assign w_half = {dvsr[14:0], 1'b0};

    //**************************************************************
    // FSMD 
    //**************************************************************

    // state register
    always_ff @(posedge clk, negedge arst_n) begin
        if (!arst_n) begin
            r_state <= IDLE;
            r_cmd <= NO_OP_CMD;
            r_cnt <= 0;
            r_bit <= 0;
            r_rx <= 0;
            r_tx <= 0;
        end else begin
            r_state <= w_next_state;
            r_cmd <= w_next_cmd;
            r_cnt <= w_next_cnt;
            r_bit <= w_next_bit;
            r_rx <= w_next_rx;
            r_tx <= w_next_tx;
        end
    end

    // next state logic
    always_comb begin
        w_next_state = r_state;
        w_next_cmd = r_cmd;
        w_next_cnt = r_cnt + 1;
        w_next_bit = r_bit;
        w_next_tx = r_tx;
        w_next_rx = r_rx;
        w_data_phase = 1'b0;
        done_tick = 1'b0;
        ready = 1'b0;
        w_next_scl = 1'b1;
        w_next_sda = 1'b1;

        case (r_state)
            IDLE: begin
                ready = 1'b1;
                if (en_i2c && cmd==START_CMD) begin
                    w_next_state = START1;
                    w_next_cnt = 0;
                end else begin
                    w_next_state = IDLE;
                end
            end
            START1: begin
                w_next_scl = 1'b0;
                if (r_cnt == w_half) begin
                    w_next_cnt = 0;
                    w_next_state = START2;
                end
            end
            START2: begin
                w_next_scl = 1'b0;
                w_next_sda = 1'b0;
                if (r_cnt == dvsr) begin
                    w_next_cnt = 0;
                    w_next_state = HOLD;
                end
            end
            HOLD: begin  // tell upstream device ready to receive more data
                ready = 1'b1;   
                w_next_scl = 1'b0;
                w_next_sda = 1'b0;
                if (r_cnt == dvsr) begin
                    w_next_cmd = cmd;
                    w_next_cnt = 0;
                    case (cmd)
                        RESTART_CMD:
                            w_next_state = RESTART;
                        STOP_CMD:
                            w_next_state = STOP1;
                        NO_OP_CMD:
                            w_next_state = HOLD;
                        default: begin
                            w_next_bit = 0;
                            w_next_state = (!tx_empty) ? DATA1 : HOLD;
                            w_next_tx = {(r_cmd == START_CMD) ? {slave_addr, ~en_wr} : din, !w_master_nack};
                        end
                    endcase
                end
            end
            DATA1: begin
                w_next_sda = r_tx[8];
                w_next_scl = 1'b0;
                w_data_phase = 1'b1;
                if (r_cnt == dvsr) begin
                    w_next_cnt = 0;
                    w_next_state = DATA2;
                end
            end
            DATA2: begin    // we sample read data here
                w_next_sda = r_tx[8];
                w_next_scl = 1'b1;
                if (r_cnt == dvsr) begin
                    w_next_cnt = 0;
                    w_next_state = DATA3;
                    w_next_rx = {r_rx[7:0], sda};
                end
            end
            DATA3: begin
                w_next_sda = r_tx[8];
                w_next_scl = 1'b1;
                w_data_phase = 1'b1;
                if (r_cnt == dvsr) begin
                    w_next_cnt = 0;
                    w_next_state = DATA4;
                end
            end
            DATA4: begin
                w_next_sda = r_tx[8];
                w_next_scl = 1'b0;
                w_data_phase = 1'b1;
                if (r_cnt==dvsr) begin
                    w_next_cnt = 0;
                    if (r_bit == 8) begin
                        w_next_state = HOLD;
                        done_tick = 1'b1;
                    end else begin
                        w_next_bit = r_bit + 1;
                        w_next_state = DATA1;
                        w_next_tx = r_tx << 1;
                    end
                end
            end
            // DATA_END: begin
            //     w_next_scl = 1'b0;
            //     w_next_sda = 1'b0;
            //     if (r_cnt == dvsr) begin
            //         w_next_cnt = 0;
            //         w_next_state = HOLD;
            //     end
            // end
            RESTART: begin
                w_next_scl = 1'b0;
                w_next_sda = 1'b0;
                if (r_cnt == dvsr) begin
                    w_next_cnt = 0;
                    w_next_state = START1;
                end
            end
            STOP1: begin
                w_next_scl = 1'b0;
                w_next_sda = 1'b1;
                if (r_cnt == dvsr) begin
                    w_next_cnt = 0;
                    w_next_state = STOP2;
                end
            end
            STOP2: begin
                w_next_scl = 1'b1;
                w_next_sda = 1'b1;
                if (r_cnt == dvsr) begin
                    w_next_cnt = 0;
                    w_next_state = IDLE;
                end
            end
        endcase
    end

endmodule : i2c_master
