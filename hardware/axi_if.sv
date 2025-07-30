// ----------------------------------------------------------
// AXI-Lite Interface with Driver / Monitor clocking-blocks
//   - param ADDR_W : address width
//   - param DATA_W : data width
// ----------------------------------------------------------
interface axi_if #(parameter ADDR_W = 8, DATA_W = 32) (input logic ACLK);

  /*------------- AXI-Lite 信号 -------------*/
  /* Write-Address */
  logic                 awvalid, awready;
  logic [ADDR_W-1:0]    awaddr;
  logic [2:0]           awprot;

  /* Write-Data */
  logic                 wvalid, wready;
  logic [DATA_W-1:0]    wdata;
  logic [(DATA_W/8)-1:0] wstrb;

  /* Write-Resp */
  logic                 bvalid, bready;
  logic  [1:0]          bresp;

  /* Read-Address */
  logic                 arvalid, arready;
  logic [ADDR_W-1:0]    araddr;
  logic [2:0]           arprot;

  /* Read-Data   */
  logic                 rvalid, rready;
  logic [DATA_W-1:0]    rdata;
  logic  [1:0]          rresp;

  /*------------- Driver  clocking-block (Master) -------------*/
  clocking drv_cb @(posedge ACLK);
    /*  write-addr  */
    input  awvalid, awaddr, awprot;
    output     #1ns    awready;

    /*  write-data  */
    input  wvalid,  wdata,  wstrb;
    output     #1ns    wready;

    /*  write-resp  */
    input         bready;
    output  #1ns  bvalid, bresp;

    /*  read-addr   */
    output  #1ns arvalid, araddr, arprot;
    input         arready;

    /*  read-data   */
    input         rvalid;
    output #1ns   rready, rdata, rresp;
  endclocking

  /*------------- Monitor clocking-block (Slave side观察) -------------*/
  clocking mon_cb @(posedge ACLK);
    /* 所有信号 0-skew 采样 */
    input S_AXI_araddr;
    input S_AXI_arprot;
    input S_AXI_arvalid;
    output S_AXI_arready;
    output S_AXI_rdata;
    output S_AXI_rresp;
    output S_AXI_rvalid;
    input S_AXI_rready;
  endclocking

  /*------------- modport 角色划分 -------------*/
  modport Master  (clocking drv_cb , input ACLK);  // Testbench driver
  modport Slave   (clocking mon_cb , input ACLK);  // DUT 端口

endinterface