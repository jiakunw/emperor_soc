// axi_lite_bus.sv
`include "../const.sv"
`timescale 1ns / 1ps

module axi_lite_bus
    (
    input logic clk, arest_n,
    // AXI slave interface with CPU
    input logic [31:0] S_AXI_awaddr,
    input logic [2:0] S_AXI_awprot,
    input logic S_AXI_awvalid,
    output logic S_AXI_awready,
    input logic [31:0] S_AXI_wdata,
    input logic [3:0] S_AXI_wstrb,
    input logic S_AXI_wvalid,
    output logic S_AXI_wready,
    output logic [1:0] S_AXI_bresp,
    output logic S_AXI_bvalid,
    input logic S_AXI_bready,
    input logic [31:0] S_AXI_araddr,
    input logic [2:0] S_AXI_arprot,
    input logic S_AXI_arvalid,
    output logic S_AXI_arready,
    output logic [31:0] S_AXI_rdata,
    output logic [1:0] S_AXI_rresp,
    output logic S_AXI_rvalid,
    input logic S_AXI_rready,
    // AXI master interface with MMIO Subsystem
    output logic [19:0] M1_AXI_awaddr // m_rrrr
    output logic [2:0] M1_AXI_awprot,
    output logic M1_AXI_awvalid,
    input logic M1_AXI_awready,
    output logic [31:0] M1_AXI_wdata,
    output logic [3:0] M1_AXI_wstrb,
    output logic M1_AXI_wvalid,
    input logic M1_AXI_wready,
    input logic [1:0] M1_AXI_bresp,
    input logic M1_AXI_bvalid,
    output logic M1_AXI_bready,
    output logic [19:0] M1_AXI_araddr,
    output logic [2:0] M1_AXI_arprot,
    output logic M1_AXI_arvalid,
    input logic M1_AXI_arready,
    input logic [31:0] M1_AXI_rdata,
    input logic [1:0] M1_AXI_rresp,
    input logic M1_AXI_rvalid,
    output logic M1_AXI_rready
    );

    logic operating;

    assign operating = (S_AXI_awaddr[31:24] == BUS_BASE_ADDR[31:24])
                    || (S_AXI_araddr[31:24] == BUS_BASE_ADDR[31:24]);

    // to subsystems
    // write
    assign M1_AXI_awaddr = S_AXI_awaddr[19:0];
    assign M1_AXI_awprot = S_AXI_awprot;
    assign M1_AXI_awvalid = S_AXI_awvalid;
    assign M1_AXI_wdata = S_AXI_wdata;
    assign M1_AXI_wstrb = S_AXI_wstrb;
    assign M1_AXI_wvalid = S_AXI_wvalid;
    assign M1_AXI_bready = S_AXI_bready;
    // read
    assign M1_AXI_arprot = S_AXI_arprot;
    assign M1_AXI_araddr = S_AXI_araddr[19:0];
    assign M1_AXI_arvalid = S_AXI_arvalid;
    assign M1_AXI_rready = S_AXI_rready;

    // to CPU 
    // write
    assign S_AXI_bresp = M1_AXI_bresp;
    assign S_AXI_awready = M1_AXI_awready;
    assign S_AXI_wready = M1_AXI_awready;
    assign S_AXI_bvalid = M1_AXI_bvalid;
    // read
    assign S_AXI_rresp = M1_AXI_rresp;
    assign S_AXI_arready = M1_AXI_arready;
    assign S_AXI_rdata = M1_AXI_rdata;
    assign S_AXI_rvalid = M1_AXI_rvalid;

endmodule: axi_lite_bus