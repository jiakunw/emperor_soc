// rx_write_tb.sv
`include "../uart.sv"
`timescale 1ns / 1ps

module uart_core_tb();
    logic clk1, arst_n1;
    // interface with upstream
    logic read1, write1;
    logic [7:0] wr_data1;
    logic [9:0] dvsr1;
    logic [7:0] rd_data1;
    logic tx_full1, tx_empty1, rx_full1, rx_empty1, tx_idle1, rx_done_tick1;
    // interface with downstream (external device)
    logic rx1;
    logic tx1;

    logic clk2, arst_n2;
    // interface with upstream
    logic read2, write2;
    logic [7:0] wr_data2;
    logic [9:0] dvsr2;
    logic [7:0] rd_data2;
    logic tx_full2, tx_empty2, rx_full2, rx_empty2, tx_idle2, rx_done_tick2;
    // interface with downstream (external device)
    logic rx2;
    logic tx2;

    uart_core #(
        .DATA_BITS(8),
        .DVSR_WIDTH(10),
        .STOP_BIT_TICK(16),
        .FIFO_LENGTH(16)
    ) dut1 (
        .clk(clk1),
        .arst_n(arst_n1),
        .read(read1),
        .write(write1),
        .wr_data(wr_data1),
        .dvsr(dvsr1),
        .tx_idle(tx_idle1),
        .rd_data(rd_data1),
        .rx_done_tick(rx_done_tick1),
        .tx_full(tx_full1),
        .tx_empty(tx_empty1),
        .rx_full(rx_full1),
        .rx_empty(rx_empty1),
        .rx(rx1),
        .tx(tx1)
    );

    uart_core #(
        .DATA_BITS(8),
        .DVSR_WIDTH(10),
        .STOP_BIT_TICK(16),
        .FIFO_LENGTH(16)
    ) dut2 (
        .clk(clk2),
        .arst_n(arst_n2),
        .read(read2),
        .write(write2),
        .wr_data(wr_data2),
        .dvsr(dvsr2),
        .tx_idle(tx_idle2),
        .rd_data(rd_data2),
        .tx_full(tx_full2),
        .rx_done_tick(rx_done_tick2),
        .tx_empty(tx_empty2),
        .rx_full(rx_full2),
        .rx_empty(rx_empty2),
        .rx(tx1),
        .tx(tx2)
    );

    // clock for uart 1
    initial begin
        clk1 = 1'b0;
        forever #5 clk1 = ~clk1;
    end

    // clock for uart 2
    initial begin
        clk2 = 1'b0;
        forever #10 clk2 = ~clk2;
    end

    // randomly generate 16 test data
    logic [7:0] burst_data[16];
    logic [7:0] received_data[16];

    initial begin
        for (int i = 0; i < 16; i++) begin
            burst_data[i] = $urandom_range(0, 255); 
            $display("Generated data[%0d] = 0x%h", i, burst_data[i]);
        end
    end

    task automatic single_transfer_test(input logic [7:0] data);
        // write a singleton data to dut1
        write1 = 1'b1;
        wr_data1 = data;
        @(posedge clk1);
        write1 = 1'b0;
        @(posedge clk1);
        @(posedge clk1);
        @(posedge clk1);

        // wait until transaction is completed
        wait(tx_idle1);
        repeat($urandom_range(0,3)) @(posedge clk2);

        // read from dut2
        read2 = 1'b1;
        @(posedge clk2);
        if (rd_data2 != data) 
            $error("Single transfer mismatch! Expected 0x%h, Got 0x%h", data, rd_data2);
        else
            $display("Single transfer passed: 0x%h", data);
        read2 = 1'b0;
    endtask

    task automatic burst_write(input logic [7:0] data[]);
        // burst write
        foreach (data[i]) begin
            write1 = 1'b1;
            wr_data1 = data[i];
            @(posedge clk1);
            write1 = 1'b0;
            @(posedge clk1);
            // @(posedge clk1);
            // @(posedge clk1);

            // // wait until transaction is completed
            // wait(tx_idle1);
            // repeat($urandom_range(0,3)) @(posedge clk2);
        end
    endtask

    task automatic burst_read();
        // burst read
        foreach (received_data[i]) begin
            read2 = 1'b1;
            #1 received_data[i] = rd_data2; // force this to happen after read1 = 1'b1, otherwise race in the active region.
            @(posedge clk2);
            read2 = 1'b0;
            @(posedge clk2);
            repeat($urandom_range(0,3)) @(posedge clk2);
        end
    endtask

    task run_testbench();
        begin
            integer error_count = 0;  
            integer i;   
            integer rx_data_count = 0;              
            // single_transfer_test(8'b1111_1111);
            
            // #20;

            burst_write(burst_data); 

            // wait until 16 data received by rx
            fork
                begin
                    while (rx_data_count < 16) begin
                        @(posedge rx_done_tick2);  // get rx_done_tick2
                        rx_data_count++;
                        $display("Received data %0d at time %0t", rx_data_count, $time);
                    end
                end
            join_any

            // burst read after all data has been received
            if (rx_data_count == 16) begin
                burst_read();  // burst read data
            end else begin
                $error("Timeout: Only received %0d/16 data!", rx_data_count);
                $finish;
            end

            // check data consistancy
            for (i = 0; i < 16; i++) begin 
                if (burst_data[i] != received_data[i]) begin
                    $error("Data mismatch at index %0d: Expected = 0x%h, Received = 0x%h", 
                          i, burst_data[i], received_data[i]);
                    error_count++;
                end
                else begin
                    $display("Data[%0d] passed: 0x%h", i, burst_data[i]);
                end
            end

            // test summary
            if (error_count == 0) begin
                $display("TEST PASSED: All 16 burst transfers matched!");
            end else begin
                $error("TEST FAILED: %0d errors detected!", error_count);
            end
        end
    endtask

    initial begin   // baud rate 115200
        // reset the system
        arst_n1 = 1'b0;
        arst_n2 = 1'b0;

        // 116200 baud rate, dvsr = f_clk / 16*baud_rate
        dvsr1 = 10'd54;
        dvsr2 = 10'd27;

        read1 = 1'b0;
        read2 = 1'b0;

        write1 = 1'b0;
        write2 = 1'b0;

        wr_data1 = 8'd0;
        wr_data2 = 8'd0;

        rx1 = 1'b1;
        rx2 = 1'b1;
        @(posedge clk1);

        arst_n1 = 1'b1;
        arst_n2 = 1'b1;
        @(posedge clk1);
        @(posedge clk1);

        // -------------------------------
        // run test
        // -------------------------------
        fork
            // run main testbench thread
            begin
                $display("run tb");
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
                // wait 300000000 clock cycles
                repeat (300000000) begin
                    @(posedge clk1);
                    cycle_cnt++;
                end
                $display("** TIMEOUT: test did not finish after %0d cycles (time=%0t) **",
                         cycle_cnt, $time);
                $finish;
            end
        join_none
    end

endmodule : uart_core_tb