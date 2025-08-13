// fifo_tb.sv
`include "../fifo.sv"
`timescale 1ns / 1ps

module fifo_tb();
    logic clk, arst_n;
    logic read, write, clear;
    logic [7:0] wr_data;
    logic empty, full, valid_rd;
    logic [7:0] rd_data;
    logic [4:0] num_elements;

    // test instance
    fifo #(.DATA_WIDTH(8), .LENGTH(16)) dut (.*);

    //the system clock
    initial begin
        clk = 1'b0;
        forever #5 clk = ~clk;
    end

    // properties
    property no_full_empty_same_time;
        @(negedge clk) (read | write) |-> 
            !(full && empty);
    endproperty

    assert_no_full_empty_same_time: assert property(no_full_empty_same_time)
        else $error("full and empty cannot be asserted at the same time");

    property full_assertion;
        @(negedge clk) (read | write) |-> 
            (num_elements == 16) ? full : !full;
    endproperty

    assert_full_assertion: assert property(full_assertion)
        else $error("when elements is 15 we must assert full, otherwise full cannot be asserted");

    property empty_assertion;
        @(negedge clk) (read | write) |-> 
            (num_elements == 0) ? empty : !empty;
    endproperty

    assert_empty_assertion: assert property(empty_assertion)
        else $error("when elements are 0 empty should be asserted, otherwise empty shuld not be asserted");

    property no_read_valid_when_empty;
        @(negedge clk) (read | write) |-> 
            (empty) ? !valid_rd : (valid_rd==read);
    endproperty

    assert_no_read_valid_when_empty: assert property(no_read_valid_when_empty)
        else $error("read valid should not be asserted when empty, otherwise it should be asserted whenever there is a read");

    task op_write(input logic [7:0] data);
        begin
            write = 1'b1;
            read = 1'b0;
            wr_data = data;
        end
    endtask  

    task op_read();
        begin
            write = 1'b0;
            read = 1'b1;
        end
    endtask

    task read_write(input logic [7:0] data);
        begin
            write = 1'b1;
            read = 1'b1;
            wr_data = data;
        end
    endtask

    // main testbench
    task run_testbench();
        // test reading emppty queue
        $display("test reading emppty queue");
        for (int i = 0; i < $urandom_range(1, 5); i++) begin
            op_read();
            @(negedge clk);
        end
        // burst write
        $display("burst write");
        for (int i = 0; i < 16 + $urandom_range(1, 20); i++) begin
            op_write(i);
            @(negedge clk);
        end
        // check write data
        $display("ccheck write data");
        for (int i = 0; i < 16; i++) begin
            op_read();
            $display("check valid read data");
            assert(rd_data == i);
            @(negedge clk);
        end

        $display("now queue should be empty");
        assert(empty);
        $display("read and write same time when empty should be treated as a write");

        read_write(0);
        @(negedge clk);

        $display("read write same time, length should be 1");
        for (int i = 1; i < $urandom_range(2, 8); i++) begin
            assert(num_elements == 1);
            read_write(i);
            assert(rd_data == i-1);
            @(negedge clk);
        end

        $display("test clear");
        clear = 1'b1;
        @(negedge clk);
        @(negedge clk);
        assert(full == 1'b0);
        assert(empty == 1'b1);
        assert(valid_rd == 1'b0);
    endtask

    initial begin
        // reset the system
        arst_n = 1'b0;
        read = 1'b0;
        write = 1'b0;
        clear = 1'b0;
        wr_data = 8'b0;
        @(negedge clk);

        arst_n = 1'b1;
        @(negedge clk);
        @(negedge clk);

        // -------------------------------
        // run test
        // -------------------------------
        fork
            // run main testbench thread
            begin
                run_testbench();
                $display(">> Test completed successfully at time %0t",$time);
                $finish;
            end
        join_none

        fork
            // timeout thread
            integer cycle_cnt;
            begin
                cycle_cnt = 0;
                // wait 3000 clock cycles
                repeat (30000) begin
                    @(posedge clk);
                    cycle_cnt++;
                end
                $display("** TIMEOUT: test did not finish after %0d cycles (time=%0t) **",
                         cycle_cnt, $time);
                $finish;
            end
        join_none
    end

endmodule : fifo_tb