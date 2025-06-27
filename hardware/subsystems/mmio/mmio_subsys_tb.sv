// mmio_subsys_tb.sv
`include "mmio_subsys.sv"
`timescale 1ns / 1ps

//------------------------------------------------------------
// Module: mmio_subsys_tb
// Description:
//     A basic testbench for mmio_subsys.sv
//
// Fault Model:
//  1. Write Address Phase
//     - S_AXI_awvalid asserted but S_AXI_awready never asserted → address handshake timeout/blocking
//     - AWADDR outside of supported range → slave should respond with AXI_RESP_DECERR (2’b11)
//  2. Write Data Phase
//     - S_AXI_wvalid asserted but S_AXI_wready never asserted → data handshake deadlock
//     - WSTRB bits target read-only or unimplemented bytes → slave should respond with AXI_RESP_SLVERR (2’b10)
//  3. Write Response Phase
//     - BVALID never asserted → master never receives write response
//     - BRESP not AXI_RESP_OKAY (00) but error flag never cleared → error state not handled
//  4. Read Address Phase
//     - S_AXI_arvalid asserted but S_AXI_arready never asserted → read address handshake failure
//     - ARADDR outside of supported range → slave should respond with AXI_RESP_DECERR (2’b11)
//  5. Read Data Phase
//     - RVALID never asserted → master never receives read data
//     - RRESP not AXI_RESP_OKAY (00) → must correctly report AXI_RESP_SLVERR/AXI_RESP_DECERR
//     - RDATA does not match expected register contents or does not update with ARADDR
//  6. Sequencing and Back-to-Back Transactions
//     - Master issues a new AW/AR before previous B/R response is accepted → AXI-Lite does not support outstanding transactions
//  7. Timing and Reset Behavior
//     - Initiating transactions immediately after reset deassertion → input signals may not be stable
//     - Unintentional delta-cycle races in the TB drive logic → handshake signals could be sampled incorrectly
//  8. MMIO Device Specific Constraints
//     - Any invalid read/write to MMIO Device should correctly repot AXI_RESP_SLVERR/AXI_RESP_DECERR
//
// Author: Mongolian
// Date: 06/27/2025
//------------------------------------------------------------
module mmio_subsys_tb();
    logic clk, arst_n;
    // AXI slave interface with main Bus
    // write
    logic [7:0] S_AXI_awaddr;
    logic [2:0] S_AXI_awprot;
    logic S_AXI_awvalid;
    logic S_AXI_awready;
    logic [31:0] S_AXI_wdata;
    logic [3:0] S_AXI_wstrb;
    logic S_AXI_wvalid;
    logic S_AXI_wready;
    logic [1:0] S_AXI_bresp;
    logic S_AXI_bvalid;
    logic S_AXI_bready;
    // read
    logic [7:0] S_AXI_araddr;
    logic [2:0] S_AXI_arprot;
    logic S_AXI_arvalid;
    logic S_AXI_arready;
    logic [31:0] S_AXI_rdata;
    logic [1:0] S_AXI_rresp;
    logic S_AXI_rvalid;
    logic S_AXI_rready;

    mmio_subsystem dut (.*);

    //the system clock
    initial begin
        clk = 1'b0;
        forever #5 clk = ~clk;
    end

    task test_timer();
        // a simple write transaction: set auto reload register
        S_AXI_awaddr = 8'b0000_0001;
        S_AXI_awprot = 3'd0;
        S_AXI_awvalid = 1'b1;
        @(negedge clk);
        wait(S_AXI_awready);
        repeat($urandom_range(0,5)) @(negedge clk);
        S_AXI_wdata = 32'd200;
        S_AXI_wstrb = 4'b1111;
        repeat($urandom_range(0,3)) @(negedge clk);
        S_AXI_wvalid = 1'b1;
        @(negedge clk);
        wait(S_AXI_wready);
        @(negedge clk);
        S_AXI_bvalid = 1'b1;
        assert(S_AXI_bresp == AXI_RESP_OKAY);
        @(negedge clk);
        wait(S_AXI_bready);
    endtask

    task run_testbench();
        test_timer();
        @(negedge clk);
    endtask

    // run test
    initial begin
        // reset the system
        arst_n = 1'b0;
        S_AXI_awaddr = 'b0;
        S_AXI_awprot = 'b0;
        S_AXI_awvalid = 'b0;
        S_AXI_wdata = 'b0;
        S_AXI_wstrb = 'b0;
        S_AXI_wvalid = 'b0;
        S_AXI_bready = 'b0;
        S_AXI_araddr = 'b0;
        S_AXI_arprot = 'b0;
        S_AXI_arvalid = 'b0;
        S_AXI_rready = 'b0;
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
                // wait 300 clock cycles
                repeat (300) begin
                    @(posedge clk);
                    cycle_cnt++;
                end
                $display("** TIMEOUT: test did not finish after %0d cycles (time=%0t) **",
                         cycle_cnt, $time);
                $finish;
            end
        join_none
    end

endmodule : mmio_subsys_tb