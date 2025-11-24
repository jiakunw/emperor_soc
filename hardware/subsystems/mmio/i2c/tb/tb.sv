// tb.sv
`include "emperor_i2c_test_pkg.sv"
import uvm_pkg::*;
import emperor_i2c_test_pkg::*;

module tb();
    logic aclk, arst_n;
    // AXI slave interface with main Bus
    // write
    // logic [31:0] S_AXI_awaddr;
    // logic [2:0] S_AXI_awprot;
    // logic S_AXI_awvalid;
    // logic S_AXI_awready;
    // logic [31:0] S_AXI_wdata;
    // logic [3:0] S_AXI_wstrb;
    // logic S_AXI_wvalid;
    // logic S_AXI_wready;
    // logic [1:0] S_AXI_bresp;
    // logic S_AXI_bvalid;
    // logic S_AXI_bready;
    // // read
    // logic [31:0] S_AXI_araddr;
    // logic [2:0] S_AXI_arprot;
    // logic S_AXI_arvalid;
    // logic S_AXI_arready;
    // logic [31:0] S_AXI_rdata;
    // logic [1:0] S_AXI_rresp;
    // logic S_AXI_rvalid;
    // logic S_AXI_rready;
    // external gpio
    logic [8:0] in_ports;
    logic [3:0] out_ports;
    // uart external
    logic rx;
    logic tx;
    // i2c external
    tri scl;
    tri sda;
    // debug
    // logic [2:0] debug_r_state; 
    // logic [7:0] debug_addr;
    // logic [15:0] debug_slot_wr_done;
    // logic [15:0] debug_slot_chip_select;

  // AXI-Lite interface
  emperor_axi_lite_if axi_if(.aclk(aclk), .arst_n(arst_n));
  
  //Clock generator
  initial begin
    aclk = 0;
    
    forever begin
      //Generate an 100MHz clock
      aclk = #5ns ~aclk;
    end
  end
  
  //Initial reset generator
  initial begin
    arst_n = 1;
    axi_if.S_AXI_awaddr = 0;
    axi_if.S_AXI_awprot = 0;
    axi_if.S_AXI_awvalid = 0;
    axi_if.S_AXI_wdata = 0;
    axi_if.S_AXI_wstrb = 0;
    axi_if.S_AXI_wvalid = 0;
    axi_if.S_AXI_bready = 0;
    axi_if.S_AXI_araddr = 0;
    axi_if.S_AXI_arprot = 0;
    axi_if.S_AXI_arvalid = 0;
    axi_if.S_AXI_rready = 0;
    #6ns;
    
    arst_n = 0;
    
    #6ns;
    arst_n = 1;
  end
  
  initial begin
    fork 
      begin
        uvm_config_db#(virtual emperor_axi_lite_if)::set(null, "uvm_test_top.env.axi_lite_agent", "vif", axi_if);
        //Start UVM test and phases
        run_test("");
      end
      begin
        #1000ns
        `uvm_fatal("TIMEOUT", "Simulated timed out after 1000ns.")
      end
    join_any
    disable fork;
  end
  
  //Instantiate the DUT
  mmio_subsystem dut(
    .aclk         (axi_if.aclk),
    .arst_n       (axi_if.arst_n),
    .S_AXI_awaddr (axi_if.S_AXI_awaddr),
    .S_AXI_awprot (axi_if.S_AXI_awprot),
    .S_AXI_awvalid(axi_if.S_AXI_awvalid),
    .S_AXI_awready(axi_if.S_AXI_awready),
    .S_AXI_wdata  (axi_if.S_AXI_wdata),
    .S_AXI_wstrb  (axi_if.S_AXI_wstrb),
    .S_AXI_wvalid (axi_if.S_AXI_wvalid),
    .S_AXI_wready (axi_if.S_AXI_wready),
    .S_AXI_bresp  (axi_if.S_AXI_bresp),
    .S_AXI_bvalid (axi_if.S_AXI_bvalid),
    .S_AXI_bready (axi_if.S_AXI_bready),
    .S_AXI_araddr (axi_if.S_AXI_araddr),
    .S_AXI_arprot (axi_if.S_AXI_arprot),
    .S_AXI_arvalid(axi_if.S_AXI_arvalid),
    .S_AXI_arready(axi_if.S_AXI_arready),
    .S_AXI_rdata  (axi_if.S_AXI_rdata),
    .S_AXI_rresp  (axi_if.S_AXI_rresp),
    .S_AXI_rvalid (axi_if.S_AXI_rvalid),
    .S_AXI_rready (axi_if.S_AXI_rready),
    .*
  );
  
endmodule
