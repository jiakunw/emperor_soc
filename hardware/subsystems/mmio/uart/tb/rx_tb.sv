// rx_tb.sv
`include "../rx_tx.sv"
`timescale 1ns / 1ps

module rx_tb();
    logic clk, arst_n;
    logic rx;
    logic rx_full, tick;
    logic rx_done_tick;
    logic overrun_error;
    logic [7:0] dout;

    logic [7:0] data_send;

    assign data_send = 8'b0101_0011;

        // input logic clk, arst_n,
        // input logic rx, 
        // input logic tick, rx_full,
        // output logic rx_done_tick,
        // output logic overrun_error,
        // output logic [DATA_BITS-1:0] dout

    rx #(.DATA_BITS(8), .STOP_BIT_TICK(16)) DUT (.*);

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

    task send_bit(input logic bit_val);
        begin
            rx = bit_val;
            repeat (16) begin   // send bit every 16 tick
                run_tick();
            end
        end
    endtask

    task run_testbench();
        send_bit(1'b0);
        
        for (int i = 0; i < 8; i++) begin
            send_bit(data_send[i]);
        end
        
        // send stop bit
        send_bit(1'b1);
        
        repeat(2) @(negedge clk);
    endtask

    initial begin
        // reset the system
        arst_n = 1'b0;
        tick = 1'b0;
        rx = 1'b1;
        rx_full = 1'b0;
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
                $display("check received data");
                assert(dout == data_send);
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

endmodule : rx_tb