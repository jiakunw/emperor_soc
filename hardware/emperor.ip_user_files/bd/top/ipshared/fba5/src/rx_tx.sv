// rx_tx.sv
// `include "../../const.sv"
`timescale 1ns / 1ps

//------------------------------------------------------------
// Module: rx
// Description:
//     RX serial interface of UART. It'll store serial data into a shift register.
//     By default, RX is high when no data is being sent. The start bit is when the
//     RX is first fulled low. Since UART does not use clock signal to communicate 
//     between two devices, 2 devices MUST operate according to a baud rate. By
//     convention, every bit must be sampled by 16 times. To determine whether this
//     bit is 0 or 1, we take the 7th sampling, which is right in the middle and 
//     provides us with the best stability. Specifically, we sample the start bit
//     by taking its 7th sample. Since every bit is sampled 16 times, the after another
//     16 samples, we get the 7th sample of the first bit, and we store it to our shift
//     register. We do this for the rest of the data bits until we have measure all of the
//     DATA_BITS. In the end, we assert rx_done_tick as well as the stop bit. The stop bit
//     can be 1 bit (16 samples), 1.5 bits (24 samples), and 2 bits (32 samples). The user
//     can change STOP_BIT_TICK based on his or her preference.
//
// Parameters:
//     DATA_BITS       - how many bits of the entire data
//     STOP_BIT_TICK   - how many bits of the stop bit (1-bit, 1.5-bit, and 2-bit)
//
// Ports:
//     clk             - System clock input.
//     arst_n          - Asynchronous active-low reset signal.
//
//     rx              - RX serial input signal wire
//     tick            - Sampling tick fired by the baud rate generator.
//     rx_done_tick    - RX has received the entire data
//     dout            - Received data
//
// Note:
//     This module is controlled by an FSM with 4 states: IDLE, START, DATA, and STOP.
//     Each state corrosponds to part of the process above. Once we finished the stop bit,
//     we will move from STOP to IDLE state.
//
// Author: Mongolian
// Date: 07/04/2025
//------------------------------------------------------------
module rx
    #(
        parameter DATA_BITS = 8,
                  STOP_BIT_TICK = 16
    )
    (
        input logic clk, arst_n,
        input logic rx, 
        input logic tick, rx_full,
        output logic rx_done_tick,
        output logic overrun_error,
        output logic [DATA_BITS-1:0] dout
    );

    // fsm states
    enum logic [1:0] {
        IDLE = 2'b00,
        START = 2'b01,
        DATA = 2'b10,
        STOP = 2'b11
    } r_state, w_next_state;

    // signal declaration
    logic [4:0] r_sampling_ticks, w_next_sampling_ticks;
    logic [$clog2(DATA_BITS):0] r_data_bits_received, w_next_data_bits_received;
    logic [DATA_BITS-1:0] w_out_shift;

    // register update
    always_ff @(posedge clk, negedge arst_n) begin
        if (!arst_n) begin
            r_sampling_ticks <= 0;
            r_data_bits_received <= 0;
            dout <= 0;
            r_state <= IDLE;
        end else begin
            r_sampling_ticks <= w_next_sampling_ticks;
            r_data_bits_received <= w_next_data_bits_received;
            dout <= w_out_shift;
            r_state <= w_next_state;
        end
    end

    // fsm
    always_comb begin
        rx_done_tick = 1'b0;
        w_next_state = r_state;
        w_next_sampling_ticks = r_sampling_ticks;
        w_next_data_bits_received = r_data_bits_received;
        w_out_shift = dout;
        overrun_error = 1'b0;

        case (r_state)
            IDLE: begin
                w_out_shift = 0;
                w_next_sampling_ticks = 0;
                w_next_data_bits_received = 0;
                w_next_state = (!rx) ? START : IDLE;
            end
            START: begin
                w_next_sampling_ticks = (r_sampling_ticks == 8) ? 0 :
                                        r_sampling_ticks + tick;
                w_next_state = (r_sampling_ticks == 8) ? DATA : START;
            end
            DATA: begin
                overrun_error = rx_full;
                w_next_sampling_ticks = (r_sampling_ticks == 15) ? 0 :
                                        r_sampling_ticks + tick;
                w_next_data_bits_received = (r_sampling_ticks == 15) ? r_data_bits_received + 1 :
                                            r_data_bits_received;
                w_out_shift = (r_sampling_ticks == 15) ? {rx, dout[DATA_BITS-1:1]} : dout;
                w_next_state = (r_data_bits_received == DATA_BITS) ? STOP : DATA;         
            end
            STOP: begin
                w_next_sampling_ticks = r_sampling_ticks + tick;
                rx_done_tick = (r_sampling_ticks == STOP_BIT_TICK-1);
                w_next_state = (r_sampling_ticks == STOP_BIT_TICK-1) ? IDLE : STOP;
            end
        endcase
    end

endmodule : rx

//------------------------------------------------------------
// Module: tx
// Description:
//     TX serial interface of UART. It'll sent data shift register serially.
//     In TX, since we have to send an entire bit, we must take the measurement at the 
//     last sample instead of the one in the middle (it makes no sense to send half
//     bit, as it violates the protocol.) At the 15th sampling tick, we shift the shift 
//     register. TX bit is always the 0th bit of the shift register. By shifting the 
//     shift register at the last sample according to the pre-defined baud rate, 
//     we are also changing TX at the specified baud rate. We need to do this for the 
//     start bit as well as DATA_BITS for the data. In the end, we assert tx_done as well as the stop bit. The stop bit
//     can be 1 bit (16 samples), 1.5 bits (24 samples), and 2 bits (32 samples). The user
//     can change STOP_BIT_TICK based on his or her preference.
//
// Parameters:
//     DATA_BITS       - how many bits of the entire data
//     STOP_BIT_TICK   - how many bits of the stop bit (1-bit, 1.5-bit, and 2-bit)
//
// Ports:
//     clk             - System clock input.
//     arst_n          - Asynchronous active-low reset signal.
//
//     tx              - TX serial output signal wire
//     start           - Start transmitting data
//     tick            - Sampling tick fired by the baud rate generator.
//     tx_done         - TX has sent the entire data
//     din             - Data to be sent
//
// Note:
//     This module is controlled by an FSM with 4 states: IDLE, START, DATA, and STOP.
//     Each state corrosponds to part of the process above. Once we finished the stop bit,
//     we will move from STOP to IDLE state.
//
// Author: Mongolian
// Date: 07/04/2025
//------------------------------------------------------------
module tx 
    #(
        parameter DATA_BITS = 8,
                  STOP_BIT_TICK = 16
    )
    (
    input logic clk, arst_n,
    input logic start, tick,
    input logic [DATA_BITS-1:0] din,
    output logic tx_done, tx_idle,
    output logic tx
    );

    // fsm states
    enum logic [1:0] {
        IDLE = 2'b00,
        START = 2'b01,
        DATA = 2'b10,
        STOP = 2'b11
    } r_state, w_next_state;

    // signal declaration
    logic [4:0] r_sampling_ticks, w_next_sampling_ticks;
    logic [$clog2(DATA_BITS)-1:0] r_data_bits_sent, w_next_data_bits_sent;
    logic [DATA_BITS-1:0] r_in_shift, w_in_shift;
    logic tx_sample_point;

    // register update
    always_ff @(posedge clk, negedge arst_n) begin
        if (!arst_n) begin
            r_sampling_ticks <= 0;
            r_data_bits_sent <= 0;
            r_in_shift <= 0;
            r_state <= IDLE;
        end else begin
            r_sampling_ticks <= w_next_sampling_ticks;
            r_data_bits_sent <= w_next_data_bits_sent;
            r_in_shift <= w_in_shift;
            r_state <= w_next_state;
        end
    end

    // fsm
    always_comb begin
        tx_done = 1'b0;
        tx = 1'b1;
        w_next_state = r_state;
        w_next_sampling_ticks = r_sampling_ticks;
        w_next_data_bits_sent = r_data_bits_sent;
        w_in_shift = r_in_shift;
        tx_idle = 1'b0;
        tx_sample_point = r_sampling_ticks == 16;

        case (r_state)
            IDLE: begin
                w_next_sampling_ticks = 0;
                w_next_data_bits_sent = 0;
                w_in_shift = din;
                tx_idle = 1'b1;
                w_next_state = (!start) ? IDLE : START;
            end
            START: begin
                tx = 1'b0;
                w_next_sampling_ticks = (tx_sample_point) ? 0 :
                                        r_sampling_ticks + tick;
                w_next_state = (tx_sample_point) ? DATA : START;
            end
            DATA: begin
                w_next_sampling_ticks = (tx_sample_point) ? 0 :
                                        r_sampling_ticks + tick;
                w_next_data_bits_sent = (tx_sample_point) ? r_data_bits_sent + 1 :
                                            r_data_bits_sent;
                w_in_shift = (tx_sample_point) ? {1'b0, r_in_shift[DATA_BITS-1:1]} : r_in_shift;
                tx = r_in_shift[0];
                w_next_state = ((r_data_bits_sent == DATA_BITS-1) && (tx_sample_point)) ? STOP : DATA;         
            end
            STOP: begin
                tx = 1'b1;
                w_next_sampling_ticks = r_sampling_ticks + tick;
                tx_done = (r_sampling_ticks == STOP_BIT_TICK-1);
                w_next_state = (r_sampling_ticks == STOP_BIT_TICK-1) ? IDLE : STOP;
            end
        endcase
    end

endmodule : tx