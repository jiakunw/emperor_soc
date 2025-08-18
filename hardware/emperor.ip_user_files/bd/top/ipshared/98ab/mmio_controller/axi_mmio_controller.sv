// axi_mmio_controller.sv
`include "/home/wangjiakun/Development/emperor_soc/hardware/subsystems/const.sv"
`timescale 1ns / 1ps

//------------------------------------------------------------
// Module: axi_mmio_controller
// Description:
//     An AXI4-Lite based MMIO Controller that interface between the AXI main bus and
//     MMIO devices.
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
//     slot interface with MMIO devices
//     slot_chip_select     - an array of 16 signals to tell which MMIO device is selected
//     slot_read            - an array of 16 signals to send read signal to an MMIO device
//     slot_write           - an array of 16 signals to send write signal to an MMIO device
//     slot_reg_addr        - an array of 16 4-bit-signals of slave register address
//     slot_wr_data         - an array of 16 32-bit-signals to send slave the write data
//     slot_rd_data         - an array of 16 32-bit-signals to fetch from slave the read data
//     slot_wr_done         - an array of 16 signals to fetch from slave about done-write signals
//     slot_rd_done         - an array of 16 signals to fetch from slave about done-read signals
//     slot_idle            - an array of 16 signals to fetch from slave about device-idle signals
//     slot_slave_error     - an array of 16 signals to fetch from slave about slave_error of a specific device
//     slot_decode_error    - an array of 16 signals to fetch from slave about decode_error of a specific device
//
// Register Mapping:
//     - 16'b00000: Timer
//                 
//
// Author: Mongolian
// Date: 06/26/2025
//------------------------------------------------------------
module axi_mmio_controller
    (
    input logic aclk, arst_n,
    // AXI slave interface with main Bus
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
    // slot interface
    output logic [15:0] slot_chip_select,
    input logic [15:0] slot_signal_received,
    output logic [7:0] reg_addr,
    output logic [31:0] slot_wr_data [15:0],
    input logic [31:0] slot_rd_data [15:0],
    input logic [15:0] slot_wr_done, slot_rd_done, slot_idle,
    input logic [15:0] slot_slave_error, slot_decode_error,
    output logic transaction_completed,
    // debug
    output logic [2:0] debug_r_state, 
    output logic [7:0] debug_addr,
    output logic [15:0] debug_slot_wr_done,
    output logic [15:0] debug_slot_chip_select,
    output logic debug_transaction_completed  
);

    enum logic [2:0] {
        INIT = 3'd0,
        WRITE_1 = 3'd1,
        WRITE_RESP = 3'd2,
        READ_1 = 3'd3,
        READ_RESP = 3'd4
    } r_state, w_next_state;

    // debug
    assign debug_r_state = r_state;
    assign debug_addr = reg_addr;
    assign debug_slot_wr_done = slot_wr_done;
    assign debug_slot_chip_select = slot_chip_select;
    assign debug_transaction_completed = transaction_completed;

    // signal declarations
    logic [7:0] w_slot_addr, w_reg_addr;
    logic [15:0] r_addr, w_addr;
    logic w_en_addr;
    logic [31:0] r_wr_data;
    logic [3:0] r_wstrb;
    logic [31:0] w_rd_data;
    logic transaction_completed;

    assign w_slot_addr = r_addr[15:8];
    assign reg_addr = r_addr[7:0];
    assign transaction_completed = S_AXI_rready || S_AXI_bvalid;

    // state transition logic
    always_comb begin
        // initialize signals
        // axi write
        S_AXI_awready = 1'b0;
        S_AXI_wready = 1'b0;
        S_AXI_bvalid = 1'b0;
        // axi read
        S_AXI_arready = 1'b0;
        S_AXI_rvalid = 1'b0;
        S_AXI_rdata = 32'd0;
        // slot
        slot_chip_select = 16'd0;
        
        for (int i = 0; i < 16; i++) begin
            slot_wr_data[i] = 32'd0;
        end

        // others
        w_en_addr = 1'b0;
        w_addr = 16'd0;
        S_AXI_bresp = AXI_RESP_OKAY;
        S_AXI_rresp = AXI_RESP_OKAY;
        w_rd_data = 32'b0;

        case (r_state)
            INIT: begin
                // when any of the devices is idle we can accept read/write addr
                S_AXI_awready = 1'b1; 
                S_AXI_arready = 1'b1;
                w_en_addr = S_AXI_awvalid || S_AXI_arvalid;
                w_addr = (S_AXI_awvalid) ? S_AXI_awaddr[15:0] :
                         (S_AXI_arvalid) ? S_AXI_araddr[15:0] :
                         16'd0;
                w_next_state = (S_AXI_awvalid && (S_AXI_awaddr[31:16] == 16'h4600)) ? WRITE_1 :
                               (S_AXI_arvalid && (S_AXI_araddr[31:16] == 16'h4600)) ? READ_1 :
                               INIT;
            end
            WRITE_1: begin
                S_AXI_wready = 1'b0;
                slot_wr_data[w_slot_addr[3:0]] = S_AXI_wdata;
                slot_chip_select[w_slot_addr[3:0]] = S_AXI_wvalid;
                w_next_state = (slot_wr_done[w_slot_addr[3:0]]) ? WRITE_RESP : WRITE_1;
            end
            WRITE_RESP: begin    // executing done transaction, waiting for it to be done
                S_AXI_bresp = (slot_slave_error[w_slot_addr[3:0]]) ? AXI_RESP_SLVERR :
                              (slot_decode_error[w_slot_addr[3:0]]) ? AXI_RESP_DECERR :
                              AXI_RESP_OKAY;
                S_AXI_bvalid = 1'b1;
                w_next_state = (S_AXI_bready) ? INIT : WRITE_RESP;
            end
            READ_1: begin
                slot_chip_select[w_slot_addr[3:0]] = 1'b1;
                w_next_state = (slot_rd_done[w_slot_addr[3:0]]) ? READ_RESP : READ_1;
            end
            READ_RESP: begin
                S_AXI_rvalid = 1'b1;
                S_AXI_rdata = slot_rd_data[w_slot_addr[3:0]];
                S_AXI_rresp = (slot_slave_error[w_slot_addr[3:0]]) ? AXI_RESP_SLVERR :
                              (slot_decode_error[w_slot_addr[3:0]]) ? AXI_RESP_DECERR :
                              AXI_RESP_OKAY;
                w_next_state = (S_AXI_rready) ? INIT : READ_RESP;
            end
        endcase
    end

    // state register
    always_ff @(posedge aclk, negedge arst_n) begin
        if (!arst_n)
            r_state <= INIT;
        else  
            r_state <= w_next_state;
    end

    // address register
    always_ff @(posedge aclk, negedge arst_n) begin
        if (!arst_n)
            r_addr <= 8'd0;
        else if (w_en_addr)
            r_addr <= w_addr;
    end   

endmodule : axi_mmio_controller
