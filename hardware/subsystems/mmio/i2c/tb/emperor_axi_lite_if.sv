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
    endinterface
`endif