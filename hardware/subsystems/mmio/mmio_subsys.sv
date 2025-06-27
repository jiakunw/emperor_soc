// mmio_subsys.sv
`include "../const.sv"
`timescale 1ns / 1ps

module mmio_subsystem
    (
    input logic clk, arst_n,
    // AXI slave interface with main Bus
    // write
    input logic [7:0] S_AXI_awaddr,
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
    // read
    input logic [7:0] S_AXI_araddr,
    input logic [2:0] S_AXI_arprot,
    input logic S_AXI_arvalid,
    output logic S_AXI_arready,
    output logic [31:0] S_AXI_rdata,
    output logic [1:0] S_AXI_rresp,
    output logic S_AXI_rvalid,
    input logic S_AXI_rready
    );

    // signal declarations
    logic [15:0] slot_chip_select;
    logic [15:0] slot_read, slot_write;
    logic [3:0] slot_reg_addr [15:0];
    logic [31:0] slot_wr_data [15:0];
    logic [31:0] slot_rd_data [15:0];
    logic [15:0] slot_wr_done, slot_rd_done, slot_idle;
    logic [15:0] slot_slave_error, slot_decode_error;

    axi_mmio_controller control (.*);

    timer emperor_timer (
        .clk, 
        .arst_n,
        .chip_select(slot_chip_select[0]),
        .read(slot_read[0]), 
        .write(slot_write[0]),
        .addr(slot_reg_addr[0]),
        .wr_data(slot_wr_data[0]),
        .rd_data(slot_rd_data[0]),
        .wr_done(slot_wr_done[0]), 
        .rd_done(slot_rd_done[0]), 
        .idle(slot_idle[0]),
        .slave_error(slot_slave_error[0]), 
        .decode_error(slot_decode_error[0])
    );

    assign slot_read[15:1] = 'd0;
    assign slot_write[15:1] = 'd0;
    assign slot_reg_addr[15:1] = 'd0;
    assign slot_wr_data[15:1] = 'd0;
    assign slot_rd_data[15:1] = 'd0;
    assign slot_wr_done[15:1] = 'd0;
    assign slot_idle[15:1] = 'd0;
    assign slot_slave_error[15:1] = 'd0;
    assign slot_decode_error[15:1] = 'd0;

endmodule : mmio_subsystem