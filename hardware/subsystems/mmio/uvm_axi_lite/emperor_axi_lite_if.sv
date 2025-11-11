// emperor_axi_lite_if.sv

`ifndef EMPEROR_AXI_LITE_IF
    `define EMPEROR_AXI_LITE_IF

    `include "uvm_macros.svh"

    interface emperor_axi_lite_if(input logic aclk, input logic arst_n);
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

        // enable assertions
        bit en_check;

        // AXI Lite properties
        // write channel
        // W 通道：WVALID 期间，WDATA/WSTRB 稳定直到 WREADY
        property awvalid_hold_until_awready_p;
            @(posedge aclk) disable iff(!arst_n)
                (S_AXI_awvalid && !S_AXI_awready) |-> S_AXI_awvalid until_with S_AXI_awready;
        endproperty

        // once we have write_addr_handshake we must have write data handshake
        property write_addr_handshake_p;
        @(posedge aclk) disable iff(!arst_n)
            (S_AXI_awready && S_AXI_awvalid) |-> ##[0:$] (S_AXI_wvalid && S_AXI_wready);
        endproperty

        // once we have write_data_handshake we must have write response handshake
        property write_data_handshake_p;
            @(posedge aclk) disable iff(!arst_n)
                (S_AXI_wready && S_AXI_wvalid) |-> ##[0:$] (S_AXI_bvalid && S_AXI_bready);
        endproperty

        // S_AXI_awaddr holds constant when S_AXI_awvalid asserted
        property const_write_addr_awvalid;
            @(posedge aclk) disable iff(!arst_n)
                (S_AXI_awvalid) |-> $stable(S_AXI_awaddr);
        endproperty

        // S_AXI_awaddr holds constant when S_AXI_awvalid asserted
        property const_write_addr_awvalid;
            @(posedge aclk) disable iff(!arst_n)
                (S_AXI_awvalid) |-> $stable(S_AXI_awaddr);
        endproperty

        // S_AXI_wdata  holds constant when S_AXI_wvalid asserted
        property const_write_addr_awvalid;
            @(posedge aclk) disable iff(!arst_n)
                (S_AXI_wvalid) |-> $stable(S_AXI_wdata);
        endproperty

        // S_AXI_bresp  holds constant when S_AXI_bvalid asserted
        property const_write_addr_awvalid;
            @(posedge aclk) disable iff(!arst_n)
                (S_AXI_bvalid) |-> $stable(S_AXI_bresp);
        endproperty

        // read channel
        // R 通道：WVALID 期间，WDATA/WSTRB 稳定直到 WREADY
        property arvalid_hold_until_ready_p;
            @(posedge aclk) disable iff(!arst_n)
                (S_AXI_arvalid && !S_AXI_arready) |-> S_AXI_arvalid until_with S_AXI_arready;
        endproperty

        // once we have read_addr_handshake we must have read data handshake
        property read_addr_handshake_p;
        @(posedge aclk) disable iff(!arst_n)
            (S_AXI_arready && S_AXI_arvalid) |-> ##[0:$] (S_AXI_rvalid && S_AXI_rready);
        endproperty

        // S_AXI_araddr holds constant when S_AXI_arvalid asserted
        property const_read_addr_awvalid;
            @(posedge aclk) disable iff(!arst_n)
                (S_AXI_arvalid) |-> $stable(S_AXI_araddr);
        endproperty

        // S_AXI_rdata holds constant when S_AXI_rvalid asserted
        property const_write_addr_awvalid;
            @(posedge aclk) disable iff(!arst_n)
                (S_AXI_rvalid) |-> $stable(S_AXI_rdata);
        endproperty

        // S_AXI_rresp holds constant when S_AXI_rvalid asserted
        property const_write_addr_awvalid;
            @(posedge aclk) disable iff(!arst_n)
                (S_AXI_rvalid) |-> $stable(S_AXI_rresp);
        endproperty
    
        initial begin
            en_check = 1;
        end
    endinterface
`endif