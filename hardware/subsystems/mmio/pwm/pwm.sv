// pwm.sv

//------------------------------------------------------------
// Module: pwm_core
// Description:
//     A PWM is a scheme to encode analog signal levels with digital pulses.
//     It is frequently used to control the power supplied to a device such as motor.
//
// Parameters:
//     RESOLUTION   - how many bits of pwm frequency resolution
//
// Ports:
//     clk          - System clock input.
//     arst_n       - Asynchronous active-low reset signal.
//
//     duty         - Duty cycle of pwm
//     dvsr         - Prescale divisor
//     pwm_out      - Output digital wave of pwm
//
// Author: Mongolian
// Date: 08/24/2025
//------------------------------------------------------------
module pwm_core
    #(parameter RESOLUTION = 10)
    (
    input logic clk, arst_n,
    input logic [RESOLUTION:0] duty,
    input logic [31:0] dvsr,
    output logic pwm_out
    );

    // signal declaration
    logic [RESOLUTION-1:0] r_duty, w_next_duty;
    logic [RESOLUTION:0] w_duty_plus;
    logic w_pwm_next;
    logic w_tick;
    logic [31:0] r_prescale_cnt; w_next_prescale_cnt;

    // body
    always_ff @(posedge clk, negedge arst_n) begin
        if (!arst_n) begin
            pwm_out <= 0;
            r_prescale_cnt <= 0;
            r_duty = 0;
        end else begin
            pwm_out <= w_pwm_next;
            r_prescale_cnt <= w_next_prescale_cnt;
            r_duty <= w_next_duty;
        end
    end

    // prescale counter
    assign w_next_prescale_cnt = (w_next_prescale_cnt == dvsr) ? 0 : r_prescale_cnt + 1;
    assign tick = r_prescale_cnt == 0;
    // duty cycle counter
    assign w_next_duty = (tick) ? r_duty + 1 : r_duty;
    assign w_duty_plus = {1'b0, r_duty};
    // cmp 
    assign w_pwm_next = w_duty_plus < duty;

endmodule : pwm_core

//------------------------------------------------------------
// Module: pwm
// Description:
//     An PWM device directly interact with the MMIO Subsystem. 
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
//     pwm_out      - Output digital wave of multi-bit pwm
//
// Register Mapping:
//     - 4'h00: Divisor's register
//     - 4'h04: PWM's output register
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
// Author: Mongolian
// Date: 08/24/2025
//------------------------------------------------------------
module pwm
    #(parameter RESOLUTION = 10)
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
    // PWM
    output logic pwm_out
    );
endmodule : pwm