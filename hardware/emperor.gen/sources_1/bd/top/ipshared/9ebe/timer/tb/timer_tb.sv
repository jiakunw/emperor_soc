// timer_tb.sv
`include "../timer.sv"
`timescale 1ns / 1ps

//////////////////////
////             ////
////    top     ////
////           ////
//////////////////

//------------------------------------------------------------
// Module: tb
// Description:
//     A basic testbench for timer.sv
//
// Fault Model:
//      - Invalid Restart:
//          - Status Register[0] does not match Control Register[0]
//          - Status Register[0] does not get updated correctly
//          - Counter is running when Status Register[0] is 1'b0
//          - Counter is not running when when Status Register[0] is 1'b1
//          - Counter is non-zero when Control Register[0] is deasserted
//
//      - Invalid Finish:
//          - Status Register[1] is not asserted when Counter value == 0 when counting down (Control Register[0] and Control Register[1] asserted)
//          - Status Register[1] is not asserted when Counter value == auto reload register when counting up (Control Register[0] asserted Control Register[1] deasserted)
//          - Status Register[0] is asserted when Counter value != 0 when counting down (Control Register[0] and Control Register[1] asserted)
//          - Status Register[0] is asserted when Counter value != auto reload register when counting up (Control Register[0] asserted Control Register[1] deasserted)
//
//      - Invalid Read:
//          - When chip_select and read asserted, reading invalid address does not assert decode_error to high
//          - When chip_select and read asserted, reading valid address does assert decode_error to high
//
//      - Invalid Write:
//          - When chip_select and write asserted, writing to invalid address does not assert decode_error
//          - When chip_select and write asserted, writing to read-only registers does not assert slave error
//          - When chip_select and write asserted, writing to valid address does assert decode_error
//          - When chip_select and write asserted, writing to normal registers does assert slave error
//          - When chip_select and write asserted, writing to normal registers does not modify their content
//                 
// Notes:
//     - This is a timer that keep counting to a certain value.
//     - User can have access to the states of the timer through reading a
//       writing to the registers listed above.
//
// Author: Mongolian
// Date: 06/22/2025
//------------------------------------------------------------

module timer_tb();
    logic clk, arst_n;
    // slot interface
    logic chip_select;
    logic read, write;
    logic [3:0] addr;
    logic [31:0] wr_data;
    logic [31:0] rd_data;
    logic slave_error;
    logic decode_error;
    logic wr_done;
    logic rd_done;

    // test instance
    timer dut (.*);

    //the system clock
    initial begin
        clk = 1'b0;
        forever #5 clk = ~clk;
    end

    task op_read(input logic [4:0] read_addr);
        begin
            chip_select = 1'b1;
            addr = read_addr;
            read = 1'b1;
        end
    endtask

    task op_write(input logic [4:0] write_addr, input logic [31:0] data);
        begin
            chip_select = 1'b1;
            addr = write_addr;
            wr_data = data;
            write = 1'b1;
        end
    endtask

    // main testbench
    task run_testbench();
        begin
            op_write(4'b1111, 32'b0); // should give decode error
            $display("decode error should be 0");
            assert(decode_error == 1'b1);
            @(negedge clk);

            chip_select = 1'b0; // should cancel decode error
            read = 1'b0;
            write = 1'b0;
            $display("decode error should not be 0");
            assert(decode_error != 1'b1);
            $display("done write");
            assert(wr_done == 1'b1);
            @(negedge clk);

            // write 4 to auto reload register
            op_write(4'b1, 32'd4);
            @(negedge clk);
            $display("status[1] should be 0, not finished");
            assert(dut.r_status[1] == 1'b0);
            $display("auto reload gets updated");
            assert(dut.r_auto_reload == 32'd4);
            chip_select = 1'b0;
            // read = 1'b0;
            // write = 1'b0;
            repeat(6) @(negedge clk);

            op_read(4'b0);
            $display("counter should be 0, not finished");
            assert(rd_data == 32'd0);
            $display("counter should be 0, not finished");
            assert(dut.r_status[1] == 1'b0);
            @(negedge clk);

            chip_select = 1'b0;
            read = 1'b0;
            write = 1'b0;
            repeat(2) @(negedge clk);

            // enables counter
            op_write(4'd2, 32'd1);
            @(negedge clk);
            $display("counter started, counter should be 0, not finished");
            assert(dut.r_status[1] == 1'b0);

            chip_select = 1'b0;
            // read = 1'b0;
            // write = 1'b0;
            // let it run
            repeat (5) @(negedge clk);
            $display("counter should be 4, finished");
            assert(dut.r_status[1] == 1'b0);
            assert(dut.r_counter == 32'd4);

            // invalid write to status register
            op_write(4'd4, 32'd1);
            $display("Invalid write to status register, should aassert slave error");
            assert(slave_error == 1'b1);
            @(negedge clk);
            $display("slave error should be de-asserted");
            assert(slave_error == 1'b0);

            chip_select = 1'b0;
            // read = 1'b0;
            // write = 1'b0;
            repeat (2) @(negedge clk);

            // invalid write to counter
            op_write(4'd0, 32'd1);
            $display("Invalid write to counter, should aassert slave error");
            assert(slave_error == 1'b1);
            @(negedge clk);
            $display("slave error should be de-asserted");
            assert(slave_error == 1'b0);
            chip_select = 1'b0;
            read = 1'b0;
            write = 1'b0;
            repeat (2) @(negedge clk);

            // read counter value
            op_read(4'd0);
            $display("read counter value");
            assert(rd_data == 32'd5);
            @(negedge clk);
            chip_select = 1'b0;
            read = 1'b0;
            write = 1'b0;
            repeat (3) @(negedge clk);

            // change auto-reload
            op_write(4'd1, 32'd6);
            @(negedge clk);
            $display("finished should still be asserted");
            assert(dut.finished == 1'b1);
            chip_select = 1'b0;
            read = 1'b0;
            write = 1'b0;
            repeat(3) @(negedge clk);

            // count down, re-start
            op_write(4'd2, 32'd3);
            @(negedge clk);
            $display("finished should not be asserted");
            assert(dut.finished  == 1'b0);
            chip_select = 1'b0;
            read = 1'b0;
            write = 1'b0;
            repeat(8) @(negedge clk);
            $display("finished should still be asserted");
            assert(dut.finished  == 1'b1);
            $display("counter should be 0");
            assert(dut.r_counter == 32'd0);

            // turn on eg
            op_write(4'd3, 32'd1);
            @(negedge clk);
            chip_select = 1'b0;
            repeat(2) @(negedge clk);
            $display("counter should be non-zero");
            assert(dut.r_counter != 32'd0);
            $display("finished should not be asserted");
            assert(dut.finished  == 1'b0);

            // disable counter
            op_write(4'd2, 32'd2);
            @(negedge clk);
            chip_select = 1'b0;
            read = 1'b0;
            write = 1'b0;
            $display("counter should be zero");
            assert(dut.r_counter == 32'd0);

            repeat(5) @(negedge clk);
            $display("counter should still be zero");
            assert(dut.r_counter == 32'd0);
        end

        @(negedge clk);
    endtask

    // run test
    initial begin
        // reset the system
        arst_n = 1'b0;
        chip_select = 1'b0;
        read = 1'b0;
        write = 1'b0;
        addr = 5'b0;
        wr_data = 32'b0;
        @(negedge clk);

        arst_n = 1'b1;
        @(negedge clk);
        @(negedge clk);

        // run main testbench
        run_testbench();

        @(negedge clk);

        $finish;
    end


endmodule : timer_tb