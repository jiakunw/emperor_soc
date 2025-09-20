// tb.sv
`include "emperor_i2c_test_pkg.sv"
import uvm_pkg::*;
import emperor_i2c_test_pkg::*;

module tb();
    logic aclk, arst_n;
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
    // i2c external
    tri scl;
    tri sda;
    // debug
    logic [2:0] debug_r_state; 
    logic [7:0] debug_addr;
    logic [15:0] debug_slot_wr_done;
    logic [15:0] debug_slot_chip_select;
  
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
    S_AXI_awaddr = 'b0;
    S_AXI_awprot = 'b0;
    S_AXI_awvalid = 'b0;
    S_AXI_wdata = 'b0;
    S_AXI_wstrb = 'b0;
    S_AXI_wvalid = 'b0;
    S_AXI_bready = 'b1;
    S_AXI_araddr = 'b0;
    S_AXI_arprot = 'b0;
    S_AXI_arvalid = 'b0;
    S_AXI_rready = 'b1;
    #6ns;
    
    arst_n = 0;
    
    #30ns;
    arst_n = 1;
  end
  
  initial begin
    //Start UVM test and phases
    run_test("");
  end
  
  //Instantiate the DUT
  mmio_subsystem dut(.*);
  
endmodule
