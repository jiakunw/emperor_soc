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
    logic [31:0] S_AXI_awaddr;
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
    logic [31:0] S_AXI_araddr;
    logic [2:0] S_AXI_arprot;
    logic S_AXI_arvalid;
    logic S_AXI_arready;
    logic [31:0] S_AXI_rdata;
    logic [1:0] S_AXI_rresp;
    logic S_AXI_rvalid;
    logic S_AXI_rready;
    // external gpio
    logic [8:0] in_ports;
    logic [3:0] out_ports;
    // uart external
    logic rx;
    logic tx;
    // debug
    output logic [2:0] debug_r_state;
    output logic [7:0] debug_addr;
    output logic [15:0] debug_slot_wr_done;
    output logic [15:0] debug_slot_chip_select;
    output logic debug_transaction_completed;
    output logic [1:0] debug_gpio_r_state, debug_gpio_w_next_state;

    mmio_subsystem dut (.*);

    //the system clock
    initial begin
        clk = 1'b0;
        forever #5 clk = ~clk;
    end

    task test_timer();
        // a simple write transaction: set auto reload register
        $display(" ");
        $display("***************** start timer test *****************");
        $display(" ");
        $display("write 200 to the auto-reload register, testing AXI write protocol");
        S_AXI_awaddr = 8'b0000_0001;
        S_AXI_awprot = 3'd0;
        S_AXI_awvalid = 1'b1;
        $display("wait for S_AXI_awready");
        wait(S_AXI_awready == 1'b1);
        $display("received S_AXI_awready");
        repeat($urandom_range(0,5)) @(posedge clk);
        S_AXI_awvalid = 1'b0;
        S_AXI_wdata = 32'd200;
        S_AXI_wstrb = 4'b1111;
        repeat($urandom_range(0,3)) @(posedge clk);
        S_AXI_wvalid = 1'b1;
        $display("wait for S_AXI_wready");
        wait(S_AXI_wready == 1'b1);
        $display("received S_AXI_wready");
        @(posedge clk);
        #5;
        S_AXI_wvalid = 1'b0;
        S_AXI_bready = 1'b1;
        $display("wait for S_AXI_bvalid");
        wait(S_AXI_bvalid == 1'b1);
        $display("received S_AXI_bvalid");
        $display("write response should be AXI_RESP_OKAY");
        assert(S_AXI_bresp == AXI_RESP_OKAY);
        @(posedge clk);
        #5;
        S_AXI_bready = 1'b0;
        repeat($urandom_range(0,5)) @(posedge clk);
        $display("contrl should go back to INIT state");
        assert(dut.control.r_state == 3'd0);
        $display("done with setting the auto reload register");

        $display(" ");

        $display("enabling the timer by writing 1 to the control register");
        S_AXI_awaddr = 8'b0000_0010;
        S_AXI_awprot = 3'd0;
        S_AXI_awvalid = 1'b1;
        $display("wait for S_AXI_awready");
        wait(S_AXI_awready == 1'b1);
        $display("received S_AXI_awready");
        repeat($urandom_range(0,5)) @(posedge clk);
        S_AXI_awvalid = 1'b0;
        S_AXI_wdata = 32'd1;
        S_AXI_wstrb = 4'b1111;
        repeat($urandom_range(0,3)) @(posedge clk);
        S_AXI_wvalid = 1'b1;
        $display("wait for S_AXI_wready!");
        wait(S_AXI_wready == 1'b1);
        @(posedge clk);
        #5;
        S_AXI_wvalid = 1'b0;
        $display("received S_AXI_wready");
        @(posedge clk);
        S_AXI_bready = 1'b1;
        $display("wait for S_AXI_bvalid");
        wait(S_AXI_bvalid == 1'b1);
        $display("received S_AXI_bvalid");
        $display("write response should be AXI_RESP_OKAY");
        assert(S_AXI_bresp == AXI_RESP_OKAY);
        @(posedge clk);
        #5;
        S_AXI_bready = 1'b0;
        repeat($urandom_range(0,5)) @(posedge clk);
        $display("contrl should go back to INIT state");
        assert(dut.control.r_state == 3'd0);
        $display("done with setting the control register");

        $display(" ");

        $display("letting the counter run until finishes");
        repeat(200) @(posedge clk);

        $display(" ");

        $display("read the value of counter, we expect it to be 200 becasue we did not enable event generation register, testing AXI read protocol");
        S_AXI_araddr = 8'b0000_0001;
        S_AXI_arprot = 3'd0;
        S_AXI_arvalid = 1'b1;
        $display("wait for S_AXI_arready");
        wait(S_AXI_arready);
        $display("received S_AXI_arready");
        repeat($urandom_range(0,5)) @(posedge clk);
        S_AXI_arvalid = 1'b0;
        repeat($urandom_range(0,3)) @(posedge clk);
        S_AXI_rready = 1'b1;
        $display("wait for S_AXI_rvalid");
        wait(S_AXI_rvalid);
        $display("received S_AXI_rvalid");
        $display("read valud should be 200");
        assert(S_AXI_rdata == 32'd200);
        S_AXI_rready = 1'b1;
        $display("read response should be AXI_RESP_OKAY");
        assert(S_AXI_rresp == AXI_RESP_OKAY);
        @(posedge clk);
        @(posedge clk);
        S_AXI_rready = 1'b0;
        $display("contrl should go back to INIT state");
        assert(dut.control.r_state == 3'd0);
        $display("done with reading the counter value");
        @(posedge clk);
        @(posedge clk);

        $display(" ");

        $display("read invalid addresses, should give decode error");
        for (int i = 5; i < 10; i++) begin
            S_AXI_araddr = i;
            S_AXI_arprot = 3'd0;
            S_AXI_arvalid = 1'b1;
            $display("wait for S_AXI_arready");
            wait(S_AXI_arready);
            $display("received S_AXI_arready");
            repeat($urandom_range(0,5)) @(posedge clk);
            S_AXI_arvalid = 1'b0;
            repeat($urandom_range(0,3)) @(posedge clk);
            S_AXI_rready = 1'b1;
            $display("wait for S_AXI_rvalid");
            wait(S_AXI_rvalid);
            $display("received S_AXI_rvalid");
            S_AXI_rready = 1'b1;
            $display("read response should be AXI_RESP_DECERR");
            assert(S_AXI_rresp == AXI_RESP_DECERR);
            @(posedge clk);
            @(posedge clk);
            S_AXI_rready = 1'b0;
            $display("contrl should go back to INIT state");
            assert(dut.control.r_state == 3'd0);
            @(posedge clk);
            @(posedge clk);
        end

        $display(" ");

        $display("write to invalid addresses, should give decode error");
        for (int i = 5; i < 16; i++) begin
            S_AXI_awaddr = i;
            S_AXI_awprot = 3'd0;
            S_AXI_awvalid = 1'b1;
            $display("wait for S_AXI_awready");
            wait(S_AXI_awready);
            $display("received S_AXI_awready");
            repeat($urandom_range(0,5)) @(posedge clk);
            S_AXI_awvalid = 1'b0;
            S_AXI_wdata = 32'd200;
            S_AXI_wstrb = 4'b1111;
            repeat($urandom_range(0,3)) @(posedge clk);
            S_AXI_wvalid = 1'b1;
            $display("wait for S_AXI_wready");
            wait(S_AXI_wready);
            $display("received S_AXI_wready");
            @(posedge clk);
            #5;
            S_AXI_wvalid = 1'b0;
            S_AXI_bready = 1'b1;
            @(posedge clk);
            @(posedge clk);
            $display("wait for S_AXI_bvalid");
            wait(S_AXI_bvalid);
            $display("received S_AXI_bvalid");
            $display("write response should be AXI_RESP_OKAY");
            assert(S_AXI_bresp == AXI_RESP_OKAY);
            S_AXI_bready = 1'b0;
            @(posedge clk);
            #5;
            repeat($urandom_range(0,5)) @(posedge clk);
            $display("contrl should go back to INIT state");
            assert(dut.control.r_state == 3'd0);
        end

        $display(" ");
        $display("**************** finished timer test ****************");
    endtask

    // uart test
    // randomly generate 16 test data
    logic [7:0] burst_data[16];

    initial begin
        for (int i = 0; i < 16; i++) begin
            burst_data[i] = $urandom_range(0, 255); 
            $display("Generated data[%0d] = 0x%h", i, burst_data[i]);
        end
    end

    task write_data(logic [7:0] addr, logic [31:0] data_to_write);
        @(posedge clk); #1;
        S_AXI_awaddr = addr;    // uart tx address
        S_AXI_awprot = 3'd0;
        S_AXI_awvalid = 1'b1;
        S_AXI_wvalid = 1'b1;
        S_AXI_bready = 1'b1;
        S_AXI_wdata = data_to_write;
        $display("wait for S_AXI_awready");
        wait(S_AXI_awready == 1'b1);
        $display("received S_AXI_awready");
        @(posedge clk); #1;
        S_AXI_awvalid = 1'b0;
        S_AXI_wstrb = 4'b0001;
        repeat($urandom_range(1,3)) @(posedge clk);  #1;
        $display("wait for S_AXI_wready");
        @(posedge clk); #1;
        wait(S_AXI_wready == 1'b1);
        $display("received S_AXI_wready");
        @(posedge clk); #1;
        S_AXI_wvalid = 1'b0;
        $display("wait for S_AXI_bvalid");
        wait(S_AXI_bvalid == 1'b1);
        $display("received S_AXI_bvalid");
        // repeat($urandom_range(1,3)) @(posedge clk); #1;
        // $display("received S_AXI_bvalid");
    endtask

    task read_data(logic [7:0] addr);
        @(posedge clk); #1;
        S_AXI_araddr = addr;    // uart tx address
        S_AXI_arprot = 3'd0;
        S_AXI_arvalid = 1'b1;
        $display("wait for S_AXI_arready");
        wait(S_AXI_arready == 1'b1);
        $display("received S_AXI_arready");
        repeat($urandom_range(1,5)) @(posedge clk); #1;
        S_AXI_arvalid = 1'b0;
        repeat($urandom_range(1,3)) @(posedge clk); #1;
        S_AXI_rready = 1'b1;
        $display("wait for S_AXI_rvalid");
        wait(S_AXI_rvalid);
        $display("received S_AXI_rvalid");
        // S_AXI_rready = 1'b1;
        // $display("read response should be AXI_RESP_DECERR");
        // assert(S_AXI_rresp == AXI_RESP_DECERR);
        // @(posedge clk); #1
        // S_AXI_rready = 1'b0;
        // $display("contrl should go back to INIT state");
        // assert(dut.control.r_state == 3'd0);
        // @(posedge clk); #1;
    endtask

    task test_uart();
        // axi burst write transaction
        $display(" ");
        $display("***************** start uart test *****************");
        $display(" ");
        $display("write 16 data to uart tx, testing AXI write protocol");
        for (int i = 0; i < 16; i++) begin
            write_data(8'b0010_0001, {24'b0, burst_data[i]});
            $display("write response should be AXI_RESP_OKAY");
            assert(S_AXI_bresp == AXI_RESP_OKAY);
            @(posedge clk); #1;
            S_AXI_bready = 1'b0;
            repeat($urandom_range(1,3)) @(posedge clk); #1
            $display("contrl should go back to INIT state");
            assert(dut.control.r_state == 3'd0);
            // @(posedge clk); #1;
            // S_AXI_awaddr = 8'b0010_0001;    // uart tx address
            // S_AXI_awprot = 3'd0;
            // S_AXI_awvalid = 1'b1;
            // $display("wait for S_AXI_awready");
            // wait(S_AXI_awready == 1'b1);
            // $display("received S_AXI_awready");
            // repeat($urandom_range(1,5)) @(posedge clk); #1;
            // S_AXI_awvalid = 1'b0;
            // S_AXI_wdata = {24'b0, burst_data[i]};
            // S_AXI_wstrb = 4'b0001;
            // repeat($urandom_range(1,3)) @(posedge clk);  #1;
            // S_AXI_wvalid = 1'b1;
            // $display("wait for S_AXI_wready");
            // @(posedge clk); #1;
            // wait(S_AXI_wready == 1'b1);
            // $display("received S_AXI_wready");
            // @(posedge clk); #1;
            // S_AXI_wvalid = 1'b0;
            // S_AXI_bready = 1'b1;
            // $display("wait for S_AXI_bvalid");
            // wait(S_AXI_bvalid == 1'b1);
            // repeat($urandom_range(1,3)) @(posedge clk); #1;
            // $display("received S_AXI_bvalid");
            // $display("write response should be AXI_RESP_OKAY");
            // assert(S_AXI_bresp == AXI_RESP_OKAY);
            // @(posedge clk); #1;
            // S_AXI_bready = 1'b0;
            // repeat($urandom_range(0,5)) @(posedge clk);
            // $display("contrl should go back to INIT state");
            // assert(dut.control.r_state == 3'd0);
        end

        $display("check data consistancy");
        for (int i = 0; i < 16; i++) begin
            assert(burst_data[i] == dut.emperor_uart.core.tx_fifo.rf.r_reg_array[i]);
        end
        $display("done with bursting write 16 data");
        $display("");

        $display("clear TX's FIFO");
        write_data(8'b0010_0011, 32'd2);
        $display("write response should be AXI_RESP_SLVERR");
        assert(S_AXI_bresp == AXI_RESP_OKAY);
        @(posedge clk); #1;
        S_AXI_bready = 1'b0;
        repeat($urandom_range(0,5)) @(posedge clk); #1;
        $display("contrl should go back to INIT state");
        assert(dut.control.r_state == 3'd0);
        $display("TX FIFO should be empty");
        assert(dut.emperor_uart.core.tx_fifo.empty == 1'b1);
        $display("TX FIFO should not be full");
        assert(dut.emperor_uart.core.tx_fifo.full == 1'b0);
        $display("TX FIFO should have 0 elements");
        assert(dut.emperor_uart.core.tx_fifo.num_elements == 0);
        $display("TX FIFO read pointer should be 0");
        assert(dut.emperor_uart.core.tx_fifo.control.r_rd_logic == 0);
        $display("TX FIFO write pointer should be 0");
        assert(dut.emperor_uart.core.tx_fifo.control.r_wr_logic == 0);
        $display("TX FIFO every element should be 0");
        for (int i = 0; i < 16; i++) begin
            assert(dut.emperor_uart.core.tx_fifo.rf.r_reg_array[i] == 0);
        end
        $display("read status register, should be 0");
        read_data(8'b0010_0100);
        $display("read response should be AXI_RESP_OKAY");
        assert(S_AXI_rresp == AXI_RESP_OKAY);
        $display("read status register, should be 0");
        assert(S_AXI_rdata == 32'd0);
        @(posedge clk); #1
        S_AXI_rready = 1'b0;
        $display("contrl should go back to INIT state");
        assert(dut.control.r_state == 3'd0);
        @(posedge clk); #1;

        $display("");
        $display("test invalid read");
        $display("right now rx fifo is empty, reading from it should cause an invalid read");
        read_data(8'b0010_0000);
        $display("read response should be AXI_RESP_SLVERR");
        assert(S_AXI_rresp == AXI_RESP_SLVERR);
        @(posedge clk); #1
        S_AXI_rready = 1'b0;
        $display("contrl should go back to INIT state");
        assert(dut.control.r_state == 3'd0);
        @(posedge clk); #1;
        
        $display("read from the status register, 8th bit should be 1 and rest should be 0");
        read_data(8'b0010_0100);
        $display("read response should be AXI_RESP_OKAY");
        assert(S_AXI_rresp == AXI_RESP_OKAY);
        $display("read status register, 8th bit should be 1 and rest should be 0");
        assert(S_AXI_rdata == 32'h0000_0100);
        @(posedge clk); #1
        S_AXI_rready = 1'b0;
        $display("contrl should go back to INIT state");
        assert(dut.control.r_state == 3'd0);
        @(posedge clk); #1;

        $display("read from the status register, this time it should be zeroed out");
        read_data(8'b0010_0100);
        $display("read response should be AXI_RESP_OKAY");
        assert(S_AXI_rresp == AXI_RESP_OKAY);
        $display("read status register, this time it should be zeroed out");
        assert(S_AXI_rdata == 32'd0);
        @(posedge clk); #1
        S_AXI_rready = 1'b0;
        $display("contrl should go back to INIT state");
        assert(dut.control.r_state == 3'd0);
        @(posedge clk); #1;

        $display("");
        $display("test invalid write");
        $display("rx's fifo is read only, writing to it should give an error");
        write_data(8'b0010_0000, $urandom_range(0, 255));
        $display("write response should be AXI_RESP_SLVERR");
        assert(S_AXI_bresp == AXI_RESP_SLVERR);
        @(posedge clk); #1
        S_AXI_bready = 1'b0;
        $display("contrl should go back to INIT state");
        assert(dut.control.r_state == 3'd0);
        @(posedge clk); #1;
        
        $display("read from the status register, 8th bit should be 1 and rest should be 0");
        read_data(8'b0010_0100);
        $display("read response should be AXI_RESP_OKAY");
        assert(S_AXI_rresp == AXI_RESP_OKAY);
        $display("read status register, 8th bit should be 1 and rest should be 0");
        assert(S_AXI_rdata == 32'h0000_0200);
        @(posedge clk); #1
        S_AXI_rready = 1'b0;
        $display("contrl should go back to INIT state");
        assert(dut.control.r_state == 3'd0);
        @(posedge clk); #1;

        $display("read from the status register, this time it should be zeroed out");
        read_data(8'b0010_0100);
        $display("read response should be AXI_RESP_OKAY");
        assert(S_AXI_rresp == AXI_RESP_OKAY);
        $display("read status register, this time it should be zeroed out");
        assert(S_AXI_rdata == 32'd0)
        @(posedge clk); #1
        S_AXI_rready = 1'b0;
        $display("contrl should go back to INIT state");
        assert(dut.control.r_state == 3'd0);
        @(posedge clk); #1;
        
        $display("");
        $display("status register is read only, writing to it should cause error");
        write_data(8'b0010_0100, $urandom_range(0, 255));
        $display("write response should be AXI_RESP_SLVERR");
        assert(S_AXI_bresp == AXI_RESP_SLVERR);
        @(posedge clk); #1
        S_AXI_bready = 1'b0;
        $display("contrl should go back to INIT state");
        assert(dut.control.r_state == 3'd0);
        @(posedge clk); #1;
        
        $display("read from the status register, 8th bit should be 1 and rest should be 0");
        read_data(8'b0010_0100);
        $display("read response should be AXI_RESP_OKAY");
        assert(S_AXI_rresp == AXI_RESP_OKAY);
        $display("read status register, 8th bit should be 1 and rest should be 0");
        assert(S_AXI_rdata == 32'h0000_0200);
        @(posedge clk); #1
        S_AXI_rready = 1'b0;
        $display("contrl should go back to INIT state");
        assert(dut.control.r_state == 3'd0);
        @(posedge clk); #1;

        $display("read from the status register, this time it should be zeroed out");
        read_data(8'b0010_0100);
        $display("read response should be AXI_RESP_OKAY");
        assert(S_AXI_rresp == AXI_RESP_OKAY);
        $display("read status register, this time it should be zeroed out");
        assert(S_AXI_rdata == 32'd0);
        @(posedge clk); #1
        S_AXI_rready = 1'b0;
        $display("contrl should go back to INIT state");
        assert(dut.control.r_state == 3'd0);
        @(posedge clk); #1;

        $display("");
        $display("test 2 successive invalid writes");
        $display("status register is read only, writing to it should cause error");
        write_data(8'b0010_0100, $urandom_range(0, 255));
        $display("write response should be AXI_RESP_SLVERR");
        assert(S_AXI_bresp == AXI_RESP_SLVERR);
        @(posedge clk); #1
        S_AXI_bready = 1'b0;
        $display("contrl should go back to INIT state");
        assert(dut.control.r_state == 3'd0);
        @(posedge clk); #1;

        $display("rx's fifo is read only, writing to it should give an error");
        write_data(8'b0010_0000, $urandom_range(0, 255));
        $display("write response should be AXI_RESP_SLVERR");
        assert(S_AXI_bresp == AXI_RESP_SLVERR);
        @(posedge clk); #1
        S_AXI_rready = 1'b0;
        $display("contrl should go back to INIT state");
        assert(dut.control.r_state == 3'd0);
        @(posedge clk); #1;
        
        $display("read from the status register, 8th bit should be 1 and rest should be 0");
        read_data(8'b0010_0100);
        $display("read response should be AXI_RESP_OKAY");
        assert(S_AXI_rresp == AXI_RESP_OKAY);
        $display("read status register, 8th bit should be 1 and rest should be 0");
        assert(S_AXI_rdata == 32'h0000_0200);
        @(posedge clk); #1
        S_AXI_rready = 1'b0;
        $display("contrl should go back to INIT state");
        assert(dut.control.r_state == 3'd0);
        @(posedge clk); #1;

        $display("read from the status register, this time it should be zeroed out");
        read_data(8'b0010_0100);
        $display("read response should be AXI_RESP_OKAY");
        assert(S_AXI_rresp == AXI_RESP_OKAY);
        $display("read status register, this time it should be zeroed out");
        assert(S_AXI_rdata == 32'd0);
        @(posedge clk); #1
        S_AXI_rready = 1'b0;
        $display("contrl should go back to INIT state");
        assert(dut.control.r_state == 3'd0);
        @(posedge clk); #1;

        $display("");
        $display("test 1 invalid read and 1 invalid write");
        $display("right now rx fifo is empty, reading from it should cause an invalid read");
        read_data(8'b0010_0000);
        $display("read response should be AXI_RESP_SLVERR");
        assert(S_AXI_rresp == AXI_RESP_SLVERR);
        @(posedge clk); #1
        S_AXI_rready = 1'b0;
        $display("contrl should go back to INIT state");
        assert(dut.control.r_state == 3'd0);
        @(posedge clk); #1;

        $display("rx's fifo is read only, writing to it should give an error");
        write_data(8'b0010_0000, $urandom_range(0, 255));
        $display("write response should be AXI_RESP_SLVERR");
        assert(S_AXI_bresp == AXI_RESP_SLVERR);
        @(posedge clk); #1
        S_AXI_bready = 1'b0;
        $display("contrl should go back to INIT state");
        assert(dut.control.r_state == 3'd0);
        @(posedge clk); #1;
        
        $display("read from the status register, 8th bit should be 1 and rest should be 0");
        read_data(8'b0010_0100);
        $display("read response should be AXI_RESP_OKAY");
        assert(S_AXI_rresp == AXI_RESP_OKAY);
        $display("read status register, 8th bit and 9th should be 1 and rest should be 0");
        assert(S_AXI_rdata == 32'h0000_0300);
        @(posedge clk); #1
        S_AXI_rready = 1'b0;
        $display("contrl should go back to INIT state");
        assert(dut.control.r_state == 3'd0);
        @(posedge clk); #1;

        $display("read from the status register, this time it should be zeroed out");
        read_data(8'b0010_0100);
        $display("read response should be AXI_RESP_OKAY");
        assert(S_AXI_rresp == AXI_RESP_OKAY);
        $display("read status register, this time it should be zeroed out");
        assert(S_AXI_rdata == 32'd0);
        @(posedge clk); #1
        S_AXI_rready = 1'b0;
        $display("contrl should go back to INIT state");
        assert(dut.control.r_state == 3'd0);
        @(posedge clk); #1;

        $display(" ");
        $display("test decode error");
        for (int i = 1; i < 10; i++) begin
            read_data(8'b0010_0100 + i);
            $display("read response should be AXI_RESP_DECERR");
            assert(S_AXI_rresp == AXI_RESP_DECERR);
            @(posedge clk); #1
            S_AXI_rready = 1'b0;
            $display("contrl should go back to INIT state");
            assert(dut.control.r_state == 3'd0);
            @(posedge clk); #1;
        end
        for (int i = 1; i < 10; i++) begin
            write_data(8'b0010_0100 + i, $urandom_range(0, 255));
            $display("write response should be AXI_RESP_DECERR");
            assert(S_AXI_bresp == AXI_RESP_DECERR);
            @(posedge clk); #1
            S_AXI_bready = 1'b0;
            $display("contrl should go back to INIT state");
            assert(dut.control.r_state == 3'd0);
            @(posedge clk); #1;
        end
    endtask

    task run_testbench();
        @(posedge clk);
        // test_timer();
        test_uart();
        @(posedge clk);
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
        @(posedge clk);

        arst_n = 1'b1;
        @(posedge clk);
        @(posedge clk);

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

endmodule : mmio_subsys_tb