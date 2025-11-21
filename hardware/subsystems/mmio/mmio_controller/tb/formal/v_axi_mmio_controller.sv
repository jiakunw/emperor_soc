// formal_axi_tb.sv
`include "mmio_subsys.sv"
`include "emperor_axi_lite_if.sv"
`timescale 1ns / 1ps

// 16'h4600_01XX is GPIO's address, only use that
module v_axi_mmio_controller
(
    input logic aclk, arst_n,
    // AXI slave interface with main Bus
    // write
    input logic [31:0] S_AXI_awaddr,
    input logic [2:0] S_AXI_awprot,
    input logic S_AXI_awvalid,
    input logic S_AXI_awready,
    input logic [31:0] S_AXI_wdata,
    input logic [3:0] S_AXI_wstrb,
    input logic S_AXI_wvalid,
    input logic S_AXI_wready,
    input logic [1:0] S_AXI_bresp,
    input logic S_AXI_bvalid,
    input logic S_AXI_bready,
    // read
    input logic [31:0] S_AXI_araddr,
    input logic [2:0] S_AXI_arprot,
    input logic S_AXI_arvalid,
    input logic S_AXI_arready,
    input logic [31:0] S_AXI_rdata,
    input logic [1:0] S_AXI_rresp,
    input logic S_AXI_rvalid,
    input logic S_AXI_rready,
    // slot interface
    input logic [15:0] slot_chip_select,
    input logic [15:0] slot_signal_received,
    input logic read, write,
    input logic [7:0] reg_addr,
    input logic [31:0] slot_wr_data,
    input logic [31:0] slot_rd_data [15:0],
    input logic [15:0] slot_wr_done, slot_rd_done, slot_idle,
    input logic [15:0] slot_slave_error, slot_decode_error,
    input logic transaction_completed
);
    // handshake signals
    // write
    logic write_addr_handshake;
    logic write_data_handshake;
    logic write_response_handshake;
    // read
    logic read_addr_handshake;
    logic read_response_handshake;

    // write handshakes
    assign write_addr_handshake = S_AXI_awvalid & S_AXI_awready;
    assign write_data_handshake = S_AXI_wvalid & S_AXI_wready;
    assign write_response_handshake = S_AXI_bvalid & S_AXI_bready;
    // read handshakes
    assign read_addr_handshake = S_AXI_arvalid & S_AXI_arready;
    assign read_response_handshake = S_AXI_rvalid & S_AXI_rready'

    // other signals
    
    // assumed properties
    // write
    property p_addr_write_stable;
        @(posedge aclk) disable iff (!arst_n)
            (S_AXI_awvalid && $past(S_AXI_awvalid)) |-> 
                $stable(S_AXI_awaddr);
    endproperty

    property p_secure_write_access;
        @(posedge aclk) disable iff (!arst_n) 
            (S_AXI_awprot == 2'd0);
    endproperty

    property p_deassert_awvalid_after_handshake;
        @(posedge aclk) disable iff (!arst_n)
            (write_addr_handshake) |=>
                (!S_AXI_awvalid until_with write_response_handshake);
    endproperty

    property p_data_write_stable;
        @(posedge aclk) disable iff (!arst_n)
            (S_AXI_wvalid && $past(S_AXI_wvalid)) |-> 
                $stable(S_AXI_wdata);
    endproperty

    property p_deassert_wvalid_after_handshake;
        @(posedge aclk) disable iff (!arst_n)
            (write_data_handshake) |=>
                (!S_AXI_wvalid until_with write_response_handshake)
    endproperty

    property p_resp_write_stable;
        @(posedge aclk) disable iff (!arst_n) 
            (S_AXI_bvalid && $past(S_AXI_bvalid)) |-> 
                $stable(S_AXI_bresp);
    endproperty

    // read
    property p_addr_read_stable;
        @(posedge aclk) disable iff (!arst_n) 
            (S_AXI_arvalid && $past(S_AXI_arvalid)) |-> 
                $stable(S_AXI_araddr);
    endproperty

    property p_deassert_arvalid_after_handshake;
        @(posedge aclk) disable iff (!arst_n) 
            (read_addr_handshake) |=>
                (!S_AXI_arvalid until_with read_response_handshake);
    endproperty

    property p_data_read_stable;
        @(posedge aclk) disable iff (!arst_n) 
            (S_AXI_rvalid && $past(S_AXI_rvalid)) |-> 
                $stable(S_AXI_rdata);
    endproperty

    property p_resp_read_stable;
        @(posedge aclk) disable iff (!arst_n) 
            (S_AXI_rvalid && $past(S_AXI_rvalid)) |-> 
                $stable(S_AXI_rresp);
    endproperty

    // slave device
    property p_onehot_slot_wr_done;
        @(posedge aclk) disable iff (!arst_n) 
            $onehot(slot_wr_done);
    endproperty

    property p_onehot_slot_rd_done;
        @(posedge aclk) disable iff (!arst_n) 
            $onehot(slot_rd_done);
    endproperty

    property p_onehot_slot_slave_error;
        @(posedge aclk) disable iff (!arst_n)
            $onehot(slot_slave_error);
    endproperty

    property p_onehot_slot_decode_error;
        @(posedge aclk) disable iff (!arst_n)
            $onehot(slot_decode_error);
    endproperty

    property p_assertion_slot_wr_done;
        @(posedge aclk) disable iff (!arst_n)
            S_AXI_awvalid |-> ##[0:$] slot_wr_done;  // Eventually slot_wr_done will be asserted
    endproperty

endmodule