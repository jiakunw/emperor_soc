// axi_mmio_controller.sv
`include "../../const.sv"
`timescale 1ns / 1ps

//------------------------------------------------------------
// Module: axi_mmio_controller
// Description:
//     An AXI4-Lite based MMIO Controller that interface between the AXI main bus and
//     MMIO devices.
//
// Ports:
//     clk                  - System clock input.
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
    input logic S_AXI_rready,
    // slot interface
    output logic [15:0] slot_chip_select,
    output logic [15:0] slot_read, slot_write,
    output logic [3:0] slot_reg_addr [15:0],
    output logic [31:0] slot_wr_data [15:0],
    input logic [31:0] slot_rd_data [15:0],
    input logic [15:0] slot_wr_done, slot_rd_done, slot_idle,
    input logic [15:0] slot_slave_error, slot_decode_error
    );

    enum logic [2:0] {
        INIT = 3'd0,
        AWVALID = 3'd1,
        WRITE = 3'd2,
        ARVALID = 3'd3,
        READ = 3'd4
    } r_state, w_next_state;

    // signal declarations
    logic [3:0] w_slot_addr, w_reg_addr;
    logic [7:0] r_addr, w_addr;
    logic w_idle;
    logic w_en_addr;
    logic [31:0] r_wr_data;
    logic [3:0] r_wstrb;

    assign w_idle = |slot_idle;
    assign w_slot_addr = r_addr[7:4];
    assign w_reg_addr = r_addr[3:0]

    // state transition logic
    always_comb begin
        // initialize signals
        // axi write
        S_AXI_awready = 1'b0;
        S_AXI_wready = 1'b0;
        S_AXI_bresp = 2'b0;
        S_AXI_bvalid = 1'b0;
        // axi read
        S_AXI_arready = 1'b0;
        S_AXI_rresp = 2'b0;
        S_AXI_rvalid = 1'b0;
        // slot
        slot_chip_select = 16'd0;,
        slot_read = 16'd0;
        slot_write = 16'd0;
        slot_reg_addr = 'd0;
        slot_wr_data = 'd0;
        // others
        w_en_addr = 1'b0;
        w_addr = 8'd0;

        case (r_state)
            INIT: begin
                // when any of the devices is idle we can accept read/write addr
                S_AXI_awready = w_idle; 
                S_AXI_arready = w_idle;
                w_en_addr = S_AXI_awvalid || S_AXI_arvalid;
                w_addr = (S_AXI_awvalid) ? S_AXI_awaddr :
                         (S_AXI_arvalid) ? S_AXI_araddr :
                         8'd0;
                w_next_state = (S_AXI_awvalid) ? AWVALID :
                               (S_AXI_arvalid) ? ARVALID :
                               INIT;
            end
            AWVALID: begin
                S_AXI_wready = slot_idle[w_slot_addr] && S_AXI_wvalid;
                slot_wr_data[w_slot_addr] = S_AXI_wdata;
                slot_chip_select[w_slot_addr] = slot_idle[w_slot_addr] && S_AXI_wvalid;
                slot_write[w_slot_addr] = slot_idle[w_slot_addr] && S_AXI_wvalid;
                slot_reg_addr[w_slot_addr] = w_reg_addr;
                S_AXI_bvalid = slot_slave_error[w_slot_addr] ||
                               slot_decode_error[w_slot_addr];
                S_AXI_bresp = (slot_slave_error[w_slot_addr]) ? AXI_RESP_SLVERR :
                              (slot_decode_error[w_slot_addr]) ? AXI_RESP_DECERR :
                              AXI_RESP_OKAY;
                w_next_state = (slot_slave_error[w_slot_addr] ||
                                slot_decode_error[w_slot_addr]) ? INIT :
                                (slot_idle[w_slot_addr] && S_AXI_wvalid) ? WRITE : AWVALID;
            end
            WRITE: begin    // executing done transaction, waiting for it to be done
                S_AXI_bvalid = slot_wr_done[w_slot_addr] || 
                               slot_slave_error[w_slot_addr] ||
                               slot_decode_error[w_slot_addr];
                S_AXI_bresp = (slot_slave_error[w_slot_addr]) ? AXI_RESP_SLVERR :
                              (slot_decode_error[w_slot_addr]) ? AXI_RESP_DECERR :
                              AXI_RESP_OKAY;
                w_next_state = (S_AXI_bready) ? INIT : WRITE;
            end
            ARVALID: begin
                w_next_state = (slot_idle[w_slot_addr] && S_AXI_rready) ? READ : ARVALID;
            end
            READ: begin
                slot_read[w_slot_addr] = slot_idle[w_slot_addr];
                slot_chip_select[w_slot_addr] = slot_idle[w_slot_addr];
                S_AXI_rvalid = slot_rd_done[w_slot_addr];
                S_AXI_rdata = slot_rd_data[w_slot_addr];
                S_AXI_rresp = (slot_slave_error[w_slot_addr]) ? AXI_RESP_SLVERR :
                              (slot_decode_error[w_slot_addr]) ? AXI_RESP_DECERR :
                              AXI_RESP_OKAY;
                w_next_state = (S_AXI_rready) ? INIT : READ;
            end
        endcase
    end

    // state register
    always_ff @(posedge clk, negedge arst_n) begin
        if (!arest_n)
            r_state <= IDLE;
        else  
            r_state <= w_next_state;
    end

    // address register
    always_ff @(posedge clk, negedge arst_n) begin
        if (!arest_n)
            r_addr <= 8'd0;
        else if (w_en_addr)
            r_addr <= w_addr;
    end    

endmodule : axi_mmio_controller