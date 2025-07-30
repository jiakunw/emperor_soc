// tx_tb.sv
`include "../rx_tx.sv"
`timescale 1ns / 1ps

module tx_tb();
    logic clk, arst_n;
    logic start, tick;
    logic [7:0] din;
    logic tx_done;
    logic tx;

    tx #(.DATA_BITS(8), .STOP_BIT_TICK(16)) DUT (.*);

    //the system clock
    initial begin
        clk = 1'b0;
        forever #5 clk = ~clk;
    end

    task run_tick();
        begin
            tick = 1'b1;
            @(negedge clk);
            tick = 1'b0;
            @(negedge clk);
        end
    endtask

    task run_testbench();
        begin
            for (int i = 0; i < 150; i++) begin
                run_tick();
            end
        end
    endtask

    initial begin
        // reset the system
        arst_n = 1'b0;
        start = 1'b0;
        tick = 1'b0;
        din = 8'd0;
        @(negedge clk);

        arst_n = 1'b1;
        din = 8'b1100_1011;
        @(negedge clk);
        @(negedge clk);

        start = 1'b1;
        @(negedge clk);
        start = 1'b0;
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

endmodule : tx_tb