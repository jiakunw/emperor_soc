// mmio_subsys.sv
`timescale 1ns / 1ps
// `default_nettype none

//------------------------------------------------------------
// Module: mmio_subsystem
// Description:
//     An AXI4-Lite based MMIO SubSystem.
//
// Ports:
//     aclk                 - System clock input.
//     arst_n               - Asynchronous active-low reset signal.
//
//     AXI Interface
//     AXI write 
//     S_AXI_awaddr         - address for write transaction
//     S_AXI_awprot         - access privilage level for write transaction
//     S_AXI_awvalid        - address write valid: telling the slave that this is valid w-address
//     S_AXI_awready        - address write ready: telling the master that slave is ready with the given w-address
//     hand shake: both S_AXI_awvalid and S_AXI_awready are high, write address has been registered
//     S_AXI_wdata          - data to be written to slave devices
//     S_AXI_wstrb          - valid parts of data to be written
//     S_AXI_wvalid         - write data is valid
//     S_AXI_wready         - write operation is ready to be run
//     hand shake: both S_AXI_wvalid and S_AXI_wready are high, a write operation starts
//     S_AXI_bresp          - response from write operation
//     S_AXI_bvalid         - slave telling master that write respose is valid
//     S_AXI_bready         - master telling slave that ready to receive write response
//     hand shake: both S_AXI_bvalid and S_AXI_bready are high, a write transaction is completed
//     
//     AXI read
//     S_AXI_araddr         - address for read transaction
//     S_AXI_arprot         - access privilage level for read transaction
//     S_AXI_arvalid        - address read valid: telling the slave that this is valid r-address
//     S_AXI_arready        - address ready ready: telling the master that slave is ready with the given r-address
//     hand shake: both S_AXI_arvalid and S_AXI_arready are high, read address has been registered
//     S_AXI_rdata          - data read from slave devices
//     S_AXI_rresp          - response from read operation
//     S_AXI_rvalid         - slave telling master that read data is valid
//     S_AXI_rready         - master telling slave ready to take the read data
//     hand shake: both S_AXI_rvalid and S_AXI_rready are high, a read transaction is completed
//
//     in_ports             - NUM_INPUT-bit input ports to the input elements such as LEDs on the chip
//     out_ports            - NUM_OUTPUT-bit output ports to the output elements such as switches/buttons on the chip
//
// Register Mapping:
//     - 16'b00000: Timer
//                 
//
// Author: Mongolian
// Date: 06/26/2025
//------------------------------------------------------------
module mmio_subsystem
    #(parameter NUM_INPUT = 9,
    parameter NUM_OUTPUT = 4)
    (
    input logic aclk, arst_n,
    // AXI slave interface with main Bus
    // axi_if.Slave S_AXI, 
    // write
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
    // read
    input logic [31:0] S_AXI_araddr,
    input logic [2:0] S_AXI_arprot,
    input logic S_AXI_arvalid,
    output logic S_AXI_arready,
    output logic [31:0] S_AXI_rdata,
    output logic [1:0] S_AXI_rresp,
    output logic S_AXI_rvalid,
    input logic S_AXI_rready,
    // gpio external
    input logic [NUM_INPUT-1:0] in_ports,
    output logic [NUM_OUTPUT-1:0] out_ports,
    // uart external
    input logic rx,
    output logic tx,
    // i2c external
    output tri scl,
    input tri sda
    // debug
    // output logic [2:0] debug_r_state, 
    // output logic [7:0] debug_addr,
    // output logic [15:0] debug_slot_wr_done,
    // output logic [15:0] debug_slot_chip_select
    );

    // signal declarations
    logic [15:0] slot_chip_select;
    logic [7:0] reg_addr;
    logic [31:0] slot_wr_data;
    logic [31:0] slot_rd_data [15:0];
    logic [15:0] slot_wr_done, slot_rd_done, slot_idle;
    logic [15:0] slot_slave_error, slot_decode_error;
    logic transaction_completed;
    logic write, read;

    axi_mmio_controller control (.*);

    timer emperor_timer (
        .clk(aclk), 
        .arst_n,
        .chip_select(slot_chip_select[0]),
        .read, 
        .write,
        .addr(reg_addr),
        .wr_data(slot_wr_data),
        .rd_data(slot_rd_data[0]),
        .wr_done(slot_wr_done[0]), 
        .rd_done(slot_rd_done[0]), 
        .idle(slot_idle[0]),
        .transaction_completed,
        .slave_error(slot_slave_error[0]), 
        .decode_error(slot_decode_error[0])
    );

    gpio #(
      .NUM_INPUT(9),
      .NUM_OUTPUT(4)
     ) emperor_gpio (
        .clk(aclk), 
        .arst_n,
        .chip_select(slot_chip_select[1]),
        .read, 
        .write,
        .addr(reg_addr),
        .wr_data(slot_wr_data),
        .rd_data(slot_rd_data[1]),
        .wr_done(slot_wr_done[1]), 
        .rd_done(slot_rd_done[1]), 
        .idle(slot_idle[1]),
        .transaction_completed,
        .slave_error(slot_slave_error[1]), 
        .decode_error(slot_decode_error[1]),
        .in_ports,
        .out_ports
    );

    uart #(
        .DATA_BITS(8),
        .DVSR_WIDTH(10),
        .STOP_BIT_TICK(16),
        .FIFO_LENGTH(16)
    ) emperor_uart (
        .clk(aclk), 
        .arst_n,
        // slot interface
        .chip_select(slot_chip_select[2]),
        .read, 
        .write,
        .addr(reg_addr),
        .wr_data(slot_wr_data),
        .rd_data(slot_rd_data[2]),
        .wr_done(slot_wr_done[2]), 
        .rd_done(slot_rd_done[2]), 
        .idle(slot_idle[2]),
        .transaction_completed,
        .slave_error(slot_slave_error[2]), 
        .decode_error(slot_decode_error[2]),
        // interface with downstream (external device)
        .rx,
        .tx,
        .debug_uart_tick()
    );

    i2c #(
        .DATA_BITS(8),
        .DVSR_WIDTH(10),
        .STOP_BIT_TICK(16),
        .FIFO_LENGTH(16)
    ) emperor_i2c (
        .clk(aclk), 
        .arst_n,
        // slot interfacee
        .chip_select(slot_chip_select[3]),
        .read, 
        .write,
        .addr(reg_addr),
        .wr_data(slot_wr_data),
        .rd_data(slot_rd_data[3]),
        .wr_done(slot_wr_done[3]), 
        .rd_done(slot_rd_done[3]), 
        .idle(slot_idle[3]),
        .transaction_completed,
        .slave_error(slot_slave_error[3]), 
        .decode_error(slot_decode_error[3]),
        // interface with downstream (external device)
        .scl,
        .sda
    );

    // spi #(
    //     .NUM_SLAVES(1)
    // ) emperor_spi (
    //     .clk(aclk), 
    //     .arst_n,
    //     // slot interfacee
    //     .chip_select(slot_chip_select[3]),
    //     .read, 
    //     .write,
    //     .addr(reg_addr),
    //     .wr_data(slot_wr_data),
    //     .rd_data(slot_rd_data[3]),
    //     .wr_done(slot_wr_done[3]), 
    //     .rd_done(slot_rd_done[3]), 
    //     .idle(slot_idle[3]),
    //     .transaction_completed,
    //     .slave_error(slot_slave_error[3]), 
    //     .decode_error(slot_decode_error[3]),
    //     // interface with downstream (external device)
    //     .sclk,
    //     .miso,
    //     .mosi,
    //     .ss_n
    // );

    assign slot_wr_done[15:4] = 0;
    assign slot_rd_done[15:4] = 0;
    assign slot_idle[15:4] = 0;
    assign slot_slave_error[15:4] = 0;
    assign slot_decode_error[15:4] = 0;

    always_comb begin
        for (int i = 4; i < 16; i++) begin
	    slot_rd_data[i] = 0;
	end
    end


endmodule : mmio_subsystem
