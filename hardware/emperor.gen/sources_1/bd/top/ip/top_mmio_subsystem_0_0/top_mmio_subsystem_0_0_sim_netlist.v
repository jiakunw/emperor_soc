// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Sun Aug 31 05:19:18 2025
// Host        : wangjiakun-Inspiron-14-Plus-7430 running 64-bit Ubuntu 24.04.1 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/wangjiakun/Development/emperor_soc/hardware/emperor.gen/sources_1/bd/top/ip/top_mmio_subsystem_0_0/top_mmio_subsystem_0_0_sim_netlist.v
// Design      : top_mmio_subsystem_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "top_mmio_subsystem_0_0,mmio_subsystem,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "mmio_subsystem,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module top_mmio_subsystem_0_0
   (aclk,
    arst_n,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awvalid,
    S_AXI_awready,
    S_AXI_wdata,
    S_AXI_wstrb,
    S_AXI_wvalid,
    S_AXI_wready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_bready,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arvalid,
    S_AXI_arready,
    S_AXI_rdata,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_rready,
    in_ports,
    out_ports,
    rx,
    tx,
    debug_r_state,
    debug_addr,
    debug_slot_wr_done,
    debug_slot_chip_select,
    debug_uart_tick,
    debug_gpio_r_state,
    debug_gpio_w_next_state);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF S_AXI, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_clk_out1, INSERT_VIP 0" *) input aclk;
  input arst_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [31:0]S_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *) input [2:0]S_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input S_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output S_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]S_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]S_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input S_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output S_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]S_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output S_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input S_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [31:0]S_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *) input [2:0]S_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input S_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output S_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]S_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]S_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output S_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input S_AXI_rready;
  input [8:0]in_ports;
  output [3:0]out_ports;
  input rx;
  output tx;
  output [2:0]debug_r_state;
  output [7:0]debug_addr;
  output [15:0]debug_slot_wr_done;
  output [15:0]debug_slot_chip_select;
  output debug_uart_tick;
  output [1:0]debug_gpio_r_state;
  output [1:0]debug_gpio_w_next_state;

  wire \<const0> ;
  wire [31:0]S_AXI_araddr;
  wire S_AXI_arvalid;
  wire [31:0]S_AXI_awaddr;
  wire S_AXI_awready;
  wire S_AXI_awvalid;
  wire S_AXI_bready;
  wire [1:0]S_AXI_bresp;
  wire S_AXI_bvalid;
  wire [31:0]S_AXI_rdata;
  wire S_AXI_rready;
  wire [1:0]S_AXI_rresp;
  wire [31:0]S_AXI_wdata;
  wire S_AXI_wready;
  wire S_AXI_wvalid;
  wire aclk;
  wire arst_n;
  wire [7:0]debug_addr;
  wire [1:0]debug_gpio_r_state;
  wire [1:0]debug_gpio_w_next_state;
  wire [2:0]debug_r_state;
  wire [15:0]debug_slot_chip_select;
  wire [2:0]\^debug_slot_wr_done ;
  wire debug_uart_tick;
  wire [8:0]in_ports;
  wire [3:0]out_ports;
  wire rx;
  wire tx;

  assign S_AXI_arready = S_AXI_awready;
  assign S_AXI_rvalid = debug_r_state[2];
  assign debug_slot_wr_done[15] = \<const0> ;
  assign debug_slot_wr_done[14] = \<const0> ;
  assign debug_slot_wr_done[13] = \<const0> ;
  assign debug_slot_wr_done[12] = \<const0> ;
  assign debug_slot_wr_done[11] = \<const0> ;
  assign debug_slot_wr_done[10] = \<const0> ;
  assign debug_slot_wr_done[9] = \<const0> ;
  assign debug_slot_wr_done[8] = \<const0> ;
  assign debug_slot_wr_done[7] = \<const0> ;
  assign debug_slot_wr_done[6] = \<const0> ;
  assign debug_slot_wr_done[5] = \<const0> ;
  assign debug_slot_wr_done[4] = \<const0> ;
  assign debug_slot_wr_done[3] = \<const0> ;
  assign debug_slot_wr_done[2:0] = \^debug_slot_wr_done [2:0];
  GND GND
       (.G(\<const0> ));
  top_mmio_subsystem_0_0_mmio_subsystem inst
       (.Q(debug_addr),
        .S_AXI_araddr({S_AXI_araddr[31:16],S_AXI_araddr[11:0]}),
        .S_AXI_arready(S_AXI_awready),
        .S_AXI_arvalid(S_AXI_arvalid),
        .S_AXI_awaddr({S_AXI_awaddr[31:16],S_AXI_awaddr[11:0]}),
        .S_AXI_awvalid(S_AXI_awvalid),
        .S_AXI_bready(S_AXI_bready),
        .S_AXI_bresp(S_AXI_bresp),
        .S_AXI_bvalid(S_AXI_bvalid),
        .S_AXI_rdata(S_AXI_rdata),
        .S_AXI_rready(S_AXI_rready),
        .S_AXI_rresp(S_AXI_rresp),
        .S_AXI_rvalid(debug_r_state[2]),
        .S_AXI_wdata({S_AXI_wdata[31:16],S_AXI_wdata[2:0]}),
        .S_AXI_wready(S_AXI_wready),
        .S_AXI_wvalid(S_AXI_wvalid),
        .aclk(aclk),
        .arst_n(arst_n),
        .debug_gpio_w_next_state(debug_gpio_w_next_state),
        .debug_r_state(debug_r_state[1:0]),
        .debug_slot_chip_select(debug_slot_chip_select),
        .debug_slot_wr_done(\^debug_slot_wr_done ),
        .debug_uart_tick(debug_uart_tick),
        .in_ports(in_ports[0]),
        .out_ports(out_ports),
        .\r_state_reg[1] (debug_gpio_r_state),
        .rx(rx),
        .tx(tx));
endmodule

(* ORIG_REF_NAME = "axi_mmio_controller" *) 
module top_mmio_subsystem_0_0_axi_mmio_controller
   (debug_slot_chip_select,
    Q,
    \FSM_onehot_r_state_reg[3]_0 ,
    \r_addr_reg[4]_0 ,
    \r_addr_reg[4]_1 ,
    \r_addr_reg[7]_0 ,
    \slot_wr_data_reg[1]_0 ,
    \slot_wr_data_reg[31]_0 ,
    \slot_wr_data_reg[0]_0 ,
    \slot_wr_data_reg[0]_1 ,
    \slot_wr_data_reg[0]_2 ,
    \slot_wr_data_reg[0]_3 ,
    \slot_wr_data_reg[0]_4 ,
    \slot_wr_data_reg[2]_0 ,
    \slot_wr_data_reg[1]_1 ,
    \slot_wr_data_reg[0]_5 ,
    \FSM_onehot_r_state_reg[1]_0 ,
    \r_status_reg[8] ,
    D,
    \r_addr_reg[10]_0 ,
    \FSM_onehot_r_state_reg[0]_0 ,
    w_slave_error__0,
    E,
    w_wr_done,
    \FSM_onehot_r_state_reg[1]_1 ,
    \r_addr_reg[2]_0 ,
    w_rd_done,
    \r_addr_reg[7]_1 ,
    w_rd_done_0,
    full_reg,
    w_rd_done__0,
    w_wr_done_1,
    w_wr_done_2,
    \r_status_reg[9] ,
    \FSM_onehot_r_state_reg[1]_2 ,
    \FSM_onehot_r_state_reg[1]_3 ,
    \FSM_onehot_r_state_reg[3]_1 ,
    \r_counter_reg[15] ,
    \r_addr_reg[1]_0 ,
    debug_r_state,
    S_AXI_bresp,
    S_AXI_rresp,
    S_AXI_rdata,
    \r_addr_reg[2]_1 ,
    \slot_wr_data_reg[0]_6 ,
    \FSM_onehot_r_state_reg[1]_4 ,
    \FSM_onehot_r_state_reg[1]_5 ,
    \r_addr_reg[4]_2 ,
    S_AXI_wvalid,
    \FSM_onehot_r_state_reg[0]_1 ,
    slot_decode_error,
    p_0_in1_in,
    p_0_in,
    \out_ports_reg[3] ,
    out_ports,
    r_dvsr,
    tx_full,
    r_status,
    S_AXI_rready,
    wr_done_reg,
    \FSM_onehot_r_state_reg[0]_2 ,
    S_AXI_awvalid,
    S_AXI_arvalid,
    rx_empty,
    \rd_data_reg[2] ,
    \rd_data_reg[3] ,
    \rd_data_reg[15] ,
    slot_slave_error,
    \S_AXI_rdata[31] ,
    \slot_rd_data[1]_1 ,
    \S_AXI_rdata[9] ,
    S_AXI_bready,
    debug_slot_wr_done,
    slot_rd_done,
    S_AXI_araddr,
    S_AXI_awaddr,
    r_eg,
    aclk,
    \FSM_onehot_r_state_reg[4]_0 ,
    S_AXI_wdata);
  output [15:0]debug_slot_chip_select;
  output [4:0]Q;
  output \FSM_onehot_r_state_reg[3]_0 ;
  output \r_addr_reg[4]_0 ;
  output \r_addr_reg[4]_1 ;
  output [7:0]\r_addr_reg[7]_0 ;
  output \slot_wr_data_reg[1]_0 ;
  output [18:0]\slot_wr_data_reg[31]_0 ;
  output \slot_wr_data_reg[0]_0 ;
  output \slot_wr_data_reg[0]_1 ;
  output \slot_wr_data_reg[0]_2 ;
  output \slot_wr_data_reg[0]_3 ;
  output \slot_wr_data_reg[0]_4 ;
  output \slot_wr_data_reg[2]_0 ;
  output \slot_wr_data_reg[1]_1 ;
  output \slot_wr_data_reg[0]_5 ;
  output \FSM_onehot_r_state_reg[1]_0 ;
  output \r_status_reg[8] ;
  output [1:0]D;
  output [0:0]\r_addr_reg[10]_0 ;
  output [1:0]\FSM_onehot_r_state_reg[0]_0 ;
  output w_slave_error__0;
  output [0:0]E;
  output w_wr_done;
  output [1:0]\FSM_onehot_r_state_reg[1]_1 ;
  output [0:0]\r_addr_reg[2]_0 ;
  output w_rd_done;
  output \r_addr_reg[7]_1 ;
  output w_rd_done_0;
  output full_reg;
  output w_rd_done__0;
  output w_wr_done_1;
  output w_wr_done_2;
  output [3:0]\r_status_reg[9] ;
  output \FSM_onehot_r_state_reg[1]_2 ;
  output [0:0]\FSM_onehot_r_state_reg[1]_3 ;
  output \FSM_onehot_r_state_reg[3]_1 ;
  output [12:0]\r_counter_reg[15] ;
  output \r_addr_reg[1]_0 ;
  output [1:0]debug_r_state;
  output [1:0]S_AXI_bresp;
  output [1:0]S_AXI_rresp;
  output [31:0]S_AXI_rdata;
  output \r_addr_reg[2]_1 ;
  output \slot_wr_data_reg[0]_6 ;
  output \FSM_onehot_r_state_reg[1]_4 ;
  output \FSM_onehot_r_state_reg[1]_5 ;
  output \r_addr_reg[4]_2 ;
  input S_AXI_wvalid;
  input [2:0]\FSM_onehot_r_state_reg[0]_1 ;
  input [2:0]slot_decode_error;
  input p_0_in1_in;
  input [0:0]p_0_in;
  input \out_ports_reg[3] ;
  input [3:0]out_ports;
  input [2:0]r_dvsr;
  input tx_full;
  input [3:0]r_status;
  input S_AXI_rready;
  input [1:0]wr_done_reg;
  input [2:0]\FSM_onehot_r_state_reg[0]_2 ;
  input S_AXI_awvalid;
  input S_AXI_arvalid;
  input rx_empty;
  input \rd_data_reg[2] ;
  input \rd_data_reg[3] ;
  input [12:0]\rd_data_reg[15] ;
  input [1:0]slot_slave_error;
  input [31:0]\S_AXI_rdata[31] ;
  input [0:0]\slot_rd_data[1]_1 ;
  input [9:0]\S_AXI_rdata[9] ;
  input S_AXI_bready;
  input [2:0]debug_slot_wr_done;
  input [2:0]slot_rd_done;
  input [27:0]S_AXI_araddr;
  input [27:0]S_AXI_awaddr;
  input r_eg;
  input aclk;
  input \FSM_onehot_r_state_reg[4]_0 ;
  input [18:0]S_AXI_wdata;

  wire [1:0]D;
  wire [0:0]E;
  wire [1:0]\FSM_onehot_r_state_reg[0]_0 ;
  wire [2:0]\FSM_onehot_r_state_reg[0]_1 ;
  wire [2:0]\FSM_onehot_r_state_reg[0]_2 ;
  wire \FSM_onehot_r_state_reg[1]_0 ;
  wire [1:0]\FSM_onehot_r_state_reg[1]_1 ;
  wire \FSM_onehot_r_state_reg[1]_2 ;
  wire [0:0]\FSM_onehot_r_state_reg[1]_3 ;
  wire \FSM_onehot_r_state_reg[1]_4 ;
  wire \FSM_onehot_r_state_reg[1]_5 ;
  wire \FSM_onehot_r_state_reg[3]_0 ;
  wire \FSM_onehot_r_state_reg[3]_1 ;
  wire \FSM_onehot_r_state_reg[4]_0 ;
  wire \FSM_onehot_w_next_state_reg[0]_i_1__1_n_0 ;
  wire \FSM_onehot_w_next_state_reg[0]_i_2__0_n_0 ;
  wire \FSM_onehot_w_next_state_reg[0]_i_2_n_0 ;
  wire \FSM_onehot_w_next_state_reg[1]_i_1__1_n_0 ;
  wire \FSM_onehot_w_next_state_reg[1]_i_2_n_0 ;
  wire \FSM_onehot_w_next_state_reg[2]_i_1_n_0 ;
  wire \FSM_onehot_w_next_state_reg[2]_i_2_n_0 ;
  wire \FSM_onehot_w_next_state_reg[3]_i_1_n_0 ;
  wire \FSM_onehot_w_next_state_reg[3]_i_2_n_0 ;
  wire \FSM_onehot_w_next_state_reg[3]_i_3_n_0 ;
  wire \FSM_onehot_w_next_state_reg[3]_i_4_n_0 ;
  wire \FSM_onehot_w_next_state_reg[3]_i_5_n_0 ;
  wire \FSM_onehot_w_next_state_reg[3]_i_6_n_0 ;
  wire \FSM_onehot_w_next_state_reg[3]_i_7_n_0 ;
  wire \FSM_onehot_w_next_state_reg[3]_i_8_n_0 ;
  wire \FSM_onehot_w_next_state_reg[3]_i_9_n_0 ;
  wire \FSM_onehot_w_next_state_reg[4]_i_1_n_0 ;
  wire \FSM_onehot_w_next_state_reg[4]_i_3_n_0 ;
  wire \FSM_onehot_w_next_state_reg_n_0_[0] ;
  wire \FSM_onehot_w_next_state_reg_n_0_[1] ;
  wire \FSM_onehot_w_next_state_reg_n_0_[2] ;
  wire \FSM_onehot_w_next_state_reg_n_0_[3] ;
  wire \FSM_onehot_w_next_state_reg_n_0_[4] ;
  wire [4:0]Q;
  wire [27:0]S_AXI_araddr;
  wire S_AXI_arvalid;
  wire [27:0]S_AXI_awaddr;
  wire S_AXI_awvalid;
  wire S_AXI_bready;
  wire [1:0]S_AXI_bresp;
  wire \S_AXI_bresp[0]_INST_0_i_1_n_0 ;
  wire \S_AXI_bresp[1]_INST_0_i_1_n_0 ;
  wire \S_AXI_bresp[1]_INST_0_i_2_n_0 ;
  wire [31:0]S_AXI_rdata;
  wire [31:0]\S_AXI_rdata[31] ;
  wire [9:0]\S_AXI_rdata[9] ;
  wire \S_AXI_rdata[9]_INST_0_i_1_n_0 ;
  wire S_AXI_rready;
  wire [1:0]S_AXI_rresp;
  wire [18:0]S_AXI_wdata;
  wire S_AXI_wvalid;
  wire aclk;
  wire [1:0]debug_r_state;
  wire [15:0]debug_slot_chip_select;
  wire \debug_slot_chip_select[12]_INST_0_i_1_n_0 ;
  wire [2:0]debug_slot_wr_done;
  wire decode_error_i_2_n_0;
  wire \emperor_uart/w_en_dvsr ;
  wire [9:9]\emperor_uart/w_status ;
  wire full_i_6_n_0;
  wire full_reg;
  wire [3:0]out_ports;
  wire \out_ports[0]_i_2_n_0 ;
  wire \out_ports[1]_i_2_n_0 ;
  wire \out_ports[2]_i_2_n_0 ;
  wire \out_ports[2]_i_3_n_0 ;
  wire \out_ports[3]_i_2_n_0 ;
  wire \out_ports[3]_i_4_n_0 ;
  wire \out_ports_reg[3] ;
  wire [0:0]p_0_in;
  wire p_0_in1_in;
  wire [11:8]r_addr;
  wire \r_addr[0]_i_1_n_0 ;
  wire \r_addr[10]_i_1_n_0 ;
  wire \r_addr[11]_i_1_n_0 ;
  wire \r_addr[1]_i_1_n_0 ;
  wire \r_addr[2]_i_1_n_0 ;
  wire \r_addr[3]_i_1_n_0 ;
  wire \r_addr[4]_i_1_n_0 ;
  wire \r_addr[5]_i_1_n_0 ;
  wire \r_addr[6]_i_1_n_0 ;
  wire \r_addr[7]_i_2_n_0 ;
  wire \r_addr[8]_i_1_n_0 ;
  wire \r_addr[9]_i_1_n_0 ;
  wire [0:0]\r_addr_reg[10]_0 ;
  wire \r_addr_reg[1]_0 ;
  wire [0:0]\r_addr_reg[2]_0 ;
  wire \r_addr_reg[2]_1 ;
  wire \r_addr_reg[4]_0 ;
  wire \r_addr_reg[4]_1 ;
  wire \r_addr_reg[4]_2 ;
  wire [7:0]\r_addr_reg[7]_0 ;
  wire \r_addr_reg[7]_1 ;
  wire \r_control[0]_i_2_n_0 ;
  wire \r_control[1]_i_2__0_n_0 ;
  wire \r_control[1]_i_2_n_0 ;
  wire [12:0]\r_counter_reg[15] ;
  wire [2:0]r_dvsr;
  wire r_eg;
  wire [3:0]r_status;
  wire \r_status[8]_i_2_n_0 ;
  wire \r_status[8]_i_3_n_0 ;
  wire \r_status[8]_i_4_n_0 ;
  wire \r_status[8]_i_5_n_0 ;
  wire \r_status[9]_i_3_n_0 ;
  wire \r_status_reg[8] ;
  wire [3:0]\r_status_reg[9] ;
  wire \r_wr_logic[3]_i_4_n_0 ;
  wire \rd_data[9]_i_3_n_0 ;
  wire \rd_data[9]_i_4_n_0 ;
  wire [12:0]\rd_data_reg[15] ;
  wire \rd_data_reg[2] ;
  wire \rd_data_reg[3] ;
  wire rd_done_i_2_n_0;
  wire rd_done_i_3_n_0;
  wire rx_empty;
  wire slave_error_i_2_n_0;
  wire slave_error_i_3_n_0;
  wire [2:0]slot_decode_error;
  wire [0:0]\slot_rd_data[1]_1 ;
  wire [2:0]slot_rd_done;
  wire [1:0]slot_slave_error;
  wire \slot_wr_data_reg[0]_0 ;
  wire \slot_wr_data_reg[0]_1 ;
  wire \slot_wr_data_reg[0]_2 ;
  wire \slot_wr_data_reg[0]_3 ;
  wire \slot_wr_data_reg[0]_4 ;
  wire \slot_wr_data_reg[0]_5 ;
  wire \slot_wr_data_reg[0]_6 ;
  wire \slot_wr_data_reg[1]_0 ;
  wire \slot_wr_data_reg[1]_1 ;
  wire \slot_wr_data_reg[2]_0 ;
  wire [18:0]\slot_wr_data_reg[31]_0 ;
  wire tx_full;
  wire update_wr_data_w;
  wire w_en_addr;
  wire w_next_state;
  wire \w_next_state_reg[0]_i_2_n_0 ;
  wire w_rd_done;
  wire w_rd_done_0;
  wire w_rd_done__0;
  wire w_slave_error__0;
  wire w_slave_error_reg_i_3_n_0;
  wire w_wr_done;
  wire w_wr_done_1;
  wire w_wr_done_2;
  wire [1:0]wr_done_reg;

  (* FSM_ENCODED_STATES = "WRITE_1:00010,WRITE_RESP:00100,READ_1:01000,READ_RESP:10000,INIT:00001" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_r_state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\FSM_onehot_w_next_state_reg_n_0_[0] ),
        .PRE(\FSM_onehot_r_state_reg[4]_0 ),
        .Q(Q[0]));
  (* FSM_ENCODED_STATES = "WRITE_1:00010,WRITE_RESP:00100,READ_1:01000,READ_RESP:10000,INIT:00001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_r_state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\FSM_onehot_r_state_reg[4]_0 ),
        .D(\FSM_onehot_w_next_state_reg_n_0_[1] ),
        .Q(Q[1]));
  (* FSM_ENCODED_STATES = "WRITE_1:00010,WRITE_RESP:00100,READ_1:01000,READ_RESP:10000,INIT:00001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_r_state_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\FSM_onehot_r_state_reg[4]_0 ),
        .D(\FSM_onehot_w_next_state_reg_n_0_[2] ),
        .Q(Q[2]));
  (* FSM_ENCODED_STATES = "WRITE_1:00010,WRITE_RESP:00100,READ_1:01000,READ_RESP:10000,INIT:00001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_r_state_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\FSM_onehot_r_state_reg[4]_0 ),
        .D(\FSM_onehot_w_next_state_reg_n_0_[3] ),
        .Q(Q[3]));
  (* FSM_ENCODED_STATES = "WRITE_1:00010,WRITE_RESP:00100,READ_1:01000,READ_RESP:10000,INIT:00001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_r_state_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\FSM_onehot_r_state_reg[4]_0 ),
        .D(\FSM_onehot_w_next_state_reg_n_0_[4] ),
        .Q(Q[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b1)) 
    \FSM_onehot_w_next_state_reg[0] 
       (.CLR(1'b0),
        .D(\FSM_onehot_w_next_state_reg[0]_i_1__1_n_0 ),
        .G(w_next_state),
        .GE(1'b1),
        .Q(\FSM_onehot_w_next_state_reg_n_0_[0] ));
  LUT6 #(
    .INIT(64'hE0FFFFFFE0E0E0E0)) 
    \FSM_onehot_w_next_state_reg[0]_i_1 
       (.I0(Q[2]),
        .I1(S_AXI_rready),
        .I2(\FSM_onehot_r_state_reg[0]_1 [2]),
        .I3(\FSM_onehot_w_next_state_reg[0]_i_2_n_0 ),
        .I4(\S_AXI_bresp[1]_INST_0_i_2_n_0 ),
        .I5(\FSM_onehot_r_state_reg[0]_1 [0]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hE0FFE0E0)) 
    \FSM_onehot_w_next_state_reg[0]_i_1__0 
       (.I0(Q[2]),
        .I1(S_AXI_rready),
        .I2(\FSM_onehot_r_state_reg[0]_2 [2]),
        .I3(debug_slot_chip_select[0]),
        .I4(\FSM_onehot_r_state_reg[0]_2 [0]),
        .O(\FSM_onehot_r_state_reg[0]_0 [0]));
  LUT4 #(
    .INIT(16'hFF40)) 
    \FSM_onehot_w_next_state_reg[0]_i_1__1 
       (.I0(\FSM_onehot_w_next_state_reg[3]_i_2_n_0 ),
        .I1(Q[0]),
        .I2(\FSM_onehot_w_next_state_reg[3]_i_3_n_0 ),
        .I3(\FSM_onehot_w_next_state_reg[0]_i_2__0_n_0 ),
        .O(\FSM_onehot_w_next_state_reg[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h22222000)) 
    \FSM_onehot_w_next_state_reg[0]_i_2 
       (.I0(r_addr[9]),
        .I1(r_addr[8]),
        .I2(S_AXI_wvalid),
        .I3(Q[1]),
        .I4(Q[3]),
        .O(\FSM_onehot_w_next_state_reg[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \FSM_onehot_w_next_state_reg[0]_i_2__0 
       (.I0(S_AXI_bready),
        .I1(Q[2]),
        .I2(Q[4]),
        .I3(S_AXI_rready),
        .O(\FSM_onehot_w_next_state_reg[0]_i_2__0_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_w_next_state_reg[1] 
       (.CLR(1'b0),
        .D(\FSM_onehot_w_next_state_reg[1]_i_1__1_n_0 ),
        .G(w_next_state),
        .GE(1'b1),
        .Q(\FSM_onehot_w_next_state_reg_n_0_[1] ));
  LUT6 #(
    .INIT(64'h0002000200020000)) 
    \FSM_onehot_w_next_state_reg[1]_i_1 
       (.I0(\FSM_onehot_r_state_reg[0]_1 [0]),
        .I1(r_addr[10]),
        .I2(r_addr[11]),
        .I3(\FSM_onehot_w_next_state_reg[1]_i_2_n_0 ),
        .I4(update_wr_data_w),
        .I5(Q[3]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h0002000200020000)) 
    \FSM_onehot_w_next_state_reg[1]_i_1__0 
       (.I0(\FSM_onehot_r_state_reg[0]_2 [0]),
        .I1(r_addr[10]),
        .I2(r_addr[11]),
        .I3(\debug_slot_chip_select[12]_INST_0_i_1_n_0 ),
        .I4(update_wr_data_w),
        .I5(Q[3]),
        .O(\FSM_onehot_r_state_reg[0]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_w_next_state_reg[1]_i_1__1 
       (.I0(\FSM_onehot_w_next_state_reg[2]_i_2_n_0 ),
        .I1(Q[1]),
        .I2(\FSM_onehot_w_next_state_reg[3]_i_3_n_0 ),
        .I3(Q[0]),
        .O(\FSM_onehot_w_next_state_reg[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_onehot_w_next_state_reg[1]_i_2 
       (.I0(r_addr[8]),
        .I1(r_addr[9]),
        .O(\FSM_onehot_w_next_state_reg[1]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_w_next_state_reg[2] 
       (.CLR(1'b0),
        .D(\FSM_onehot_w_next_state_reg[2]_i_1_n_0 ),
        .G(w_next_state),
        .GE(1'b1),
        .Q(\FSM_onehot_w_next_state_reg_n_0_[2] ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \FSM_onehot_w_next_state_reg[2]_i_1 
       (.I0(S_AXI_bready),
        .I1(Q[2]),
        .I2(\FSM_onehot_w_next_state_reg[2]_i_2_n_0 ),
        .I3(Q[1]),
        .O(\FSM_onehot_w_next_state_reg[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF503FFFFF5F3FFFF)) 
    \FSM_onehot_w_next_state_reg[2]_i_2 
       (.I0(debug_slot_wr_done[2]),
        .I1(debug_slot_wr_done[0]),
        .I2(r_addr[8]),
        .I3(r_addr[9]),
        .I4(\S_AXI_bresp[1]_INST_0_i_2_n_0 ),
        .I5(debug_slot_wr_done[1]),
        .O(\FSM_onehot_w_next_state_reg[2]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_w_next_state_reg[3] 
       (.CLR(1'b0),
        .D(\FSM_onehot_w_next_state_reg[3]_i_1_n_0 ),
        .G(w_next_state),
        .GE(1'b1),
        .Q(\FSM_onehot_w_next_state_reg_n_0_[3] ));
  LUT5 #(
    .INIT(32'hF8888888)) 
    \FSM_onehot_w_next_state_reg[3]_i_1 
       (.I0(Q[3]),
        .I1(\FSM_onehot_w_next_state_reg[4]_i_3_n_0 ),
        .I2(Q[0]),
        .I3(\FSM_onehot_w_next_state_reg[3]_i_2_n_0 ),
        .I4(\FSM_onehot_w_next_state_reg[3]_i_3_n_0 ),
        .O(\FSM_onehot_w_next_state_reg[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \FSM_onehot_w_next_state_reg[3]_i_2 
       (.I0(\FSM_onehot_w_next_state_reg[3]_i_4_n_0 ),
        .I1(\FSM_onehot_w_next_state_reg[3]_i_5_n_0 ),
        .I2(\FSM_onehot_w_next_state_reg[3]_i_6_n_0 ),
        .I3(S_AXI_araddr[25]),
        .I4(S_AXI_araddr[14]),
        .I5(S_AXI_araddr[17]),
        .O(\FSM_onehot_w_next_state_reg[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_onehot_w_next_state_reg[3]_i_3 
       (.I0(\FSM_onehot_w_next_state_reg[3]_i_7_n_0 ),
        .I1(\FSM_onehot_w_next_state_reg[3]_i_8_n_0 ),
        .I2(\FSM_onehot_w_next_state_reg[3]_i_9_n_0 ),
        .I3(S_AXI_awaddr[25]),
        .I4(S_AXI_awaddr[14]),
        .I5(S_AXI_awaddr[17]),
        .O(\FSM_onehot_w_next_state_reg[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000400)) 
    \FSM_onehot_w_next_state_reg[3]_i_4 
       (.I0(S_AXI_araddr[16]),
        .I1(S_AXI_araddr[26]),
        .I2(S_AXI_araddr[12]),
        .I3(S_AXI_araddr[22]),
        .I4(S_AXI_araddr[18]),
        .I5(S_AXI_araddr[23]),
        .O(\FSM_onehot_w_next_state_reg[3]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_w_next_state_reg[3]_i_5 
       (.I0(S_AXI_araddr[15]),
        .I1(S_AXI_araddr[19]),
        .I2(S_AXI_araddr[27]),
        .I3(S_AXI_araddr[13]),
        .O(\FSM_onehot_w_next_state_reg[3]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \FSM_onehot_w_next_state_reg[3]_i_6 
       (.I0(S_AXI_araddr[21]),
        .I1(S_AXI_araddr[24]),
        .I2(S_AXI_arvalid),
        .I3(S_AXI_araddr[20]),
        .O(\FSM_onehot_w_next_state_reg[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFDFF)) 
    \FSM_onehot_w_next_state_reg[3]_i_7 
       (.I0(S_AXI_awaddr[26]),
        .I1(S_AXI_awaddr[16]),
        .I2(S_AXI_awaddr[12]),
        .I3(S_AXI_awaddr[22]),
        .I4(S_AXI_awaddr[18]),
        .I5(S_AXI_awaddr[23]),
        .O(\FSM_onehot_w_next_state_reg[3]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_w_next_state_reg[3]_i_8 
       (.I0(S_AXI_awaddr[15]),
        .I1(S_AXI_awaddr[19]),
        .I2(S_AXI_awaddr[27]),
        .I3(S_AXI_awaddr[13]),
        .O(\FSM_onehot_w_next_state_reg[3]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \FSM_onehot_w_next_state_reg[3]_i_9 
       (.I0(S_AXI_awaddr[21]),
        .I1(S_AXI_awaddr[24]),
        .I2(S_AXI_awvalid),
        .I3(S_AXI_awaddr[20]),
        .O(\FSM_onehot_w_next_state_reg[3]_i_9_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_w_next_state_reg[4] 
       (.CLR(1'b0),
        .D(\FSM_onehot_w_next_state_reg[4]_i_1_n_0 ),
        .G(w_next_state),
        .GE(1'b1),
        .Q(\FSM_onehot_w_next_state_reg_n_0_[4] ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \FSM_onehot_w_next_state_reg[4]_i_1 
       (.I0(S_AXI_rready),
        .I1(Q[4]),
        .I2(\FSM_onehot_w_next_state_reg[4]_i_3_n_0 ),
        .I3(Q[3]),
        .O(\FSM_onehot_w_next_state_reg[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_onehot_w_next_state_reg[4]_i_2 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[4]),
        .I4(Q[0]),
        .O(w_next_state));
  LUT6 #(
    .INIT(64'hF503FFFFF5F3FFFF)) 
    \FSM_onehot_w_next_state_reg[4]_i_3 
       (.I0(slot_rd_done[2]),
        .I1(slot_rd_done[0]),
        .I2(r_addr[8]),
        .I3(r_addr[9]),
        .I4(\S_AXI_bresp[1]_INST_0_i_2_n_0 ),
        .I5(slot_rd_done[1]),
        .O(\FSM_onehot_w_next_state_reg[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8808880088088888)) 
    \S_AXI_bresp[0]_INST_0 
       (.I0(Q[2]),
        .I1(\S_AXI_bresp[0]_INST_0_i_1_n_0 ),
        .I2(slot_slave_error[1]),
        .I3(r_addr[8]),
        .I4(r_addr[9]),
        .I5(slot_slave_error[0]),
        .O(S_AXI_bresp[0]));
  LUT6 #(
    .INIT(64'h33E200E200000000)) 
    \S_AXI_bresp[0]_INST_0_i_1 
       (.I0(slot_decode_error[0]),
        .I1(r_addr[8]),
        .I2(slot_decode_error[1]),
        .I3(r_addr[9]),
        .I4(slot_decode_error[2]),
        .I5(\S_AXI_bresp[1]_INST_0_i_2_n_0 ),
        .O(\S_AXI_bresp[0]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \S_AXI_bresp[1]_INST_0 
       (.I0(Q[2]),
        .I1(\S_AXI_bresp[1]_INST_0_i_1_n_0 ),
        .O(S_AXI_bresp[1]));
  LUT6 #(
    .INIT(64'h00000000DCDFFFFF)) 
    \S_AXI_bresp[1]_INST_0_i_1 
       (.I0(slot_slave_error[1]),
        .I1(r_addr[8]),
        .I2(r_addr[9]),
        .I3(slot_slave_error[0]),
        .I4(\S_AXI_bresp[1]_INST_0_i_2_n_0 ),
        .I5(\S_AXI_bresp[0]_INST_0_i_1_n_0 ),
        .O(\S_AXI_bresp[1]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \S_AXI_bresp[1]_INST_0_i_2 
       (.I0(r_addr[10]),
        .I1(r_addr[11]),
        .O(\S_AXI_bresp[1]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0A0AA8080000A808)) 
    \S_AXI_rdata[0]_INST_0 
       (.I0(\S_AXI_rdata[9]_INST_0_i_1_n_0 ),
        .I1(\S_AXI_rdata[31] [0]),
        .I2(r_addr[8]),
        .I3(\slot_rd_data[1]_1 ),
        .I4(r_addr[9]),
        .I5(\S_AXI_rdata[9] [0]),
        .O(S_AXI_rdata[0]));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \S_AXI_rdata[10]_INST_0 
       (.I0(r_addr[10]),
        .I1(r_addr[11]),
        .I2(Q[4]),
        .I3(\S_AXI_rdata[31] [10]),
        .I4(r_addr[8]),
        .I5(r_addr[9]),
        .O(S_AXI_rdata[10]));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \S_AXI_rdata[11]_INST_0 
       (.I0(r_addr[10]),
        .I1(r_addr[11]),
        .I2(Q[4]),
        .I3(\S_AXI_rdata[31] [11]),
        .I4(r_addr[8]),
        .I5(r_addr[9]),
        .O(S_AXI_rdata[11]));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \S_AXI_rdata[12]_INST_0 
       (.I0(r_addr[10]),
        .I1(r_addr[11]),
        .I2(Q[4]),
        .I3(\S_AXI_rdata[31] [12]),
        .I4(r_addr[8]),
        .I5(r_addr[9]),
        .O(S_AXI_rdata[12]));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \S_AXI_rdata[13]_INST_0 
       (.I0(r_addr[10]),
        .I1(r_addr[11]),
        .I2(Q[4]),
        .I3(\S_AXI_rdata[31] [13]),
        .I4(r_addr[8]),
        .I5(r_addr[9]),
        .O(S_AXI_rdata[13]));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \S_AXI_rdata[14]_INST_0 
       (.I0(r_addr[10]),
        .I1(r_addr[11]),
        .I2(Q[4]),
        .I3(\S_AXI_rdata[31] [14]),
        .I4(r_addr[8]),
        .I5(r_addr[9]),
        .O(S_AXI_rdata[14]));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \S_AXI_rdata[15]_INST_0 
       (.I0(r_addr[10]),
        .I1(r_addr[11]),
        .I2(Q[4]),
        .I3(\S_AXI_rdata[31] [15]),
        .I4(r_addr[8]),
        .I5(r_addr[9]),
        .O(S_AXI_rdata[15]));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \S_AXI_rdata[16]_INST_0 
       (.I0(r_addr[10]),
        .I1(r_addr[11]),
        .I2(Q[4]),
        .I3(\S_AXI_rdata[31] [16]),
        .I4(r_addr[8]),
        .I5(r_addr[9]),
        .O(S_AXI_rdata[16]));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \S_AXI_rdata[17]_INST_0 
       (.I0(r_addr[10]),
        .I1(r_addr[11]),
        .I2(Q[4]),
        .I3(\S_AXI_rdata[31] [17]),
        .I4(r_addr[8]),
        .I5(r_addr[9]),
        .O(S_AXI_rdata[17]));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \S_AXI_rdata[18]_INST_0 
       (.I0(r_addr[10]),
        .I1(r_addr[11]),
        .I2(Q[4]),
        .I3(\S_AXI_rdata[31] [18]),
        .I4(r_addr[8]),
        .I5(r_addr[9]),
        .O(S_AXI_rdata[18]));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \S_AXI_rdata[19]_INST_0 
       (.I0(r_addr[10]),
        .I1(r_addr[11]),
        .I2(Q[4]),
        .I3(\S_AXI_rdata[31] [19]),
        .I4(r_addr[8]),
        .I5(r_addr[9]),
        .O(S_AXI_rdata[19]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00A80008)) 
    \S_AXI_rdata[1]_INST_0 
       (.I0(\S_AXI_rdata[9]_INST_0_i_1_n_0 ),
        .I1(\S_AXI_rdata[31] [1]),
        .I2(r_addr[9]),
        .I3(r_addr[8]),
        .I4(\S_AXI_rdata[9] [1]),
        .O(S_AXI_rdata[1]));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \S_AXI_rdata[20]_INST_0 
       (.I0(r_addr[10]),
        .I1(r_addr[11]),
        .I2(Q[4]),
        .I3(\S_AXI_rdata[31] [20]),
        .I4(r_addr[8]),
        .I5(r_addr[9]),
        .O(S_AXI_rdata[20]));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \S_AXI_rdata[21]_INST_0 
       (.I0(r_addr[10]),
        .I1(r_addr[11]),
        .I2(Q[4]),
        .I3(\S_AXI_rdata[31] [21]),
        .I4(r_addr[8]),
        .I5(r_addr[9]),
        .O(S_AXI_rdata[21]));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \S_AXI_rdata[22]_INST_0 
       (.I0(r_addr[10]),
        .I1(r_addr[11]),
        .I2(Q[4]),
        .I3(\S_AXI_rdata[31] [22]),
        .I4(r_addr[8]),
        .I5(r_addr[9]),
        .O(S_AXI_rdata[22]));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \S_AXI_rdata[23]_INST_0 
       (.I0(r_addr[10]),
        .I1(r_addr[11]),
        .I2(Q[4]),
        .I3(\S_AXI_rdata[31] [23]),
        .I4(r_addr[8]),
        .I5(r_addr[9]),
        .O(S_AXI_rdata[23]));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \S_AXI_rdata[24]_INST_0 
       (.I0(r_addr[10]),
        .I1(r_addr[11]),
        .I2(Q[4]),
        .I3(\S_AXI_rdata[31] [24]),
        .I4(r_addr[8]),
        .I5(r_addr[9]),
        .O(S_AXI_rdata[24]));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \S_AXI_rdata[25]_INST_0 
       (.I0(r_addr[10]),
        .I1(r_addr[11]),
        .I2(Q[4]),
        .I3(\S_AXI_rdata[31] [25]),
        .I4(r_addr[8]),
        .I5(r_addr[9]),
        .O(S_AXI_rdata[25]));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \S_AXI_rdata[26]_INST_0 
       (.I0(r_addr[10]),
        .I1(r_addr[11]),
        .I2(Q[4]),
        .I3(\S_AXI_rdata[31] [26]),
        .I4(r_addr[8]),
        .I5(r_addr[9]),
        .O(S_AXI_rdata[26]));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \S_AXI_rdata[27]_INST_0 
       (.I0(r_addr[10]),
        .I1(r_addr[11]),
        .I2(Q[4]),
        .I3(\S_AXI_rdata[31] [27]),
        .I4(r_addr[8]),
        .I5(r_addr[9]),
        .O(S_AXI_rdata[27]));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \S_AXI_rdata[28]_INST_0 
       (.I0(r_addr[10]),
        .I1(r_addr[11]),
        .I2(Q[4]),
        .I3(\S_AXI_rdata[31] [28]),
        .I4(r_addr[8]),
        .I5(r_addr[9]),
        .O(S_AXI_rdata[28]));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \S_AXI_rdata[29]_INST_0 
       (.I0(r_addr[10]),
        .I1(r_addr[11]),
        .I2(Q[4]),
        .I3(\S_AXI_rdata[31] [29]),
        .I4(r_addr[8]),
        .I5(r_addr[9]),
        .O(S_AXI_rdata[29]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h00A80008)) 
    \S_AXI_rdata[2]_INST_0 
       (.I0(\S_AXI_rdata[9]_INST_0_i_1_n_0 ),
        .I1(\S_AXI_rdata[31] [2]),
        .I2(r_addr[9]),
        .I3(r_addr[8]),
        .I4(\S_AXI_rdata[9] [2]),
        .O(S_AXI_rdata[2]));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \S_AXI_rdata[30]_INST_0 
       (.I0(r_addr[10]),
        .I1(r_addr[11]),
        .I2(Q[4]),
        .I3(\S_AXI_rdata[31] [30]),
        .I4(r_addr[8]),
        .I5(r_addr[9]),
        .O(S_AXI_rdata[30]));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \S_AXI_rdata[31]_INST_0 
       (.I0(r_addr[10]),
        .I1(r_addr[11]),
        .I2(Q[4]),
        .I3(\S_AXI_rdata[31] [31]),
        .I4(r_addr[8]),
        .I5(r_addr[9]),
        .O(S_AXI_rdata[31]));
  LUT5 #(
    .INIT(32'h00A80008)) 
    \S_AXI_rdata[3]_INST_0 
       (.I0(\S_AXI_rdata[9]_INST_0_i_1_n_0 ),
        .I1(\S_AXI_rdata[31] [3]),
        .I2(r_addr[9]),
        .I3(r_addr[8]),
        .I4(\S_AXI_rdata[9] [3]),
        .O(S_AXI_rdata[3]));
  LUT5 #(
    .INIT(32'h00A80008)) 
    \S_AXI_rdata[4]_INST_0 
       (.I0(\S_AXI_rdata[9]_INST_0_i_1_n_0 ),
        .I1(\S_AXI_rdata[31] [4]),
        .I2(r_addr[9]),
        .I3(r_addr[8]),
        .I4(\S_AXI_rdata[9] [4]),
        .O(S_AXI_rdata[4]));
  LUT5 #(
    .INIT(32'h00A80008)) 
    \S_AXI_rdata[5]_INST_0 
       (.I0(\S_AXI_rdata[9]_INST_0_i_1_n_0 ),
        .I1(\S_AXI_rdata[31] [5]),
        .I2(r_addr[9]),
        .I3(r_addr[8]),
        .I4(\S_AXI_rdata[9] [5]),
        .O(S_AXI_rdata[5]));
  LUT5 #(
    .INIT(32'h00A80008)) 
    \S_AXI_rdata[6]_INST_0 
       (.I0(\S_AXI_rdata[9]_INST_0_i_1_n_0 ),
        .I1(\S_AXI_rdata[31] [6]),
        .I2(r_addr[9]),
        .I3(r_addr[8]),
        .I4(\S_AXI_rdata[9] [6]),
        .O(S_AXI_rdata[6]));
  LUT5 #(
    .INIT(32'h00A80008)) 
    \S_AXI_rdata[7]_INST_0 
       (.I0(\S_AXI_rdata[9]_INST_0_i_1_n_0 ),
        .I1(\S_AXI_rdata[31] [7]),
        .I2(r_addr[9]),
        .I3(r_addr[8]),
        .I4(\S_AXI_rdata[9] [7]),
        .O(S_AXI_rdata[7]));
  LUT5 #(
    .INIT(32'h00A80008)) 
    \S_AXI_rdata[8]_INST_0 
       (.I0(\S_AXI_rdata[9]_INST_0_i_1_n_0 ),
        .I1(\S_AXI_rdata[31] [8]),
        .I2(r_addr[9]),
        .I3(r_addr[8]),
        .I4(\S_AXI_rdata[9] [8]),
        .O(S_AXI_rdata[8]));
  LUT5 #(
    .INIT(32'h00A80008)) 
    \S_AXI_rdata[9]_INST_0 
       (.I0(\S_AXI_rdata[9]_INST_0_i_1_n_0 ),
        .I1(\S_AXI_rdata[31] [9]),
        .I2(r_addr[9]),
        .I3(r_addr[8]),
        .I4(\S_AXI_rdata[9] [9]),
        .O(S_AXI_rdata[9]));
  LUT3 #(
    .INIT(8'h02)) 
    \S_AXI_rdata[9]_INST_0_i_1 
       (.I0(Q[4]),
        .I1(r_addr[11]),
        .I2(r_addr[10]),
        .O(\S_AXI_rdata[9]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8808880088088888)) 
    \S_AXI_rresp[0]_INST_0 
       (.I0(Q[4]),
        .I1(\S_AXI_bresp[0]_INST_0_i_1_n_0 ),
        .I2(slot_slave_error[1]),
        .I3(r_addr[8]),
        .I4(r_addr[9]),
        .I5(slot_slave_error[0]),
        .O(S_AXI_rresp[0]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \S_AXI_rresp[1]_INST_0 
       (.I0(Q[4]),
        .I1(\S_AXI_bresp[1]_INST_0_i_1_n_0 ),
        .O(S_AXI_rresp[1]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \debug_r_state[0]_INST_0 
       (.I0(Q[3]),
        .I1(Q[1]),
        .O(debug_r_state[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \debug_r_state[1]_INST_0 
       (.I0(Q[2]),
        .I1(Q[3]),
        .O(debug_r_state[1]));
  LUT6 #(
    .INIT(64'h00000000000000EA)) 
    \debug_slot_chip_select[0]_INST_0 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(S_AXI_wvalid),
        .I3(\debug_slot_chip_select[12]_INST_0_i_1_n_0 ),
        .I4(r_addr[11]),
        .I5(r_addr[10]),
        .O(debug_slot_chip_select[0]));
  LUT6 #(
    .INIT(64'h000000000E000000)) 
    \debug_slot_chip_select[10]_INST_0 
       (.I0(Q[3]),
        .I1(update_wr_data_w),
        .I2(r_addr[8]),
        .I3(r_addr[9]),
        .I4(r_addr[11]),
        .I5(r_addr[10]),
        .O(debug_slot_chip_select[10]));
  LUT6 #(
    .INIT(64'h00000000E0000000)) 
    \debug_slot_chip_select[11]_INST_0 
       (.I0(Q[3]),
        .I1(update_wr_data_w),
        .I2(r_addr[8]),
        .I3(r_addr[9]),
        .I4(r_addr[11]),
        .I5(r_addr[10]),
        .O(debug_slot_chip_select[11]));
  LUT6 #(
    .INIT(64'h0000000088808080)) 
    \debug_slot_chip_select[12]_INST_0 
       (.I0(r_addr[11]),
        .I1(r_addr[10]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(S_AXI_wvalid),
        .I5(\debug_slot_chip_select[12]_INST_0_i_1_n_0 ),
        .O(debug_slot_chip_select[12]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \debug_slot_chip_select[12]_INST_0_i_1 
       (.I0(r_addr[8]),
        .I1(r_addr[9]),
        .O(\debug_slot_chip_select[12]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000888000000000)) 
    \debug_slot_chip_select[13]_INST_0 
       (.I0(r_addr[11]),
        .I1(r_addr[10]),
        .I2(Q[3]),
        .I3(update_wr_data_w),
        .I4(r_addr[9]),
        .I5(r_addr[8]),
        .O(debug_slot_chip_select[13]));
  LUT6 #(
    .INIT(64'h0000888000000000)) 
    \debug_slot_chip_select[14]_INST_0 
       (.I0(r_addr[11]),
        .I1(r_addr[10]),
        .I2(Q[3]),
        .I3(update_wr_data_w),
        .I4(r_addr[8]),
        .I5(r_addr[9]),
        .O(debug_slot_chip_select[14]));
  LUT6 #(
    .INIT(64'h8880000000000000)) 
    \debug_slot_chip_select[15]_INST_0 
       (.I0(r_addr[11]),
        .I1(r_addr[10]),
        .I2(Q[3]),
        .I3(update_wr_data_w),
        .I4(r_addr[8]),
        .I5(r_addr[9]),
        .O(debug_slot_chip_select[15]));
  LUT2 #(
    .INIT(4'h8)) 
    \debug_slot_chip_select[15]_INST_0_i_1 
       (.I0(S_AXI_wvalid),
        .I1(Q[1]),
        .O(update_wr_data_w));
  LUT6 #(
    .INIT(64'h0000000000000E00)) 
    \debug_slot_chip_select[1]_INST_0 
       (.I0(Q[3]),
        .I1(update_wr_data_w),
        .I2(r_addr[9]),
        .I3(r_addr[8]),
        .I4(r_addr[11]),
        .I5(r_addr[10]),
        .O(debug_slot_chip_select[1]));
  LUT6 #(
    .INIT(64'h0000000000000E00)) 
    \debug_slot_chip_select[2]_INST_0 
       (.I0(Q[3]),
        .I1(update_wr_data_w),
        .I2(r_addr[8]),
        .I3(r_addr[9]),
        .I4(r_addr[11]),
        .I5(r_addr[10]),
        .O(debug_slot_chip_select[2]));
  LUT6 #(
    .INIT(64'h000000000000E000)) 
    \debug_slot_chip_select[3]_INST_0 
       (.I0(Q[3]),
        .I1(update_wr_data_w),
        .I2(r_addr[8]),
        .I3(r_addr[9]),
        .I4(r_addr[11]),
        .I5(r_addr[10]),
        .O(debug_slot_chip_select[3]));
  LUT6 #(
    .INIT(64'h0000000000EA0000)) 
    \debug_slot_chip_select[4]_INST_0 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(S_AXI_wvalid),
        .I3(\debug_slot_chip_select[12]_INST_0_i_1_n_0 ),
        .I4(r_addr[10]),
        .I5(r_addr[11]),
        .O(debug_slot_chip_select[4]));
  LUT6 #(
    .INIT(64'h000000000E000000)) 
    \debug_slot_chip_select[5]_INST_0 
       (.I0(Q[3]),
        .I1(update_wr_data_w),
        .I2(r_addr[9]),
        .I3(r_addr[8]),
        .I4(r_addr[10]),
        .I5(r_addr[11]),
        .O(debug_slot_chip_select[5]));
  LUT6 #(
    .INIT(64'h000000000E000000)) 
    \debug_slot_chip_select[6]_INST_0 
       (.I0(Q[3]),
        .I1(update_wr_data_w),
        .I2(r_addr[8]),
        .I3(r_addr[9]),
        .I4(r_addr[10]),
        .I5(r_addr[11]),
        .O(debug_slot_chip_select[6]));
  LUT6 #(
    .INIT(64'h00000000E0000000)) 
    \debug_slot_chip_select[7]_INST_0 
       (.I0(Q[3]),
        .I1(update_wr_data_w),
        .I2(r_addr[8]),
        .I3(r_addr[9]),
        .I4(r_addr[10]),
        .I5(r_addr[11]),
        .O(debug_slot_chip_select[7]));
  LUT6 #(
    .INIT(64'h0000000000EA0000)) 
    \debug_slot_chip_select[8]_INST_0 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(S_AXI_wvalid),
        .I3(\debug_slot_chip_select[12]_INST_0_i_1_n_0 ),
        .I4(r_addr[11]),
        .I5(r_addr[10]),
        .O(debug_slot_chip_select[8]));
  LUT6 #(
    .INIT(64'h000000000E000000)) 
    \debug_slot_chip_select[9]_INST_0 
       (.I0(Q[3]),
        .I1(update_wr_data_w),
        .I2(r_addr[9]),
        .I3(r_addr[8]),
        .I4(r_addr[11]),
        .I5(r_addr[10]),
        .O(debug_slot_chip_select[9]));
  LUT6 #(
    .INIT(64'h0EFF0E0E0E000E0E)) 
    decode_error_i_1
       (.I0(\r_addr_reg[7]_1 ),
        .I1(Q[1]),
        .I2(decode_error_i_2_n_0),
        .I3(wr_done_reg[0]),
        .I4(wr_done_reg[1]),
        .I5(slot_decode_error[1]),
        .O(\FSM_onehot_r_state_reg[1]_4 ));
  LUT6 #(
    .INIT(64'h8F008FFF8F008F00)) 
    decode_error_i_1__0
       (.I0(rd_done_i_2_n_0),
        .I1(\r_addr_reg[7]_0 [4]),
        .I2(rd_done_i_3_n_0),
        .I3(\FSM_onehot_r_state_reg[0]_1 [1]),
        .I4(\FSM_onehot_r_state_reg[0]_1 [0]),
        .I5(slot_decode_error[2]),
        .O(\r_addr_reg[4]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hEFCFEFFF)) 
    decode_error_i_2
       (.I0(\r_addr_reg[4]_0 ),
        .I1(wr_done_reg[1]),
        .I2(wr_done_reg[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .O(decode_error_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    full_i_3__0
       (.I0(full_i_6_n_0),
        .I1(\r_addr_reg[7]_0 [4]),
        .I2(\r_addr_reg[7]_0 [1]),
        .I3(\out_ports[2]_i_3_n_0 ),
        .I4(\FSM_onehot_r_state_reg[0]_1 [1]),
        .O(\r_addr_reg[4]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hFFEFFFFF)) 
    full_i_6
       (.I0(\r_addr_reg[7]_0 [3]),
        .I1(\r_addr_reg[7]_0 [0]),
        .I2(Q[1]),
        .I3(tx_full),
        .I4(\r_addr_reg[7]_0 [2]),
        .O(full_i_6_n_0));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    \out_ports[0]_i_1 
       (.I0(\slot_wr_data_reg[31]_0 [0]),
        .I1(\out_ports[1]_i_2_n_0 ),
        .I2(\out_ports[0]_i_2_n_0 ),
        .I3(\r_addr_reg[7]_0 [0]),
        .I4(Q[1]),
        .I5(out_ports[0]),
        .O(\slot_wr_data_reg[0]_4 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \out_ports[0]_i_2 
       (.I0(\r_addr_reg[7]_0 [1]),
        .I1(\r_addr_reg[7]_0 [2]),
        .O(\out_ports[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \out_ports[1]_i_1 
       (.I0(\slot_wr_data_reg[31]_0 [0]),
        .I1(\out_ports[3]_i_2_n_0 ),
        .I2(\out_ports[1]_i_2_n_0 ),
        .I3(out_ports[1]),
        .O(\slot_wr_data_reg[0]_3 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \out_ports[1]_i_2 
       (.I0(\out_ports[2]_i_3_n_0 ),
        .I1(wr_done_reg[1]),
        .I2(wr_done_reg[0]),
        .I3(\r_addr_reg[7]_0 [3]),
        .I4(\r_addr_reg[7]_0 [4]),
        .O(\out_ports[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \out_ports[2]_i_1 
       (.I0(\slot_wr_data_reg[31]_0 [0]),
        .I1(\out_ports[2]_i_2_n_0 ),
        .I2(\out_ports_reg[3] ),
        .I3(\r_addr_reg[7]_0 [3]),
        .I4(\out_ports[2]_i_3_n_0 ),
        .I5(out_ports[2]),
        .O(\slot_wr_data_reg[0]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    \out_ports[2]_i_2 
       (.I0(\r_addr_reg[7]_0 [2]),
        .I1(\r_addr_reg[7]_0 [1]),
        .I2(\r_addr_reg[7]_0 [0]),
        .I3(Q[1]),
        .I4(\r_addr_reg[7]_0 [4]),
        .O(\out_ports[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \out_ports[2]_i_3 
       (.I0(\r_addr_reg[7]_0 [5]),
        .I1(\r_addr_reg[7]_0 [7]),
        .I2(\r_addr_reg[7]_0 [6]),
        .O(\out_ports[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \out_ports[3]_i_1 
       (.I0(\slot_wr_data_reg[31]_0 [0]),
        .I1(\out_ports[3]_i_2_n_0 ),
        .I2(\out_ports_reg[3] ),
        .I3(\r_addr_reg[7]_0 [3]),
        .I4(\out_ports[3]_i_4_n_0 ),
        .I5(out_ports[3]),
        .O(\slot_wr_data_reg[0]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \out_ports[3]_i_2 
       (.I0(\r_addr_reg[7]_0 [1]),
        .I1(\r_addr_reg[7]_0 [2]),
        .I2(Q[1]),
        .I3(\r_addr_reg[7]_0 [0]),
        .O(\out_ports[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \out_ports[3]_i_4 
       (.I0(\r_addr_reg[7]_0 [7]),
        .I1(\r_addr_reg[7]_0 [6]),
        .I2(\r_addr_reg[7]_0 [4]),
        .I3(\r_addr_reg[7]_0 [5]),
        .O(\out_ports[3]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hF808)) 
    \r_addr[0]_i_1 
       (.I0(S_AXI_arvalid),
        .I1(S_AXI_araddr[0]),
        .I2(S_AXI_awvalid),
        .I3(S_AXI_awaddr[0]),
        .O(\r_addr[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF808)) 
    \r_addr[10]_i_1 
       (.I0(S_AXI_arvalid),
        .I1(S_AXI_araddr[10]),
        .I2(S_AXI_awvalid),
        .I3(S_AXI_awaddr[10]),
        .O(\r_addr[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF808)) 
    \r_addr[11]_i_1 
       (.I0(S_AXI_arvalid),
        .I1(S_AXI_araddr[11]),
        .I2(S_AXI_awvalid),
        .I3(S_AXI_awaddr[11]),
        .O(\r_addr[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF808)) 
    \r_addr[1]_i_1 
       (.I0(S_AXI_arvalid),
        .I1(S_AXI_araddr[1]),
        .I2(S_AXI_awvalid),
        .I3(S_AXI_awaddr[1]),
        .O(\r_addr[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF808)) 
    \r_addr[2]_i_1 
       (.I0(S_AXI_arvalid),
        .I1(S_AXI_araddr[2]),
        .I2(S_AXI_awvalid),
        .I3(S_AXI_awaddr[2]),
        .O(\r_addr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF808)) 
    \r_addr[3]_i_1 
       (.I0(S_AXI_arvalid),
        .I1(S_AXI_araddr[3]),
        .I2(S_AXI_awvalid),
        .I3(S_AXI_awaddr[3]),
        .O(\r_addr[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF808)) 
    \r_addr[4]_i_1 
       (.I0(S_AXI_arvalid),
        .I1(S_AXI_araddr[4]),
        .I2(S_AXI_awvalid),
        .I3(S_AXI_awaddr[4]),
        .O(\r_addr[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF808)) 
    \r_addr[5]_i_1 
       (.I0(S_AXI_arvalid),
        .I1(S_AXI_araddr[5]),
        .I2(S_AXI_awvalid),
        .I3(S_AXI_awaddr[5]),
        .O(\r_addr[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF808)) 
    \r_addr[6]_i_1 
       (.I0(S_AXI_arvalid),
        .I1(S_AXI_araddr[6]),
        .I2(S_AXI_awvalid),
        .I3(S_AXI_awaddr[6]),
        .O(\r_addr[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hA8)) 
    \r_addr[7]_i_1 
       (.I0(Q[0]),
        .I1(S_AXI_awvalid),
        .I2(S_AXI_arvalid),
        .O(w_en_addr));
  LUT4 #(
    .INIT(16'hF808)) 
    \r_addr[7]_i_2 
       (.I0(S_AXI_arvalid),
        .I1(S_AXI_araddr[7]),
        .I2(S_AXI_awvalid),
        .I3(S_AXI_awaddr[7]),
        .O(\r_addr[7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF808)) 
    \r_addr[8]_i_1 
       (.I0(S_AXI_arvalid),
        .I1(S_AXI_araddr[8]),
        .I2(S_AXI_awvalid),
        .I3(S_AXI_awaddr[8]),
        .O(\r_addr[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF808)) 
    \r_addr[9]_i_1 
       (.I0(S_AXI_arvalid),
        .I1(S_AXI_araddr[9]),
        .I2(S_AXI_awvalid),
        .I3(S_AXI_awaddr[9]),
        .O(\r_addr[9]_i_1_n_0 ));
  FDCE \r_addr_reg[0] 
       (.C(aclk),
        .CE(w_en_addr),
        .CLR(\FSM_onehot_r_state_reg[4]_0 ),
        .D(\r_addr[0]_i_1_n_0 ),
        .Q(\r_addr_reg[7]_0 [0]));
  FDCE \r_addr_reg[10] 
       (.C(aclk),
        .CE(w_en_addr),
        .CLR(\FSM_onehot_r_state_reg[4]_0 ),
        .D(\r_addr[10]_i_1_n_0 ),
        .Q(r_addr[10]));
  FDCE \r_addr_reg[11] 
       (.C(aclk),
        .CE(w_en_addr),
        .CLR(\FSM_onehot_r_state_reg[4]_0 ),
        .D(\r_addr[11]_i_1_n_0 ),
        .Q(r_addr[11]));
  FDCE \r_addr_reg[1] 
       (.C(aclk),
        .CE(w_en_addr),
        .CLR(\FSM_onehot_r_state_reg[4]_0 ),
        .D(\r_addr[1]_i_1_n_0 ),
        .Q(\r_addr_reg[7]_0 [1]));
  FDCE \r_addr_reg[2] 
       (.C(aclk),
        .CE(w_en_addr),
        .CLR(\FSM_onehot_r_state_reg[4]_0 ),
        .D(\r_addr[2]_i_1_n_0 ),
        .Q(\r_addr_reg[7]_0 [2]));
  FDCE \r_addr_reg[3] 
       (.C(aclk),
        .CE(w_en_addr),
        .CLR(\FSM_onehot_r_state_reg[4]_0 ),
        .D(\r_addr[3]_i_1_n_0 ),
        .Q(\r_addr_reg[7]_0 [3]));
  FDCE \r_addr_reg[4] 
       (.C(aclk),
        .CE(w_en_addr),
        .CLR(\FSM_onehot_r_state_reg[4]_0 ),
        .D(\r_addr[4]_i_1_n_0 ),
        .Q(\r_addr_reg[7]_0 [4]));
  FDCE \r_addr_reg[5] 
       (.C(aclk),
        .CE(w_en_addr),
        .CLR(\FSM_onehot_r_state_reg[4]_0 ),
        .D(\r_addr[5]_i_1_n_0 ),
        .Q(\r_addr_reg[7]_0 [5]));
  FDCE \r_addr_reg[6] 
       (.C(aclk),
        .CE(w_en_addr),
        .CLR(\FSM_onehot_r_state_reg[4]_0 ),
        .D(\r_addr[6]_i_1_n_0 ),
        .Q(\r_addr_reg[7]_0 [6]));
  FDCE \r_addr_reg[7] 
       (.C(aclk),
        .CE(w_en_addr),
        .CLR(\FSM_onehot_r_state_reg[4]_0 ),
        .D(\r_addr[7]_i_2_n_0 ),
        .Q(\r_addr_reg[7]_0 [7]));
  FDCE \r_addr_reg[8] 
       (.C(aclk),
        .CE(w_en_addr),
        .CLR(\FSM_onehot_r_state_reg[4]_0 ),
        .D(\r_addr[8]_i_1_n_0 ),
        .Q(r_addr[8]));
  FDCE \r_addr_reg[9] 
       (.C(aclk),
        .CE(w_en_addr),
        .CLR(\FSM_onehot_r_state_reg[4]_0 ),
        .D(\r_addr[9]_i_1_n_0 ),
        .Q(r_addr[9]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000008)) 
    \r_auto_reload[31]_i_1 
       (.I0(w_slave_error_reg_i_3_n_0),
        .I1(\r_addr_reg[7]_0 [2]),
        .I2(\r_addr_reg[7]_0 [3]),
        .I3(\r_addr_reg[7]_0 [0]),
        .I4(\r_addr_reg[7]_0 [1]),
        .O(E));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    \r_control[0]_i_1 
       (.I0(\slot_wr_data_reg[31]_0 [0]),
        .I1(w_slave_error_reg_i_3_n_0),
        .I2(\r_addr_reg[7]_0 [3]),
        .I3(\r_addr_reg[7]_0 [2]),
        .I4(\r_control[1]_i_2__0_n_0 ),
        .I5(p_0_in),
        .O(\slot_wr_data_reg[0]_0 ));
  LUT5 #(
    .INIT(32'h00800000)) 
    \r_control[0]_i_1__0 
       (.I0(\r_control[0]_i_2_n_0 ),
        .I1(\slot_wr_data_reg[31]_0 [0]),
        .I2(\r_addr_reg[7]_0 [3]),
        .I3(\r_addr_reg[7]_0 [4]),
        .I4(\out_ports[3]_i_2_n_0 ),
        .O(\FSM_onehot_r_state_reg[1]_1 [0]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \r_control[0]_i_2 
       (.I0(\FSM_onehot_r_state_reg[0]_1 [1]),
        .I1(\r_addr_reg[7]_0 [6]),
        .I2(\r_addr_reg[7]_0 [7]),
        .I3(\r_addr_reg[7]_0 [5]),
        .O(\r_control[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    \r_control[1]_i_1 
       (.I0(\slot_wr_data_reg[31]_0 [1]),
        .I1(w_slave_error_reg_i_3_n_0),
        .I2(\r_addr_reg[7]_0 [3]),
        .I3(\r_addr_reg[7]_0 [2]),
        .I4(\r_control[1]_i_2__0_n_0 ),
        .I5(p_0_in1_in),
        .O(\slot_wr_data_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \r_control[1]_i_1__0 
       (.I0(\r_control[1]_i_2_n_0 ),
        .I1(\FSM_onehot_r_state_reg[0]_1 [1]),
        .I2(Q[1]),
        .I3(\r_addr_reg[7]_0 [4]),
        .I4(\slot_wr_data_reg[31]_0 [1]),
        .I5(\out_ports[2]_i_3_n_0 ),
        .O(\FSM_onehot_r_state_reg[1]_1 [1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \r_control[1]_i_2 
       (.I0(\r_addr_reg[7]_0 [1]),
        .I1(\r_addr_reg[7]_0 [0]),
        .I2(\r_addr_reg[7]_0 [2]),
        .I3(\r_addr_reg[7]_0 [3]),
        .O(\r_control[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \r_control[1]_i_2__0 
       (.I0(\r_addr_reg[7]_0 [0]),
        .I1(\r_addr_reg[7]_0 [1]),
        .O(\r_control[1]_i_2__0_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \r_dvsr[0]_i_1 
       (.I0(\slot_wr_data_reg[31]_0 [0]),
        .I1(\emperor_uart/w_en_dvsr ),
        .I2(r_dvsr[0]),
        .O(\slot_wr_data_reg[0]_5 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_dvsr[1]_i_1 
       (.I0(\slot_wr_data_reg[31]_0 [1]),
        .I1(\emperor_uart/w_en_dvsr ),
        .I2(r_dvsr[1]),
        .O(\slot_wr_data_reg[1]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_dvsr[2]_i_1 
       (.I0(\slot_wr_data_reg[31]_0 [2]),
        .I1(\emperor_uart/w_en_dvsr ),
        .I2(r_dvsr[2]),
        .O(\slot_wr_data_reg[2]_0 ));
  LUT6 #(
    .INIT(64'h0000400000000000)) 
    \r_dvsr[2]_i_2 
       (.I0(\out_ports[3]_i_4_n_0 ),
        .I1(Q[1]),
        .I2(\FSM_onehot_r_state_reg[0]_1 [1]),
        .I3(\r_control[1]_i_2__0_n_0 ),
        .I4(\r_addr_reg[7]_0 [2]),
        .I5(\r_addr_reg[7]_0 [3]),
        .O(\emperor_uart/w_en_dvsr ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    r_eg_i_1
       (.I0(\slot_wr_data_reg[31]_0 [0]),
        .I1(w_slave_error_reg_i_3_n_0),
        .I2(\r_addr_reg[7]_0 [3]),
        .I3(\r_addr_reg[7]_0 [2]),
        .I4(\r_control[1]_i_2__0_n_0 ),
        .I5(r_eg),
        .O(\slot_wr_data_reg[0]_6 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFBFF)) 
    \r_status[5]_i_3 
       (.I0(\out_ports[2]_i_3_n_0 ),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(\r_addr_reg[7]_0 [4]),
        .I4(\FSM_onehot_r_state_reg[0]_1 [0]),
        .I5(\FSM_onehot_r_state_reg[0]_1 [2]),
        .O(\FSM_onehot_r_state_reg[3]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00000015)) 
    \r_status[5]_i_4 
       (.I0(\r_addr_reg[7]_0 [1]),
        .I1(\r_addr_reg[7]_0 [4]),
        .I2(\r_addr_reg[7]_0 [2]),
        .I3(\r_addr_reg[7]_0 [3]),
        .I4(\r_addr_reg[7]_0 [0]),
        .O(\r_addr_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hFFF777F700044404)) 
    \r_status[8]_i_1 
       (.I0(\r_status[8]_i_2_n_0 ),
        .I1(\r_control[0]_i_2_n_0 ),
        .I2(\r_status[8]_i_3_n_0 ),
        .I3(\r_status[8]_i_4_n_0 ),
        .I4(\r_status[8]_i_5_n_0 ),
        .I5(r_status[2]),
        .O(\r_status_reg[8] ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h7477)) 
    \r_status[8]_i_2 
       (.I0(Q[3]),
        .I1(\r_addr_reg[7]_0 [2]),
        .I2(\r_addr_reg[7]_0 [4]),
        .I3(rx_empty),
        .O(\r_status[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFFFFFF)) 
    \r_status[8]_i_3 
       (.I0(\r_addr_reg[7]_0 [0]),
        .I1(\r_addr_reg[7]_0 [1]),
        .I2(\r_addr_reg[7]_0 [3]),
        .I3(\r_addr_reg[7]_0 [2]),
        .I4(rx_empty),
        .I5(Q[3]),
        .O(\r_status[8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00010100)) 
    \r_status[8]_i_4 
       (.I0(\r_addr_reg[7]_0 [0]),
        .I1(\r_addr_reg[7]_0 [3]),
        .I2(\r_addr_reg[7]_0 [1]),
        .I3(\r_addr_reg[7]_0 [4]),
        .I4(\r_addr_reg[7]_0 [2]),
        .O(\r_status[8]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \r_status[8]_i_5 
       (.I0(Q[1]),
        .I1(Q[3]),
        .O(\r_status[8]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hA808FFFFA8080000)) 
    \r_status[9]_i_1 
       (.I0(\r_control[0]_i_2_n_0 ),
        .I1(Q[1]),
        .I2(\r_addr_reg[7]_0 [2]),
        .I3(tx_full),
        .I4(\emperor_uart/w_status ),
        .I5(r_status[3]),
        .O(\FSM_onehot_r_state_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hDD50000005000000)) 
    \r_status[9]_i_2 
       (.I0(\r_status[9]_i_3_n_0 ),
        .I1(tx_full),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(\r_control[0]_i_2_n_0 ),
        .I5(\r_status[8]_i_4_n_0 ),
        .O(\emperor_uart/w_status ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \r_status[9]_i_3 
       (.I0(\r_addr_reg[7]_0 [2]),
        .I1(\r_addr_reg[7]_0 [3]),
        .I2(\r_addr_reg[7]_0 [1]),
        .I3(\r_addr_reg[7]_0 [0]),
        .O(\r_status[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    \r_wr_logic[3]_i_3 
       (.I0(rd_done_i_3_n_0),
        .I1(\r_wr_logic[3]_i_4_n_0 ),
        .I2(tx_full),
        .I3(\r_addr_reg[7]_0 [2]),
        .I4(\r_addr_reg[7]_0 [3]),
        .I5(\r_addr_reg[7]_0 [4]),
        .O(full_reg));
  LUT2 #(
    .INIT(4'h8)) 
    \r_wr_logic[3]_i_4 
       (.I0(Q[1]),
        .I1(\FSM_onehot_r_state_reg[0]_1 [1]),
        .O(\r_wr_logic[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFCFFFCFFFFFF)) 
    \rd_data[0]_i_2 
       (.I0(rd_done_i_2_n_0),
        .I1(\r_addr_reg[7]_0 [7]),
        .I2(\r_addr_reg[7]_0 [6]),
        .I3(\r_control[1]_i_2__0_n_0 ),
        .I4(\r_addr_reg[7]_0 [5]),
        .I5(\r_addr_reg[7]_0 [4]),
        .O(\r_addr_reg[7]_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF32221000)) 
    \rd_data[2]_i_1 
       (.I0(\r_addr_reg[7]_0 [4]),
        .I1(\r_addr_reg[7]_0 [2]),
        .I2(r_dvsr[2]),
        .I3(\r_addr_reg[7]_0 [3]),
        .I4(r_status[0]),
        .I5(\rd_data_reg[2] ),
        .O(\r_status_reg[9] [0]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hFF40)) 
    \rd_data[3]_i_1 
       (.I0(\r_addr_reg[7]_0 [2]),
        .I1(\r_addr_reg[7]_0 [4]),
        .I2(r_status[1]),
        .I3(\rd_data_reg[3] ),
        .O(\r_status_reg[9] [1]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \rd_data[5]_i_2 
       (.I0(\r_addr_reg[7]_0 [2]),
        .I1(\r_addr_reg[7]_0 [4]),
        .O(\r_addr_reg[2]_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFDFFFFFFFFF)) 
    \rd_data[7]_i_5 
       (.I0(\FSM_onehot_r_state_reg[0]_1 [1]),
        .I1(rx_empty),
        .I2(Q[3]),
        .I3(\r_addr_reg[7]_0 [3]),
        .I4(\r_addr_reg[7]_0 [2]),
        .I5(\r_addr_reg[4]_0 ),
        .O(\FSM_onehot_r_state_reg[1]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \rd_data[8]_i_1 
       (.I0(r_status[2]),
        .I1(\r_addr_reg[7]_0 [4]),
        .I2(\r_addr_reg[7]_0 [2]),
        .O(\r_status_reg[9] [2]));
  LUT6 #(
    .INIT(64'h0000000507070303)) 
    \rd_data[9]_i_1 
       (.I0(\r_status[8]_i_5_n_0 ),
        .I1(\rd_data[9]_i_3_n_0 ),
        .I2(\rd_data[9]_i_4_n_0 ),
        .I3(\r_addr_reg[7]_0 [2]),
        .I4(\r_addr_reg[7]_0 [3]),
        .I5(\r_addr_reg[7]_0 [4]),
        .O(\r_addr_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \rd_data[9]_i_2 
       (.I0(r_status[3]),
        .I1(\r_addr_reg[7]_0 [4]),
        .I2(\r_addr_reg[7]_0 [2]),
        .O(\r_status_reg[9] [3]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hFFFB)) 
    \rd_data[9]_i_3 
       (.I0(rx_empty),
        .I1(Q[3]),
        .I2(\r_addr_reg[7]_0 [3]),
        .I3(\r_addr_reg[7]_0 [2]),
        .O(\rd_data[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \rd_data[9]_i_4 
       (.I0(\r_addr_reg[7]_0 [1]),
        .I1(\r_addr_reg[7]_0 [0]),
        .I2(\r_addr_reg[7]_0 [5]),
        .I3(\r_addr_reg[7]_0 [7]),
        .I4(\r_addr_reg[7]_0 [6]),
        .I5(\FSM_onehot_r_state_reg[0]_1 [1]),
        .O(\rd_data[9]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    rd_done_i_1
       (.I0(\r_addr_reg[7]_1 ),
        .I1(wr_done_reg[1]),
        .I2(wr_done_reg[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .O(w_rd_done));
  LUT6 #(
    .INIT(64'hD7FF000000000000)) 
    rd_done_i_1__0
       (.I0(Q[1]),
        .I1(rd_done_i_2_n_0),
        .I2(\r_addr_reg[7]_0 [4]),
        .I3(rd_done_i_3_n_0),
        .I4(\FSM_onehot_r_state_reg[0]_1 [1]),
        .I5(Q[3]),
        .O(w_rd_done_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'hE)) 
    rd_done_i_2
       (.I0(\r_addr_reg[7]_0 [3]),
        .I1(\r_addr_reg[7]_0 [2]),
        .O(rd_done_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    rd_done_i_3
       (.I0(\r_addr_reg[7]_0 [5]),
        .I1(\r_addr_reg[7]_0 [0]),
        .I2(\r_addr_reg[7]_0 [1]),
        .I3(\r_addr_reg[7]_0 [6]),
        .I4(\r_addr_reg[7]_0 [7]),
        .O(rd_done_i_3_n_0));
  LUT6 #(
    .INIT(64'h808080FF80808000)) 
    slave_error_i_1
       (.I0(slave_error_i_2_n_0),
        .I1(\r_control[0]_i_2_n_0 ),
        .I2(\r_control[1]_i_2__0_n_0 ),
        .I3(\FSM_onehot_r_state_reg[0]_1 [1]),
        .I4(\FSM_onehot_r_state_reg[0]_1 [0]),
        .I5(slot_slave_error[1]),
        .O(\FSM_onehot_r_state_reg[1]_5 ));
  LUT6 #(
    .INIT(64'hBBBBBABBABAAAAAA)) 
    slave_error_i_2
       (.I0(slave_error_i_3_n_0),
        .I1(rd_done_i_2_n_0),
        .I2(\r_addr_reg[7]_0 [4]),
        .I3(Q[3]),
        .I4(rx_empty),
        .I5(Q[1]),
        .O(slave_error_i_2_n_0));
  LUT6 #(
    .INIT(64'h1010001010000000)) 
    slave_error_i_3
       (.I0(\r_addr_reg[7]_0 [3]),
        .I1(\r_addr_reg[7]_0 [4]),
        .I2(\r_addr_reg[7]_0 [2]),
        .I3(Q[1]),
        .I4(tx_full),
        .I5(Q[3]),
        .O(slave_error_i_3_n_0));
  FDCE \slot_wr_data_reg[0] 
       (.C(aclk),
        .CE(update_wr_data_w),
        .CLR(\FSM_onehot_r_state_reg[4]_0 ),
        .D(S_AXI_wdata[0]),
        .Q(\slot_wr_data_reg[31]_0 [0]));
  FDCE \slot_wr_data_reg[16] 
       (.C(aclk),
        .CE(update_wr_data_w),
        .CLR(\FSM_onehot_r_state_reg[4]_0 ),
        .D(S_AXI_wdata[3]),
        .Q(\slot_wr_data_reg[31]_0 [3]));
  FDCE \slot_wr_data_reg[17] 
       (.C(aclk),
        .CE(update_wr_data_w),
        .CLR(\FSM_onehot_r_state_reg[4]_0 ),
        .D(S_AXI_wdata[4]),
        .Q(\slot_wr_data_reg[31]_0 [4]));
  FDCE \slot_wr_data_reg[18] 
       (.C(aclk),
        .CE(update_wr_data_w),
        .CLR(\FSM_onehot_r_state_reg[4]_0 ),
        .D(S_AXI_wdata[5]),
        .Q(\slot_wr_data_reg[31]_0 [5]));
  FDCE \slot_wr_data_reg[19] 
       (.C(aclk),
        .CE(update_wr_data_w),
        .CLR(\FSM_onehot_r_state_reg[4]_0 ),
        .D(S_AXI_wdata[6]),
        .Q(\slot_wr_data_reg[31]_0 [6]));
  FDCE \slot_wr_data_reg[1] 
       (.C(aclk),
        .CE(update_wr_data_w),
        .CLR(\FSM_onehot_r_state_reg[4]_0 ),
        .D(S_AXI_wdata[1]),
        .Q(\slot_wr_data_reg[31]_0 [1]));
  FDCE \slot_wr_data_reg[20] 
       (.C(aclk),
        .CE(update_wr_data_w),
        .CLR(\FSM_onehot_r_state_reg[4]_0 ),
        .D(S_AXI_wdata[7]),
        .Q(\slot_wr_data_reg[31]_0 [7]));
  FDCE \slot_wr_data_reg[21] 
       (.C(aclk),
        .CE(update_wr_data_w),
        .CLR(\FSM_onehot_r_state_reg[4]_0 ),
        .D(S_AXI_wdata[8]),
        .Q(\slot_wr_data_reg[31]_0 [8]));
  FDCE \slot_wr_data_reg[22] 
       (.C(aclk),
        .CE(update_wr_data_w),
        .CLR(\FSM_onehot_r_state_reg[4]_0 ),
        .D(S_AXI_wdata[9]),
        .Q(\slot_wr_data_reg[31]_0 [9]));
  FDCE \slot_wr_data_reg[23] 
       (.C(aclk),
        .CE(update_wr_data_w),
        .CLR(\FSM_onehot_r_state_reg[4]_0 ),
        .D(S_AXI_wdata[10]),
        .Q(\slot_wr_data_reg[31]_0 [10]));
  FDCE \slot_wr_data_reg[24] 
       (.C(aclk),
        .CE(update_wr_data_w),
        .CLR(\FSM_onehot_r_state_reg[4]_0 ),
        .D(S_AXI_wdata[11]),
        .Q(\slot_wr_data_reg[31]_0 [11]));
  FDCE \slot_wr_data_reg[25] 
       (.C(aclk),
        .CE(update_wr_data_w),
        .CLR(\FSM_onehot_r_state_reg[4]_0 ),
        .D(S_AXI_wdata[12]),
        .Q(\slot_wr_data_reg[31]_0 [12]));
  FDCE \slot_wr_data_reg[26] 
       (.C(aclk),
        .CE(update_wr_data_w),
        .CLR(\FSM_onehot_r_state_reg[4]_0 ),
        .D(S_AXI_wdata[13]),
        .Q(\slot_wr_data_reg[31]_0 [13]));
  FDCE \slot_wr_data_reg[27] 
       (.C(aclk),
        .CE(update_wr_data_w),
        .CLR(\FSM_onehot_r_state_reg[4]_0 ),
        .D(S_AXI_wdata[14]),
        .Q(\slot_wr_data_reg[31]_0 [14]));
  FDCE \slot_wr_data_reg[28] 
       (.C(aclk),
        .CE(update_wr_data_w),
        .CLR(\FSM_onehot_r_state_reg[4]_0 ),
        .D(S_AXI_wdata[15]),
        .Q(\slot_wr_data_reg[31]_0 [15]));
  FDCE \slot_wr_data_reg[29] 
       (.C(aclk),
        .CE(update_wr_data_w),
        .CLR(\FSM_onehot_r_state_reg[4]_0 ),
        .D(S_AXI_wdata[16]),
        .Q(\slot_wr_data_reg[31]_0 [16]));
  FDCE \slot_wr_data_reg[2] 
       (.C(aclk),
        .CE(update_wr_data_w),
        .CLR(\FSM_onehot_r_state_reg[4]_0 ),
        .D(S_AXI_wdata[2]),
        .Q(\slot_wr_data_reg[31]_0 [2]));
  FDCE \slot_wr_data_reg[30] 
       (.C(aclk),
        .CE(update_wr_data_w),
        .CLR(\FSM_onehot_r_state_reg[4]_0 ),
        .D(S_AXI_wdata[17]),
        .Q(\slot_wr_data_reg[31]_0 [17]));
  FDCE \slot_wr_data_reg[31] 
       (.C(aclk),
        .CE(update_wr_data_w),
        .CLR(\FSM_onehot_r_state_reg[4]_0 ),
        .D(S_AXI_wdata[18]),
        .Q(\slot_wr_data_reg[31]_0 [18]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \w_next_state_reg[0]_i_1 
       (.I0(r_addr[10]),
        .I1(r_addr[11]),
        .I2(\w_next_state_reg[0]_i_2_n_0 ),
        .I3(wr_done_reg[0]),
        .I4(wr_done_reg[1]),
        .O(\r_addr_reg[10]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h22222000)) 
    \w_next_state_reg[0]_i_2 
       (.I0(r_addr[8]),
        .I1(r_addr[9]),
        .I2(S_AXI_wvalid),
        .I3(Q[1]),
        .I4(Q[3]),
        .O(\w_next_state_reg[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \w_rd_data_reg[10]_i_1 
       (.I0(\rd_data_reg[15] [7]),
        .I1(\r_addr_reg[7]_0 [2]),
        .I2(\r_addr_reg[7]_0 [3]),
        .O(\r_counter_reg[15] [7]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \w_rd_data_reg[11]_i_1 
       (.I0(\rd_data_reg[15] [8]),
        .I1(\r_addr_reg[7]_0 [2]),
        .I2(\r_addr_reg[7]_0 [3]),
        .O(\r_counter_reg[15] [8]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \w_rd_data_reg[12]_i_1 
       (.I0(\rd_data_reg[15] [9]),
        .I1(\r_addr_reg[7]_0 [2]),
        .I2(\r_addr_reg[7]_0 [3]),
        .O(\r_counter_reg[15] [9]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \w_rd_data_reg[13]_i_1 
       (.I0(\rd_data_reg[15] [10]),
        .I1(\r_addr_reg[7]_0 [2]),
        .I2(\r_addr_reg[7]_0 [3]),
        .O(\r_counter_reg[15] [10]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \w_rd_data_reg[14]_i_1 
       (.I0(\rd_data_reg[15] [11]),
        .I1(\r_addr_reg[7]_0 [2]),
        .I2(\r_addr_reg[7]_0 [3]),
        .O(\r_counter_reg[15] [11]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \w_rd_data_reg[15]_i_1 
       (.I0(\rd_data_reg[15] [12]),
        .I1(\r_addr_reg[7]_0 [2]),
        .I2(\r_addr_reg[7]_0 [3]),
        .O(\r_counter_reg[15] [12]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \w_rd_data_reg[31]_i_2 
       (.I0(\r_addr_reg[4]_0 ),
        .I1(\FSM_onehot_r_state_reg[0]_2 [1]),
        .I2(Q[1]),
        .I3(Q[3]),
        .O(\FSM_onehot_r_state_reg[1]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \w_rd_data_reg[3]_i_1 
       (.I0(\rd_data_reg[15] [0]),
        .I1(\r_addr_reg[7]_0 [2]),
        .I2(\r_addr_reg[7]_0 [3]),
        .O(\r_counter_reg[15] [0]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \w_rd_data_reg[4]_i_1 
       (.I0(\rd_data_reg[15] [1]),
        .I1(\r_addr_reg[7]_0 [2]),
        .I2(\r_addr_reg[7]_0 [3]),
        .O(\r_counter_reg[15] [1]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \w_rd_data_reg[5]_i_1 
       (.I0(\rd_data_reg[15] [2]),
        .I1(\r_addr_reg[7]_0 [2]),
        .I2(\r_addr_reg[7]_0 [3]),
        .O(\r_counter_reg[15] [2]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \w_rd_data_reg[6]_i_1 
       (.I0(\rd_data_reg[15] [3]),
        .I1(\r_addr_reg[7]_0 [2]),
        .I2(\r_addr_reg[7]_0 [3]),
        .O(\r_counter_reg[15] [3]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \w_rd_data_reg[7]_i_1 
       (.I0(\rd_data_reg[15] [4]),
        .I1(\r_addr_reg[7]_0 [2]),
        .I2(\r_addr_reg[7]_0 [3]),
        .O(\r_counter_reg[15] [4]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \w_rd_data_reg[8]_i_1 
       (.I0(\rd_data_reg[15] [5]),
        .I1(\r_addr_reg[7]_0 [2]),
        .I2(\r_addr_reg[7]_0 [3]),
        .O(\r_counter_reg[15] [5]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \w_rd_data_reg[9]_i_1 
       (.I0(\rd_data_reg[15] [6]),
        .I1(\r_addr_reg[7]_0 [2]),
        .I2(\r_addr_reg[7]_0 [3]),
        .O(\r_counter_reg[15] [6]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'hB)) 
    w_rd_done_reg_i_1
       (.I0(Q[3]),
        .I1(\r_addr_reg[4]_0 ),
        .O(\FSM_onehot_r_state_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h00D0)) 
    w_rd_done_reg_i_2
       (.I0(\r_addr_reg[4]_0 ),
        .I1(Q[3]),
        .I2(\FSM_onehot_r_state_reg[0]_2 [1]),
        .I3(Q[1]),
        .O(w_rd_done__0));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAAA)) 
    w_slave_error_reg_i_2
       (.I0(\FSM_onehot_r_state_reg[0]_2 [2]),
        .I1(\r_addr_reg[7]_0 [2]),
        .I2(\r_addr_reg[7]_0 [3]),
        .I3(\r_addr_reg[7]_0 [1]),
        .I4(\r_addr_reg[7]_0 [0]),
        .I5(w_slave_error_reg_i_3_n_0),
        .O(w_slave_error__0));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    w_slave_error_reg_i_3
       (.I0(\FSM_onehot_r_state_reg[0]_2 [1]),
        .I1(Q[1]),
        .I2(\r_addr_reg[7]_0 [5]),
        .I3(\r_addr_reg[7]_0 [4]),
        .I4(\r_addr_reg[7]_0 [6]),
        .I5(\r_addr_reg[7]_0 [7]),
        .O(w_slave_error_reg_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    wr_done_i_1
       (.I0(Q[1]),
        .I1(\FSM_onehot_r_state_reg[0]_2 [1]),
        .O(w_wr_done));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    wr_done_i_1__0
       (.I0(\r_addr_reg[4]_0 ),
        .I1(Q[1]),
        .I2(wr_done_reg[0]),
        .I3(wr_done_reg[1]),
        .O(w_wr_done_1));
  LUT6 #(
    .INIT(64'h8880888888888888)) 
    wr_done_i_1__1
       (.I0(\FSM_onehot_r_state_reg[0]_1 [1]),
        .I1(Q[1]),
        .I2(\r_addr_reg[7]_0 [2]),
        .I3(\r_addr_reg[7]_0 [3]),
        .I4(Q[3]),
        .I5(\r_addr_reg[4]_0 ),
        .O(w_wr_done_2));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    wr_done_i_2
       (.I0(\r_addr_reg[7]_0 [4]),
        .I1(\r_addr_reg[7]_0 [5]),
        .I2(\r_addr_reg[7]_0 [0]),
        .I3(\r_addr_reg[7]_0 [1]),
        .I4(\r_addr_reg[7]_0 [6]),
        .I5(\r_addr_reg[7]_0 [7]),
        .O(\r_addr_reg[4]_0 ));
endmodule

(* ORIG_REF_NAME = "buad_generator" *) 
module top_mmio_subsystem_0_0_buad_generator
   (CO,
    \r_sampling_ticks_reg[0] ,
    debug_uart_tick,
    debug_uart_tick_0,
    debug_uart_tick_1,
    Q,
    aclk,
    \r_cnt_reg[9]_0 );
  output [0:0]CO;
  output \r_sampling_ticks_reg[0] ;
  input debug_uart_tick;
  input debug_uart_tick_0;
  input debug_uart_tick_1;
  input [0:0]Q;
  input aclk;
  input \r_cnt_reg[9]_0 ;

  wire [0:0]CO;
  wire [0:0]Q;
  wire aclk;
  wire debug_uart_tick;
  wire debug_uart_tick_0;
  wire debug_uart_tick_1;
  wire \r_cnt[2]_i_1_n_0 ;
  wire \r_cnt[3]_i_1_n_0 ;
  wire \r_cnt[4]_i_1_n_0 ;
  wire \r_cnt[5]_i_1_n_0 ;
  wire \r_cnt[6]_i_1_n_0 ;
  wire \r_cnt[7]_i_1_n_0 ;
  wire \r_cnt[7]_i_2_n_0 ;
  wire \r_cnt[8]_i_1_n_0 ;
  wire \r_cnt[9]_i_1_n_0 ;
  wire \r_cnt[9]_i_2_n_0 ;
  wire [9:0]r_cnt_reg;
  wire \r_cnt_reg[9]_0 ;
  wire \r_sampling_ticks_reg[0] ;
  wire tick_carry__0_i_1_n_0;
  wire tick_carry__0_i_2_n_0;
  wire tick_carry__0_i_3_n_0;
  wire tick_carry__0_i_4_n_0;
  wire tick_carry__0_n_0;
  wire tick_carry__0_n_1;
  wire tick_carry__0_n_2;
  wire tick_carry__0_n_3;
  wire tick_carry__1_i_1_n_0;
  wire tick_carry__1_i_2_n_0;
  wire tick_carry__1_i_3_n_0;
  wire tick_carry__1_n_2;
  wire tick_carry__1_n_3;
  wire tick_carry_i_1_n_0;
  wire tick_carry_i_2_n_0;
  wire tick_carry_i_3_n_0;
  wire tick_carry_i_4_n_0;
  wire tick_carry_n_0;
  wire tick_carry_n_1;
  wire tick_carry_n_2;
  wire tick_carry_n_3;
  wire [1:0]w_next_cnt;
  wire [3:0]NLW_tick_carry_O_UNCONNECTED;
  wire [3:0]NLW_tick_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_tick_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_tick_carry__1_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \r_cnt[0]_i_1 
       (.I0(r_cnt_reg[0]),
        .I1(CO),
        .O(w_next_cnt[0]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \r_cnt[1]_i_1 
       (.I0(r_cnt_reg[1]),
        .I1(r_cnt_reg[0]),
        .I2(CO),
        .O(w_next_cnt[1]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h1540)) 
    \r_cnt[2]_i_1 
       (.I0(CO),
        .I1(r_cnt_reg[0]),
        .I2(r_cnt_reg[1]),
        .I3(r_cnt_reg[2]),
        .O(\r_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'h15554000)) 
    \r_cnt[3]_i_1 
       (.I0(CO),
        .I1(r_cnt_reg[1]),
        .I2(r_cnt_reg[0]),
        .I3(r_cnt_reg[2]),
        .I4(r_cnt_reg[3]),
        .O(\r_cnt[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1555555540000000)) 
    \r_cnt[4]_i_1 
       (.I0(CO),
        .I1(r_cnt_reg[2]),
        .I2(r_cnt_reg[0]),
        .I3(r_cnt_reg[1]),
        .I4(r_cnt_reg[3]),
        .I5(r_cnt_reg[4]),
        .O(\r_cnt[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h4510)) 
    \r_cnt[5]_i_1 
       (.I0(CO),
        .I1(\r_cnt[7]_i_2_n_0 ),
        .I2(r_cnt_reg[4]),
        .I3(r_cnt_reg[5]),
        .O(\r_cnt[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'h55150040)) 
    \r_cnt[6]_i_1 
       (.I0(CO),
        .I1(r_cnt_reg[5]),
        .I2(r_cnt_reg[4]),
        .I3(\r_cnt[7]_i_2_n_0 ),
        .I4(r_cnt_reg[6]),
        .O(\r_cnt[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4555555510000000)) 
    \r_cnt[7]_i_1 
       (.I0(CO),
        .I1(\r_cnt[7]_i_2_n_0 ),
        .I2(r_cnt_reg[4]),
        .I3(r_cnt_reg[5]),
        .I4(r_cnt_reg[6]),
        .I5(r_cnt_reg[7]),
        .O(\r_cnt[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \r_cnt[7]_i_2 
       (.I0(r_cnt_reg[2]),
        .I1(r_cnt_reg[0]),
        .I2(r_cnt_reg[1]),
        .I3(r_cnt_reg[3]),
        .O(\r_cnt[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h51550400)) 
    \r_cnt[8]_i_1 
       (.I0(CO),
        .I1(r_cnt_reg[6]),
        .I2(\r_cnt[9]_i_2_n_0 ),
        .I3(r_cnt_reg[7]),
        .I4(r_cnt_reg[8]),
        .O(\r_cnt[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5515555500400000)) 
    \r_cnt[9]_i_1 
       (.I0(CO),
        .I1(r_cnt_reg[8]),
        .I2(r_cnt_reg[7]),
        .I3(\r_cnt[9]_i_2_n_0 ),
        .I4(r_cnt_reg[6]),
        .I5(r_cnt_reg[9]),
        .O(\r_cnt[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \r_cnt[9]_i_2 
       (.I0(r_cnt_reg[5]),
        .I1(r_cnt_reg[4]),
        .I2(r_cnt_reg[3]),
        .I3(r_cnt_reg[1]),
        .I4(r_cnt_reg[0]),
        .I5(r_cnt_reg[2]),
        .O(\r_cnt[9]_i_2_n_0 ));
  FDCE \r_cnt_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r_cnt_reg[9]_0 ),
        .D(w_next_cnt[0]),
        .Q(r_cnt_reg[0]));
  FDCE \r_cnt_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r_cnt_reg[9]_0 ),
        .D(w_next_cnt[1]),
        .Q(r_cnt_reg[1]));
  FDCE \r_cnt_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r_cnt_reg[9]_0 ),
        .D(\r_cnt[2]_i_1_n_0 ),
        .Q(r_cnt_reg[2]));
  FDCE \r_cnt_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r_cnt_reg[9]_0 ),
        .D(\r_cnt[3]_i_1_n_0 ),
        .Q(r_cnt_reg[3]));
  FDCE \r_cnt_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r_cnt_reg[9]_0 ),
        .D(\r_cnt[4]_i_1_n_0 ),
        .Q(r_cnt_reg[4]));
  FDCE \r_cnt_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r_cnt_reg[9]_0 ),
        .D(\r_cnt[5]_i_1_n_0 ),
        .Q(r_cnt_reg[5]));
  FDCE \r_cnt_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r_cnt_reg[9]_0 ),
        .D(\r_cnt[6]_i_1_n_0 ),
        .Q(r_cnt_reg[6]));
  FDCE \r_cnt_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r_cnt_reg[9]_0 ),
        .D(\r_cnt[7]_i_1_n_0 ),
        .Q(r_cnt_reg[7]));
  FDCE \r_cnt_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r_cnt_reg[9]_0 ),
        .D(\r_cnt[8]_i_1_n_0 ),
        .Q(r_cnt_reg[8]));
  FDCE \r_cnt_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r_cnt_reg[9]_0 ),
        .D(\r_cnt[9]_i_1_n_0 ),
        .Q(r_cnt_reg[9]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_sampling_ticks[4]_i_3 
       (.I0(CO),
        .I1(Q),
        .O(\r_sampling_ticks_reg[0] ));
  CARRY4 tick_carry
       (.CI(1'b0),
        .CO({tick_carry_n_0,tick_carry_n_1,tick_carry_n_2,tick_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_tick_carry_O_UNCONNECTED[3:0]),
        .S({tick_carry_i_1_n_0,tick_carry_i_2_n_0,tick_carry_i_3_n_0,tick_carry_i_4_n_0}));
  CARRY4 tick_carry__0
       (.CI(tick_carry_n_0),
        .CO({tick_carry__0_n_0,tick_carry__0_n_1,tick_carry__0_n_2,tick_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_tick_carry__0_O_UNCONNECTED[3:0]),
        .S({tick_carry__0_i_1_n_0,tick_carry__0_i_2_n_0,tick_carry__0_i_3_n_0,tick_carry__0_i_4_n_0}));
  LUT3 #(
    .INIT(8'hFE)) 
    tick_carry__0_i_1
       (.I0(debug_uart_tick),
        .I1(debug_uart_tick_0),
        .I2(debug_uart_tick_1),
        .O(tick_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    tick_carry__0_i_2
       (.I0(debug_uart_tick),
        .I1(debug_uart_tick_0),
        .I2(debug_uart_tick_1),
        .O(tick_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    tick_carry__0_i_3
       (.I0(debug_uart_tick),
        .I1(debug_uart_tick_0),
        .I2(debug_uart_tick_1),
        .O(tick_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    tick_carry__0_i_4
       (.I0(debug_uart_tick),
        .I1(debug_uart_tick_0),
        .I2(debug_uart_tick_1),
        .O(tick_carry__0_i_4_n_0));
  CARRY4 tick_carry__1
       (.CI(tick_carry__0_n_0),
        .CO({NLW_tick_carry__1_CO_UNCONNECTED[3],CO,tick_carry__1_n_2,tick_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_tick_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,tick_carry__1_i_1_n_0,tick_carry__1_i_2_n_0,tick_carry__1_i_3_n_0}));
  LUT3 #(
    .INIT(8'hFE)) 
    tick_carry__1_i_1
       (.I0(debug_uart_tick),
        .I1(debug_uart_tick_0),
        .I2(debug_uart_tick_1),
        .O(tick_carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    tick_carry__1_i_2
       (.I0(debug_uart_tick),
        .I1(debug_uart_tick_0),
        .I2(debug_uart_tick_1),
        .O(tick_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    tick_carry__1_i_3
       (.I0(debug_uart_tick),
        .I1(debug_uart_tick_0),
        .I2(debug_uart_tick_1),
        .O(tick_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'h5554)) 
    tick_carry_i_1
       (.I0(r_cnt_reg[9]),
        .I1(debug_uart_tick),
        .I2(debug_uart_tick_0),
        .I3(debug_uart_tick_1),
        .O(tick_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000811111110)) 
    tick_carry_i_2
       (.I0(r_cnt_reg[8]),
        .I1(r_cnt_reg[7]),
        .I2(debug_uart_tick_1),
        .I3(debug_uart_tick_0),
        .I4(debug_uart_tick),
        .I5(r_cnt_reg[6]),
        .O(tick_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h01000000000000FE)) 
    tick_carry_i_3
       (.I0(debug_uart_tick_1),
        .I1(debug_uart_tick_0),
        .I2(debug_uart_tick),
        .I3(r_cnt_reg[3]),
        .I4(r_cnt_reg[5]),
        .I5(r_cnt_reg[4]),
        .O(tick_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h4120000800084120)) 
    tick_carry_i_4
       (.I0(r_cnt_reg[0]),
        .I1(r_cnt_reg[1]),
        .I2(debug_uart_tick_1),
        .I3(debug_uart_tick_0),
        .I4(r_cnt_reg[2]),
        .I5(debug_uart_tick),
        .O(tick_carry_i_4_n_0));
endmodule

(* ORIG_REF_NAME = "fifo" *) 
module top_mmio_subsystem_0_0_fifo
   (empty_reg,
    arst_n_0,
    rx_full,
    empty_reg_0,
    D,
    \r_rd_logic_reg[2] ,
    \r_rd_logic_reg[2]_0 ,
    full_reg,
    aclk,
    Q,
    \rd_data_reg[7] ,
    \r_status_reg[0] ,
    \rd_data_reg[0] ,
    \rd_data_reg[1] ,
    \rd_data_reg[5] ,
    r_status,
    \r_reg_array_reg[15][7] ,
    arst_n,
    \r_reg_array_reg[0][7] ,
    E);
  output empty_reg;
  output arst_n_0;
  output rx_full;
  output empty_reg_0;
  output [5:0]D;
  output \r_rd_logic_reg[2] ;
  output \r_rd_logic_reg[2]_0 ;
  output full_reg;
  input aclk;
  input [0:0]Q;
  input \rd_data_reg[7] ;
  input [2:0]\r_status_reg[0] ;
  input \rd_data_reg[0] ;
  input \rd_data_reg[1] ;
  input \rd_data_reg[5] ;
  input [0:0]r_status;
  input \r_reg_array_reg[15][7] ;
  input arst_n;
  input [7:0]\r_reg_array_reg[0][7] ;
  input [0:0]E;

  wire [5:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire aclk;
  wire arst_n;
  wire arst_n_0;
  wire control_n_10;
  wire control_n_11;
  wire control_n_12;
  wire control_n_13;
  wire control_n_14;
  wire control_n_15;
  wire control_n_16;
  wire control_n_17;
  wire control_n_18;
  wire control_n_19;
  wire control_n_20;
  wire control_n_21;
  wire control_n_22;
  wire control_n_7;
  wire control_n_8;
  wire control_n_9;
  wire empty_reg;
  wire empty_reg_0;
  wire full_reg;
  wire [3:0]r_rd_logic_reg;
  wire \r_rd_logic_reg[2]_0 ;
  wire r_rd_logic_reg_2_sn_1;
  wire [7:0]\r_reg_array_reg[0][7] ;
  wire \r_reg_array_reg[15][7] ;
  wire [0:0]r_status;
  wire [2:0]\r_status_reg[0] ;
  wire \rd_data_reg[0] ;
  wire \rd_data_reg[1] ;
  wire \rd_data_reg[5] ;
  wire \rd_data_reg[7] ;
  wire rx_full;

  assign \r_rd_logic_reg[2]  = r_rd_logic_reg_2_sn_1;
  top_mmio_subsystem_0_0_fifo_controller_1 control
       (.E(control_n_7),
        .Q(Q),
        .aclk(aclk),
        .empty_reg_0(empty_reg),
        .empty_reg_1(empty_reg_0),
        .empty_reg_2(\rd_data_reg[7] ),
        .full_reg_0(rx_full),
        .full_reg_1(full_reg),
        .\r_control_reg[0] (control_n_8),
        .\r_control_reg[0]_0 (control_n_9),
        .\r_control_reg[0]_1 (control_n_10),
        .\r_control_reg[0]_10 (control_n_19),
        .\r_control_reg[0]_11 (control_n_20),
        .\r_control_reg[0]_12 (control_n_21),
        .\r_control_reg[0]_13 (control_n_22),
        .\r_control_reg[0]_2 (control_n_11),
        .\r_control_reg[0]_3 (control_n_12),
        .\r_control_reg[0]_4 (control_n_13),
        .\r_control_reg[0]_5 (control_n_14),
        .\r_control_reg[0]_6 (control_n_15),
        .\r_control_reg[0]_7 (control_n_16),
        .\r_control_reg[0]_8 (control_n_17),
        .\r_control_reg[0]_9 (control_n_18),
        .\r_rd_logic_reg[3]_0 (r_rd_logic_reg),
        .\r_reg_array_reg[15][7] (\r_reg_array_reg[15][7] ),
        .\r_status_reg[0] (\r_status_reg[0] ),
        .\r_wr_logic_reg[3]_0 (arst_n_0),
        .\r_wr_logic_reg[3]_1 (E));
  top_mmio_subsystem_0_0_register_file_2 rf
       (.D(D),
        .E(control_n_22),
        .aclk(aclk),
        .arst_n(arst_n),
        .arst_n_0(arst_n_0),
        .\r_rd_logic_reg[2] (r_rd_logic_reg_2_sn_1),
        .\r_rd_logic_reg[2]_0 (\r_rd_logic_reg[2]_0 ),
        .\r_reg_array_reg[0][7]_0 (\r_reg_array_reg[0][7] ),
        .\r_reg_array_reg[0][7]_1 (control_n_7),
        .\r_reg_array_reg[10][7]_0 (control_n_20),
        .\r_reg_array_reg[11][7]_0 (control_n_15),
        .\r_reg_array_reg[12][7]_0 (control_n_17),
        .\r_reg_array_reg[13][7]_0 (control_n_19),
        .\r_reg_array_reg[14][7]_0 (control_n_21),
        .\r_reg_array_reg[1][7]_0 (control_n_8),
        .\r_reg_array_reg[2][7]_0 (control_n_9),
        .\r_reg_array_reg[3][7]_0 (control_n_10),
        .\r_reg_array_reg[4][7]_0 (control_n_11),
        .\r_reg_array_reg[5][7]_0 (control_n_12),
        .\r_reg_array_reg[6][7]_0 (control_n_13),
        .\r_reg_array_reg[7][7]_0 (control_n_14),
        .\r_reg_array_reg[8][7]_0 (control_n_16),
        .\r_reg_array_reg[9][7]_0 (control_n_18),
        .r_status(r_status),
        .\rd_data_reg[0] (\rd_data_reg[0] ),
        .\rd_data_reg[0]_0 (r_rd_logic_reg),
        .\rd_data_reg[1] (\rd_data_reg[1] ),
        .\rd_data_reg[5] (\rd_data_reg[5] ),
        .\rd_data_reg[7] (\rd_data_reg[7] ));
endmodule

(* ORIG_REF_NAME = "fifo" *) 
module top_mmio_subsystem_0_0_fifo_0
   (tx_empty,
    full_reg,
    empty_reg,
    D,
    full_reg_0,
    aclk,
    \r_reg_array_reg[0][2] ,
    Q,
    \r_status_reg[3] ,
    \r_in_shift_reg[0] ,
    empty_reg_0,
    full_reg_1,
    \r_in_shift_reg[1] ,
    full_reg_2,
    empty_reg_1,
    \r_reg_array_reg[0][2]_0 ,
    E);
  output tx_empty;
  output full_reg;
  output empty_reg;
  output [2:0]D;
  output full_reg_0;
  input aclk;
  input \r_reg_array_reg[0][2] ;
  input [0:0]Q;
  input [2:0]\r_status_reg[3] ;
  input [0:0]\r_in_shift_reg[0] ;
  input empty_reg_0;
  input full_reg_1;
  input [1:0]\r_in_shift_reg[1] ;
  input full_reg_2;
  input empty_reg_1;
  input [2:0]\r_reg_array_reg[0][2]_0 ;
  input [0:0]E;

  wire [2:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire aclk;
  wire control_n_10;
  wire control_n_11;
  wire control_n_12;
  wire control_n_13;
  wire control_n_14;
  wire control_n_15;
  wire control_n_16;
  wire control_n_17;
  wire control_n_18;
  wire control_n_19;
  wire control_n_20;
  wire control_n_21;
  wire control_n_9;
  wire empty_reg;
  wire empty_reg_0;
  wire empty_reg_1;
  wire full_reg;
  wire full_reg_0;
  wire full_reg_1;
  wire full_reg_2;
  wire [0:0]\r_in_shift_reg[0] ;
  wire [1:0]\r_in_shift_reg[1] ;
  wire [3:0]r_rd_logic_reg;
  wire \r_reg_array_reg[0][2] ;
  wire [2:0]\r_reg_array_reg[0][2]_0 ;
  wire [2:0]\r_status_reg[3] ;
  wire [1:0]r_wr_logic_reg;
  wire tx_empty;

  top_mmio_subsystem_0_0_fifo_controller control
       (.E(E),
        .Q(Q),
        .aclk(aclk),
        .empty_reg_0(tx_empty),
        .empty_reg_1(empty_reg),
        .empty_reg_2(empty_reg_0),
        .empty_reg_3(empty_reg_1),
        .full_reg_0(full_reg),
        .full_reg_1(full_reg_0),
        .full_reg_2(full_reg_1),
        .full_reg_3(full_reg_2),
        .\r_control_reg[1] (control_n_10),
        .\r_control_reg[1]_0 (control_n_11),
        .\r_control_reg[1]_1 (control_n_12),
        .\r_control_reg[1]_10 (control_n_21),
        .\r_control_reg[1]_2 (control_n_13),
        .\r_control_reg[1]_3 (control_n_14),
        .\r_control_reg[1]_4 (control_n_15),
        .\r_control_reg[1]_5 (control_n_16),
        .\r_control_reg[1]_6 (control_n_17),
        .\r_control_reg[1]_7 (control_n_18),
        .\r_control_reg[1]_8 (control_n_19),
        .\r_control_reg[1]_9 (control_n_20),
        .\r_rd_logic_reg[3]_0 (r_rd_logic_reg),
        .\r_status_reg[3] (\r_status_reg[3] ),
        .\r_wr_logic_reg[1]_0 (r_wr_logic_reg),
        .\r_wr_logic_reg[3]_0 (control_n_9),
        .\r_wr_logic_reg[3]_1 (\r_reg_array_reg[0][2] ));
  top_mmio_subsystem_0_0_register_file rf
       (.D(D),
        .Q(Q),
        .aclk(aclk),
        .\r_in_shift_reg[0] (\r_in_shift_reg[0] ),
        .\r_in_shift_reg[1] (\r_in_shift_reg[1] ),
        .\r_in_shift_reg[2] (r_rd_logic_reg),
        .\r_reg_array_reg[0][2]_0 (\r_reg_array_reg[0][2]_0 ),
        .\r_reg_array_reg[0][2]_1 (\r_reg_array_reg[0][2] ),
        .\r_reg_array_reg[10][2]_0 (control_n_19),
        .\r_reg_array_reg[11][2]_0 (control_n_14),
        .\r_reg_array_reg[12][2]_0 (control_n_16),
        .\r_reg_array_reg[13][2]_0 (control_n_18),
        .\r_reg_array_reg[14][2]_0 (control_n_20),
        .\r_reg_array_reg[15][2]_0 (control_n_21),
        .\r_reg_array_reg[3][2]_0 (control_n_9),
        .\r_reg_array_reg[3][2]_1 (r_wr_logic_reg),
        .\r_reg_array_reg[4][2]_0 (control_n_10),
        .\r_reg_array_reg[5][2]_0 (control_n_11),
        .\r_reg_array_reg[6][2]_0 (control_n_12),
        .\r_reg_array_reg[7][2]_0 (control_n_13),
        .\r_reg_array_reg[8][2]_0 (control_n_15),
        .\r_reg_array_reg[9][2]_0 (control_n_17));
endmodule

(* ORIG_REF_NAME = "fifo_controller" *) 
module top_mmio_subsystem_0_0_fifo_controller
   (empty_reg_0,
    full_reg_0,
    \r_wr_logic_reg[1]_0 ,
    \r_rd_logic_reg[3]_0 ,
    empty_reg_1,
    \r_wr_logic_reg[3]_0 ,
    \r_control_reg[1] ,
    \r_control_reg[1]_0 ,
    \r_control_reg[1]_1 ,
    \r_control_reg[1]_2 ,
    \r_control_reg[1]_3 ,
    \r_control_reg[1]_4 ,
    \r_control_reg[1]_5 ,
    \r_control_reg[1]_6 ,
    \r_control_reg[1]_7 ,
    \r_control_reg[1]_8 ,
    \r_control_reg[1]_9 ,
    \r_control_reg[1]_10 ,
    full_reg_1,
    aclk,
    \r_wr_logic_reg[3]_1 ,
    Q,
    \r_status_reg[3] ,
    empty_reg_2,
    full_reg_2,
    full_reg_3,
    empty_reg_3,
    E);
  output empty_reg_0;
  output full_reg_0;
  output [1:0]\r_wr_logic_reg[1]_0 ;
  output [3:0]\r_rd_logic_reg[3]_0 ;
  output empty_reg_1;
  output \r_wr_logic_reg[3]_0 ;
  output \r_control_reg[1] ;
  output \r_control_reg[1]_0 ;
  output \r_control_reg[1]_1 ;
  output \r_control_reg[1]_2 ;
  output \r_control_reg[1]_3 ;
  output \r_control_reg[1]_4 ;
  output \r_control_reg[1]_5 ;
  output \r_control_reg[1]_6 ;
  output \r_control_reg[1]_7 ;
  output \r_control_reg[1]_8 ;
  output \r_control_reg[1]_9 ;
  output \r_control_reg[1]_10 ;
  output full_reg_1;
  input aclk;
  input \r_wr_logic_reg[3]_1 ;
  input [0:0]Q;
  input [2:0]\r_status_reg[3] ;
  input empty_reg_2;
  input full_reg_2;
  input full_reg_3;
  input empty_reg_3;
  input [0:0]E;

  wire [0:0]E;
  wire [0:0]Q;
  wire aclk;
  wire empty_i_1_n_0;
  wire empty_i_2_n_0;
  wire empty_i_3__0_n_0;
  wire empty_i_4_n_0;
  wire empty_reg_0;
  wire empty_reg_1;
  wire empty_reg_2;
  wire empty_reg_3;
  wire full_i_1_n_0;
  wire full_i_2__0_n_0;
  wire full_i_5_n_0;
  wire full_reg_0;
  wire full_reg_1;
  wire full_reg_2;
  wire full_reg_3;
  wire [2:0]p_0_in__1;
  wire [1:0]p_0_in__2;
  wire \r_control_reg[1] ;
  wire \r_control_reg[1]_0 ;
  wire \r_control_reg[1]_1 ;
  wire \r_control_reg[1]_10 ;
  wire \r_control_reg[1]_2 ;
  wire \r_control_reg[1]_3 ;
  wire \r_control_reg[1]_4 ;
  wire \r_control_reg[1]_5 ;
  wire \r_control_reg[1]_6 ;
  wire \r_control_reg[1]_7 ;
  wire \r_control_reg[1]_8 ;
  wire \r_control_reg[1]_9 ;
  wire \r_rd_logic[3]_i_2__0_n_0 ;
  wire [3:0]\r_rd_logic_reg[3]_0 ;
  wire [2:0]\r_status_reg[3] ;
  wire \r_wr_logic[2]_i_1__0_n_0 ;
  wire \r_wr_logic[3]_i_1_n_0 ;
  wire \r_wr_logic[3]_i_2__0_n_0 ;
  wire [3:2]r_wr_logic_reg;
  wire [1:0]\r_wr_logic_reg[1]_0 ;
  wire \r_wr_logic_reg[3]_0 ;
  wire \r_wr_logic_reg[3]_1 ;

  LUT6 #(
    .INIT(64'hFAFEF0FEFFFFFAF0)) 
    empty_i_1
       (.I0(empty_i_2_n_0),
        .I1(full_reg_0),
        .I2(Q),
        .I3(empty_reg_3),
        .I4(empty_reg_0),
        .I5(empty_reg_2),
        .O(empty_i_1_n_0));
  LUT4 #(
    .INIT(16'h0220)) 
    empty_i_2
       (.I0(full_reg_2),
        .I1(empty_i_3__0_n_0),
        .I2(r_wr_logic_reg[3]),
        .I3(empty_i_4_n_0),
        .O(empty_i_2_n_0));
  LUT6 #(
    .INIT(64'hFB7DEFFFEFFFFB7D)) 
    empty_i_3__0
       (.I0(\r_wr_logic_reg[1]_0 [0]),
        .I1(\r_wr_logic_reg[1]_0 [1]),
        .I2(\r_rd_logic_reg[3]_0 [1]),
        .I3(\r_rd_logic_reg[3]_0 [0]),
        .I4(r_wr_logic_reg[2]),
        .I5(\r_rd_logic_reg[3]_0 [2]),
        .O(empty_i_3__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'h9555)) 
    empty_i_4
       (.I0(\r_rd_logic_reg[3]_0 [3]),
        .I1(\r_rd_logic_reg[3]_0 [0]),
        .I2(\r_rd_logic_reg[3]_0 [1]),
        .I3(\r_rd_logic_reg[3]_0 [2]),
        .O(empty_i_4_n_0));
  FDPE empty_reg
       (.C(aclk),
        .CE(1'b1),
        .D(empty_i_1_n_0),
        .PRE(\r_wr_logic_reg[3]_1 ),
        .Q(empty_reg_0));
  LUT6 #(
    .INIT(64'h5101FFFF51010000)) 
    full_i_1
       (.I0(Q),
        .I1(full_i_2__0_n_0),
        .I2(full_reg_2),
        .I3(empty_reg_0),
        .I4(full_reg_3),
        .I5(full_reg_0),
        .O(full_i_1_n_0));
  LUT6 #(
    .INIT(64'h95556AAAFFFFFFFF)) 
    full_i_2__0
       (.I0(r_wr_logic_reg[3]),
        .I1(r_wr_logic_reg[2]),
        .I2(\r_wr_logic_reg[1]_0 [0]),
        .I3(\r_wr_logic_reg[1]_0 [1]),
        .I4(\r_rd_logic_reg[3]_0 [3]),
        .I5(full_i_5_n_0),
        .O(full_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h0000900906900000)) 
    full_i_5
       (.I0(r_wr_logic_reg[2]),
        .I1(\r_rd_logic_reg[3]_0 [2]),
        .I2(\r_rd_logic_reg[3]_0 [1]),
        .I3(\r_wr_logic_reg[1]_0 [1]),
        .I4(\r_wr_logic_reg[1]_0 [0]),
        .I5(\r_rd_logic_reg[3]_0 [0]),
        .O(full_i_5_n_0));
  FDCE full_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r_wr_logic_reg[3]_1 ),
        .D(full_i_1_n_0),
        .Q(full_reg_0));
  LUT2 #(
    .INIT(4'h1)) 
    \r_rd_logic[0]_i_1__0 
       (.I0(Q),
        .I1(\r_rd_logic_reg[3]_0 [0]),
        .O(p_0_in__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \r_rd_logic[1]_i_1__0 
       (.I0(\r_rd_logic_reg[3]_0 [1]),
        .I1(\r_rd_logic_reg[3]_0 [0]),
        .I2(Q),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'h0078)) 
    \r_rd_logic[2]_i_1__0 
       (.I0(\r_rd_logic_reg[3]_0 [0]),
        .I1(\r_rd_logic_reg[3]_0 [1]),
        .I2(\r_rd_logic_reg[3]_0 [2]),
        .I3(Q),
        .O(p_0_in__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT5 #(
    .INIT(32'h15554000)) 
    \r_rd_logic[3]_i_2__0 
       (.I0(Q),
        .I1(\r_rd_logic_reg[3]_0 [2]),
        .I2(\r_rd_logic_reg[3]_0 [1]),
        .I3(\r_rd_logic_reg[3]_0 [0]),
        .I4(\r_rd_logic_reg[3]_0 [3]),
        .O(\r_rd_logic[3]_i_2__0_n_0 ));
  FDCE \r_rd_logic_reg[0] 
       (.C(aclk),
        .CE(E),
        .CLR(\r_wr_logic_reg[3]_1 ),
        .D(p_0_in__1[0]),
        .Q(\r_rd_logic_reg[3]_0 [0]));
  FDCE \r_rd_logic_reg[1] 
       (.C(aclk),
        .CE(E),
        .CLR(\r_wr_logic_reg[3]_1 ),
        .D(p_0_in__1[1]),
        .Q(\r_rd_logic_reg[3]_0 [1]));
  FDCE \r_rd_logic_reg[2] 
       (.C(aclk),
        .CE(E),
        .CLR(\r_wr_logic_reg[3]_1 ),
        .D(p_0_in__1[2]),
        .Q(\r_rd_logic_reg[3]_0 [2]));
  FDCE \r_rd_logic_reg[3] 
       (.C(aclk),
        .CE(E),
        .CLR(\r_wr_logic_reg[3]_1 ),
        .D(\r_rd_logic[3]_i_2__0_n_0 ),
        .Q(\r_rd_logic_reg[3]_0 [3]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAEAAAAA)) 
    \r_reg_array[10][2]_i_2 
       (.I0(Q),
        .I1(empty_reg_2),
        .I2(r_wr_logic_reg[3]),
        .I3(\r_wr_logic_reg[1]_0 [0]),
        .I4(\r_wr_logic_reg[1]_0 [1]),
        .I5(r_wr_logic_reg[2]),
        .O(\r_control_reg[1]_8 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAEAAAAAAA)) 
    \r_reg_array[11][2]_i_2 
       (.I0(Q),
        .I1(r_wr_logic_reg[3]),
        .I2(empty_reg_2),
        .I3(\r_wr_logic_reg[1]_0 [1]),
        .I4(\r_wr_logic_reg[1]_0 [0]),
        .I5(r_wr_logic_reg[2]),
        .O(\r_control_reg[1]_3 ));
  LUT6 #(
    .INIT(64'hAAAAAAEAAAAAAAAA)) 
    \r_reg_array[12][2]_i_2 
       (.I0(Q),
        .I1(empty_reg_2),
        .I2(r_wr_logic_reg[3]),
        .I3(\r_wr_logic_reg[1]_0 [1]),
        .I4(\r_wr_logic_reg[1]_0 [0]),
        .I5(r_wr_logic_reg[2]),
        .O(\r_control_reg[1]_5 ));
  LUT6 #(
    .INIT(64'hAAEAAAAAAAAAAAAA)) 
    \r_reg_array[13][2]_i_2 
       (.I0(Q),
        .I1(empty_reg_2),
        .I2(r_wr_logic_reg[3]),
        .I3(\r_wr_logic_reg[1]_0 [1]),
        .I4(\r_wr_logic_reg[1]_0 [0]),
        .I5(r_wr_logic_reg[2]),
        .O(\r_control_reg[1]_7 ));
  LUT6 #(
    .INIT(64'hAAEAAAAAAAAAAAAA)) 
    \r_reg_array[14][2]_i_2 
       (.I0(Q),
        .I1(empty_reg_2),
        .I2(r_wr_logic_reg[3]),
        .I3(\r_wr_logic_reg[1]_0 [0]),
        .I4(\r_wr_logic_reg[1]_0 [1]),
        .I5(r_wr_logic_reg[2]),
        .O(\r_control_reg[1]_9 ));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \r_reg_array[15][2]_i_2 
       (.I0(Q),
        .I1(r_wr_logic_reg[3]),
        .I2(empty_reg_2),
        .I3(\r_wr_logic_reg[1]_0 [1]),
        .I4(\r_wr_logic_reg[1]_0 [0]),
        .I5(r_wr_logic_reg[2]),
        .O(\r_control_reg[1]_10 ));
  LUT3 #(
    .INIT(8'hFD)) 
    \r_reg_array[3][2]_i_2 
       (.I0(empty_reg_2),
        .I1(r_wr_logic_reg[3]),
        .I2(r_wr_logic_reg[2]),
        .O(\r_wr_logic_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAEAA)) 
    \r_reg_array[4][2]_i_2 
       (.I0(Q),
        .I1(r_wr_logic_reg[2]),
        .I2(r_wr_logic_reg[3]),
        .I3(empty_reg_2),
        .I4(\r_wr_logic_reg[1]_0 [0]),
        .I5(\r_wr_logic_reg[1]_0 [1]),
        .O(\r_control_reg[1] ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAEAAAAAA)) 
    \r_reg_array[5][2]_i_2 
       (.I0(Q),
        .I1(r_wr_logic_reg[2]),
        .I2(r_wr_logic_reg[3]),
        .I3(empty_reg_2),
        .I4(\r_wr_logic_reg[1]_0 [0]),
        .I5(\r_wr_logic_reg[1]_0 [1]),
        .O(\r_control_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAEAAAAAA)) 
    \r_reg_array[6][2]_i_2 
       (.I0(Q),
        .I1(r_wr_logic_reg[2]),
        .I2(r_wr_logic_reg[3]),
        .I3(empty_reg_2),
        .I4(\r_wr_logic_reg[1]_0 [1]),
        .I5(\r_wr_logic_reg[1]_0 [0]),
        .O(\r_control_reg[1]_1 ));
  LUT6 #(
    .INIT(64'hAEAAAAAAAAAAAAAA)) 
    \r_reg_array[7][2]_i_2 
       (.I0(Q),
        .I1(r_wr_logic_reg[2]),
        .I2(r_wr_logic_reg[3]),
        .I3(\r_wr_logic_reg[1]_0 [1]),
        .I4(\r_wr_logic_reg[1]_0 [0]),
        .I5(empty_reg_2),
        .O(\r_control_reg[1]_2 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAEA)) 
    \r_reg_array[8][2]_i_2 
       (.I0(Q),
        .I1(empty_reg_2),
        .I2(r_wr_logic_reg[3]),
        .I3(\r_wr_logic_reg[1]_0 [1]),
        .I4(\r_wr_logic_reg[1]_0 [0]),
        .I5(r_wr_logic_reg[2]),
        .O(\r_control_reg[1]_4 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAEAAAAA)) 
    \r_reg_array[9][2]_i_2 
       (.I0(Q),
        .I1(empty_reg_2),
        .I2(r_wr_logic_reg[3]),
        .I3(\r_wr_logic_reg[1]_0 [1]),
        .I4(\r_wr_logic_reg[1]_0 [0]),
        .I5(r_wr_logic_reg[2]),
        .O(\r_control_reg[1]_6 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'h5554)) 
    \r_status[2]_i_1 
       (.I0(empty_reg_0),
        .I1(\r_status_reg[3] [0]),
        .I2(\r_status_reg[3] [2]),
        .I3(\r_status_reg[3] [1]),
        .O(empty_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'hAAA8)) 
    \r_status[3]_i_1 
       (.I0(full_reg_0),
        .I1(\r_status_reg[3] [0]),
        .I2(\r_status_reg[3] [2]),
        .I3(\r_status_reg[3] [1]),
        .O(full_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \r_wr_logic[0]_i_1__0 
       (.I0(Q),
        .I1(\r_wr_logic_reg[1]_0 [0]),
        .O(p_0_in__2[0]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \r_wr_logic[1]_i_1__0 
       (.I0(\r_wr_logic_reg[1]_0 [1]),
        .I1(\r_wr_logic_reg[1]_0 [0]),
        .I2(Q),
        .O(p_0_in__2[1]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'h1540)) 
    \r_wr_logic[2]_i_1__0 
       (.I0(Q),
        .I1(\r_wr_logic_reg[1]_0 [0]),
        .I2(\r_wr_logic_reg[1]_0 [1]),
        .I3(r_wr_logic_reg[2]),
        .O(\r_wr_logic[2]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \r_wr_logic[3]_i_1 
       (.I0(Q),
        .I1(empty_reg_2),
        .O(\r_wr_logic[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT5 #(
    .INIT(32'h15554000)) 
    \r_wr_logic[3]_i_2__0 
       (.I0(Q),
        .I1(\r_wr_logic_reg[1]_0 [1]),
        .I2(\r_wr_logic_reg[1]_0 [0]),
        .I3(r_wr_logic_reg[2]),
        .I4(r_wr_logic_reg[3]),
        .O(\r_wr_logic[3]_i_2__0_n_0 ));
  FDCE \r_wr_logic_reg[0] 
       (.C(aclk),
        .CE(\r_wr_logic[3]_i_1_n_0 ),
        .CLR(\r_wr_logic_reg[3]_1 ),
        .D(p_0_in__2[0]),
        .Q(\r_wr_logic_reg[1]_0 [0]));
  FDCE \r_wr_logic_reg[1] 
       (.C(aclk),
        .CE(\r_wr_logic[3]_i_1_n_0 ),
        .CLR(\r_wr_logic_reg[3]_1 ),
        .D(p_0_in__2[1]),
        .Q(\r_wr_logic_reg[1]_0 [1]));
  FDCE \r_wr_logic_reg[2] 
       (.C(aclk),
        .CE(\r_wr_logic[3]_i_1_n_0 ),
        .CLR(\r_wr_logic_reg[3]_1 ),
        .D(\r_wr_logic[2]_i_1__0_n_0 ),
        .Q(r_wr_logic_reg[2]));
  FDCE \r_wr_logic_reg[3] 
       (.C(aclk),
        .CE(\r_wr_logic[3]_i_1_n_0 ),
        .CLR(\r_wr_logic_reg[3]_1 ),
        .D(\r_wr_logic[3]_i_2__0_n_0 ),
        .Q(r_wr_logic_reg[3]));
endmodule

(* ORIG_REF_NAME = "fifo_controller" *) 
module top_mmio_subsystem_0_0_fifo_controller_1
   (empty_reg_0,
    full_reg_0,
    \r_rd_logic_reg[3]_0 ,
    empty_reg_1,
    E,
    \r_control_reg[0] ,
    \r_control_reg[0]_0 ,
    \r_control_reg[0]_1 ,
    \r_control_reg[0]_2 ,
    \r_control_reg[0]_3 ,
    \r_control_reg[0]_4 ,
    \r_control_reg[0]_5 ,
    \r_control_reg[0]_6 ,
    \r_control_reg[0]_7 ,
    \r_control_reg[0]_8 ,
    \r_control_reg[0]_9 ,
    \r_control_reg[0]_10 ,
    \r_control_reg[0]_11 ,
    \r_control_reg[0]_12 ,
    \r_control_reg[0]_13 ,
    full_reg_1,
    aclk,
    \r_wr_logic_reg[3]_0 ,
    Q,
    empty_reg_2,
    \r_status_reg[0] ,
    \r_reg_array_reg[15][7] ,
    \r_wr_logic_reg[3]_1 );
  output empty_reg_0;
  output full_reg_0;
  output [3:0]\r_rd_logic_reg[3]_0 ;
  output empty_reg_1;
  output [0:0]E;
  output [0:0]\r_control_reg[0] ;
  output [0:0]\r_control_reg[0]_0 ;
  output [0:0]\r_control_reg[0]_1 ;
  output [0:0]\r_control_reg[0]_2 ;
  output [0:0]\r_control_reg[0]_3 ;
  output [0:0]\r_control_reg[0]_4 ;
  output [0:0]\r_control_reg[0]_5 ;
  output [0:0]\r_control_reg[0]_6 ;
  output [0:0]\r_control_reg[0]_7 ;
  output [0:0]\r_control_reg[0]_8 ;
  output [0:0]\r_control_reg[0]_9 ;
  output [0:0]\r_control_reg[0]_10 ;
  output [0:0]\r_control_reg[0]_11 ;
  output [0:0]\r_control_reg[0]_12 ;
  output [0:0]\r_control_reg[0]_13 ;
  output full_reg_1;
  input aclk;
  input \r_wr_logic_reg[3]_0 ;
  input [0:0]Q;
  input empty_reg_2;
  input [2:0]\r_status_reg[0] ;
  input \r_reg_array_reg[15][7] ;
  input [0:0]\r_wr_logic_reg[3]_1 ;

  wire [0:0]E;
  wire [0:0]Q;
  wire aclk;
  wire empty_i_1__0_n_0;
  wire empty_i_2__0_n_0;
  wire empty_i_3_n_0;
  wire empty_reg_0;
  wire empty_reg_1;
  wire empty_reg_2;
  wire full_i_1__0_n_0;
  wire full_i_2_n_0;
  wire full_i_3_n_0;
  wire full_reg_0;
  wire full_reg_1;
  wire [2:0]p_0_in;
  wire [1:0]p_0_in__0;
  wire [0:0]\r_control_reg[0] ;
  wire [0:0]\r_control_reg[0]_0 ;
  wire [0:0]\r_control_reg[0]_1 ;
  wire [0:0]\r_control_reg[0]_10 ;
  wire [0:0]\r_control_reg[0]_11 ;
  wire [0:0]\r_control_reg[0]_12 ;
  wire [0:0]\r_control_reg[0]_13 ;
  wire [0:0]\r_control_reg[0]_2 ;
  wire [0:0]\r_control_reg[0]_3 ;
  wire [0:0]\r_control_reg[0]_4 ;
  wire [0:0]\r_control_reg[0]_5 ;
  wire [0:0]\r_control_reg[0]_6 ;
  wire [0:0]\r_control_reg[0]_7 ;
  wire [0:0]\r_control_reg[0]_8 ;
  wire [0:0]\r_control_reg[0]_9 ;
  wire \r_rd_logic[3]_i_1__0_n_0 ;
  wire \r_rd_logic[3]_i_2_n_0 ;
  wire [3:0]\r_rd_logic_reg[3]_0 ;
  wire \r_reg_array_reg[15][7] ;
  wire [2:0]\r_status_reg[0] ;
  wire \r_wr_logic[2]_i_1_n_0 ;
  wire \r_wr_logic[3]_i_2_n_0 ;
  wire [3:0]r_wr_logic_reg;
  wire \r_wr_logic_reg[3]_0 ;
  wire [0:0]\r_wr_logic_reg[3]_1 ;

  LUT6 #(
    .INIT(64'hFFFFCFF5FFFF0005)) 
    empty_i_1__0
       (.I0(empty_i_2__0_n_0),
        .I1(full_reg_0),
        .I2(\r_reg_array_reg[15][7] ),
        .I3(empty_reg_2),
        .I4(Q),
        .I5(empty_reg_0),
        .O(empty_i_1__0_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF95556AAA)) 
    empty_i_2__0
       (.I0(\r_rd_logic_reg[3]_0 [3]),
        .I1(\r_rd_logic_reg[3]_0 [0]),
        .I2(\r_rd_logic_reg[3]_0 [1]),
        .I3(\r_rd_logic_reg[3]_0 [2]),
        .I4(r_wr_logic_reg[3]),
        .I5(empty_i_3_n_0),
        .O(empty_i_2__0_n_0));
  LUT6 #(
    .INIT(64'hF7BFFDEFEFF7BFFD)) 
    empty_i_3
       (.I0(r_wr_logic_reg[0]),
        .I1(r_wr_logic_reg[2]),
        .I2(\r_rd_logic_reg[3]_0 [0]),
        .I3(\r_rd_logic_reg[3]_0 [1]),
        .I4(\r_rd_logic_reg[3]_0 [2]),
        .I5(r_wr_logic_reg[1]),
        .O(empty_i_3_n_0));
  FDPE empty_reg
       (.C(aclk),
        .CE(1'b1),
        .D(empty_i_1__0_n_0),
        .PRE(\r_wr_logic_reg[3]_0 ),
        .Q(empty_reg_0));
  LUT6 #(
    .INIT(64'h00000000F3F0F0AA)) 
    full_i_1__0
       (.I0(empty_reg_0),
        .I1(full_i_2_n_0),
        .I2(full_reg_0),
        .I3(\r_reg_array_reg[15][7] ),
        .I4(empty_reg_2),
        .I5(Q),
        .O(full_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h95556AAAFFFFFFFF)) 
    full_i_2
       (.I0(r_wr_logic_reg[3]),
        .I1(r_wr_logic_reg[2]),
        .I2(r_wr_logic_reg[1]),
        .I3(r_wr_logic_reg[0]),
        .I4(\r_rd_logic_reg[3]_0 [3]),
        .I5(full_i_3_n_0),
        .O(full_i_2_n_0));
  LUT6 #(
    .INIT(64'h0180204010080204)) 
    full_i_3
       (.I0(\r_rd_logic_reg[3]_0 [1]),
        .I1(\r_rd_logic_reg[3]_0 [0]),
        .I2(r_wr_logic_reg[2]),
        .I3(r_wr_logic_reg[0]),
        .I4(r_wr_logic_reg[1]),
        .I5(\r_rd_logic_reg[3]_0 [2]),
        .O(full_i_3_n_0));
  FDCE full_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r_wr_logic_reg[3]_0 ),
        .D(full_i_1__0_n_0),
        .Q(full_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \r_rd_logic[0]_i_1 
       (.I0(Q),
        .I1(\r_rd_logic_reg[3]_0 [0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \r_rd_logic[1]_i_1 
       (.I0(\r_rd_logic_reg[3]_0 [1]),
        .I1(\r_rd_logic_reg[3]_0 [0]),
        .I2(Q),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h0078)) 
    \r_rd_logic[2]_i_1 
       (.I0(\r_rd_logic_reg[3]_0 [0]),
        .I1(\r_rd_logic_reg[3]_0 [1]),
        .I2(\r_rd_logic_reg[3]_0 [2]),
        .I3(Q),
        .O(p_0_in[2]));
  LUT2 #(
    .INIT(4'hB)) 
    \r_rd_logic[3]_i_1__0 
       (.I0(Q),
        .I1(empty_reg_2),
        .O(\r_rd_logic[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'h15554000)) 
    \r_rd_logic[3]_i_2 
       (.I0(Q),
        .I1(\r_rd_logic_reg[3]_0 [2]),
        .I2(\r_rd_logic_reg[3]_0 [1]),
        .I3(\r_rd_logic_reg[3]_0 [0]),
        .I4(\r_rd_logic_reg[3]_0 [3]),
        .O(\r_rd_logic[3]_i_2_n_0 ));
  FDCE \r_rd_logic_reg[0] 
       (.C(aclk),
        .CE(\r_rd_logic[3]_i_1__0_n_0 ),
        .CLR(\r_wr_logic_reg[3]_0 ),
        .D(p_0_in[0]),
        .Q(\r_rd_logic_reg[3]_0 [0]));
  FDCE \r_rd_logic_reg[1] 
       (.C(aclk),
        .CE(\r_rd_logic[3]_i_1__0_n_0 ),
        .CLR(\r_wr_logic_reg[3]_0 ),
        .D(p_0_in[1]),
        .Q(\r_rd_logic_reg[3]_0 [1]));
  FDCE \r_rd_logic_reg[2] 
       (.C(aclk),
        .CE(\r_rd_logic[3]_i_1__0_n_0 ),
        .CLR(\r_wr_logic_reg[3]_0 ),
        .D(p_0_in[2]),
        .Q(\r_rd_logic_reg[3]_0 [2]));
  FDCE \r_rd_logic_reg[3] 
       (.C(aclk),
        .CE(\r_rd_logic[3]_i_1__0_n_0 ),
        .CLR(\r_wr_logic_reg[3]_0 ),
        .D(\r_rd_logic[3]_i_2_n_0 ),
        .Q(\r_rd_logic_reg[3]_0 [3]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAAE)) 
    \r_reg_array[0][7]_i_1 
       (.I0(Q),
        .I1(\r_reg_array_reg[15][7] ),
        .I2(r_wr_logic_reg[3]),
        .I3(r_wr_logic_reg[2]),
        .I4(r_wr_logic_reg[1]),
        .I5(r_wr_logic_reg[0]),
        .O(E));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAEAAAAA)) 
    \r_reg_array[10][7]_i_1 
       (.I0(Q),
        .I1(\r_reg_array_reg[15][7] ),
        .I2(r_wr_logic_reg[3]),
        .I3(r_wr_logic_reg[0]),
        .I4(r_wr_logic_reg[1]),
        .I5(r_wr_logic_reg[2]),
        .O(\r_control_reg[0]_11 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAEAAAAAAA)) 
    \r_reg_array[11][7]_i_1 
       (.I0(Q),
        .I1(r_wr_logic_reg[3]),
        .I2(\r_reg_array_reg[15][7] ),
        .I3(r_wr_logic_reg[0]),
        .I4(r_wr_logic_reg[1]),
        .I5(r_wr_logic_reg[2]),
        .O(\r_control_reg[0]_6 ));
  LUT6 #(
    .INIT(64'hAAAAAAEAAAAAAAAA)) 
    \r_reg_array[12][7]_i_1 
       (.I0(Q),
        .I1(\r_reg_array_reg[15][7] ),
        .I2(r_wr_logic_reg[3]),
        .I3(r_wr_logic_reg[0]),
        .I4(r_wr_logic_reg[1]),
        .I5(r_wr_logic_reg[2]),
        .O(\r_control_reg[0]_8 ));
  LUT6 #(
    .INIT(64'hAAEAAAAAAAAAAAAA)) 
    \r_reg_array[13][7]_i_1 
       (.I0(Q),
        .I1(\r_reg_array_reg[15][7] ),
        .I2(r_wr_logic_reg[3]),
        .I3(r_wr_logic_reg[1]),
        .I4(r_wr_logic_reg[0]),
        .I5(r_wr_logic_reg[2]),
        .O(\r_control_reg[0]_10 ));
  LUT6 #(
    .INIT(64'hAAEAAAAAAAAAAAAA)) 
    \r_reg_array[14][7]_i_1 
       (.I0(Q),
        .I1(\r_reg_array_reg[15][7] ),
        .I2(r_wr_logic_reg[3]),
        .I3(r_wr_logic_reg[0]),
        .I4(r_wr_logic_reg[1]),
        .I5(r_wr_logic_reg[2]),
        .O(\r_control_reg[0]_12 ));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \r_reg_array[15][7]_i_1 
       (.I0(Q),
        .I1(r_wr_logic_reg[3]),
        .I2(\r_reg_array_reg[15][7] ),
        .I3(r_wr_logic_reg[0]),
        .I4(r_wr_logic_reg[1]),
        .I5(r_wr_logic_reg[2]),
        .O(\r_control_reg[0]_13 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAEAAAA)) 
    \r_reg_array[1][7]_i_1 
       (.I0(Q),
        .I1(\r_reg_array_reg[15][7] ),
        .I2(r_wr_logic_reg[3]),
        .I3(r_wr_logic_reg[2]),
        .I4(r_wr_logic_reg[0]),
        .I5(r_wr_logic_reg[1]),
        .O(\r_control_reg[0] ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAEAAAA)) 
    \r_reg_array[2][7]_i_1 
       (.I0(Q),
        .I1(\r_reg_array_reg[15][7] ),
        .I2(r_wr_logic_reg[3]),
        .I3(r_wr_logic_reg[2]),
        .I4(r_wr_logic_reg[1]),
        .I5(r_wr_logic_reg[0]),
        .O(\r_control_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hAAAEAAAAAAAAAAAA)) 
    \r_reg_array[3][7]_i_1 
       (.I0(Q),
        .I1(\r_reg_array_reg[15][7] ),
        .I2(r_wr_logic_reg[3]),
        .I3(r_wr_logic_reg[2]),
        .I4(r_wr_logic_reg[1]),
        .I5(r_wr_logic_reg[0]),
        .O(\r_control_reg[0]_1 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAEAA)) 
    \r_reg_array[4][7]_i_1 
       (.I0(Q),
        .I1(r_wr_logic_reg[2]),
        .I2(r_wr_logic_reg[3]),
        .I3(\r_reg_array_reg[15][7] ),
        .I4(r_wr_logic_reg[1]),
        .I5(r_wr_logic_reg[0]),
        .O(\r_control_reg[0]_2 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAEAAAAAA)) 
    \r_reg_array[5][7]_i_1 
       (.I0(Q),
        .I1(r_wr_logic_reg[2]),
        .I2(r_wr_logic_reg[3]),
        .I3(\r_reg_array_reg[15][7] ),
        .I4(r_wr_logic_reg[0]),
        .I5(r_wr_logic_reg[1]),
        .O(\r_control_reg[0]_3 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAEAAAAAA)) 
    \r_reg_array[6][7]_i_1 
       (.I0(Q),
        .I1(r_wr_logic_reg[2]),
        .I2(r_wr_logic_reg[3]),
        .I3(\r_reg_array_reg[15][7] ),
        .I4(r_wr_logic_reg[1]),
        .I5(r_wr_logic_reg[0]),
        .O(\r_control_reg[0]_4 ));
  LUT6 #(
    .INIT(64'hAEAAAAAAAAAAAAAA)) 
    \r_reg_array[7][7]_i_1 
       (.I0(Q),
        .I1(r_wr_logic_reg[2]),
        .I2(r_wr_logic_reg[3]),
        .I3(r_wr_logic_reg[0]),
        .I4(r_wr_logic_reg[1]),
        .I5(\r_reg_array_reg[15][7] ),
        .O(\r_control_reg[0]_5 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAEA)) 
    \r_reg_array[8][7]_i_1 
       (.I0(Q),
        .I1(\r_reg_array_reg[15][7] ),
        .I2(r_wr_logic_reg[3]),
        .I3(r_wr_logic_reg[0]),
        .I4(r_wr_logic_reg[1]),
        .I5(r_wr_logic_reg[2]),
        .O(\r_control_reg[0]_7 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAEAAAAA)) 
    \r_reg_array[9][7]_i_1 
       (.I0(Q),
        .I1(\r_reg_array_reg[15][7] ),
        .I2(r_wr_logic_reg[3]),
        .I3(r_wr_logic_reg[1]),
        .I4(r_wr_logic_reg[0]),
        .I5(r_wr_logic_reg[2]),
        .O(\r_control_reg[0]_9 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h5554)) 
    \r_status[0]_i_1 
       (.I0(empty_reg_0),
        .I1(\r_status_reg[0] [0]),
        .I2(\r_status_reg[0] [2]),
        .I3(\r_status_reg[0] [1]),
        .O(empty_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'hAAA8)) 
    \r_status[1]_i_1 
       (.I0(full_reg_0),
        .I1(\r_status_reg[0] [0]),
        .I2(\r_status_reg[0] [2]),
        .I3(\r_status_reg[0] [1]),
        .O(full_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \r_wr_logic[0]_i_1 
       (.I0(Q),
        .I1(r_wr_logic_reg[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \r_wr_logic[1]_i_1 
       (.I0(r_wr_logic_reg[0]),
        .I1(r_wr_logic_reg[1]),
        .I2(Q),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h1540)) 
    \r_wr_logic[2]_i_1 
       (.I0(Q),
        .I1(r_wr_logic_reg[1]),
        .I2(r_wr_logic_reg[0]),
        .I3(r_wr_logic_reg[2]),
        .O(\r_wr_logic[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h15554000)) 
    \r_wr_logic[3]_i_2 
       (.I0(Q),
        .I1(r_wr_logic_reg[0]),
        .I2(r_wr_logic_reg[1]),
        .I3(r_wr_logic_reg[2]),
        .I4(r_wr_logic_reg[3]),
        .O(\r_wr_logic[3]_i_2_n_0 ));
  FDCE \r_wr_logic_reg[0] 
       (.C(aclk),
        .CE(\r_wr_logic_reg[3]_1 ),
        .CLR(\r_wr_logic_reg[3]_0 ),
        .D(p_0_in__0[0]),
        .Q(r_wr_logic_reg[0]));
  FDCE \r_wr_logic_reg[1] 
       (.C(aclk),
        .CE(\r_wr_logic_reg[3]_1 ),
        .CLR(\r_wr_logic_reg[3]_0 ),
        .D(p_0_in__0[1]),
        .Q(r_wr_logic_reg[1]));
  FDCE \r_wr_logic_reg[2] 
       (.C(aclk),
        .CE(\r_wr_logic_reg[3]_1 ),
        .CLR(\r_wr_logic_reg[3]_0 ),
        .D(\r_wr_logic[2]_i_1_n_0 ),
        .Q(r_wr_logic_reg[2]));
  FDCE \r_wr_logic_reg[3] 
       (.C(aclk),
        .CE(\r_wr_logic_reg[3]_1 ),
        .CLR(\r_wr_logic_reg[3]_0 ),
        .D(\r_wr_logic[3]_i_2_n_0 ),
        .Q(r_wr_logic_reg[3]));
endmodule

(* ORIG_REF_NAME = "gpio" *) 
module top_mmio_subsystem_0_0_gpio
   (\slot_rd_data[1]_1 ,
    debug_slot_wr_done,
    slot_rd_done,
    out_ports,
    slot_decode_error,
    \r_state_reg[1]_0 ,
    \r_state_reg[1]_1 ,
    debug_gpio_w_next_state,
    in_ports,
    aclk,
    decode_error_reg_0,
    w_wr_done,
    w_rd_done,
    \out_ports_reg[3]_0 ,
    \out_ports_reg[2]_0 ,
    \out_ports_reg[1]_0 ,
    \out_ports_reg[0]_0 ,
    decode_error_reg_1,
    Q,
    \rd_data_reg[0]_0 ,
    D,
    S_AXI_rready);
  output [0:0]\slot_rd_data[1]_1 ;
  output [0:0]debug_slot_wr_done;
  output [0:0]slot_rd_done;
  output [3:0]out_ports;
  output [0:0]slot_decode_error;
  output [1:0]\r_state_reg[1]_0 ;
  output \r_state_reg[1]_1 ;
  output [1:0]debug_gpio_w_next_state;
  input [0:0]in_ports;
  input aclk;
  input decode_error_reg_0;
  input w_wr_done;
  input w_rd_done;
  input \out_ports_reg[3]_0 ;
  input \out_ports_reg[2]_0 ;
  input \out_ports_reg[1]_0 ;
  input \out_ports_reg[0]_0 ;
  input decode_error_reg_1;
  input [2:0]Q;
  input \rd_data_reg[0]_0 ;
  input [0:0]D;
  input S_AXI_rready;

  wire [0:0]D;
  wire [2:0]Q;
  wire S_AXI_rready;
  wire aclk;
  wire [1:0]debug_gpio_w_next_state;
  wire [0:0]debug_slot_wr_done;
  wire decode_error_reg_0;
  wire decode_error_reg_1;
  wire [0:0]in_ports;
  wire [3:0]out_ports;
  wire \out_ports_reg[0]_0 ;
  wire \out_ports_reg[1]_0 ;
  wire \out_ports_reg[2]_0 ;
  wire \out_ports_reg[3]_0 ;
  wire [0:0]r_input_data;
  wire [0:0]r_input_data_sync;
  wire [1:0]\r_state_reg[1]_0 ;
  wire \r_state_reg[1]_1 ;
  wire \rd_data[0]_i_1_n_0 ;
  wire \rd_data_reg[0]_0 ;
  wire [0:0]slot_decode_error;
  wire [0:0]\slot_rd_data[1]_1 ;
  wire [0:0]slot_rd_done;
  wire [1:1]w_next_state;
  wire \w_next_state_reg[1]_i_2_n_0 ;
  wire w_rd_done;
  wire w_wr_done;

  FDCE decode_error_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(decode_error_reg_0),
        .D(decode_error_reg_1),
        .Q(slot_decode_error));
  LUT2 #(
    .INIT(4'hB)) 
    \out_ports[3]_i_3 
       (.I0(\r_state_reg[1]_0 [1]),
        .I1(\r_state_reg[1]_0 [0]),
        .O(\r_state_reg[1]_1 ));
  FDCE \out_ports_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(decode_error_reg_0),
        .D(\out_ports_reg[0]_0 ),
        .Q(out_ports[0]));
  FDCE \out_ports_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(decode_error_reg_0),
        .D(\out_ports_reg[1]_0 ),
        .Q(out_ports[1]));
  FDCE \out_ports_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(decode_error_reg_0),
        .D(\out_ports_reg[2]_0 ),
        .Q(out_ports[2]));
  FDCE \out_ports_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(decode_error_reg_0),
        .D(\out_ports_reg[3]_0 ),
        .Q(out_ports[3]));
  FDCE \r_input_data_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(decode_error_reg_0),
        .D(r_input_data_sync),
        .Q(r_input_data));
  FDCE \r_input_data_sync_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(decode_error_reg_0),
        .D(in_ports),
        .Q(r_input_data_sync));
  FDCE \r_state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(decode_error_reg_0),
        .D(debug_gpio_w_next_state[0]),
        .Q(\r_state_reg[1]_0 [0]));
  FDCE \r_state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(decode_error_reg_0),
        .D(debug_gpio_w_next_state[1]),
        .Q(\r_state_reg[1]_0 [1]));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    \rd_data[0]_i_1 
       (.I0(r_input_data),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(\r_state_reg[1]_0 [0]),
        .I4(\r_state_reg[1]_0 [1]),
        .I5(\rd_data_reg[0]_0 ),
        .O(\rd_data[0]_i_1_n_0 ));
  FDCE \rd_data_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(decode_error_reg_0),
        .D(\rd_data[0]_i_1_n_0 ),
        .Q(\slot_rd_data[1]_1 ));
  FDCE rd_done_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(decode_error_reg_0),
        .D(w_rd_done),
        .Q(slot_rd_done));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \w_next_state_reg[0] 
       (.CLR(1'b0),
        .D(D),
        .G(\w_next_state_reg[1]_i_2_n_0 ),
        .GE(1'b1),
        .Q(debug_gpio_w_next_state[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \w_next_state_reg[1] 
       (.CLR(1'b0),
        .D(w_next_state),
        .G(\w_next_state_reg[1]_i_2_n_0 ),
        .GE(1'b1),
        .Q(debug_gpio_w_next_state[1]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hABAA)) 
    \w_next_state_reg[1]_i_1 
       (.I0(\r_state_reg[1]_0 [0]),
        .I1(Q[1]),
        .I2(S_AXI_rready),
        .I3(\r_state_reg[1]_0 [1]),
        .O(w_next_state));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \w_next_state_reg[1]_i_2 
       (.I0(\r_state_reg[1]_0 [1]),
        .I1(\r_state_reg[1]_0 [0]),
        .O(\w_next_state_reg[1]_i_2_n_0 ));
  FDCE wr_done_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(decode_error_reg_0),
        .D(w_wr_done),
        .Q(debug_slot_wr_done));
endmodule

(* ORIG_REF_NAME = "mmio_subsystem" *) 
module top_mmio_subsystem_0_0_mmio_subsystem
   (debug_slot_chip_select,
    S_AXI_wready,
    Q,
    debug_uart_tick,
    S_AXI_rvalid,
    S_AXI_bvalid,
    S_AXI_arready,
    debug_slot_wr_done,
    debug_gpio_w_next_state,
    \r_state_reg[1] ,
    out_ports,
    debug_r_state,
    S_AXI_bresp,
    S_AXI_rresp,
    S_AXI_rdata,
    tx,
    S_AXI_wvalid,
    aclk,
    S_AXI_wdata,
    in_ports,
    S_AXI_rready,
    S_AXI_awvalid,
    S_AXI_arvalid,
    S_AXI_bready,
    S_AXI_araddr,
    S_AXI_awaddr,
    rx,
    arst_n);
  output [15:0]debug_slot_chip_select;
  output S_AXI_wready;
  output [7:0]Q;
  output debug_uart_tick;
  output S_AXI_rvalid;
  output S_AXI_bvalid;
  output S_AXI_arready;
  output [2:0]debug_slot_wr_done;
  output [1:0]debug_gpio_w_next_state;
  output [1:0]\r_state_reg[1] ;
  output [3:0]out_ports;
  output [1:0]debug_r_state;
  output [1:0]S_AXI_bresp;
  output [1:0]S_AXI_rresp;
  output [31:0]S_AXI_rdata;
  output tx;
  input S_AXI_wvalid;
  input aclk;
  input [18:0]S_AXI_wdata;
  input [0:0]in_ports;
  input S_AXI_rready;
  input S_AXI_awvalid;
  input S_AXI_arvalid;
  input S_AXI_bready;
  input [27:0]S_AXI_araddr;
  input [27:0]S_AXI_awaddr;
  input rx;
  input arst_n;

  wire [7:0]Q;
  wire [27:0]S_AXI_araddr;
  wire S_AXI_arready;
  wire S_AXI_arvalid;
  wire [27:0]S_AXI_awaddr;
  wire S_AXI_awvalid;
  wire S_AXI_bready;
  wire [1:0]S_AXI_bresp;
  wire S_AXI_bvalid;
  wire [31:0]S_AXI_rdata;
  wire S_AXI_rready;
  wire [1:0]S_AXI_rresp;
  wire S_AXI_rvalid;
  wire [18:0]S_AXI_wdata;
  wire S_AXI_wready;
  wire S_AXI_wvalid;
  wire aclk;
  wire arst_n;
  wire control_n_100;
  wire control_n_139;
  wire control_n_140;
  wire control_n_141;
  wire control_n_142;
  wire control_n_143;
  wire control_n_21;
  wire control_n_22;
  wire control_n_23;
  wire control_n_32;
  wire control_n_33;
  wire control_n_34;
  wire control_n_35;
  wire control_n_36;
  wire control_n_37;
  wire control_n_38;
  wire control_n_39;
  wire control_n_40;
  wire control_n_41;
  wire control_n_42;
  wire control_n_43;
  wire control_n_44;
  wire control_n_45;
  wire control_n_46;
  wire control_n_47;
  wire control_n_48;
  wire control_n_49;
  wire control_n_50;
  wire control_n_51;
  wire control_n_52;
  wire control_n_53;
  wire control_n_54;
  wire control_n_55;
  wire control_n_56;
  wire control_n_57;
  wire control_n_58;
  wire control_n_59;
  wire control_n_60;
  wire control_n_61;
  wire control_n_62;
  wire control_n_63;
  wire control_n_65;
  wire control_n_66;
  wire control_n_74;
  wire control_n_76;
  wire control_n_80;
  wire control_n_81;
  wire control_n_82;
  wire control_n_83;
  wire control_n_84;
  wire control_n_86;
  wire control_n_87;
  wire control_n_88;
  wire control_n_89;
  wire control_n_90;
  wire control_n_91;
  wire control_n_92;
  wire control_n_93;
  wire control_n_94;
  wire control_n_95;
  wire control_n_96;
  wire control_n_97;
  wire control_n_98;
  wire control_n_99;
  wire [1:0]debug_gpio_w_next_state;
  wire [1:0]debug_r_state;
  wire [15:0]debug_slot_chip_select;
  wire [2:0]debug_slot_wr_done;
  wire debug_uart_tick;
  wire emperor_gpio_n_10;
  wire emperor_timer_n_20;
  wire emperor_timer_n_21;
  wire emperor_timer_n_22;
  wire emperor_uart_n_15;
  wire emperor_uart_n_16;
  wire emperor_uart_n_17;
  wire emperor_uart_n_18;
  wire emperor_uart_n_19;
  wire emperor_uart_n_3;
  wire [0:0]in_ports;
  wire [3:0]out_ports;
  wire [0:0]p_0_in;
  wire p_0_in1_in;
  wire [15:3]r_counter;
  wire [2:0]r_dvsr;
  wire r_eg;
  wire [1:0]\r_state_reg[1] ;
  wire [9:2]r_status;
  wire read;
  wire rx;
  wire rx_empty;
  wire [2:0]slot_decode_error;
  wire [31:0]\slot_rd_data[0]_0 ;
  wire [0:0]\slot_rd_data[1]_1 ;
  wire [9:0]\slot_rd_data[2]_18 ;
  wire [2:0]slot_rd_done;
  wire [2:0]slot_slave_error;
  wire tx;
  wire tx_full;
  wire w_auto_reload;
  wire [1:0]w_control;
  wire [0:0]w_next_state;
  wire w_rd_data;
  wire w_rd_data__0;
  wire w_rd_done;
  wire w_rd_done_1;
  wire w_rd_done__0;
  wire w_slave_error__0;
  wire w_wr_done;
  wire w_wr_done_0;
  wire w_wr_done_2;

  top_mmio_subsystem_0_0_axi_mmio_controller control
       (.D({control_n_62,control_n_63}),
        .E(w_auto_reload),
        .\FSM_onehot_r_state_reg[0]_0 ({control_n_65,control_n_66}),
        .\FSM_onehot_r_state_reg[0]_1 ({emperor_uart_n_15,emperor_uart_n_16,emperor_uart_n_17}),
        .\FSM_onehot_r_state_reg[0]_2 ({emperor_timer_n_20,emperor_timer_n_21,emperor_timer_n_22}),
        .\FSM_onehot_r_state_reg[1]_0 (control_n_60),
        .\FSM_onehot_r_state_reg[1]_1 (w_control),
        .\FSM_onehot_r_state_reg[1]_2 (control_n_84),
        .\FSM_onehot_r_state_reg[1]_3 (w_rd_data__0),
        .\FSM_onehot_r_state_reg[1]_4 (control_n_141),
        .\FSM_onehot_r_state_reg[1]_5 (control_n_142),
        .\FSM_onehot_r_state_reg[3]_0 (control_n_21),
        .\FSM_onehot_r_state_reg[3]_1 (control_n_86),
        .\FSM_onehot_r_state_reg[4]_0 (emperor_uart_n_3),
        .Q({S_AXI_rvalid,read,S_AXI_bvalid,S_AXI_wready,S_AXI_arready}),
        .S_AXI_araddr(S_AXI_araddr),
        .S_AXI_arvalid(S_AXI_arvalid),
        .S_AXI_awaddr(S_AXI_awaddr),
        .S_AXI_awvalid(S_AXI_awvalid),
        .S_AXI_bready(S_AXI_bready),
        .S_AXI_bresp(S_AXI_bresp),
        .S_AXI_rdata(S_AXI_rdata),
        .\S_AXI_rdata[31] (\slot_rd_data[0]_0 ),
        .\S_AXI_rdata[9] (\slot_rd_data[2]_18 ),
        .S_AXI_rready(S_AXI_rready),
        .S_AXI_rresp(S_AXI_rresp),
        .S_AXI_wdata(S_AXI_wdata),
        .S_AXI_wvalid(S_AXI_wvalid),
        .aclk(aclk),
        .debug_r_state(debug_r_state),
        .debug_slot_chip_select(debug_slot_chip_select),
        .debug_slot_wr_done(debug_slot_wr_done),
        .full_reg(control_n_76),
        .out_ports(out_ports),
        .\out_ports_reg[3] (emperor_gpio_n_10),
        .p_0_in(p_0_in),
        .p_0_in1_in(p_0_in1_in),
        .\r_addr_reg[10]_0 (w_next_state),
        .\r_addr_reg[1]_0 (control_n_100),
        .\r_addr_reg[2]_0 (w_rd_data),
        .\r_addr_reg[2]_1 (control_n_139),
        .\r_addr_reg[4]_0 (control_n_22),
        .\r_addr_reg[4]_1 (control_n_23),
        .\r_addr_reg[4]_2 (control_n_143),
        .\r_addr_reg[7]_0 (Q),
        .\r_addr_reg[7]_1 (control_n_74),
        .\r_counter_reg[15] ({control_n_87,control_n_88,control_n_89,control_n_90,control_n_91,control_n_92,control_n_93,control_n_94,control_n_95,control_n_96,control_n_97,control_n_98,control_n_99}),
        .r_dvsr(r_dvsr),
        .r_eg(r_eg),
        .r_status({r_status[9:8],r_status[3:2]}),
        .\r_status_reg[8] (control_n_61),
        .\r_status_reg[9] ({control_n_80,control_n_81,control_n_82,control_n_83}),
        .\rd_data_reg[15] (r_counter),
        .\rd_data_reg[2] (emperor_uart_n_18),
        .\rd_data_reg[3] (emperor_uart_n_19),
        .rx_empty(rx_empty),
        .slot_decode_error(slot_decode_error),
        .\slot_rd_data[1]_1 (\slot_rd_data[1]_1 ),
        .slot_rd_done(slot_rd_done),
        .slot_slave_error({slot_slave_error[2],slot_slave_error[0]}),
        .\slot_wr_data_reg[0]_0 (control_n_52),
        .\slot_wr_data_reg[0]_1 (control_n_53),
        .\slot_wr_data_reg[0]_2 (control_n_54),
        .\slot_wr_data_reg[0]_3 (control_n_55),
        .\slot_wr_data_reg[0]_4 (control_n_56),
        .\slot_wr_data_reg[0]_5 (control_n_59),
        .\slot_wr_data_reg[0]_6 (control_n_140),
        .\slot_wr_data_reg[1]_0 (control_n_32),
        .\slot_wr_data_reg[1]_1 (control_n_58),
        .\slot_wr_data_reg[2]_0 (control_n_57),
        .\slot_wr_data_reg[31]_0 ({control_n_33,control_n_34,control_n_35,control_n_36,control_n_37,control_n_38,control_n_39,control_n_40,control_n_41,control_n_42,control_n_43,control_n_44,control_n_45,control_n_46,control_n_47,control_n_48,control_n_49,control_n_50,control_n_51}),
        .tx_full(tx_full),
        .w_rd_done(w_rd_done_1),
        .w_rd_done_0(w_rd_done),
        .w_rd_done__0(w_rd_done__0),
        .w_slave_error__0(w_slave_error__0),
        .w_wr_done(w_wr_done_2),
        .w_wr_done_1(w_wr_done_0),
        .w_wr_done_2(w_wr_done),
        .wr_done_reg(\r_state_reg[1] ));
  top_mmio_subsystem_0_0_gpio emperor_gpio
       (.D(w_next_state),
        .Q({read,S_AXI_bvalid,S_AXI_wready}),
        .S_AXI_rready(S_AXI_rready),
        .aclk(aclk),
        .debug_gpio_w_next_state(debug_gpio_w_next_state),
        .debug_slot_wr_done(debug_slot_wr_done[1]),
        .decode_error_reg_0(emperor_uart_n_3),
        .decode_error_reg_1(control_n_141),
        .in_ports(in_ports),
        .out_ports(out_ports),
        .\out_ports_reg[0]_0 (control_n_56),
        .\out_ports_reg[1]_0 (control_n_55),
        .\out_ports_reg[2]_0 (control_n_54),
        .\out_ports_reg[3]_0 (control_n_53),
        .\r_state_reg[1]_0 (\r_state_reg[1] ),
        .\r_state_reg[1]_1 (emperor_gpio_n_10),
        .\rd_data_reg[0]_0 (control_n_74),
        .slot_decode_error(slot_decode_error[1]),
        .\slot_rd_data[1]_1 (\slot_rd_data[1]_1 ),
        .slot_rd_done(slot_rd_done[1]),
        .w_rd_done(w_rd_done_1),
        .w_wr_done(w_wr_done_0));
  top_mmio_subsystem_0_0_timer emperor_timer
       (.D({control_n_65,control_n_66}),
        .E(w_rd_data__0),
        .\FSM_onehot_r_state_reg[2]_0 ({emperor_timer_n_20,emperor_timer_n_21,emperor_timer_n_22}),
        .\FSM_onehot_r_state_reg[2]_1 ({S_AXI_bvalid,S_AXI_wready}),
        .Q(r_counter),
        .S_AXI_rready(S_AXI_rready),
        .aclk(aclk),
        .debug_slot_wr_done(debug_slot_wr_done[0]),
        .decode_error_reg_0(control_n_22),
        .p_0_in(p_0_in),
        .p_0_in1_in(p_0_in1_in),
        .\r_auto_reload_reg[31]_0 (w_auto_reload),
        .\r_auto_reload_reg[31]_1 ({control_n_33,control_n_34,control_n_35,control_n_36,control_n_37,control_n_38,control_n_39,control_n_40,control_n_41,control_n_42,control_n_43,control_n_44,control_n_45,control_n_46,control_n_47,control_n_48,control_n_49,control_n_50,control_n_51}),
        .\r_control_reg[0]_0 (control_n_52),
        .\r_control_reg[1]_0 (control_n_32),
        .r_eg(r_eg),
        .r_eg_reg_0(control_n_140),
        .\rd_data_reg[0]_0 (Q[3:2]),
        .\rd_data_reg[15]_0 ({control_n_87,control_n_88,control_n_89,control_n_90,control_n_91,control_n_92,control_n_93,control_n_94,control_n_95,control_n_96,control_n_97,control_n_98,control_n_99}),
        .\rd_data_reg[31]_0 (\slot_rd_data[0]_0 ),
        .rd_done_reg_0(control_n_21),
        .slot_decode_error(slot_decode_error[0]),
        .slot_rd_done(slot_rd_done[0]),
        .slot_slave_error(slot_slave_error[0]),
        .w_rd_done__0(w_rd_done__0),
        .w_slave_error__0(w_slave_error__0),
        .w_wr_done(w_wr_done_2),
        .wr_done_reg_0(emperor_uart_n_3));
  top_mmio_subsystem_0_0_uart emperor_uart
       (.CO(debug_uart_tick),
        .D({control_n_62,control_n_63}),
        .E(w_rd_data),
        .\FSM_onehot_r_state_reg[2]_0 (S_AXI_bvalid),
        .Q({emperor_uart_n_15,emperor_uart_n_16,emperor_uart_n_17}),
        .S_AXI_rready(S_AXI_rready),
        .aclk(aclk),
        .arst_n(arst_n),
        .arst_n_0(emperor_uart_n_3),
        .debug_slot_wr_done(debug_slot_wr_done[2]),
        .decode_error_reg_0(control_n_143),
        .empty_reg(control_n_76),
        .full_reg(control_n_23),
        .\r_control_reg[1]_0 (w_control),
        .r_dvsr(r_dvsr),
        .\r_dvsr_reg[0]_0 (control_n_59),
        .\r_dvsr_reg[1]_0 (control_n_58),
        .\r_dvsr_reg[2]_0 (control_n_57),
        .\r_rd_logic_reg[2] (emperor_uart_n_18),
        .\r_rd_logic_reg[2]_0 (emperor_uart_n_19),
        .\r_reg_array_reg[0][2] ({control_n_49,control_n_50,control_n_51}),
        .\r_status_reg[5]_0 (control_n_86),
        .\r_status_reg[5]_1 (control_n_100),
        .\r_status_reg[8]_0 (control_n_61),
        .\r_status_reg[9]_0 ({r_status[9:8],r_status[3:2]}),
        .\r_status_reg[9]_1 (control_n_60),
        .\r_wr_logic_reg[3] (control_n_84),
        .\rd_data_reg[1]_0 (Q[4:2]),
        .\rd_data_reg[5]_0 (control_n_139),
        .\rd_data_reg[9]_0 (\slot_rd_data[2]_18 ),
        .\rd_data_reg[9]_1 ({control_n_80,control_n_81,control_n_82,control_n_83}),
        .rx(rx),
        .rx_empty(rx_empty),
        .slave_error_reg_0(control_n_142),
        .slot_decode_error(slot_decode_error[2]),
        .slot_rd_done(slot_rd_done[2]),
        .slot_slave_error(slot_slave_error[2]),
        .tx(tx),
        .tx_full(tx_full),
        .w_rd_done(w_rd_done),
        .w_wr_done(w_wr_done));
endmodule

(* ORIG_REF_NAME = "register_file" *) 
module top_mmio_subsystem_0_0_register_file
   (D,
    \r_in_shift_reg[2] ,
    \r_in_shift_reg[0] ,
    \r_in_shift_reg[1] ,
    \r_reg_array_reg[0][2]_0 ,
    Q,
    \r_reg_array_reg[15][2]_0 ,
    aclk,
    \r_reg_array_reg[0][2]_1 ,
    \r_reg_array_reg[14][2]_0 ,
    \r_reg_array_reg[13][2]_0 ,
    \r_reg_array_reg[12][2]_0 ,
    \r_reg_array_reg[11][2]_0 ,
    \r_reg_array_reg[10][2]_0 ,
    \r_reg_array_reg[9][2]_0 ,
    \r_reg_array_reg[8][2]_0 ,
    \r_reg_array_reg[7][2]_0 ,
    \r_reg_array_reg[6][2]_0 ,
    \r_reg_array_reg[5][2]_0 ,
    \r_reg_array_reg[4][2]_0 ,
    \r_reg_array_reg[3][2]_0 ,
    \r_reg_array_reg[3][2]_1 );
  output [2:0]D;
  input [3:0]\r_in_shift_reg[2] ;
  input [0:0]\r_in_shift_reg[0] ;
  input [1:0]\r_in_shift_reg[1] ;
  input [2:0]\r_reg_array_reg[0][2]_0 ;
  input [0:0]Q;
  input \r_reg_array_reg[15][2]_0 ;
  input aclk;
  input \r_reg_array_reg[0][2]_1 ;
  input \r_reg_array_reg[14][2]_0 ;
  input \r_reg_array_reg[13][2]_0 ;
  input \r_reg_array_reg[12][2]_0 ;
  input \r_reg_array_reg[11][2]_0 ;
  input \r_reg_array_reg[10][2]_0 ;
  input \r_reg_array_reg[9][2]_0 ;
  input \r_reg_array_reg[8][2]_0 ;
  input \r_reg_array_reg[7][2]_0 ;
  input \r_reg_array_reg[6][2]_0 ;
  input \r_reg_array_reg[5][2]_0 ;
  input \r_reg_array_reg[4][2]_0 ;
  input \r_reg_array_reg[3][2]_0 ;
  input [1:0]\r_reg_array_reg[3][2]_1 ;

  wire [2:0]D;
  wire [0:0]Q;
  wire aclk;
  wire \r_in_shift[0]_i_4_n_0 ;
  wire \r_in_shift[0]_i_5_n_0 ;
  wire \r_in_shift[0]_i_6_n_0 ;
  wire \r_in_shift[0]_i_7_n_0 ;
  wire \r_in_shift[1]_i_4_n_0 ;
  wire \r_in_shift[1]_i_5_n_0 ;
  wire \r_in_shift[1]_i_6_n_0 ;
  wire \r_in_shift[1]_i_7_n_0 ;
  wire \r_in_shift[2]_i_5_n_0 ;
  wire \r_in_shift[2]_i_6_n_0 ;
  wire \r_in_shift[2]_i_7_n_0 ;
  wire \r_in_shift[2]_i_8_n_0 ;
  wire [0:0]\r_in_shift_reg[0] ;
  wire \r_in_shift_reg[0]_i_2_n_0 ;
  wire \r_in_shift_reg[0]_i_3_n_0 ;
  wire [1:0]\r_in_shift_reg[1] ;
  wire \r_in_shift_reg[1]_i_2_n_0 ;
  wire \r_in_shift_reg[1]_i_3_n_0 ;
  wire [3:0]\r_in_shift_reg[2] ;
  wire \r_in_shift_reg[2]_i_3_n_0 ;
  wire \r_in_shift_reg[2]_i_4_n_0 ;
  wire \r_reg_array[0][0]_i_1_n_0 ;
  wire \r_reg_array[0][1]_i_1_n_0 ;
  wire \r_reg_array[0][2]_i_1_n_0 ;
  wire \r_reg_array[10][0]_i_1_n_0 ;
  wire \r_reg_array[10][1]_i_1_n_0 ;
  wire \r_reg_array[10][2]_i_1_n_0 ;
  wire \r_reg_array[11][0]_i_1_n_0 ;
  wire \r_reg_array[11][1]_i_1_n_0 ;
  wire \r_reg_array[11][2]_i_1_n_0 ;
  wire \r_reg_array[12][0]_i_1_n_0 ;
  wire \r_reg_array[12][1]_i_1_n_0 ;
  wire \r_reg_array[12][2]_i_1_n_0 ;
  wire \r_reg_array[13][0]_i_1_n_0 ;
  wire \r_reg_array[13][1]_i_1_n_0 ;
  wire \r_reg_array[13][2]_i_1_n_0 ;
  wire \r_reg_array[14][0]_i_1_n_0 ;
  wire \r_reg_array[14][1]_i_1_n_0 ;
  wire \r_reg_array[14][2]_i_1_n_0 ;
  wire \r_reg_array[15][0]_i_1_n_0 ;
  wire \r_reg_array[15][1]_i_1_n_0 ;
  wire \r_reg_array[15][2]_i_1_n_0 ;
  wire \r_reg_array[1][0]_i_1_n_0 ;
  wire \r_reg_array[1][1]_i_1_n_0 ;
  wire \r_reg_array[1][2]_i_1_n_0 ;
  wire \r_reg_array[2][0]_i_1_n_0 ;
  wire \r_reg_array[2][1]_i_1_n_0 ;
  wire \r_reg_array[2][2]_i_1_n_0 ;
  wire \r_reg_array[3][0]_i_1_n_0 ;
  wire \r_reg_array[3][1]_i_1_n_0 ;
  wire \r_reg_array[3][2]_i_1_n_0 ;
  wire \r_reg_array[4][0]_i_1_n_0 ;
  wire \r_reg_array[4][1]_i_1_n_0 ;
  wire \r_reg_array[4][2]_i_1_n_0 ;
  wire \r_reg_array[5][0]_i_1_n_0 ;
  wire \r_reg_array[5][1]_i_1_n_0 ;
  wire \r_reg_array[5][2]_i_1_n_0 ;
  wire \r_reg_array[6][0]_i_1_n_0 ;
  wire \r_reg_array[6][1]_i_1_n_0 ;
  wire \r_reg_array[6][2]_i_1_n_0 ;
  wire \r_reg_array[7][0]_i_1_n_0 ;
  wire \r_reg_array[7][1]_i_1_n_0 ;
  wire \r_reg_array[7][2]_i_1_n_0 ;
  wire \r_reg_array[8][0]_i_1_n_0 ;
  wire \r_reg_array[8][1]_i_1_n_0 ;
  wire \r_reg_array[8][2]_i_1_n_0 ;
  wire \r_reg_array[9][0]_i_1_n_0 ;
  wire \r_reg_array[9][1]_i_1_n_0 ;
  wire \r_reg_array[9][2]_i_1_n_0 ;
  wire [2:0]\r_reg_array_reg[0][2]_0 ;
  wire \r_reg_array_reg[0][2]_1 ;
  wire \r_reg_array_reg[10][2]_0 ;
  wire \r_reg_array_reg[11][2]_0 ;
  wire \r_reg_array_reg[12][2]_0 ;
  wire \r_reg_array_reg[13][2]_0 ;
  wire \r_reg_array_reg[14][2]_0 ;
  wire \r_reg_array_reg[15][2]_0 ;
  wire \r_reg_array_reg[3][2]_0 ;
  wire [1:0]\r_reg_array_reg[3][2]_1 ;
  wire \r_reg_array_reg[4][2]_0 ;
  wire \r_reg_array_reg[5][2]_0 ;
  wire \r_reg_array_reg[6][2]_0 ;
  wire \r_reg_array_reg[7][2]_0 ;
  wire \r_reg_array_reg[8][2]_0 ;
  wire \r_reg_array_reg[9][2]_0 ;
  wire \r_reg_array_reg_n_0_[0][0] ;
  wire \r_reg_array_reg_n_0_[0][1] ;
  wire \r_reg_array_reg_n_0_[0][2] ;
  wire \r_reg_array_reg_n_0_[10][0] ;
  wire \r_reg_array_reg_n_0_[10][1] ;
  wire \r_reg_array_reg_n_0_[10][2] ;
  wire \r_reg_array_reg_n_0_[11][0] ;
  wire \r_reg_array_reg_n_0_[11][1] ;
  wire \r_reg_array_reg_n_0_[11][2] ;
  wire \r_reg_array_reg_n_0_[12][0] ;
  wire \r_reg_array_reg_n_0_[12][1] ;
  wire \r_reg_array_reg_n_0_[12][2] ;
  wire \r_reg_array_reg_n_0_[13][0] ;
  wire \r_reg_array_reg_n_0_[13][1] ;
  wire \r_reg_array_reg_n_0_[13][2] ;
  wire \r_reg_array_reg_n_0_[14][0] ;
  wire \r_reg_array_reg_n_0_[14][1] ;
  wire \r_reg_array_reg_n_0_[14][2] ;
  wire \r_reg_array_reg_n_0_[15][0] ;
  wire \r_reg_array_reg_n_0_[15][1] ;
  wire \r_reg_array_reg_n_0_[15][2] ;
  wire \r_reg_array_reg_n_0_[1][0] ;
  wire \r_reg_array_reg_n_0_[1][1] ;
  wire \r_reg_array_reg_n_0_[1][2] ;
  wire \r_reg_array_reg_n_0_[2][0] ;
  wire \r_reg_array_reg_n_0_[2][1] ;
  wire \r_reg_array_reg_n_0_[2][2] ;
  wire \r_reg_array_reg_n_0_[3][0] ;
  wire \r_reg_array_reg_n_0_[3][1] ;
  wire \r_reg_array_reg_n_0_[3][2] ;
  wire \r_reg_array_reg_n_0_[4][0] ;
  wire \r_reg_array_reg_n_0_[4][1] ;
  wire \r_reg_array_reg_n_0_[4][2] ;
  wire \r_reg_array_reg_n_0_[5][0] ;
  wire \r_reg_array_reg_n_0_[5][1] ;
  wire \r_reg_array_reg_n_0_[5][2] ;
  wire \r_reg_array_reg_n_0_[6][0] ;
  wire \r_reg_array_reg_n_0_[6][1] ;
  wire \r_reg_array_reg_n_0_[6][2] ;
  wire \r_reg_array_reg_n_0_[7][0] ;
  wire \r_reg_array_reg_n_0_[7][1] ;
  wire \r_reg_array_reg_n_0_[7][2] ;
  wire \r_reg_array_reg_n_0_[8][0] ;
  wire \r_reg_array_reg_n_0_[8][1] ;
  wire \r_reg_array_reg_n_0_[8][2] ;
  wire \r_reg_array_reg_n_0_[9][0] ;
  wire \r_reg_array_reg_n_0_[9][1] ;
  wire \r_reg_array_reg_n_0_[9][2] ;

  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \r_in_shift[0]_i_1 
       (.I0(\r_in_shift_reg[1] [0]),
        .I1(\r_in_shift_reg[0] ),
        .I2(\r_in_shift_reg[0]_i_2_n_0 ),
        .I3(\r_in_shift_reg[2] [3]),
        .I4(\r_in_shift_reg[0]_i_3_n_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_in_shift[0]_i_4 
       (.I0(\r_reg_array_reg_n_0_[11][0] ),
        .I1(\r_reg_array_reg_n_0_[10][0] ),
        .I2(\r_in_shift_reg[2] [1]),
        .I3(\r_reg_array_reg_n_0_[9][0] ),
        .I4(\r_in_shift_reg[2] [0]),
        .I5(\r_reg_array_reg_n_0_[8][0] ),
        .O(\r_in_shift[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_in_shift[0]_i_5 
       (.I0(\r_reg_array_reg_n_0_[15][0] ),
        .I1(\r_reg_array_reg_n_0_[14][0] ),
        .I2(\r_in_shift_reg[2] [1]),
        .I3(\r_reg_array_reg_n_0_[13][0] ),
        .I4(\r_in_shift_reg[2] [0]),
        .I5(\r_reg_array_reg_n_0_[12][0] ),
        .O(\r_in_shift[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_in_shift[0]_i_6 
       (.I0(\r_reg_array_reg_n_0_[3][0] ),
        .I1(\r_reg_array_reg_n_0_[2][0] ),
        .I2(\r_in_shift_reg[2] [1]),
        .I3(\r_reg_array_reg_n_0_[1][0] ),
        .I4(\r_in_shift_reg[2] [0]),
        .I5(\r_reg_array_reg_n_0_[0][0] ),
        .O(\r_in_shift[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_in_shift[0]_i_7 
       (.I0(\r_reg_array_reg_n_0_[7][0] ),
        .I1(\r_reg_array_reg_n_0_[6][0] ),
        .I2(\r_in_shift_reg[2] [1]),
        .I3(\r_reg_array_reg_n_0_[5][0] ),
        .I4(\r_in_shift_reg[2] [0]),
        .I5(\r_reg_array_reg_n_0_[4][0] ),
        .O(\r_in_shift[0]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \r_in_shift[1]_i_1 
       (.I0(\r_in_shift_reg[1] [1]),
        .I1(\r_in_shift_reg[0] ),
        .I2(\r_in_shift_reg[1]_i_2_n_0 ),
        .I3(\r_in_shift_reg[2] [3]),
        .I4(\r_in_shift_reg[1]_i_3_n_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_in_shift[1]_i_4 
       (.I0(\r_reg_array_reg_n_0_[11][1] ),
        .I1(\r_reg_array_reg_n_0_[10][1] ),
        .I2(\r_in_shift_reg[2] [1]),
        .I3(\r_reg_array_reg_n_0_[9][1] ),
        .I4(\r_in_shift_reg[2] [0]),
        .I5(\r_reg_array_reg_n_0_[8][1] ),
        .O(\r_in_shift[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_in_shift[1]_i_5 
       (.I0(\r_reg_array_reg_n_0_[15][1] ),
        .I1(\r_reg_array_reg_n_0_[14][1] ),
        .I2(\r_in_shift_reg[2] [1]),
        .I3(\r_reg_array_reg_n_0_[13][1] ),
        .I4(\r_in_shift_reg[2] [0]),
        .I5(\r_reg_array_reg_n_0_[12][1] ),
        .O(\r_in_shift[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_in_shift[1]_i_6 
       (.I0(\r_reg_array_reg_n_0_[3][1] ),
        .I1(\r_reg_array_reg_n_0_[2][1] ),
        .I2(\r_in_shift_reg[2] [1]),
        .I3(\r_reg_array_reg_n_0_[1][1] ),
        .I4(\r_in_shift_reg[2] [0]),
        .I5(\r_reg_array_reg_n_0_[0][1] ),
        .O(\r_in_shift[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_in_shift[1]_i_7 
       (.I0(\r_reg_array_reg_n_0_[7][1] ),
        .I1(\r_reg_array_reg_n_0_[6][1] ),
        .I2(\r_in_shift_reg[2] [1]),
        .I3(\r_reg_array_reg_n_0_[5][1] ),
        .I4(\r_in_shift_reg[2] [0]),
        .I5(\r_reg_array_reg_n_0_[4][1] ),
        .O(\r_in_shift[1]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \r_in_shift[2]_i_2 
       (.I0(\r_in_shift_reg[2]_i_3_n_0 ),
        .I1(\r_in_shift_reg[2] [3]),
        .I2(\r_in_shift_reg[2]_i_4_n_0 ),
        .I3(\r_in_shift_reg[0] ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_in_shift[2]_i_5 
       (.I0(\r_reg_array_reg_n_0_[3][2] ),
        .I1(\r_reg_array_reg_n_0_[2][2] ),
        .I2(\r_in_shift_reg[2] [1]),
        .I3(\r_reg_array_reg_n_0_[1][2] ),
        .I4(\r_in_shift_reg[2] [0]),
        .I5(\r_reg_array_reg_n_0_[0][2] ),
        .O(\r_in_shift[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_in_shift[2]_i_6 
       (.I0(\r_reg_array_reg_n_0_[7][2] ),
        .I1(\r_reg_array_reg_n_0_[6][2] ),
        .I2(\r_in_shift_reg[2] [1]),
        .I3(\r_reg_array_reg_n_0_[5][2] ),
        .I4(\r_in_shift_reg[2] [0]),
        .I5(\r_reg_array_reg_n_0_[4][2] ),
        .O(\r_in_shift[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_in_shift[2]_i_7 
       (.I0(\r_reg_array_reg_n_0_[11][2] ),
        .I1(\r_reg_array_reg_n_0_[10][2] ),
        .I2(\r_in_shift_reg[2] [1]),
        .I3(\r_reg_array_reg_n_0_[9][2] ),
        .I4(\r_in_shift_reg[2] [0]),
        .I5(\r_reg_array_reg_n_0_[8][2] ),
        .O(\r_in_shift[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_in_shift[2]_i_8 
       (.I0(\r_reg_array_reg_n_0_[15][2] ),
        .I1(\r_reg_array_reg_n_0_[14][2] ),
        .I2(\r_in_shift_reg[2] [1]),
        .I3(\r_reg_array_reg_n_0_[13][2] ),
        .I4(\r_in_shift_reg[2] [0]),
        .I5(\r_reg_array_reg_n_0_[12][2] ),
        .O(\r_in_shift[2]_i_8_n_0 ));
  MUXF7 \r_in_shift_reg[0]_i_2 
       (.I0(\r_in_shift[0]_i_4_n_0 ),
        .I1(\r_in_shift[0]_i_5_n_0 ),
        .O(\r_in_shift_reg[0]_i_2_n_0 ),
        .S(\r_in_shift_reg[2] [2]));
  MUXF7 \r_in_shift_reg[0]_i_3 
       (.I0(\r_in_shift[0]_i_6_n_0 ),
        .I1(\r_in_shift[0]_i_7_n_0 ),
        .O(\r_in_shift_reg[0]_i_3_n_0 ),
        .S(\r_in_shift_reg[2] [2]));
  MUXF7 \r_in_shift_reg[1]_i_2 
       (.I0(\r_in_shift[1]_i_4_n_0 ),
        .I1(\r_in_shift[1]_i_5_n_0 ),
        .O(\r_in_shift_reg[1]_i_2_n_0 ),
        .S(\r_in_shift_reg[2] [2]));
  MUXF7 \r_in_shift_reg[1]_i_3 
       (.I0(\r_in_shift[1]_i_6_n_0 ),
        .I1(\r_in_shift[1]_i_7_n_0 ),
        .O(\r_in_shift_reg[1]_i_3_n_0 ),
        .S(\r_in_shift_reg[2] [2]));
  MUXF7 \r_in_shift_reg[2]_i_3 
       (.I0(\r_in_shift[2]_i_5_n_0 ),
        .I1(\r_in_shift[2]_i_6_n_0 ),
        .O(\r_in_shift_reg[2]_i_3_n_0 ),
        .S(\r_in_shift_reg[2] [2]));
  MUXF7 \r_in_shift_reg[2]_i_4 
       (.I0(\r_in_shift[2]_i_7_n_0 ),
        .I1(\r_in_shift[2]_i_8_n_0 ),
        .O(\r_in_shift_reg[2]_i_4_n_0 ),
        .S(\r_in_shift_reg[2] [2]));
  LUT6 #(
    .INIT(64'h3333333200000002)) 
    \r_reg_array[0][0]_i_1 
       (.I0(\r_reg_array_reg[0][2]_0 [0]),
        .I1(Q),
        .I2(\r_reg_array_reg[3][2]_0 ),
        .I3(\r_reg_array_reg[3][2]_1 [0]),
        .I4(\r_reg_array_reg[3][2]_1 [1]),
        .I5(\r_reg_array_reg_n_0_[0][0] ),
        .O(\r_reg_array[0][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3333333200000002)) 
    \r_reg_array[0][1]_i_1 
       (.I0(\r_reg_array_reg[0][2]_0 [1]),
        .I1(Q),
        .I2(\r_reg_array_reg[3][2]_0 ),
        .I3(\r_reg_array_reg[3][2]_1 [0]),
        .I4(\r_reg_array_reg[3][2]_1 [1]),
        .I5(\r_reg_array_reg_n_0_[0][1] ),
        .O(\r_reg_array[0][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3333333200000002)) 
    \r_reg_array[0][2]_i_1 
       (.I0(\r_reg_array_reg[0][2]_0 [2]),
        .I1(Q),
        .I2(\r_reg_array_reg[3][2]_0 ),
        .I3(\r_reg_array_reg[3][2]_1 [0]),
        .I4(\r_reg_array_reg[3][2]_1 [1]),
        .I5(\r_reg_array_reg_n_0_[0][2] ),
        .O(\r_reg_array[0][2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \r_reg_array[10][0]_i_1 
       (.I0(\r_reg_array_reg[0][2]_0 [0]),
        .I1(Q),
        .I2(\r_reg_array_reg[10][2]_0 ),
        .I3(\r_reg_array_reg_n_0_[10][0] ),
        .O(\r_reg_array[10][0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \r_reg_array[10][1]_i_1 
       (.I0(\r_reg_array_reg[0][2]_0 [1]),
        .I1(Q),
        .I2(\r_reg_array_reg[10][2]_0 ),
        .I3(\r_reg_array_reg_n_0_[10][1] ),
        .O(\r_reg_array[10][1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \r_reg_array[10][2]_i_1 
       (.I0(\r_reg_array_reg[0][2]_0 [2]),
        .I1(Q),
        .I2(\r_reg_array_reg[10][2]_0 ),
        .I3(\r_reg_array_reg_n_0_[10][2] ),
        .O(\r_reg_array[10][2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \r_reg_array[11][0]_i_1 
       (.I0(\r_reg_array_reg[0][2]_0 [0]),
        .I1(Q),
        .I2(\r_reg_array_reg[11][2]_0 ),
        .I3(\r_reg_array_reg_n_0_[11][0] ),
        .O(\r_reg_array[11][0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \r_reg_array[11][1]_i_1 
       (.I0(\r_reg_array_reg[0][2]_0 [1]),
        .I1(Q),
        .I2(\r_reg_array_reg[11][2]_0 ),
        .I3(\r_reg_array_reg_n_0_[11][1] ),
        .O(\r_reg_array[11][1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \r_reg_array[11][2]_i_1 
       (.I0(\r_reg_array_reg[0][2]_0 [2]),
        .I1(Q),
        .I2(\r_reg_array_reg[11][2]_0 ),
        .I3(\r_reg_array_reg_n_0_[11][2] ),
        .O(\r_reg_array[11][2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \r_reg_array[12][0]_i_1 
       (.I0(\r_reg_array_reg[0][2]_0 [0]),
        .I1(Q),
        .I2(\r_reg_array_reg[12][2]_0 ),
        .I3(\r_reg_array_reg_n_0_[12][0] ),
        .O(\r_reg_array[12][0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \r_reg_array[12][1]_i_1 
       (.I0(\r_reg_array_reg[0][2]_0 [1]),
        .I1(Q),
        .I2(\r_reg_array_reg[12][2]_0 ),
        .I3(\r_reg_array_reg_n_0_[12][1] ),
        .O(\r_reg_array[12][1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \r_reg_array[12][2]_i_1 
       (.I0(\r_reg_array_reg[0][2]_0 [2]),
        .I1(Q),
        .I2(\r_reg_array_reg[12][2]_0 ),
        .I3(\r_reg_array_reg_n_0_[12][2] ),
        .O(\r_reg_array[12][2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \r_reg_array[13][0]_i_1 
       (.I0(\r_reg_array_reg[0][2]_0 [0]),
        .I1(Q),
        .I2(\r_reg_array_reg[13][2]_0 ),
        .I3(\r_reg_array_reg_n_0_[13][0] ),
        .O(\r_reg_array[13][0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \r_reg_array[13][1]_i_1 
       (.I0(\r_reg_array_reg[0][2]_0 [1]),
        .I1(Q),
        .I2(\r_reg_array_reg[13][2]_0 ),
        .I3(\r_reg_array_reg_n_0_[13][1] ),
        .O(\r_reg_array[13][1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \r_reg_array[13][2]_i_1 
       (.I0(\r_reg_array_reg[0][2]_0 [2]),
        .I1(Q),
        .I2(\r_reg_array_reg[13][2]_0 ),
        .I3(\r_reg_array_reg_n_0_[13][2] ),
        .O(\r_reg_array[13][2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \r_reg_array[14][0]_i_1 
       (.I0(\r_reg_array_reg[0][2]_0 [0]),
        .I1(Q),
        .I2(\r_reg_array_reg[14][2]_0 ),
        .I3(\r_reg_array_reg_n_0_[14][0] ),
        .O(\r_reg_array[14][0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \r_reg_array[14][1]_i_1 
       (.I0(\r_reg_array_reg[0][2]_0 [1]),
        .I1(Q),
        .I2(\r_reg_array_reg[14][2]_0 ),
        .I3(\r_reg_array_reg_n_0_[14][1] ),
        .O(\r_reg_array[14][1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \r_reg_array[14][2]_i_1 
       (.I0(\r_reg_array_reg[0][2]_0 [2]),
        .I1(Q),
        .I2(\r_reg_array_reg[14][2]_0 ),
        .I3(\r_reg_array_reg_n_0_[14][2] ),
        .O(\r_reg_array[14][2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \r_reg_array[15][0]_i_1 
       (.I0(\r_reg_array_reg[0][2]_0 [0]),
        .I1(Q),
        .I2(\r_reg_array_reg[15][2]_0 ),
        .I3(\r_reg_array_reg_n_0_[15][0] ),
        .O(\r_reg_array[15][0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \r_reg_array[15][1]_i_1 
       (.I0(\r_reg_array_reg[0][2]_0 [1]),
        .I1(Q),
        .I2(\r_reg_array_reg[15][2]_0 ),
        .I3(\r_reg_array_reg_n_0_[15][1] ),
        .O(\r_reg_array[15][1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \r_reg_array[15][2]_i_1 
       (.I0(\r_reg_array_reg[0][2]_0 [2]),
        .I1(Q),
        .I2(\r_reg_array_reg[15][2]_0 ),
        .I3(\r_reg_array_reg_n_0_[15][2] ),
        .O(\r_reg_array[15][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3333323300000200)) 
    \r_reg_array[1][0]_i_1 
       (.I0(\r_reg_array_reg[0][2]_0 [0]),
        .I1(Q),
        .I2(\r_reg_array_reg[3][2]_0 ),
        .I3(\r_reg_array_reg[3][2]_1 [0]),
        .I4(\r_reg_array_reg[3][2]_1 [1]),
        .I5(\r_reg_array_reg_n_0_[1][0] ),
        .O(\r_reg_array[1][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3333323300000200)) 
    \r_reg_array[1][1]_i_1 
       (.I0(\r_reg_array_reg[0][2]_0 [1]),
        .I1(Q),
        .I2(\r_reg_array_reg[3][2]_0 ),
        .I3(\r_reg_array_reg[3][2]_1 [0]),
        .I4(\r_reg_array_reg[3][2]_1 [1]),
        .I5(\r_reg_array_reg_n_0_[1][1] ),
        .O(\r_reg_array[1][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3333323300000200)) 
    \r_reg_array[1][2]_i_1 
       (.I0(\r_reg_array_reg[0][2]_0 [2]),
        .I1(Q),
        .I2(\r_reg_array_reg[3][2]_0 ),
        .I3(\r_reg_array_reg[3][2]_1 [0]),
        .I4(\r_reg_array_reg[3][2]_1 [1]),
        .I5(\r_reg_array_reg_n_0_[1][2] ),
        .O(\r_reg_array[1][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3333323300000200)) 
    \r_reg_array[2][0]_i_1 
       (.I0(\r_reg_array_reg[0][2]_0 [0]),
        .I1(Q),
        .I2(\r_reg_array_reg[3][2]_0 ),
        .I3(\r_reg_array_reg[3][2]_1 [1]),
        .I4(\r_reg_array_reg[3][2]_1 [0]),
        .I5(\r_reg_array_reg_n_0_[2][0] ),
        .O(\r_reg_array[2][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3333323300000200)) 
    \r_reg_array[2][1]_i_1 
       (.I0(\r_reg_array_reg[0][2]_0 [1]),
        .I1(Q),
        .I2(\r_reg_array_reg[3][2]_0 ),
        .I3(\r_reg_array_reg[3][2]_1 [1]),
        .I4(\r_reg_array_reg[3][2]_1 [0]),
        .I5(\r_reg_array_reg_n_0_[2][1] ),
        .O(\r_reg_array[2][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3333323300000200)) 
    \r_reg_array[2][2]_i_1 
       (.I0(\r_reg_array_reg[0][2]_0 [2]),
        .I1(Q),
        .I2(\r_reg_array_reg[3][2]_0 ),
        .I3(\r_reg_array_reg[3][2]_1 [1]),
        .I4(\r_reg_array_reg[3][2]_1 [0]),
        .I5(\r_reg_array_reg_n_0_[2][2] ),
        .O(\r_reg_array[2][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3233333302000000)) 
    \r_reg_array[3][0]_i_1 
       (.I0(\r_reg_array_reg[0][2]_0 [0]),
        .I1(Q),
        .I2(\r_reg_array_reg[3][2]_0 ),
        .I3(\r_reg_array_reg[3][2]_1 [0]),
        .I4(\r_reg_array_reg[3][2]_1 [1]),
        .I5(\r_reg_array_reg_n_0_[3][0] ),
        .O(\r_reg_array[3][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3233333302000000)) 
    \r_reg_array[3][1]_i_1 
       (.I0(\r_reg_array_reg[0][2]_0 [1]),
        .I1(Q),
        .I2(\r_reg_array_reg[3][2]_0 ),
        .I3(\r_reg_array_reg[3][2]_1 [0]),
        .I4(\r_reg_array_reg[3][2]_1 [1]),
        .I5(\r_reg_array_reg_n_0_[3][1] ),
        .O(\r_reg_array[3][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3233333302000000)) 
    \r_reg_array[3][2]_i_1 
       (.I0(\r_reg_array_reg[0][2]_0 [2]),
        .I1(Q),
        .I2(\r_reg_array_reg[3][2]_0 ),
        .I3(\r_reg_array_reg[3][2]_1 [0]),
        .I4(\r_reg_array_reg[3][2]_1 [1]),
        .I5(\r_reg_array_reg_n_0_[3][2] ),
        .O(\r_reg_array[3][2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \r_reg_array[4][0]_i_1 
       (.I0(\r_reg_array_reg[0][2]_0 [0]),
        .I1(Q),
        .I2(\r_reg_array_reg[4][2]_0 ),
        .I3(\r_reg_array_reg_n_0_[4][0] ),
        .O(\r_reg_array[4][0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \r_reg_array[4][1]_i_1 
       (.I0(\r_reg_array_reg[0][2]_0 [1]),
        .I1(Q),
        .I2(\r_reg_array_reg[4][2]_0 ),
        .I3(\r_reg_array_reg_n_0_[4][1] ),
        .O(\r_reg_array[4][1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \r_reg_array[4][2]_i_1 
       (.I0(\r_reg_array_reg[0][2]_0 [2]),
        .I1(Q),
        .I2(\r_reg_array_reg[4][2]_0 ),
        .I3(\r_reg_array_reg_n_0_[4][2] ),
        .O(\r_reg_array[4][2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \r_reg_array[5][0]_i_1 
       (.I0(\r_reg_array_reg[0][2]_0 [0]),
        .I1(Q),
        .I2(\r_reg_array_reg[5][2]_0 ),
        .I3(\r_reg_array_reg_n_0_[5][0] ),
        .O(\r_reg_array[5][0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \r_reg_array[5][1]_i_1 
       (.I0(\r_reg_array_reg[0][2]_0 [1]),
        .I1(Q),
        .I2(\r_reg_array_reg[5][2]_0 ),
        .I3(\r_reg_array_reg_n_0_[5][1] ),
        .O(\r_reg_array[5][1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \r_reg_array[5][2]_i_1 
       (.I0(\r_reg_array_reg[0][2]_0 [2]),
        .I1(Q),
        .I2(\r_reg_array_reg[5][2]_0 ),
        .I3(\r_reg_array_reg_n_0_[5][2] ),
        .O(\r_reg_array[5][2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \r_reg_array[6][0]_i_1 
       (.I0(\r_reg_array_reg[0][2]_0 [0]),
        .I1(Q),
        .I2(\r_reg_array_reg[6][2]_0 ),
        .I3(\r_reg_array_reg_n_0_[6][0] ),
        .O(\r_reg_array[6][0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \r_reg_array[6][1]_i_1 
       (.I0(\r_reg_array_reg[0][2]_0 [1]),
        .I1(Q),
        .I2(\r_reg_array_reg[6][2]_0 ),
        .I3(\r_reg_array_reg_n_0_[6][1] ),
        .O(\r_reg_array[6][1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \r_reg_array[6][2]_i_1 
       (.I0(\r_reg_array_reg[0][2]_0 [2]),
        .I1(Q),
        .I2(\r_reg_array_reg[6][2]_0 ),
        .I3(\r_reg_array_reg_n_0_[6][2] ),
        .O(\r_reg_array[6][2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \r_reg_array[7][0]_i_1 
       (.I0(\r_reg_array_reg[0][2]_0 [0]),
        .I1(Q),
        .I2(\r_reg_array_reg[7][2]_0 ),
        .I3(\r_reg_array_reg_n_0_[7][0] ),
        .O(\r_reg_array[7][0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \r_reg_array[7][1]_i_1 
       (.I0(\r_reg_array_reg[0][2]_0 [1]),
        .I1(Q),
        .I2(\r_reg_array_reg[7][2]_0 ),
        .I3(\r_reg_array_reg_n_0_[7][1] ),
        .O(\r_reg_array[7][1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \r_reg_array[7][2]_i_1 
       (.I0(\r_reg_array_reg[0][2]_0 [2]),
        .I1(Q),
        .I2(\r_reg_array_reg[7][2]_0 ),
        .I3(\r_reg_array_reg_n_0_[7][2] ),
        .O(\r_reg_array[7][2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \r_reg_array[8][0]_i_1 
       (.I0(\r_reg_array_reg[0][2]_0 [0]),
        .I1(Q),
        .I2(\r_reg_array_reg[8][2]_0 ),
        .I3(\r_reg_array_reg_n_0_[8][0] ),
        .O(\r_reg_array[8][0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \r_reg_array[8][1]_i_1 
       (.I0(\r_reg_array_reg[0][2]_0 [1]),
        .I1(Q),
        .I2(\r_reg_array_reg[8][2]_0 ),
        .I3(\r_reg_array_reg_n_0_[8][1] ),
        .O(\r_reg_array[8][1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \r_reg_array[8][2]_i_1 
       (.I0(\r_reg_array_reg[0][2]_0 [2]),
        .I1(Q),
        .I2(\r_reg_array_reg[8][2]_0 ),
        .I3(\r_reg_array_reg_n_0_[8][2] ),
        .O(\r_reg_array[8][2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \r_reg_array[9][0]_i_1 
       (.I0(\r_reg_array_reg[0][2]_0 [0]),
        .I1(Q),
        .I2(\r_reg_array_reg[9][2]_0 ),
        .I3(\r_reg_array_reg_n_0_[9][0] ),
        .O(\r_reg_array[9][0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \r_reg_array[9][1]_i_1 
       (.I0(\r_reg_array_reg[0][2]_0 [1]),
        .I1(Q),
        .I2(\r_reg_array_reg[9][2]_0 ),
        .I3(\r_reg_array_reg_n_0_[9][1] ),
        .O(\r_reg_array[9][1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \r_reg_array[9][2]_i_1 
       (.I0(\r_reg_array_reg[0][2]_0 [2]),
        .I1(Q),
        .I2(\r_reg_array_reg[9][2]_0 ),
        .I3(\r_reg_array_reg_n_0_[9][2] ),
        .O(\r_reg_array[9][2]_i_1_n_0 ));
  FDCE \r_reg_array_reg[0][0] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r_reg_array_reg[0][2]_1 ),
        .D(\r_reg_array[0][0]_i_1_n_0 ),
        .Q(\r_reg_array_reg_n_0_[0][0] ));
  FDCE \r_reg_array_reg[0][1] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r_reg_array_reg[0][2]_1 ),
        .D(\r_reg_array[0][1]_i_1_n_0 ),
        .Q(\r_reg_array_reg_n_0_[0][1] ));
  FDCE \r_reg_array_reg[0][2] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r_reg_array_reg[0][2]_1 ),
        .D(\r_reg_array[0][2]_i_1_n_0 ),
        .Q(\r_reg_array_reg_n_0_[0][2] ));
  FDCE \r_reg_array_reg[10][0] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r_reg_array_reg[0][2]_1 ),
        .D(\r_reg_array[10][0]_i_1_n_0 ),
        .Q(\r_reg_array_reg_n_0_[10][0] ));
  FDCE \r_reg_array_reg[10][1] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r_reg_array_reg[0][2]_1 ),
        .D(\r_reg_array[10][1]_i_1_n_0 ),
        .Q(\r_reg_array_reg_n_0_[10][1] ));
  FDCE \r_reg_array_reg[10][2] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r_reg_array_reg[0][2]_1 ),
        .D(\r_reg_array[10][2]_i_1_n_0 ),
        .Q(\r_reg_array_reg_n_0_[10][2] ));
  FDCE \r_reg_array_reg[11][0] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r_reg_array_reg[0][2]_1 ),
        .D(\r_reg_array[11][0]_i_1_n_0 ),
        .Q(\r_reg_array_reg_n_0_[11][0] ));
  FDCE \r_reg_array_reg[11][1] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r_reg_array_reg[0][2]_1 ),
        .D(\r_reg_array[11][1]_i_1_n_0 ),
        .Q(\r_reg_array_reg_n_0_[11][1] ));
  FDCE \r_reg_array_reg[11][2] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r_reg_array_reg[0][2]_1 ),
        .D(\r_reg_array[11][2]_i_1_n_0 ),
        .Q(\r_reg_array_reg_n_0_[11][2] ));
  FDCE \r_reg_array_reg[12][0] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r_reg_array_reg[0][2]_1 ),
        .D(\r_reg_array[12][0]_i_1_n_0 ),
        .Q(\r_reg_array_reg_n_0_[12][0] ));
  FDCE \r_reg_array_reg[12][1] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r_reg_array_reg[0][2]_1 ),
        .D(\r_reg_array[12][1]_i_1_n_0 ),
        .Q(\r_reg_array_reg_n_0_[12][1] ));
  FDCE \r_reg_array_reg[12][2] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r_reg_array_reg[0][2]_1 ),
        .D(\r_reg_array[12][2]_i_1_n_0 ),
        .Q(\r_reg_array_reg_n_0_[12][2] ));
  FDCE \r_reg_array_reg[13][0] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r_reg_array_reg[0][2]_1 ),
        .D(\r_reg_array[13][0]_i_1_n_0 ),
        .Q(\r_reg_array_reg_n_0_[13][0] ));
  FDCE \r_reg_array_reg[13][1] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r_reg_array_reg[0][2]_1 ),
        .D(\r_reg_array[13][1]_i_1_n_0 ),
        .Q(\r_reg_array_reg_n_0_[13][1] ));
  FDCE \r_reg_array_reg[13][2] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r_reg_array_reg[0][2]_1 ),
        .D(\r_reg_array[13][2]_i_1_n_0 ),
        .Q(\r_reg_array_reg_n_0_[13][2] ));
  FDCE \r_reg_array_reg[14][0] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r_reg_array_reg[0][2]_1 ),
        .D(\r_reg_array[14][0]_i_1_n_0 ),
        .Q(\r_reg_array_reg_n_0_[14][0] ));
  FDCE \r_reg_array_reg[14][1] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r_reg_array_reg[0][2]_1 ),
        .D(\r_reg_array[14][1]_i_1_n_0 ),
        .Q(\r_reg_array_reg_n_0_[14][1] ));
  FDCE \r_reg_array_reg[14][2] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r_reg_array_reg[0][2]_1 ),
        .D(\r_reg_array[14][2]_i_1_n_0 ),
        .Q(\r_reg_array_reg_n_0_[14][2] ));
  FDCE \r_reg_array_reg[15][0] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r_reg_array_reg[0][2]_1 ),
        .D(\r_reg_array[15][0]_i_1_n_0 ),
        .Q(\r_reg_array_reg_n_0_[15][0] ));
  FDCE \r_reg_array_reg[15][1] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r_reg_array_reg[0][2]_1 ),
        .D(\r_reg_array[15][1]_i_1_n_0 ),
        .Q(\r_reg_array_reg_n_0_[15][1] ));
  FDCE \r_reg_array_reg[15][2] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r_reg_array_reg[0][2]_1 ),
        .D(\r_reg_array[15][2]_i_1_n_0 ),
        .Q(\r_reg_array_reg_n_0_[15][2] ));
  FDCE \r_reg_array_reg[1][0] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r_reg_array_reg[0][2]_1 ),
        .D(\r_reg_array[1][0]_i_1_n_0 ),
        .Q(\r_reg_array_reg_n_0_[1][0] ));
  FDCE \r_reg_array_reg[1][1] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r_reg_array_reg[0][2]_1 ),
        .D(\r_reg_array[1][1]_i_1_n_0 ),
        .Q(\r_reg_array_reg_n_0_[1][1] ));
  FDCE \r_reg_array_reg[1][2] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r_reg_array_reg[0][2]_1 ),
        .D(\r_reg_array[1][2]_i_1_n_0 ),
        .Q(\r_reg_array_reg_n_0_[1][2] ));
  FDCE \r_reg_array_reg[2][0] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r_reg_array_reg[0][2]_1 ),
        .D(\r_reg_array[2][0]_i_1_n_0 ),
        .Q(\r_reg_array_reg_n_0_[2][0] ));
  FDCE \r_reg_array_reg[2][1] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r_reg_array_reg[0][2]_1 ),
        .D(\r_reg_array[2][1]_i_1_n_0 ),
        .Q(\r_reg_array_reg_n_0_[2][1] ));
  FDCE \r_reg_array_reg[2][2] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r_reg_array_reg[0][2]_1 ),
        .D(\r_reg_array[2][2]_i_1_n_0 ),
        .Q(\r_reg_array_reg_n_0_[2][2] ));
  FDCE \r_reg_array_reg[3][0] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r_reg_array_reg[0][2]_1 ),
        .D(\r_reg_array[3][0]_i_1_n_0 ),
        .Q(\r_reg_array_reg_n_0_[3][0] ));
  FDCE \r_reg_array_reg[3][1] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r_reg_array_reg[0][2]_1 ),
        .D(\r_reg_array[3][1]_i_1_n_0 ),
        .Q(\r_reg_array_reg_n_0_[3][1] ));
  FDCE \r_reg_array_reg[3][2] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r_reg_array_reg[0][2]_1 ),
        .D(\r_reg_array[3][2]_i_1_n_0 ),
        .Q(\r_reg_array_reg_n_0_[3][2] ));
  FDCE \r_reg_array_reg[4][0] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r_reg_array_reg[0][2]_1 ),
        .D(\r_reg_array[4][0]_i_1_n_0 ),
        .Q(\r_reg_array_reg_n_0_[4][0] ));
  FDCE \r_reg_array_reg[4][1] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r_reg_array_reg[0][2]_1 ),
        .D(\r_reg_array[4][1]_i_1_n_0 ),
        .Q(\r_reg_array_reg_n_0_[4][1] ));
  FDCE \r_reg_array_reg[4][2] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r_reg_array_reg[0][2]_1 ),
        .D(\r_reg_array[4][2]_i_1_n_0 ),
        .Q(\r_reg_array_reg_n_0_[4][2] ));
  FDCE \r_reg_array_reg[5][0] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r_reg_array_reg[0][2]_1 ),
        .D(\r_reg_array[5][0]_i_1_n_0 ),
        .Q(\r_reg_array_reg_n_0_[5][0] ));
  FDCE \r_reg_array_reg[5][1] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r_reg_array_reg[0][2]_1 ),
        .D(\r_reg_array[5][1]_i_1_n_0 ),
        .Q(\r_reg_array_reg_n_0_[5][1] ));
  FDCE \r_reg_array_reg[5][2] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r_reg_array_reg[0][2]_1 ),
        .D(\r_reg_array[5][2]_i_1_n_0 ),
        .Q(\r_reg_array_reg_n_0_[5][2] ));
  FDCE \r_reg_array_reg[6][0] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r_reg_array_reg[0][2]_1 ),
        .D(\r_reg_array[6][0]_i_1_n_0 ),
        .Q(\r_reg_array_reg_n_0_[6][0] ));
  FDCE \r_reg_array_reg[6][1] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r_reg_array_reg[0][2]_1 ),
        .D(\r_reg_array[6][1]_i_1_n_0 ),
        .Q(\r_reg_array_reg_n_0_[6][1] ));
  FDCE \r_reg_array_reg[6][2] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r_reg_array_reg[0][2]_1 ),
        .D(\r_reg_array[6][2]_i_1_n_0 ),
        .Q(\r_reg_array_reg_n_0_[6][2] ));
  FDCE \r_reg_array_reg[7][0] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r_reg_array_reg[0][2]_1 ),
        .D(\r_reg_array[7][0]_i_1_n_0 ),
        .Q(\r_reg_array_reg_n_0_[7][0] ));
  FDCE \r_reg_array_reg[7][1] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r_reg_array_reg[0][2]_1 ),
        .D(\r_reg_array[7][1]_i_1_n_0 ),
        .Q(\r_reg_array_reg_n_0_[7][1] ));
  FDCE \r_reg_array_reg[7][2] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r_reg_array_reg[0][2]_1 ),
        .D(\r_reg_array[7][2]_i_1_n_0 ),
        .Q(\r_reg_array_reg_n_0_[7][2] ));
  FDCE \r_reg_array_reg[8][0] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r_reg_array_reg[0][2]_1 ),
        .D(\r_reg_array[8][0]_i_1_n_0 ),
        .Q(\r_reg_array_reg_n_0_[8][0] ));
  FDCE \r_reg_array_reg[8][1] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r_reg_array_reg[0][2]_1 ),
        .D(\r_reg_array[8][1]_i_1_n_0 ),
        .Q(\r_reg_array_reg_n_0_[8][1] ));
  FDCE \r_reg_array_reg[8][2] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r_reg_array_reg[0][2]_1 ),
        .D(\r_reg_array[8][2]_i_1_n_0 ),
        .Q(\r_reg_array_reg_n_0_[8][2] ));
  FDCE \r_reg_array_reg[9][0] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r_reg_array_reg[0][2]_1 ),
        .D(\r_reg_array[9][0]_i_1_n_0 ),
        .Q(\r_reg_array_reg_n_0_[9][0] ));
  FDCE \r_reg_array_reg[9][1] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r_reg_array_reg[0][2]_1 ),
        .D(\r_reg_array[9][1]_i_1_n_0 ),
        .Q(\r_reg_array_reg_n_0_[9][1] ));
  FDCE \r_reg_array_reg[9][2] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r_reg_array_reg[0][2]_1 ),
        .D(\r_reg_array[9][2]_i_1_n_0 ),
        .Q(\r_reg_array_reg_n_0_[9][2] ));
endmodule

(* ORIG_REF_NAME = "register_file" *) 
module top_mmio_subsystem_0_0_register_file_2
   (D,
    \r_rd_logic_reg[2] ,
    \r_rd_logic_reg[2]_0 ,
    arst_n_0,
    \rd_data_reg[0] ,
    \rd_data_reg[7] ,
    \rd_data_reg[0]_0 ,
    \rd_data_reg[1] ,
    \rd_data_reg[5] ,
    r_status,
    arst_n,
    E,
    \r_reg_array_reg[0][7]_0 ,
    aclk,
    \r_reg_array_reg[14][7]_0 ,
    \r_reg_array_reg[13][7]_0 ,
    \r_reg_array_reg[12][7]_0 ,
    \r_reg_array_reg[11][7]_0 ,
    \r_reg_array_reg[10][7]_0 ,
    \r_reg_array_reg[9][7]_0 ,
    \r_reg_array_reg[8][7]_0 ,
    \r_reg_array_reg[7][7]_0 ,
    \r_reg_array_reg[6][7]_0 ,
    \r_reg_array_reg[5][7]_0 ,
    \r_reg_array_reg[4][7]_0 ,
    \r_reg_array_reg[3][7]_0 ,
    \r_reg_array_reg[2][7]_0 ,
    \r_reg_array_reg[1][7]_0 ,
    \r_reg_array_reg[0][7]_1 );
  output [5:0]D;
  output \r_rd_logic_reg[2] ;
  output \r_rd_logic_reg[2]_0 ;
  output arst_n_0;
  input \rd_data_reg[0] ;
  input \rd_data_reg[7] ;
  input [3:0]\rd_data_reg[0]_0 ;
  input \rd_data_reg[1] ;
  input \rd_data_reg[5] ;
  input [0:0]r_status;
  input arst_n;
  input [0:0]E;
  input [7:0]\r_reg_array_reg[0][7]_0 ;
  input aclk;
  input [0:0]\r_reg_array_reg[14][7]_0 ;
  input [0:0]\r_reg_array_reg[13][7]_0 ;
  input [0:0]\r_reg_array_reg[12][7]_0 ;
  input [0:0]\r_reg_array_reg[11][7]_0 ;
  input [0:0]\r_reg_array_reg[10][7]_0 ;
  input [0:0]\r_reg_array_reg[9][7]_0 ;
  input [0:0]\r_reg_array_reg[8][7]_0 ;
  input [0:0]\r_reg_array_reg[7][7]_0 ;
  input [0:0]\r_reg_array_reg[6][7]_0 ;
  input [0:0]\r_reg_array_reg[5][7]_0 ;
  input [0:0]\r_reg_array_reg[4][7]_0 ;
  input [0:0]\r_reg_array_reg[3][7]_0 ;
  input [0:0]\r_reg_array_reg[2][7]_0 ;
  input [0:0]\r_reg_array_reg[1][7]_0 ;
  input [0:0]\r_reg_array_reg[0][7]_1 ;

  wire [5:0]D;
  wire [0:0]E;
  wire aclk;
  wire arst_n;
  wire arst_n_0;
  wire \r_rd_logic_reg[2] ;
  wire \r_rd_logic_reg[2]_0 ;
  wire [7:0]\r_reg_array_reg[0][7]_0 ;
  wire [0:0]\r_reg_array_reg[0][7]_1 ;
  wire [7:0]\r_reg_array_reg[0]_17 ;
  wire [0:0]\r_reg_array_reg[10][7]_0 ;
  wire [7:0]\r_reg_array_reg[10]_7 ;
  wire [0:0]\r_reg_array_reg[11][7]_0 ;
  wire [7:0]\r_reg_array_reg[11]_6 ;
  wire [0:0]\r_reg_array_reg[12][7]_0 ;
  wire [7:0]\r_reg_array_reg[12]_5 ;
  wire [0:0]\r_reg_array_reg[13][7]_0 ;
  wire [7:0]\r_reg_array_reg[13]_4 ;
  wire [0:0]\r_reg_array_reg[14][7]_0 ;
  wire [7:0]\r_reg_array_reg[14]_3 ;
  wire [7:0]\r_reg_array_reg[15]_2 ;
  wire [0:0]\r_reg_array_reg[1][7]_0 ;
  wire [7:0]\r_reg_array_reg[1]_16 ;
  wire [0:0]\r_reg_array_reg[2][7]_0 ;
  wire [7:0]\r_reg_array_reg[2]_15 ;
  wire [0:0]\r_reg_array_reg[3][7]_0 ;
  wire [7:0]\r_reg_array_reg[3]_14 ;
  wire [0:0]\r_reg_array_reg[4][7]_0 ;
  wire [7:0]\r_reg_array_reg[4]_13 ;
  wire [0:0]\r_reg_array_reg[5][7]_0 ;
  wire [7:0]\r_reg_array_reg[5]_12 ;
  wire [0:0]\r_reg_array_reg[6][7]_0 ;
  wire [7:0]\r_reg_array_reg[6]_11 ;
  wire [0:0]\r_reg_array_reg[7][7]_0 ;
  wire [7:0]\r_reg_array_reg[7]_10 ;
  wire [0:0]\r_reg_array_reg[8][7]_0 ;
  wire [7:0]\r_reg_array_reg[8]_9 ;
  wire [0:0]\r_reg_array_reg[9][7]_0 ;
  wire [7:0]\r_reg_array_reg[9]_8 ;
  wire [0:0]r_status;
  wire \rd_data[0]_i_5_n_0 ;
  wire \rd_data[0]_i_6_n_0 ;
  wire \rd_data[0]_i_7_n_0 ;
  wire \rd_data[0]_i_8_n_0 ;
  wire \rd_data[1]_i_5_n_0 ;
  wire \rd_data[1]_i_6_n_0 ;
  wire \rd_data[1]_i_7_n_0 ;
  wire \rd_data[1]_i_8_n_0 ;
  wire \rd_data[2]_i_3_n_0 ;
  wire \rd_data[2]_i_4_n_0 ;
  wire \rd_data[2]_i_6_n_0 ;
  wire \rd_data[2]_i_7_n_0 ;
  wire \rd_data[3]_i_3_n_0 ;
  wire \rd_data[3]_i_4_n_0 ;
  wire \rd_data[3]_i_6_n_0 ;
  wire \rd_data[3]_i_7_n_0 ;
  wire \rd_data[4]_i_2_n_0 ;
  wire \rd_data[4]_i_3_n_0 ;
  wire \rd_data[4]_i_5_n_0 ;
  wire \rd_data[4]_i_6_n_0 ;
  wire \rd_data[5]_i_5_n_0 ;
  wire \rd_data[5]_i_6_n_0 ;
  wire \rd_data[5]_i_7_n_0 ;
  wire \rd_data[5]_i_8_n_0 ;
  wire \rd_data[6]_i_2_n_0 ;
  wire \rd_data[6]_i_3_n_0 ;
  wire \rd_data[6]_i_5_n_0 ;
  wire \rd_data[6]_i_6_n_0 ;
  wire \rd_data[7]_i_2_n_0 ;
  wire \rd_data[7]_i_3_n_0 ;
  wire \rd_data[7]_i_6_n_0 ;
  wire \rd_data[7]_i_7_n_0 ;
  wire \rd_data_reg[0] ;
  wire [3:0]\rd_data_reg[0]_0 ;
  wire \rd_data_reg[0]_i_3_n_0 ;
  wire \rd_data_reg[0]_i_4_n_0 ;
  wire \rd_data_reg[1] ;
  wire \rd_data_reg[1]_i_3_n_0 ;
  wire \rd_data_reg[1]_i_4_n_0 ;
  wire \rd_data_reg[2]_i_5_n_0 ;
  wire \rd_data_reg[3]_i_5_n_0 ;
  wire \rd_data_reg[4]_i_4_n_0 ;
  wire \rd_data_reg[5] ;
  wire \rd_data_reg[5]_i_3_n_0 ;
  wire \rd_data_reg[5]_i_4_n_0 ;
  wire \rd_data_reg[6]_i_4_n_0 ;
  wire \rd_data_reg[7] ;
  wire \rd_data_reg[7]_i_4_n_0 ;

  LUT1 #(
    .INIT(2'h1)) 
    \FSM_onehot_r_state[0]_i_1 
       (.I0(arst_n),
        .O(arst_n_0));
  FDCE \r_reg_array_reg[0][0] 
       (.C(aclk),
        .CE(\r_reg_array_reg[0][7]_1 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [0]),
        .Q(\r_reg_array_reg[0]_17 [0]));
  FDCE \r_reg_array_reg[0][1] 
       (.C(aclk),
        .CE(\r_reg_array_reg[0][7]_1 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [1]),
        .Q(\r_reg_array_reg[0]_17 [1]));
  FDCE \r_reg_array_reg[0][2] 
       (.C(aclk),
        .CE(\r_reg_array_reg[0][7]_1 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [2]),
        .Q(\r_reg_array_reg[0]_17 [2]));
  FDCE \r_reg_array_reg[0][3] 
       (.C(aclk),
        .CE(\r_reg_array_reg[0][7]_1 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [3]),
        .Q(\r_reg_array_reg[0]_17 [3]));
  FDCE \r_reg_array_reg[0][4] 
       (.C(aclk),
        .CE(\r_reg_array_reg[0][7]_1 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [4]),
        .Q(\r_reg_array_reg[0]_17 [4]));
  FDCE \r_reg_array_reg[0][5] 
       (.C(aclk),
        .CE(\r_reg_array_reg[0][7]_1 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [5]),
        .Q(\r_reg_array_reg[0]_17 [5]));
  FDCE \r_reg_array_reg[0][6] 
       (.C(aclk),
        .CE(\r_reg_array_reg[0][7]_1 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [6]),
        .Q(\r_reg_array_reg[0]_17 [6]));
  FDCE \r_reg_array_reg[0][7] 
       (.C(aclk),
        .CE(\r_reg_array_reg[0][7]_1 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [7]),
        .Q(\r_reg_array_reg[0]_17 [7]));
  FDCE \r_reg_array_reg[10][0] 
       (.C(aclk),
        .CE(\r_reg_array_reg[10][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [0]),
        .Q(\r_reg_array_reg[10]_7 [0]));
  FDCE \r_reg_array_reg[10][1] 
       (.C(aclk),
        .CE(\r_reg_array_reg[10][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [1]),
        .Q(\r_reg_array_reg[10]_7 [1]));
  FDCE \r_reg_array_reg[10][2] 
       (.C(aclk),
        .CE(\r_reg_array_reg[10][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [2]),
        .Q(\r_reg_array_reg[10]_7 [2]));
  FDCE \r_reg_array_reg[10][3] 
       (.C(aclk),
        .CE(\r_reg_array_reg[10][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [3]),
        .Q(\r_reg_array_reg[10]_7 [3]));
  FDCE \r_reg_array_reg[10][4] 
       (.C(aclk),
        .CE(\r_reg_array_reg[10][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [4]),
        .Q(\r_reg_array_reg[10]_7 [4]));
  FDCE \r_reg_array_reg[10][5] 
       (.C(aclk),
        .CE(\r_reg_array_reg[10][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [5]),
        .Q(\r_reg_array_reg[10]_7 [5]));
  FDCE \r_reg_array_reg[10][6] 
       (.C(aclk),
        .CE(\r_reg_array_reg[10][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [6]),
        .Q(\r_reg_array_reg[10]_7 [6]));
  FDCE \r_reg_array_reg[10][7] 
       (.C(aclk),
        .CE(\r_reg_array_reg[10][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [7]),
        .Q(\r_reg_array_reg[10]_7 [7]));
  FDCE \r_reg_array_reg[11][0] 
       (.C(aclk),
        .CE(\r_reg_array_reg[11][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [0]),
        .Q(\r_reg_array_reg[11]_6 [0]));
  FDCE \r_reg_array_reg[11][1] 
       (.C(aclk),
        .CE(\r_reg_array_reg[11][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [1]),
        .Q(\r_reg_array_reg[11]_6 [1]));
  FDCE \r_reg_array_reg[11][2] 
       (.C(aclk),
        .CE(\r_reg_array_reg[11][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [2]),
        .Q(\r_reg_array_reg[11]_6 [2]));
  FDCE \r_reg_array_reg[11][3] 
       (.C(aclk),
        .CE(\r_reg_array_reg[11][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [3]),
        .Q(\r_reg_array_reg[11]_6 [3]));
  FDCE \r_reg_array_reg[11][4] 
       (.C(aclk),
        .CE(\r_reg_array_reg[11][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [4]),
        .Q(\r_reg_array_reg[11]_6 [4]));
  FDCE \r_reg_array_reg[11][5] 
       (.C(aclk),
        .CE(\r_reg_array_reg[11][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [5]),
        .Q(\r_reg_array_reg[11]_6 [5]));
  FDCE \r_reg_array_reg[11][6] 
       (.C(aclk),
        .CE(\r_reg_array_reg[11][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [6]),
        .Q(\r_reg_array_reg[11]_6 [6]));
  FDCE \r_reg_array_reg[11][7] 
       (.C(aclk),
        .CE(\r_reg_array_reg[11][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [7]),
        .Q(\r_reg_array_reg[11]_6 [7]));
  FDCE \r_reg_array_reg[12][0] 
       (.C(aclk),
        .CE(\r_reg_array_reg[12][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [0]),
        .Q(\r_reg_array_reg[12]_5 [0]));
  FDCE \r_reg_array_reg[12][1] 
       (.C(aclk),
        .CE(\r_reg_array_reg[12][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [1]),
        .Q(\r_reg_array_reg[12]_5 [1]));
  FDCE \r_reg_array_reg[12][2] 
       (.C(aclk),
        .CE(\r_reg_array_reg[12][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [2]),
        .Q(\r_reg_array_reg[12]_5 [2]));
  FDCE \r_reg_array_reg[12][3] 
       (.C(aclk),
        .CE(\r_reg_array_reg[12][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [3]),
        .Q(\r_reg_array_reg[12]_5 [3]));
  FDCE \r_reg_array_reg[12][4] 
       (.C(aclk),
        .CE(\r_reg_array_reg[12][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [4]),
        .Q(\r_reg_array_reg[12]_5 [4]));
  FDCE \r_reg_array_reg[12][5] 
       (.C(aclk),
        .CE(\r_reg_array_reg[12][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [5]),
        .Q(\r_reg_array_reg[12]_5 [5]));
  FDCE \r_reg_array_reg[12][6] 
       (.C(aclk),
        .CE(\r_reg_array_reg[12][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [6]),
        .Q(\r_reg_array_reg[12]_5 [6]));
  FDCE \r_reg_array_reg[12][7] 
       (.C(aclk),
        .CE(\r_reg_array_reg[12][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [7]),
        .Q(\r_reg_array_reg[12]_5 [7]));
  FDCE \r_reg_array_reg[13][0] 
       (.C(aclk),
        .CE(\r_reg_array_reg[13][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [0]),
        .Q(\r_reg_array_reg[13]_4 [0]));
  FDCE \r_reg_array_reg[13][1] 
       (.C(aclk),
        .CE(\r_reg_array_reg[13][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [1]),
        .Q(\r_reg_array_reg[13]_4 [1]));
  FDCE \r_reg_array_reg[13][2] 
       (.C(aclk),
        .CE(\r_reg_array_reg[13][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [2]),
        .Q(\r_reg_array_reg[13]_4 [2]));
  FDCE \r_reg_array_reg[13][3] 
       (.C(aclk),
        .CE(\r_reg_array_reg[13][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [3]),
        .Q(\r_reg_array_reg[13]_4 [3]));
  FDCE \r_reg_array_reg[13][4] 
       (.C(aclk),
        .CE(\r_reg_array_reg[13][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [4]),
        .Q(\r_reg_array_reg[13]_4 [4]));
  FDCE \r_reg_array_reg[13][5] 
       (.C(aclk),
        .CE(\r_reg_array_reg[13][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [5]),
        .Q(\r_reg_array_reg[13]_4 [5]));
  FDCE \r_reg_array_reg[13][6] 
       (.C(aclk),
        .CE(\r_reg_array_reg[13][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [6]),
        .Q(\r_reg_array_reg[13]_4 [6]));
  FDCE \r_reg_array_reg[13][7] 
       (.C(aclk),
        .CE(\r_reg_array_reg[13][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [7]),
        .Q(\r_reg_array_reg[13]_4 [7]));
  FDCE \r_reg_array_reg[14][0] 
       (.C(aclk),
        .CE(\r_reg_array_reg[14][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [0]),
        .Q(\r_reg_array_reg[14]_3 [0]));
  FDCE \r_reg_array_reg[14][1] 
       (.C(aclk),
        .CE(\r_reg_array_reg[14][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [1]),
        .Q(\r_reg_array_reg[14]_3 [1]));
  FDCE \r_reg_array_reg[14][2] 
       (.C(aclk),
        .CE(\r_reg_array_reg[14][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [2]),
        .Q(\r_reg_array_reg[14]_3 [2]));
  FDCE \r_reg_array_reg[14][3] 
       (.C(aclk),
        .CE(\r_reg_array_reg[14][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [3]),
        .Q(\r_reg_array_reg[14]_3 [3]));
  FDCE \r_reg_array_reg[14][4] 
       (.C(aclk),
        .CE(\r_reg_array_reg[14][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [4]),
        .Q(\r_reg_array_reg[14]_3 [4]));
  FDCE \r_reg_array_reg[14][5] 
       (.C(aclk),
        .CE(\r_reg_array_reg[14][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [5]),
        .Q(\r_reg_array_reg[14]_3 [5]));
  FDCE \r_reg_array_reg[14][6] 
       (.C(aclk),
        .CE(\r_reg_array_reg[14][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [6]),
        .Q(\r_reg_array_reg[14]_3 [6]));
  FDCE \r_reg_array_reg[14][7] 
       (.C(aclk),
        .CE(\r_reg_array_reg[14][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [7]),
        .Q(\r_reg_array_reg[14]_3 [7]));
  FDCE \r_reg_array_reg[15][0] 
       (.C(aclk),
        .CE(E),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [0]),
        .Q(\r_reg_array_reg[15]_2 [0]));
  FDCE \r_reg_array_reg[15][1] 
       (.C(aclk),
        .CE(E),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [1]),
        .Q(\r_reg_array_reg[15]_2 [1]));
  FDCE \r_reg_array_reg[15][2] 
       (.C(aclk),
        .CE(E),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [2]),
        .Q(\r_reg_array_reg[15]_2 [2]));
  FDCE \r_reg_array_reg[15][3] 
       (.C(aclk),
        .CE(E),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [3]),
        .Q(\r_reg_array_reg[15]_2 [3]));
  FDCE \r_reg_array_reg[15][4] 
       (.C(aclk),
        .CE(E),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [4]),
        .Q(\r_reg_array_reg[15]_2 [4]));
  FDCE \r_reg_array_reg[15][5] 
       (.C(aclk),
        .CE(E),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [5]),
        .Q(\r_reg_array_reg[15]_2 [5]));
  FDCE \r_reg_array_reg[15][6] 
       (.C(aclk),
        .CE(E),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [6]),
        .Q(\r_reg_array_reg[15]_2 [6]));
  FDCE \r_reg_array_reg[15][7] 
       (.C(aclk),
        .CE(E),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [7]),
        .Q(\r_reg_array_reg[15]_2 [7]));
  FDCE \r_reg_array_reg[1][0] 
       (.C(aclk),
        .CE(\r_reg_array_reg[1][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [0]),
        .Q(\r_reg_array_reg[1]_16 [0]));
  FDCE \r_reg_array_reg[1][1] 
       (.C(aclk),
        .CE(\r_reg_array_reg[1][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [1]),
        .Q(\r_reg_array_reg[1]_16 [1]));
  FDCE \r_reg_array_reg[1][2] 
       (.C(aclk),
        .CE(\r_reg_array_reg[1][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [2]),
        .Q(\r_reg_array_reg[1]_16 [2]));
  FDCE \r_reg_array_reg[1][3] 
       (.C(aclk),
        .CE(\r_reg_array_reg[1][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [3]),
        .Q(\r_reg_array_reg[1]_16 [3]));
  FDCE \r_reg_array_reg[1][4] 
       (.C(aclk),
        .CE(\r_reg_array_reg[1][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [4]),
        .Q(\r_reg_array_reg[1]_16 [4]));
  FDCE \r_reg_array_reg[1][5] 
       (.C(aclk),
        .CE(\r_reg_array_reg[1][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [5]),
        .Q(\r_reg_array_reg[1]_16 [5]));
  FDCE \r_reg_array_reg[1][6] 
       (.C(aclk),
        .CE(\r_reg_array_reg[1][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [6]),
        .Q(\r_reg_array_reg[1]_16 [6]));
  FDCE \r_reg_array_reg[1][7] 
       (.C(aclk),
        .CE(\r_reg_array_reg[1][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [7]),
        .Q(\r_reg_array_reg[1]_16 [7]));
  FDCE \r_reg_array_reg[2][0] 
       (.C(aclk),
        .CE(\r_reg_array_reg[2][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [0]),
        .Q(\r_reg_array_reg[2]_15 [0]));
  FDCE \r_reg_array_reg[2][1] 
       (.C(aclk),
        .CE(\r_reg_array_reg[2][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [1]),
        .Q(\r_reg_array_reg[2]_15 [1]));
  FDCE \r_reg_array_reg[2][2] 
       (.C(aclk),
        .CE(\r_reg_array_reg[2][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [2]),
        .Q(\r_reg_array_reg[2]_15 [2]));
  FDCE \r_reg_array_reg[2][3] 
       (.C(aclk),
        .CE(\r_reg_array_reg[2][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [3]),
        .Q(\r_reg_array_reg[2]_15 [3]));
  FDCE \r_reg_array_reg[2][4] 
       (.C(aclk),
        .CE(\r_reg_array_reg[2][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [4]),
        .Q(\r_reg_array_reg[2]_15 [4]));
  FDCE \r_reg_array_reg[2][5] 
       (.C(aclk),
        .CE(\r_reg_array_reg[2][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [5]),
        .Q(\r_reg_array_reg[2]_15 [5]));
  FDCE \r_reg_array_reg[2][6] 
       (.C(aclk),
        .CE(\r_reg_array_reg[2][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [6]),
        .Q(\r_reg_array_reg[2]_15 [6]));
  FDCE \r_reg_array_reg[2][7] 
       (.C(aclk),
        .CE(\r_reg_array_reg[2][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [7]),
        .Q(\r_reg_array_reg[2]_15 [7]));
  FDCE \r_reg_array_reg[3][0] 
       (.C(aclk),
        .CE(\r_reg_array_reg[3][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [0]),
        .Q(\r_reg_array_reg[3]_14 [0]));
  FDCE \r_reg_array_reg[3][1] 
       (.C(aclk),
        .CE(\r_reg_array_reg[3][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [1]),
        .Q(\r_reg_array_reg[3]_14 [1]));
  FDCE \r_reg_array_reg[3][2] 
       (.C(aclk),
        .CE(\r_reg_array_reg[3][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [2]),
        .Q(\r_reg_array_reg[3]_14 [2]));
  FDCE \r_reg_array_reg[3][3] 
       (.C(aclk),
        .CE(\r_reg_array_reg[3][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [3]),
        .Q(\r_reg_array_reg[3]_14 [3]));
  FDCE \r_reg_array_reg[3][4] 
       (.C(aclk),
        .CE(\r_reg_array_reg[3][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [4]),
        .Q(\r_reg_array_reg[3]_14 [4]));
  FDCE \r_reg_array_reg[3][5] 
       (.C(aclk),
        .CE(\r_reg_array_reg[3][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [5]),
        .Q(\r_reg_array_reg[3]_14 [5]));
  FDCE \r_reg_array_reg[3][6] 
       (.C(aclk),
        .CE(\r_reg_array_reg[3][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [6]),
        .Q(\r_reg_array_reg[3]_14 [6]));
  FDCE \r_reg_array_reg[3][7] 
       (.C(aclk),
        .CE(\r_reg_array_reg[3][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [7]),
        .Q(\r_reg_array_reg[3]_14 [7]));
  FDCE \r_reg_array_reg[4][0] 
       (.C(aclk),
        .CE(\r_reg_array_reg[4][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [0]),
        .Q(\r_reg_array_reg[4]_13 [0]));
  FDCE \r_reg_array_reg[4][1] 
       (.C(aclk),
        .CE(\r_reg_array_reg[4][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [1]),
        .Q(\r_reg_array_reg[4]_13 [1]));
  FDCE \r_reg_array_reg[4][2] 
       (.C(aclk),
        .CE(\r_reg_array_reg[4][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [2]),
        .Q(\r_reg_array_reg[4]_13 [2]));
  FDCE \r_reg_array_reg[4][3] 
       (.C(aclk),
        .CE(\r_reg_array_reg[4][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [3]),
        .Q(\r_reg_array_reg[4]_13 [3]));
  FDCE \r_reg_array_reg[4][4] 
       (.C(aclk),
        .CE(\r_reg_array_reg[4][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [4]),
        .Q(\r_reg_array_reg[4]_13 [4]));
  FDCE \r_reg_array_reg[4][5] 
       (.C(aclk),
        .CE(\r_reg_array_reg[4][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [5]),
        .Q(\r_reg_array_reg[4]_13 [5]));
  FDCE \r_reg_array_reg[4][6] 
       (.C(aclk),
        .CE(\r_reg_array_reg[4][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [6]),
        .Q(\r_reg_array_reg[4]_13 [6]));
  FDCE \r_reg_array_reg[4][7] 
       (.C(aclk),
        .CE(\r_reg_array_reg[4][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [7]),
        .Q(\r_reg_array_reg[4]_13 [7]));
  FDCE \r_reg_array_reg[5][0] 
       (.C(aclk),
        .CE(\r_reg_array_reg[5][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [0]),
        .Q(\r_reg_array_reg[5]_12 [0]));
  FDCE \r_reg_array_reg[5][1] 
       (.C(aclk),
        .CE(\r_reg_array_reg[5][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [1]),
        .Q(\r_reg_array_reg[5]_12 [1]));
  FDCE \r_reg_array_reg[5][2] 
       (.C(aclk),
        .CE(\r_reg_array_reg[5][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [2]),
        .Q(\r_reg_array_reg[5]_12 [2]));
  FDCE \r_reg_array_reg[5][3] 
       (.C(aclk),
        .CE(\r_reg_array_reg[5][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [3]),
        .Q(\r_reg_array_reg[5]_12 [3]));
  FDCE \r_reg_array_reg[5][4] 
       (.C(aclk),
        .CE(\r_reg_array_reg[5][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [4]),
        .Q(\r_reg_array_reg[5]_12 [4]));
  FDCE \r_reg_array_reg[5][5] 
       (.C(aclk),
        .CE(\r_reg_array_reg[5][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [5]),
        .Q(\r_reg_array_reg[5]_12 [5]));
  FDCE \r_reg_array_reg[5][6] 
       (.C(aclk),
        .CE(\r_reg_array_reg[5][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [6]),
        .Q(\r_reg_array_reg[5]_12 [6]));
  FDCE \r_reg_array_reg[5][7] 
       (.C(aclk),
        .CE(\r_reg_array_reg[5][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [7]),
        .Q(\r_reg_array_reg[5]_12 [7]));
  FDCE \r_reg_array_reg[6][0] 
       (.C(aclk),
        .CE(\r_reg_array_reg[6][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [0]),
        .Q(\r_reg_array_reg[6]_11 [0]));
  FDCE \r_reg_array_reg[6][1] 
       (.C(aclk),
        .CE(\r_reg_array_reg[6][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [1]),
        .Q(\r_reg_array_reg[6]_11 [1]));
  FDCE \r_reg_array_reg[6][2] 
       (.C(aclk),
        .CE(\r_reg_array_reg[6][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [2]),
        .Q(\r_reg_array_reg[6]_11 [2]));
  FDCE \r_reg_array_reg[6][3] 
       (.C(aclk),
        .CE(\r_reg_array_reg[6][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [3]),
        .Q(\r_reg_array_reg[6]_11 [3]));
  FDCE \r_reg_array_reg[6][4] 
       (.C(aclk),
        .CE(\r_reg_array_reg[6][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [4]),
        .Q(\r_reg_array_reg[6]_11 [4]));
  FDCE \r_reg_array_reg[6][5] 
       (.C(aclk),
        .CE(\r_reg_array_reg[6][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [5]),
        .Q(\r_reg_array_reg[6]_11 [5]));
  FDCE \r_reg_array_reg[6][6] 
       (.C(aclk),
        .CE(\r_reg_array_reg[6][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [6]),
        .Q(\r_reg_array_reg[6]_11 [6]));
  FDCE \r_reg_array_reg[6][7] 
       (.C(aclk),
        .CE(\r_reg_array_reg[6][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [7]),
        .Q(\r_reg_array_reg[6]_11 [7]));
  FDCE \r_reg_array_reg[7][0] 
       (.C(aclk),
        .CE(\r_reg_array_reg[7][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [0]),
        .Q(\r_reg_array_reg[7]_10 [0]));
  FDCE \r_reg_array_reg[7][1] 
       (.C(aclk),
        .CE(\r_reg_array_reg[7][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [1]),
        .Q(\r_reg_array_reg[7]_10 [1]));
  FDCE \r_reg_array_reg[7][2] 
       (.C(aclk),
        .CE(\r_reg_array_reg[7][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [2]),
        .Q(\r_reg_array_reg[7]_10 [2]));
  FDCE \r_reg_array_reg[7][3] 
       (.C(aclk),
        .CE(\r_reg_array_reg[7][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [3]),
        .Q(\r_reg_array_reg[7]_10 [3]));
  FDCE \r_reg_array_reg[7][4] 
       (.C(aclk),
        .CE(\r_reg_array_reg[7][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [4]),
        .Q(\r_reg_array_reg[7]_10 [4]));
  FDCE \r_reg_array_reg[7][5] 
       (.C(aclk),
        .CE(\r_reg_array_reg[7][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [5]),
        .Q(\r_reg_array_reg[7]_10 [5]));
  FDCE \r_reg_array_reg[7][6] 
       (.C(aclk),
        .CE(\r_reg_array_reg[7][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [6]),
        .Q(\r_reg_array_reg[7]_10 [6]));
  FDCE \r_reg_array_reg[7][7] 
       (.C(aclk),
        .CE(\r_reg_array_reg[7][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [7]),
        .Q(\r_reg_array_reg[7]_10 [7]));
  FDCE \r_reg_array_reg[8][0] 
       (.C(aclk),
        .CE(\r_reg_array_reg[8][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [0]),
        .Q(\r_reg_array_reg[8]_9 [0]));
  FDCE \r_reg_array_reg[8][1] 
       (.C(aclk),
        .CE(\r_reg_array_reg[8][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [1]),
        .Q(\r_reg_array_reg[8]_9 [1]));
  FDCE \r_reg_array_reg[8][2] 
       (.C(aclk),
        .CE(\r_reg_array_reg[8][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [2]),
        .Q(\r_reg_array_reg[8]_9 [2]));
  FDCE \r_reg_array_reg[8][3] 
       (.C(aclk),
        .CE(\r_reg_array_reg[8][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [3]),
        .Q(\r_reg_array_reg[8]_9 [3]));
  FDCE \r_reg_array_reg[8][4] 
       (.C(aclk),
        .CE(\r_reg_array_reg[8][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [4]),
        .Q(\r_reg_array_reg[8]_9 [4]));
  FDCE \r_reg_array_reg[8][5] 
       (.C(aclk),
        .CE(\r_reg_array_reg[8][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [5]),
        .Q(\r_reg_array_reg[8]_9 [5]));
  FDCE \r_reg_array_reg[8][6] 
       (.C(aclk),
        .CE(\r_reg_array_reg[8][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [6]),
        .Q(\r_reg_array_reg[8]_9 [6]));
  FDCE \r_reg_array_reg[8][7] 
       (.C(aclk),
        .CE(\r_reg_array_reg[8][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [7]),
        .Q(\r_reg_array_reg[8]_9 [7]));
  FDCE \r_reg_array_reg[9][0] 
       (.C(aclk),
        .CE(\r_reg_array_reg[9][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [0]),
        .Q(\r_reg_array_reg[9]_8 [0]));
  FDCE \r_reg_array_reg[9][1] 
       (.C(aclk),
        .CE(\r_reg_array_reg[9][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [1]),
        .Q(\r_reg_array_reg[9]_8 [1]));
  FDCE \r_reg_array_reg[9][2] 
       (.C(aclk),
        .CE(\r_reg_array_reg[9][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [2]),
        .Q(\r_reg_array_reg[9]_8 [2]));
  FDCE \r_reg_array_reg[9][3] 
       (.C(aclk),
        .CE(\r_reg_array_reg[9][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [3]),
        .Q(\r_reg_array_reg[9]_8 [3]));
  FDCE \r_reg_array_reg[9][4] 
       (.C(aclk),
        .CE(\r_reg_array_reg[9][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [4]),
        .Q(\r_reg_array_reg[9]_8 [4]));
  FDCE \r_reg_array_reg[9][5] 
       (.C(aclk),
        .CE(\r_reg_array_reg[9][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [5]),
        .Q(\r_reg_array_reg[9]_8 [5]));
  FDCE \r_reg_array_reg[9][6] 
       (.C(aclk),
        .CE(\r_reg_array_reg[9][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [6]),
        .Q(\r_reg_array_reg[9]_8 [6]));
  FDCE \r_reg_array_reg[9][7] 
       (.C(aclk),
        .CE(\r_reg_array_reg[9][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [7]),
        .Q(\r_reg_array_reg[9]_8 [7]));
  LUT5 #(
    .INIT(32'hBBBAAABA)) 
    \rd_data[0]_i_1__0 
       (.I0(\rd_data_reg[0] ),
        .I1(\rd_data_reg[7] ),
        .I2(\rd_data_reg[0]_i_3_n_0 ),
        .I3(\rd_data_reg[0]_0 [3]),
        .I4(\rd_data_reg[0]_i_4_n_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[0]_i_5 
       (.I0(\r_reg_array_reg[3]_14 [0]),
        .I1(\r_reg_array_reg[2]_15 [0]),
        .I2(\rd_data_reg[0]_0 [1]),
        .I3(\r_reg_array_reg[1]_16 [0]),
        .I4(\rd_data_reg[0]_0 [0]),
        .I5(\r_reg_array_reg[0]_17 [0]),
        .O(\rd_data[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[0]_i_6 
       (.I0(\r_reg_array_reg[7]_10 [0]),
        .I1(\r_reg_array_reg[6]_11 [0]),
        .I2(\rd_data_reg[0]_0 [1]),
        .I3(\r_reg_array_reg[5]_12 [0]),
        .I4(\rd_data_reg[0]_0 [0]),
        .I5(\r_reg_array_reg[4]_13 [0]),
        .O(\rd_data[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[0]_i_7 
       (.I0(\r_reg_array_reg[11]_6 [0]),
        .I1(\r_reg_array_reg[10]_7 [0]),
        .I2(\rd_data_reg[0]_0 [1]),
        .I3(\r_reg_array_reg[9]_8 [0]),
        .I4(\rd_data_reg[0]_0 [0]),
        .I5(\r_reg_array_reg[8]_9 [0]),
        .O(\rd_data[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[0]_i_8 
       (.I0(\r_reg_array_reg[15]_2 [0]),
        .I1(\r_reg_array_reg[14]_3 [0]),
        .I2(\rd_data_reg[0]_0 [1]),
        .I3(\r_reg_array_reg[13]_4 [0]),
        .I4(\rd_data_reg[0]_0 [0]),
        .I5(\r_reg_array_reg[12]_5 [0]),
        .O(\rd_data[0]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hBBBAAABA)) 
    \rd_data[1]_i_1 
       (.I0(\rd_data_reg[1] ),
        .I1(\rd_data_reg[7] ),
        .I2(\rd_data_reg[1]_i_3_n_0 ),
        .I3(\rd_data_reg[0]_0 [3]),
        .I4(\rd_data_reg[1]_i_4_n_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[1]_i_5 
       (.I0(\r_reg_array_reg[3]_14 [1]),
        .I1(\r_reg_array_reg[2]_15 [1]),
        .I2(\rd_data_reg[0]_0 [1]),
        .I3(\r_reg_array_reg[1]_16 [1]),
        .I4(\rd_data_reg[0]_0 [0]),
        .I5(\r_reg_array_reg[0]_17 [1]),
        .O(\rd_data[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[1]_i_6 
       (.I0(\r_reg_array_reg[7]_10 [1]),
        .I1(\r_reg_array_reg[6]_11 [1]),
        .I2(\rd_data_reg[0]_0 [1]),
        .I3(\r_reg_array_reg[5]_12 [1]),
        .I4(\rd_data_reg[0]_0 [0]),
        .I5(\r_reg_array_reg[4]_13 [1]),
        .O(\rd_data[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[1]_i_7 
       (.I0(\r_reg_array_reg[11]_6 [1]),
        .I1(\r_reg_array_reg[10]_7 [1]),
        .I2(\rd_data_reg[0]_0 [1]),
        .I3(\r_reg_array_reg[9]_8 [1]),
        .I4(\rd_data_reg[0]_0 [0]),
        .I5(\r_reg_array_reg[8]_9 [1]),
        .O(\rd_data[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[1]_i_8 
       (.I0(\r_reg_array_reg[15]_2 [1]),
        .I1(\r_reg_array_reg[14]_3 [1]),
        .I2(\rd_data_reg[0]_0 [1]),
        .I3(\r_reg_array_reg[13]_4 [1]),
        .I4(\rd_data_reg[0]_0 [0]),
        .I5(\r_reg_array_reg[12]_5 [1]),
        .O(\rd_data[1]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00000000B8FFB800)) 
    \rd_data[2]_i_2 
       (.I0(\rd_data[2]_i_3_n_0 ),
        .I1(\rd_data_reg[0]_0 [2]),
        .I2(\rd_data[2]_i_4_n_0 ),
        .I3(\rd_data_reg[0]_0 [3]),
        .I4(\rd_data_reg[2]_i_5_n_0 ),
        .I5(\rd_data_reg[7] ),
        .O(\r_rd_logic_reg[2] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[2]_i_3 
       (.I0(\r_reg_array_reg[15]_2 [2]),
        .I1(\r_reg_array_reg[14]_3 [2]),
        .I2(\rd_data_reg[0]_0 [1]),
        .I3(\r_reg_array_reg[13]_4 [2]),
        .I4(\rd_data_reg[0]_0 [0]),
        .I5(\r_reg_array_reg[12]_5 [2]),
        .O(\rd_data[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[2]_i_4 
       (.I0(\r_reg_array_reg[11]_6 [2]),
        .I1(\r_reg_array_reg[10]_7 [2]),
        .I2(\rd_data_reg[0]_0 [1]),
        .I3(\r_reg_array_reg[9]_8 [2]),
        .I4(\rd_data_reg[0]_0 [0]),
        .I5(\r_reg_array_reg[8]_9 [2]),
        .O(\rd_data[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[2]_i_6 
       (.I0(\r_reg_array_reg[3]_14 [2]),
        .I1(\r_reg_array_reg[2]_15 [2]),
        .I2(\rd_data_reg[0]_0 [1]),
        .I3(\r_reg_array_reg[1]_16 [2]),
        .I4(\rd_data_reg[0]_0 [0]),
        .I5(\r_reg_array_reg[0]_17 [2]),
        .O(\rd_data[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[2]_i_7 
       (.I0(\r_reg_array_reg[7]_10 [2]),
        .I1(\r_reg_array_reg[6]_11 [2]),
        .I2(\rd_data_reg[0]_0 [1]),
        .I3(\r_reg_array_reg[5]_12 [2]),
        .I4(\rd_data_reg[0]_0 [0]),
        .I5(\r_reg_array_reg[4]_13 [2]),
        .O(\rd_data[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00000000ACFFAC00)) 
    \rd_data[3]_i_2 
       (.I0(\rd_data[3]_i_3_n_0 ),
        .I1(\rd_data[3]_i_4_n_0 ),
        .I2(\rd_data_reg[0]_0 [2]),
        .I3(\rd_data_reg[0]_0 [3]),
        .I4(\rd_data_reg[3]_i_5_n_0 ),
        .I5(\rd_data_reg[7] ),
        .O(\r_rd_logic_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[3]_i_3 
       (.I0(\r_reg_array_reg[15]_2 [3]),
        .I1(\r_reg_array_reg[14]_3 [3]),
        .I2(\rd_data_reg[0]_0 [1]),
        .I3(\r_reg_array_reg[13]_4 [3]),
        .I4(\rd_data_reg[0]_0 [0]),
        .I5(\r_reg_array_reg[12]_5 [3]),
        .O(\rd_data[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[3]_i_4 
       (.I0(\r_reg_array_reg[11]_6 [3]),
        .I1(\r_reg_array_reg[10]_7 [3]),
        .I2(\rd_data_reg[0]_0 [1]),
        .I3(\r_reg_array_reg[9]_8 [3]),
        .I4(\rd_data_reg[0]_0 [0]),
        .I5(\r_reg_array_reg[8]_9 [3]),
        .O(\rd_data[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[3]_i_6 
       (.I0(\r_reg_array_reg[3]_14 [3]),
        .I1(\r_reg_array_reg[2]_15 [3]),
        .I2(\rd_data_reg[0]_0 [1]),
        .I3(\r_reg_array_reg[1]_16 [3]),
        .I4(\rd_data_reg[0]_0 [0]),
        .I5(\r_reg_array_reg[0]_17 [3]),
        .O(\rd_data[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[3]_i_7 
       (.I0(\r_reg_array_reg[7]_10 [3]),
        .I1(\r_reg_array_reg[6]_11 [3]),
        .I2(\rd_data_reg[0]_0 [1]),
        .I3(\r_reg_array_reg[5]_12 [3]),
        .I4(\rd_data_reg[0]_0 [0]),
        .I5(\r_reg_array_reg[4]_13 [3]),
        .O(\rd_data[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00000000D8FFD800)) 
    \rd_data[4]_i_1 
       (.I0(\rd_data_reg[0]_0 [2]),
        .I1(\rd_data[4]_i_2_n_0 ),
        .I2(\rd_data[4]_i_3_n_0 ),
        .I3(\rd_data_reg[0]_0 [3]),
        .I4(\rd_data_reg[4]_i_4_n_0 ),
        .I5(\rd_data_reg[7] ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[4]_i_2 
       (.I0(\r_reg_array_reg[15]_2 [4]),
        .I1(\r_reg_array_reg[14]_3 [4]),
        .I2(\rd_data_reg[0]_0 [1]),
        .I3(\r_reg_array_reg[13]_4 [4]),
        .I4(\rd_data_reg[0]_0 [0]),
        .I5(\r_reg_array_reg[12]_5 [4]),
        .O(\rd_data[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[4]_i_3 
       (.I0(\r_reg_array_reg[11]_6 [4]),
        .I1(\r_reg_array_reg[10]_7 [4]),
        .I2(\rd_data_reg[0]_0 [1]),
        .I3(\r_reg_array_reg[9]_8 [4]),
        .I4(\rd_data_reg[0]_0 [0]),
        .I5(\r_reg_array_reg[8]_9 [4]),
        .O(\rd_data[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[4]_i_5 
       (.I0(\r_reg_array_reg[3]_14 [4]),
        .I1(\r_reg_array_reg[2]_15 [4]),
        .I2(\rd_data_reg[0]_0 [1]),
        .I3(\r_reg_array_reg[1]_16 [4]),
        .I4(\rd_data_reg[0]_0 [0]),
        .I5(\r_reg_array_reg[0]_17 [4]),
        .O(\rd_data[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[4]_i_6 
       (.I0(\r_reg_array_reg[7]_10 [4]),
        .I1(\r_reg_array_reg[6]_11 [4]),
        .I2(\rd_data_reg[0]_0 [1]),
        .I3(\r_reg_array_reg[5]_12 [4]),
        .I4(\rd_data_reg[0]_0 [0]),
        .I5(\r_reg_array_reg[4]_13 [4]),
        .O(\rd_data[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h4F4F4F4444444F44)) 
    \rd_data[5]_i_1 
       (.I0(\rd_data_reg[5] ),
        .I1(r_status),
        .I2(\rd_data_reg[7] ),
        .I3(\rd_data_reg[5]_i_3_n_0 ),
        .I4(\rd_data_reg[0]_0 [3]),
        .I5(\rd_data_reg[5]_i_4_n_0 ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[5]_i_5 
       (.I0(\r_reg_array_reg[3]_14 [5]),
        .I1(\r_reg_array_reg[2]_15 [5]),
        .I2(\rd_data_reg[0]_0 [1]),
        .I3(\r_reg_array_reg[1]_16 [5]),
        .I4(\rd_data_reg[0]_0 [0]),
        .I5(\r_reg_array_reg[0]_17 [5]),
        .O(\rd_data[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[5]_i_6 
       (.I0(\r_reg_array_reg[7]_10 [5]),
        .I1(\r_reg_array_reg[6]_11 [5]),
        .I2(\rd_data_reg[0]_0 [1]),
        .I3(\r_reg_array_reg[5]_12 [5]),
        .I4(\rd_data_reg[0]_0 [0]),
        .I5(\r_reg_array_reg[4]_13 [5]),
        .O(\rd_data[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[5]_i_7 
       (.I0(\r_reg_array_reg[11]_6 [5]),
        .I1(\r_reg_array_reg[10]_7 [5]),
        .I2(\rd_data_reg[0]_0 [1]),
        .I3(\r_reg_array_reg[9]_8 [5]),
        .I4(\rd_data_reg[0]_0 [0]),
        .I5(\r_reg_array_reg[8]_9 [5]),
        .O(\rd_data[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[5]_i_8 
       (.I0(\r_reg_array_reg[15]_2 [5]),
        .I1(\r_reg_array_reg[14]_3 [5]),
        .I2(\rd_data_reg[0]_0 [1]),
        .I3(\r_reg_array_reg[13]_4 [5]),
        .I4(\rd_data_reg[0]_0 [0]),
        .I5(\r_reg_array_reg[12]_5 [5]),
        .O(\rd_data[5]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00000000B8FFB800)) 
    \rd_data[6]_i_1 
       (.I0(\rd_data[6]_i_2_n_0 ),
        .I1(\rd_data_reg[0]_0 [2]),
        .I2(\rd_data[6]_i_3_n_0 ),
        .I3(\rd_data_reg[0]_0 [3]),
        .I4(\rd_data_reg[6]_i_4_n_0 ),
        .I5(\rd_data_reg[7] ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[6]_i_2 
       (.I0(\r_reg_array_reg[15]_2 [6]),
        .I1(\r_reg_array_reg[14]_3 [6]),
        .I2(\rd_data_reg[0]_0 [1]),
        .I3(\r_reg_array_reg[13]_4 [6]),
        .I4(\rd_data_reg[0]_0 [0]),
        .I5(\r_reg_array_reg[12]_5 [6]),
        .O(\rd_data[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[6]_i_3 
       (.I0(\r_reg_array_reg[11]_6 [6]),
        .I1(\r_reg_array_reg[10]_7 [6]),
        .I2(\rd_data_reg[0]_0 [1]),
        .I3(\r_reg_array_reg[9]_8 [6]),
        .I4(\rd_data_reg[0]_0 [0]),
        .I5(\r_reg_array_reg[8]_9 [6]),
        .O(\rd_data[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[6]_i_5 
       (.I0(\r_reg_array_reg[3]_14 [6]),
        .I1(\r_reg_array_reg[2]_15 [6]),
        .I2(\rd_data_reg[0]_0 [1]),
        .I3(\r_reg_array_reg[1]_16 [6]),
        .I4(\rd_data_reg[0]_0 [0]),
        .I5(\r_reg_array_reg[0]_17 [6]),
        .O(\rd_data[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[6]_i_6 
       (.I0(\r_reg_array_reg[7]_10 [6]),
        .I1(\r_reg_array_reg[6]_11 [6]),
        .I2(\rd_data_reg[0]_0 [1]),
        .I3(\r_reg_array_reg[5]_12 [6]),
        .I4(\rd_data_reg[0]_0 [0]),
        .I5(\r_reg_array_reg[4]_13 [6]),
        .O(\rd_data[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000000B8FFB800)) 
    \rd_data[7]_i_1 
       (.I0(\rd_data[7]_i_2_n_0 ),
        .I1(\rd_data_reg[0]_0 [2]),
        .I2(\rd_data[7]_i_3_n_0 ),
        .I3(\rd_data_reg[0]_0 [3]),
        .I4(\rd_data_reg[7]_i_4_n_0 ),
        .I5(\rd_data_reg[7] ),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[7]_i_2 
       (.I0(\r_reg_array_reg[15]_2 [7]),
        .I1(\r_reg_array_reg[14]_3 [7]),
        .I2(\rd_data_reg[0]_0 [1]),
        .I3(\r_reg_array_reg[13]_4 [7]),
        .I4(\rd_data_reg[0]_0 [0]),
        .I5(\r_reg_array_reg[12]_5 [7]),
        .O(\rd_data[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[7]_i_3 
       (.I0(\r_reg_array_reg[11]_6 [7]),
        .I1(\r_reg_array_reg[10]_7 [7]),
        .I2(\rd_data_reg[0]_0 [1]),
        .I3(\r_reg_array_reg[9]_8 [7]),
        .I4(\rd_data_reg[0]_0 [0]),
        .I5(\r_reg_array_reg[8]_9 [7]),
        .O(\rd_data[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[7]_i_6 
       (.I0(\r_reg_array_reg[3]_14 [7]),
        .I1(\r_reg_array_reg[2]_15 [7]),
        .I2(\rd_data_reg[0]_0 [1]),
        .I3(\r_reg_array_reg[1]_16 [7]),
        .I4(\rd_data_reg[0]_0 [0]),
        .I5(\r_reg_array_reg[0]_17 [7]),
        .O(\rd_data[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[7]_i_7 
       (.I0(\r_reg_array_reg[7]_10 [7]),
        .I1(\r_reg_array_reg[6]_11 [7]),
        .I2(\rd_data_reg[0]_0 [1]),
        .I3(\r_reg_array_reg[5]_12 [7]),
        .I4(\rd_data_reg[0]_0 [0]),
        .I5(\r_reg_array_reg[4]_13 [7]),
        .O(\rd_data[7]_i_7_n_0 ));
  MUXF7 \rd_data_reg[0]_i_3 
       (.I0(\rd_data[0]_i_5_n_0 ),
        .I1(\rd_data[0]_i_6_n_0 ),
        .O(\rd_data_reg[0]_i_3_n_0 ),
        .S(\rd_data_reg[0]_0 [2]));
  MUXF7 \rd_data_reg[0]_i_4 
       (.I0(\rd_data[0]_i_7_n_0 ),
        .I1(\rd_data[0]_i_8_n_0 ),
        .O(\rd_data_reg[0]_i_4_n_0 ),
        .S(\rd_data_reg[0]_0 [2]));
  MUXF7 \rd_data_reg[1]_i_3 
       (.I0(\rd_data[1]_i_5_n_0 ),
        .I1(\rd_data[1]_i_6_n_0 ),
        .O(\rd_data_reg[1]_i_3_n_0 ),
        .S(\rd_data_reg[0]_0 [2]));
  MUXF7 \rd_data_reg[1]_i_4 
       (.I0(\rd_data[1]_i_7_n_0 ),
        .I1(\rd_data[1]_i_8_n_0 ),
        .O(\rd_data_reg[1]_i_4_n_0 ),
        .S(\rd_data_reg[0]_0 [2]));
  MUXF7 \rd_data_reg[2]_i_5 
       (.I0(\rd_data[2]_i_6_n_0 ),
        .I1(\rd_data[2]_i_7_n_0 ),
        .O(\rd_data_reg[2]_i_5_n_0 ),
        .S(\rd_data_reg[0]_0 [2]));
  MUXF7 \rd_data_reg[3]_i_5 
       (.I0(\rd_data[3]_i_6_n_0 ),
        .I1(\rd_data[3]_i_7_n_0 ),
        .O(\rd_data_reg[3]_i_5_n_0 ),
        .S(\rd_data_reg[0]_0 [2]));
  MUXF7 \rd_data_reg[4]_i_4 
       (.I0(\rd_data[4]_i_5_n_0 ),
        .I1(\rd_data[4]_i_6_n_0 ),
        .O(\rd_data_reg[4]_i_4_n_0 ),
        .S(\rd_data_reg[0]_0 [2]));
  MUXF7 \rd_data_reg[5]_i_3 
       (.I0(\rd_data[5]_i_5_n_0 ),
        .I1(\rd_data[5]_i_6_n_0 ),
        .O(\rd_data_reg[5]_i_3_n_0 ),
        .S(\rd_data_reg[0]_0 [2]));
  MUXF7 \rd_data_reg[5]_i_4 
       (.I0(\rd_data[5]_i_7_n_0 ),
        .I1(\rd_data[5]_i_8_n_0 ),
        .O(\rd_data_reg[5]_i_4_n_0 ),
        .S(\rd_data_reg[0]_0 [2]));
  MUXF7 \rd_data_reg[6]_i_4 
       (.I0(\rd_data[6]_i_5_n_0 ),
        .I1(\rd_data[6]_i_6_n_0 ),
        .O(\rd_data_reg[6]_i_4_n_0 ),
        .S(\rd_data_reg[0]_0 [2]));
  MUXF7 \rd_data_reg[7]_i_4 
       (.I0(\rd_data[7]_i_6_n_0 ),
        .I1(\rd_data[7]_i_7_n_0 ),
        .O(\rd_data_reg[7]_i_4_n_0 ),
        .S(\rd_data_reg[0]_0 [2]));
endmodule

(* ORIG_REF_NAME = "rx" *) 
module top_mmio_subsystem_0_0_rx
   (E,
    \FSM_sequential_r_state_reg[1]_0 ,
    \r_sampling_ticks_reg[0]_0 ,
    \FSM_sequential_r_state_reg[0]_0 ,
    \dout_reg[7]_0 ,
    Q,
    rx_full,
    \r_wr_logic_reg[3] ,
    \r_status_reg[5] ,
    \r_status_reg[5]_0 ,
    \r_status_reg[5]_1 ,
    CO,
    \r_sampling_ticks_reg[4]_0 ,
    rx,
    aclk,
    \r_data_bits_received_reg[0]_0 );
  output [0:0]E;
  output \FSM_sequential_r_state_reg[1]_0 ;
  output [0:0]\r_sampling_ticks_reg[0]_0 ;
  output \FSM_sequential_r_state_reg[0]_0 ;
  output [7:0]\dout_reg[7]_0 ;
  input [0:0]Q;
  input rx_full;
  input \r_wr_logic_reg[3] ;
  input \r_status_reg[5] ;
  input \r_status_reg[5]_0 ;
  input \r_status_reg[5]_1 ;
  input [0:0]CO;
  input \r_sampling_ticks_reg[4]_0 ;
  input rx;
  input aclk;
  input \r_data_bits_received_reg[0]_0 ;

  wire [0:0]CO;
  wire [0:0]E;
  wire \FSM_sequential_r_state[0]_i_1__0_n_0 ;
  wire \FSM_sequential_r_state[0]_i_2_n_0 ;
  wire \FSM_sequential_r_state[0]_i_3_n_0 ;
  wire \FSM_sequential_r_state[1]_i_2_n_0 ;
  wire \FSM_sequential_r_state_reg[0]_0 ;
  wire \FSM_sequential_r_state_reg[1]_0 ;
  wire [0:0]Q;
  wire aclk;
  wire [7:0]dout;
  wire [7:0]\dout_reg[7]_0 ;
  wire [3:0]r_data_bits_received;
  wire \r_data_bits_received[1]_i_1_n_0 ;
  wire \r_data_bits_received[2]_i_1_n_0 ;
  wire \r_data_bits_received[3]_i_1_n_0 ;
  wire \r_data_bits_received[3]_i_3_n_0 ;
  wire \r_data_bits_received_reg[0]_0 ;
  wire [4:1]r_sampling_ticks;
  wire \r_sampling_ticks[4]_i_2_n_0 ;
  wire [0:0]\r_sampling_ticks_reg[0]_0 ;
  wire \r_sampling_ticks_reg[4]_0 ;
  wire [1:0]r_state;
  wire \r_status_reg[5] ;
  wire \r_status_reg[5]_0 ;
  wire \r_status_reg[5]_1 ;
  wire \r_wr_logic_reg[3] ;
  wire rx;
  wire rx_full;
  wire [3:0]w_next_data_bits_received;
  wire [4:0]w_next_sampling_ticks;
  wire [1:1]w_next_state;
  wire [7:0]w_out_shift;

  LUT5 #(
    .INIT(32'h0000EE0E)) 
    \FSM_sequential_r_state[0]_i_1__0 
       (.I0(\FSM_sequential_r_state[0]_i_2_n_0 ),
        .I1(r_state[1]),
        .I2(\FSM_sequential_r_state[0]_i_3_n_0 ),
        .I3(r_state[0]),
        .I4(\FSM_sequential_r_state_reg[1]_0 ),
        .O(\FSM_sequential_r_state[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFBFFFFFFFF)) 
    \FSM_sequential_r_state[0]_i_2 
       (.I0(\r_sampling_ticks_reg[0]_0 ),
        .I1(r_state[0]),
        .I2(r_sampling_ticks[1]),
        .I3(r_sampling_ticks[2]),
        .I4(r_sampling_ticks[4]),
        .I5(r_sampling_ticks[3]),
        .O(\FSM_sequential_r_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFDFFFFFFFD0000)) 
    \FSM_sequential_r_state[0]_i_3 
       (.I0(r_data_bits_received[3]),
        .I1(r_data_bits_received[1]),
        .I2(r_data_bits_received[2]),
        .I3(r_data_bits_received[0]),
        .I4(r_state[1]),
        .I5(rx),
        .O(\FSM_sequential_r_state[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \FSM_sequential_r_state[0]_i_4 
       (.I0(r_state[1]),
        .I1(r_state[0]),
        .I2(\r_data_bits_received[3]_i_3_n_0 ),
        .O(\FSM_sequential_r_state_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h2AAAAABAAAAAAAAA)) 
    \FSM_sequential_r_state[1]_i_1 
       (.I0(r_state[1]),
        .I1(\r_sampling_ticks_reg[0]_0 ),
        .I2(r_state[0]),
        .I3(r_sampling_ticks[1]),
        .I4(r_sampling_ticks[2]),
        .I5(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .O(w_next_state));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_r_state[1]_i_2 
       (.I0(r_sampling_ticks[3]),
        .I1(r_sampling_ticks[4]),
        .O(\FSM_sequential_r_state[1]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "START:01,DATA:10,STOP:11,IDLE:00" *) 
  FDCE \FSM_sequential_r_state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r_data_bits_received_reg[0]_0 ),
        .D(\FSM_sequential_r_state[0]_i_1__0_n_0 ),
        .Q(r_state[0]));
  (* FSM_ENCODED_STATES = "START:01,DATA:10,STOP:11,IDLE:00" *) 
  FDCE \FSM_sequential_r_state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r_data_bits_received_reg[0]_0 ),
        .D(w_next_state),
        .Q(r_state[1]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \dout[0]_i_1 
       (.I0(r_state[1]),
        .I1(dout[1]),
        .O(w_out_shift[0]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \dout[1]_i_1 
       (.I0(r_state[1]),
        .I1(dout[2]),
        .O(w_out_shift[1]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \dout[2]_i_1 
       (.I0(r_state[1]),
        .I1(dout[3]),
        .O(w_out_shift[2]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \dout[3]_i_1 
       (.I0(r_state[1]),
        .I1(dout[4]),
        .O(w_out_shift[3]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \dout[4]_i_1 
       (.I0(r_state[1]),
        .I1(dout[5]),
        .O(w_out_shift[4]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \dout[5]_i_1 
       (.I0(r_state[1]),
        .I1(dout[6]),
        .O(w_out_shift[5]));
  LUT2 #(
    .INIT(4'h8)) 
    \dout[6]_i_1 
       (.I0(r_state[1]),
        .I1(dout[7]),
        .O(w_out_shift[6]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \dout[7]_i_1 
       (.I0(rx),
        .I1(r_state[1]),
        .O(w_out_shift[7]));
  FDCE \dout_reg[0] 
       (.C(aclk),
        .CE(\r_data_bits_received[3]_i_1_n_0 ),
        .CLR(\r_data_bits_received_reg[0]_0 ),
        .D(w_out_shift[0]),
        .Q(dout[0]));
  FDCE \dout_reg[1] 
       (.C(aclk),
        .CE(\r_data_bits_received[3]_i_1_n_0 ),
        .CLR(\r_data_bits_received_reg[0]_0 ),
        .D(w_out_shift[1]),
        .Q(dout[1]));
  FDCE \dout_reg[2] 
       (.C(aclk),
        .CE(\r_data_bits_received[3]_i_1_n_0 ),
        .CLR(\r_data_bits_received_reg[0]_0 ),
        .D(w_out_shift[2]),
        .Q(dout[2]));
  FDCE \dout_reg[3] 
       (.C(aclk),
        .CE(\r_data_bits_received[3]_i_1_n_0 ),
        .CLR(\r_data_bits_received_reg[0]_0 ),
        .D(w_out_shift[3]),
        .Q(dout[3]));
  FDCE \dout_reg[4] 
       (.C(aclk),
        .CE(\r_data_bits_received[3]_i_1_n_0 ),
        .CLR(\r_data_bits_received_reg[0]_0 ),
        .D(w_out_shift[4]),
        .Q(dout[4]));
  FDCE \dout_reg[5] 
       (.C(aclk),
        .CE(\r_data_bits_received[3]_i_1_n_0 ),
        .CLR(\r_data_bits_received_reg[0]_0 ),
        .D(w_out_shift[5]),
        .Q(dout[5]));
  FDCE \dout_reg[6] 
       (.C(aclk),
        .CE(\r_data_bits_received[3]_i_1_n_0 ),
        .CLR(\r_data_bits_received_reg[0]_0 ),
        .D(w_out_shift[6]),
        .Q(dout[6]));
  FDCE \dout_reg[7] 
       (.C(aclk),
        .CE(\r_data_bits_received[3]_i_1_n_0 ),
        .CLR(\r_data_bits_received_reg[0]_0 ),
        .D(w_out_shift[7]),
        .Q(dout[7]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r_data_bits_received[0]_i_1 
       (.I0(r_state[1]),
        .I1(r_data_bits_received[0]),
        .O(w_next_data_bits_received[0]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \r_data_bits_received[1]_i_1 
       (.I0(r_data_bits_received[1]),
        .I1(r_data_bits_received[0]),
        .I2(r_state[1]),
        .O(\r_data_bits_received[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h7800)) 
    \r_data_bits_received[2]_i_1 
       (.I0(r_data_bits_received[0]),
        .I1(r_data_bits_received[1]),
        .I2(r_data_bits_received[2]),
        .I3(r_state[1]),
        .O(\r_data_bits_received[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h15)) 
    \r_data_bits_received[3]_i_1 
       (.I0(r_state[0]),
        .I1(r_state[1]),
        .I2(\r_data_bits_received[3]_i_3_n_0 ),
        .O(\r_data_bits_received[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \r_data_bits_received[3]_i_2 
       (.I0(r_state[1]),
        .I1(r_data_bits_received[2]),
        .I2(r_data_bits_received[1]),
        .I3(r_data_bits_received[0]),
        .I4(r_data_bits_received[3]),
        .O(w_next_data_bits_received[3]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'hFF7FFFFF)) 
    \r_data_bits_received[3]_i_3 
       (.I0(r_sampling_ticks[1]),
        .I1(r_sampling_ticks[2]),
        .I2(\r_sampling_ticks_reg[0]_0 ),
        .I3(r_sampling_ticks[4]),
        .I4(r_sampling_ticks[3]),
        .O(\r_data_bits_received[3]_i_3_n_0 ));
  FDCE \r_data_bits_received_reg[0] 
       (.C(aclk),
        .CE(\r_data_bits_received[3]_i_1_n_0 ),
        .CLR(\r_data_bits_received_reg[0]_0 ),
        .D(w_next_data_bits_received[0]),
        .Q(r_data_bits_received[0]));
  FDCE \r_data_bits_received_reg[1] 
       (.C(aclk),
        .CE(\r_data_bits_received[3]_i_1_n_0 ),
        .CLR(\r_data_bits_received_reg[0]_0 ),
        .D(\r_data_bits_received[1]_i_1_n_0 ),
        .Q(r_data_bits_received[1]));
  FDCE \r_data_bits_received_reg[2] 
       (.C(aclk),
        .CE(\r_data_bits_received[3]_i_1_n_0 ),
        .CLR(\r_data_bits_received_reg[0]_0 ),
        .D(\r_data_bits_received[2]_i_1_n_0 ),
        .Q(r_data_bits_received[2]));
  FDCE \r_data_bits_received_reg[3] 
       (.C(aclk),
        .CE(\r_data_bits_received[3]_i_1_n_0 ),
        .CLR(\r_data_bits_received_reg[0]_0 ),
        .D(w_next_data_bits_received[3]),
        .Q(r_data_bits_received[3]));
  LUT2 #(
    .INIT(4'h2)) 
    \r_reg_array[15][0]_i_1 
       (.I0(dout[0]),
        .I1(Q),
        .O(\dout_reg[7]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r_reg_array[15][1]_i_1 
       (.I0(dout[1]),
        .I1(Q),
        .O(\dout_reg[7]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r_reg_array[15][2]_i_1 
       (.I0(dout[2]),
        .I1(Q),
        .O(\dout_reg[7]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r_reg_array[15][3]_i_1 
       (.I0(dout[3]),
        .I1(Q),
        .O(\dout_reg[7]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r_reg_array[15][4]_i_1 
       (.I0(dout[4]),
        .I1(Q),
        .O(\dout_reg[7]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r_reg_array[15][5]_i_1 
       (.I0(dout[5]),
        .I1(Q),
        .O(\dout_reg[7]_0 [5]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r_reg_array[15][6]_i_1 
       (.I0(dout[6]),
        .I1(Q),
        .O(\dout_reg[7]_0 [6]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r_reg_array[15][7]_i_2 
       (.I0(dout[7]),
        .I1(Q),
        .O(\dout_reg[7]_0 [7]));
  LUT3 #(
    .INIT(8'h28)) 
    \r_sampling_ticks[0]_i_1 
       (.I0(\r_sampling_ticks[4]_i_2_n_0 ),
        .I1(\r_sampling_ticks_reg[0]_0 ),
        .I2(CO),
        .O(w_next_sampling_ticks[0]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \r_sampling_ticks[1]_i_1 
       (.I0(\r_sampling_ticks[4]_i_2_n_0 ),
        .I1(CO),
        .I2(\r_sampling_ticks_reg[0]_0 ),
        .I3(r_sampling_ticks[1]),
        .O(w_next_sampling_ticks[1]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \r_sampling_ticks[2]_i_1 
       (.I0(\r_sampling_ticks[4]_i_2_n_0 ),
        .I1(r_sampling_ticks[1]),
        .I2(\r_sampling_ticks_reg[0]_0 ),
        .I3(CO),
        .I4(r_sampling_ticks[2]),
        .O(w_next_sampling_ticks[2]));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \r_sampling_ticks[3]_i_1 
       (.I0(\r_sampling_ticks[4]_i_2_n_0 ),
        .I1(r_sampling_ticks[2]),
        .I2(r_sampling_ticks[1]),
        .I3(\r_sampling_ticks_reg[0]_0 ),
        .I4(CO),
        .I5(r_sampling_ticks[3]),
        .O(w_next_sampling_ticks[3]));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \r_sampling_ticks[4]_i_1 
       (.I0(\r_sampling_ticks[4]_i_2_n_0 ),
        .I1(r_sampling_ticks[3]),
        .I2(\r_sampling_ticks_reg[4]_0 ),
        .I3(r_sampling_ticks[1]),
        .I4(r_sampling_ticks[2]),
        .I5(r_sampling_ticks[4]),
        .O(w_next_sampling_ticks[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFD7FFF0000)) 
    \r_sampling_ticks[4]_i_2 
       (.I0(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .I1(\r_sampling_ticks_reg[0]_0 ),
        .I2(r_sampling_ticks[2]),
        .I3(r_sampling_ticks[1]),
        .I4(r_state[1]),
        .I5(r_state[0]),
        .O(\r_sampling_ticks[4]_i_2_n_0 ));
  FDCE \r_sampling_ticks_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r_data_bits_received_reg[0]_0 ),
        .D(w_next_sampling_ticks[0]),
        .Q(\r_sampling_ticks_reg[0]_0 ));
  FDCE \r_sampling_ticks_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r_data_bits_received_reg[0]_0 ),
        .D(w_next_sampling_ticks[1]),
        .Q(r_sampling_ticks[1]));
  FDCE \r_sampling_ticks_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r_data_bits_received_reg[0]_0 ),
        .D(w_next_sampling_ticks[2]),
        .Q(r_sampling_ticks[2]));
  FDCE \r_sampling_ticks_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r_data_bits_received_reg[0]_0 ),
        .D(w_next_sampling_ticks[3]),
        .Q(r_sampling_ticks[3]));
  FDCE \r_sampling_ticks_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r_data_bits_received_reg[0]_0 ),
        .D(w_next_sampling_ticks[4]),
        .Q(r_sampling_ticks[4]));
  LUT6 #(
    .INIT(64'h0040000000400040)) 
    \r_status[5]_i_1 
       (.I0(r_state[0]),
        .I1(r_state[1]),
        .I2(rx_full),
        .I3(\r_status_reg[5] ),
        .I4(\r_status_reg[5]_0 ),
        .I5(\r_status_reg[5]_1 ),
        .O(\FSM_sequential_r_state_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'hAEEE)) 
    \r_wr_logic[3]_i_1__0 
       (.I0(Q),
        .I1(\FSM_sequential_r_state_reg[1]_0 ),
        .I2(rx_full),
        .I3(\r_wr_logic_reg[3] ),
        .O(E));
endmodule

(* ORIG_REF_NAME = "timer" *) 
module top_mmio_subsystem_0_0_timer
   (p_0_in1_in,
    p_0_in,
    slot_decode_error,
    slot_slave_error,
    debug_slot_wr_done,
    slot_rd_done,
    Q,
    r_eg,
    \FSM_onehot_r_state_reg[2]_0 ,
    \rd_data_reg[31]_0 ,
    w_slave_error__0,
    rd_done_reg_0,
    w_rd_done__0,
    \r_control_reg[1]_0 ,
    aclk,
    wr_done_reg_0,
    \r_control_reg[0]_0 ,
    w_wr_done,
    r_eg_reg_0,
    \FSM_onehot_r_state_reg[2]_1 ,
    decode_error_reg_0,
    S_AXI_rready,
    \rd_data_reg[0]_0 ,
    D,
    E,
    \rd_data_reg[15]_0 ,
    \r_auto_reload_reg[31]_0 ,
    \r_auto_reload_reg[31]_1 );
  output p_0_in1_in;
  output [0:0]p_0_in;
  output [0:0]slot_decode_error;
  output [0:0]slot_slave_error;
  output [0:0]debug_slot_wr_done;
  output [0:0]slot_rd_done;
  output [12:0]Q;
  output r_eg;
  output [2:0]\FSM_onehot_r_state_reg[2]_0 ;
  output [31:0]\rd_data_reg[31]_0 ;
  input w_slave_error__0;
  input rd_done_reg_0;
  input w_rd_done__0;
  input \r_control_reg[1]_0 ;
  input aclk;
  input wr_done_reg_0;
  input \r_control_reg[0]_0 ;
  input w_wr_done;
  input r_eg_reg_0;
  input [1:0]\FSM_onehot_r_state_reg[2]_1 ;
  input decode_error_reg_0;
  input S_AXI_rready;
  input [1:0]\rd_data_reg[0]_0 ;
  input [1:0]D;
  input [0:0]E;
  input [12:0]\rd_data_reg[15]_0 ;
  input [0:0]\r_auto_reload_reg[31]_0 ;
  input [18:0]\r_auto_reload_reg[31]_1 ;

  wire [1:0]D;
  wire [0:0]E;
  wire [2:0]\FSM_onehot_r_state_reg[2]_0 ;
  wire [1:0]\FSM_onehot_r_state_reg[2]_1 ;
  wire \FSM_onehot_w_next_state_reg[2]_i_1__1_n_0 ;
  wire \FSM_onehot_w_next_state_reg_n_0_[0] ;
  wire \FSM_onehot_w_next_state_reg_n_0_[1] ;
  wire \FSM_onehot_w_next_state_reg_n_0_[2] ;
  wire [12:0]Q;
  wire S_AXI_rready;
  wire aclk;
  wire [0:0]debug_slot_wr_done;
  wire decode_error_reg_0;
  wire finished0_carry__0_i_1_n_0;
  wire finished0_carry__0_i_2_n_0;
  wire finished0_carry__0_i_3_n_0;
  wire finished0_carry__0_i_4_n_0;
  wire finished0_carry__0_i_5_n_0;
  wire finished0_carry__0_i_6_n_0;
  wire finished0_carry__0_i_7_n_0;
  wire finished0_carry__0_i_8_n_0;
  wire finished0_carry__0_n_0;
  wire finished0_carry__0_n_1;
  wire finished0_carry__0_n_2;
  wire finished0_carry__0_n_3;
  wire finished0_carry__1_i_1_n_0;
  wire finished0_carry__1_i_2_n_0;
  wire finished0_carry__1_i_3_n_0;
  wire finished0_carry__1_i_4_n_0;
  wire finished0_carry__1_i_5_n_0;
  wire finished0_carry__1_i_6_n_0;
  wire finished0_carry__1_i_7_n_0;
  wire finished0_carry__1_i_8_n_0;
  wire finished0_carry__1_n_0;
  wire finished0_carry__1_n_1;
  wire finished0_carry__1_n_2;
  wire finished0_carry__1_n_3;
  wire finished0_carry__2_i_1_n_0;
  wire finished0_carry__2_i_2_n_0;
  wire finished0_carry__2_i_3_n_0;
  wire finished0_carry__2_i_4_n_0;
  wire finished0_carry__2_i_5_n_0;
  wire finished0_carry__2_i_6_n_0;
  wire finished0_carry__2_i_7_n_0;
  wire finished0_carry__2_i_8_n_0;
  wire finished0_carry__2_n_0;
  wire finished0_carry__2_n_1;
  wire finished0_carry__2_n_2;
  wire finished0_carry__2_n_3;
  wire finished0_carry_i_1_n_0;
  wire finished0_carry_i_2_n_0;
  wire finished0_carry_i_3_n_0;
  wire finished0_carry_i_4_n_0;
  wire finished0_carry_i_5_n_0;
  wire finished0_carry_i_6_n_0;
  wire finished0_carry_i_7_n_0;
  wire finished0_carry_i_8_n_0;
  wire finished0_carry_n_0;
  wire finished0_carry_n_1;
  wire finished0_carry_n_2;
  wire finished0_carry_n_3;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry__1_i_4_n_0;
  wire i__carry__2_i_1_n_0;
  wire i__carry__2_i_2_n_0;
  wire i__carry__2_i_3_n_0;
  wire i__carry__2_i_4_n_0;
  wire i__carry__3_i_1_n_0;
  wire i__carry__3_i_2_n_0;
  wire i__carry__3_i_3_n_0;
  wire i__carry__3_i_4_n_0;
  wire i__carry__4_i_1_n_0;
  wire i__carry__4_i_2_n_0;
  wire i__carry__4_i_3_n_0;
  wire i__carry__4_i_4_n_0;
  wire i__carry__5_i_1_n_0;
  wire i__carry__5_i_2_n_0;
  wire i__carry__5_i_3_n_0;
  wire i__carry__5_i_4_n_0;
  wire i__carry__6_i_1_n_0;
  wire i__carry__6_i_2_n_0;
  wire i__carry__6_i_3_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4_n_0;
  wire [0:0]p_0_in;
  wire p_0_in1_in;
  wire [31:0]p_1_in;
  wire [31:0]r_auto_reload;
  wire [0:0]\r_auto_reload_reg[31]_0 ;
  wire [18:0]\r_auto_reload_reg[31]_1 ;
  wire \r_control_reg[0]_0 ;
  wire \r_control_reg[1]_0 ;
  wire [31:0]r_counter;
  wire [31:1]r_counter0__0;
  wire \r_counter0_inferred__0/i__carry__0_n_0 ;
  wire \r_counter0_inferred__0/i__carry__0_n_1 ;
  wire \r_counter0_inferred__0/i__carry__0_n_2 ;
  wire \r_counter0_inferred__0/i__carry__0_n_3 ;
  wire \r_counter0_inferred__0/i__carry__0_n_4 ;
  wire \r_counter0_inferred__0/i__carry__0_n_5 ;
  wire \r_counter0_inferred__0/i__carry__0_n_6 ;
  wire \r_counter0_inferred__0/i__carry__0_n_7 ;
  wire \r_counter0_inferred__0/i__carry__1_n_0 ;
  wire \r_counter0_inferred__0/i__carry__1_n_1 ;
  wire \r_counter0_inferred__0/i__carry__1_n_2 ;
  wire \r_counter0_inferred__0/i__carry__1_n_3 ;
  wire \r_counter0_inferred__0/i__carry__1_n_4 ;
  wire \r_counter0_inferred__0/i__carry__1_n_5 ;
  wire \r_counter0_inferred__0/i__carry__1_n_6 ;
  wire \r_counter0_inferred__0/i__carry__1_n_7 ;
  wire \r_counter0_inferred__0/i__carry__2_n_0 ;
  wire \r_counter0_inferred__0/i__carry__2_n_1 ;
  wire \r_counter0_inferred__0/i__carry__2_n_2 ;
  wire \r_counter0_inferred__0/i__carry__2_n_3 ;
  wire \r_counter0_inferred__0/i__carry__2_n_4 ;
  wire \r_counter0_inferred__0/i__carry__2_n_5 ;
  wire \r_counter0_inferred__0/i__carry__2_n_6 ;
  wire \r_counter0_inferred__0/i__carry__2_n_7 ;
  wire \r_counter0_inferred__0/i__carry__3_n_0 ;
  wire \r_counter0_inferred__0/i__carry__3_n_1 ;
  wire \r_counter0_inferred__0/i__carry__3_n_2 ;
  wire \r_counter0_inferred__0/i__carry__3_n_3 ;
  wire \r_counter0_inferred__0/i__carry__3_n_4 ;
  wire \r_counter0_inferred__0/i__carry__3_n_5 ;
  wire \r_counter0_inferred__0/i__carry__3_n_6 ;
  wire \r_counter0_inferred__0/i__carry__3_n_7 ;
  wire \r_counter0_inferred__0/i__carry__4_n_0 ;
  wire \r_counter0_inferred__0/i__carry__4_n_1 ;
  wire \r_counter0_inferred__0/i__carry__4_n_2 ;
  wire \r_counter0_inferred__0/i__carry__4_n_3 ;
  wire \r_counter0_inferred__0/i__carry__4_n_4 ;
  wire \r_counter0_inferred__0/i__carry__4_n_5 ;
  wire \r_counter0_inferred__0/i__carry__4_n_6 ;
  wire \r_counter0_inferred__0/i__carry__4_n_7 ;
  wire \r_counter0_inferred__0/i__carry__5_n_0 ;
  wire \r_counter0_inferred__0/i__carry__5_n_1 ;
  wire \r_counter0_inferred__0/i__carry__5_n_2 ;
  wire \r_counter0_inferred__0/i__carry__5_n_3 ;
  wire \r_counter0_inferred__0/i__carry__5_n_4 ;
  wire \r_counter0_inferred__0/i__carry__5_n_5 ;
  wire \r_counter0_inferred__0/i__carry__5_n_6 ;
  wire \r_counter0_inferred__0/i__carry__5_n_7 ;
  wire \r_counter0_inferred__0/i__carry__6_n_2 ;
  wire \r_counter0_inferred__0/i__carry__6_n_3 ;
  wire \r_counter0_inferred__0/i__carry__6_n_5 ;
  wire \r_counter0_inferred__0/i__carry__6_n_6 ;
  wire \r_counter0_inferred__0/i__carry__6_n_7 ;
  wire \r_counter0_inferred__0/i__carry_n_0 ;
  wire \r_counter0_inferred__0/i__carry_n_1 ;
  wire \r_counter0_inferred__0/i__carry_n_2 ;
  wire \r_counter0_inferred__0/i__carry_n_3 ;
  wire \r_counter0_inferred__0/i__carry_n_4 ;
  wire \r_counter0_inferred__0/i__carry_n_5 ;
  wire \r_counter0_inferred__0/i__carry_n_6 ;
  wire \r_counter0_inferred__0/i__carry_n_7 ;
  wire \r_counter[15]_i_2_n_0 ;
  wire \r_counter[16]_i_3_n_0 ;
  wire \r_counter[17]_i_2_n_0 ;
  wire \r_counter[18]_i_2_n_0 ;
  wire \r_counter[19]_i_2_n_0 ;
  wire \r_counter[1]_i_2_n_0 ;
  wire \r_counter[20]_i_3_n_0 ;
  wire \r_counter[21]_i_2_n_0 ;
  wire \r_counter[22]_i_2_n_0 ;
  wire \r_counter[23]_i_2_n_0 ;
  wire \r_counter[24]_i_3_n_0 ;
  wire \r_counter[25]_i_2_n_0 ;
  wire \r_counter[26]_i_2_n_0 ;
  wire \r_counter[27]_i_2_n_0 ;
  wire \r_counter[28]_i_3_n_0 ;
  wire \r_counter[29]_i_2_n_0 ;
  wire \r_counter[2]_i_2_n_0 ;
  wire \r_counter[30]_i_2_n_0 ;
  wire \r_counter[31]_i_10_n_0 ;
  wire \r_counter[31]_i_11_n_0 ;
  wire \r_counter[31]_i_12_n_0 ;
  wire \r_counter[31]_i_13_n_0 ;
  wire \r_counter[31]_i_14_n_0 ;
  wire \r_counter[31]_i_15_n_0 ;
  wire \r_counter[31]_i_16_n_0 ;
  wire \r_counter[31]_i_17_n_0 ;
  wire \r_counter[31]_i_18_n_0 ;
  wire \r_counter[31]_i_19_n_0 ;
  wire \r_counter[31]_i_1_n_0 ;
  wire \r_counter[31]_i_20_n_0 ;
  wire \r_counter[31]_i_21_n_0 ;
  wire \r_counter[31]_i_22_n_0 ;
  wire \r_counter[31]_i_23_n_0 ;
  wire \r_counter[31]_i_24_n_0 ;
  wire \r_counter[31]_i_3_n_0 ;
  wire \r_counter[31]_i_5_n_0 ;
  wire \r_counter[31]_i_6_n_0 ;
  wire \r_counter[31]_i_7_n_0 ;
  wire \r_counter[31]_i_8_n_0 ;
  wire \r_counter[31]_i_9_n_0 ;
  wire \r_counter_reg[12]_i_2_n_0 ;
  wire \r_counter_reg[12]_i_2_n_1 ;
  wire \r_counter_reg[12]_i_2_n_2 ;
  wire \r_counter_reg[12]_i_2_n_3 ;
  wire \r_counter_reg[16]_i_2_n_0 ;
  wire \r_counter_reg[16]_i_2_n_1 ;
  wire \r_counter_reg[16]_i_2_n_2 ;
  wire \r_counter_reg[16]_i_2_n_3 ;
  wire \r_counter_reg[20]_i_2_n_0 ;
  wire \r_counter_reg[20]_i_2_n_1 ;
  wire \r_counter_reg[20]_i_2_n_2 ;
  wire \r_counter_reg[20]_i_2_n_3 ;
  wire \r_counter_reg[24]_i_2_n_0 ;
  wire \r_counter_reg[24]_i_2_n_1 ;
  wire \r_counter_reg[24]_i_2_n_2 ;
  wire \r_counter_reg[24]_i_2_n_3 ;
  wire \r_counter_reg[28]_i_2_n_0 ;
  wire \r_counter_reg[28]_i_2_n_1 ;
  wire \r_counter_reg[28]_i_2_n_2 ;
  wire \r_counter_reg[28]_i_2_n_3 ;
  wire \r_counter_reg[31]_i_4_n_2 ;
  wire \r_counter_reg[31]_i_4_n_3 ;
  wire \r_counter_reg[4]_i_2_n_0 ;
  wire \r_counter_reg[4]_i_2_n_1 ;
  wire \r_counter_reg[4]_i_2_n_2 ;
  wire \r_counter_reg[4]_i_2_n_3 ;
  wire \r_counter_reg[8]_i_2_n_0 ;
  wire \r_counter_reg[8]_i_2_n_1 ;
  wire \r_counter_reg[8]_i_2_n_2 ;
  wire \r_counter_reg[8]_i_2_n_3 ;
  wire r_eg;
  wire r_eg_reg_0;
  wire [1:0]\rd_data_reg[0]_0 ;
  wire [12:0]\rd_data_reg[15]_0 ;
  wire [31:0]\rd_data_reg[31]_0 ;
  wire rd_done_reg_0;
  wire [0:0]slot_decode_error;
  wire [0:0]slot_rd_done;
  wire [0:0]slot_slave_error;
  wire w_decode_error;
  wire w_decode_error__0;
  wire w_decode_error_reg_i_1_n_0;
  wire w_next_state;
  wire [31:0]w_rd_data;
  wire \w_rd_data_reg[0]_i_1_n_0 ;
  wire \w_rd_data_reg[16]_i_1_n_0 ;
  wire \w_rd_data_reg[17]_i_1_n_0 ;
  wire \w_rd_data_reg[18]_i_1_n_0 ;
  wire \w_rd_data_reg[19]_i_1_n_0 ;
  wire \w_rd_data_reg[1]_i_1_n_0 ;
  wire \w_rd_data_reg[20]_i_1_n_0 ;
  wire \w_rd_data_reg[21]_i_1_n_0 ;
  wire \w_rd_data_reg[22]_i_1_n_0 ;
  wire \w_rd_data_reg[23]_i_1_n_0 ;
  wire \w_rd_data_reg[24]_i_1_n_0 ;
  wire \w_rd_data_reg[25]_i_1_n_0 ;
  wire \w_rd_data_reg[26]_i_1_n_0 ;
  wire \w_rd_data_reg[27]_i_1_n_0 ;
  wire \w_rd_data_reg[28]_i_1_n_0 ;
  wire \w_rd_data_reg[29]_i_1_n_0 ;
  wire \w_rd_data_reg[2]_i_1_n_0 ;
  wire \w_rd_data_reg[30]_i_1_n_0 ;
  wire \w_rd_data_reg[31]_i_1_n_0 ;
  wire w_rd_done;
  wire w_rd_done__0;
  wire w_slave_error;
  wire w_slave_error__0;
  wire w_slave_error_reg_i_1_n_0;
  wire w_wr_done;
  wire wr_done_reg_0;
  wire [3:0]NLW_finished0_carry_O_UNCONNECTED;
  wire [3:0]NLW_finished0_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_finished0_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_finished0_carry__2_O_UNCONNECTED;
  wire [3:2]\NLW_r_counter0_inferred__0/i__carry__6_CO_UNCONNECTED ;
  wire [3:3]\NLW_r_counter0_inferred__0/i__carry__6_O_UNCONNECTED ;
  wire [3:2]\NLW_r_counter_reg[31]_i_4_CO_UNCONNECTED ;
  wire [3:3]\NLW_r_counter_reg[31]_i_4_O_UNCONNECTED ;

  (* FSM_ENCODED_STATES = "ACTIVE:010,DONE:100,IDLE:001" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_r_state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\FSM_onehot_w_next_state_reg_n_0_[0] ),
        .PRE(wr_done_reg_0),
        .Q(\FSM_onehot_r_state_reg[2]_0 [0]));
  (* FSM_ENCODED_STATES = "ACTIVE:010,DONE:100,IDLE:001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_r_state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(wr_done_reg_0),
        .D(\FSM_onehot_w_next_state_reg_n_0_[1] ),
        .Q(\FSM_onehot_r_state_reg[2]_0 [1]));
  (* FSM_ENCODED_STATES = "ACTIVE:010,DONE:100,IDLE:001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_r_state_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(wr_done_reg_0),
        .D(\FSM_onehot_w_next_state_reg_n_0_[2] ),
        .Q(\FSM_onehot_r_state_reg[2]_0 [2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b1)) 
    \FSM_onehot_w_next_state_reg[0] 
       (.CLR(1'b0),
        .D(D[0]),
        .G(w_next_state),
        .GE(1'b1),
        .Q(\FSM_onehot_w_next_state_reg_n_0_[0] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_w_next_state_reg[1] 
       (.CLR(1'b0),
        .D(D[1]),
        .G(w_next_state),
        .GE(1'b1),
        .Q(\FSM_onehot_w_next_state_reg_n_0_[1] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_w_next_state_reg[2] 
       (.CLR(1'b0),
        .D(\FSM_onehot_w_next_state_reg[2]_i_1__1_n_0 ),
        .G(w_next_state),
        .GE(1'b1),
        .Q(\FSM_onehot_w_next_state_reg_n_0_[2] ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'hABAA)) 
    \FSM_onehot_w_next_state_reg[2]_i_1__1 
       (.I0(\FSM_onehot_r_state_reg[2]_0 [1]),
        .I1(\FSM_onehot_r_state_reg[2]_1 [1]),
        .I2(S_AXI_rready),
        .I3(\FSM_onehot_r_state_reg[2]_0 [2]),
        .O(\FSM_onehot_w_next_state_reg[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_onehot_w_next_state_reg[2]_i_2__0 
       (.I0(\FSM_onehot_r_state_reg[2]_0 [0]),
        .I1(\FSM_onehot_r_state_reg[2]_0 [2]),
        .I2(\FSM_onehot_r_state_reg[2]_0 [1]),
        .O(w_next_state));
  FDPE decode_error_reg
       (.C(aclk),
        .CE(1'b1),
        .D(w_decode_error),
        .PRE(wr_done_reg_0),
        .Q(slot_decode_error));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 finished0_carry
       (.CI(1'b0),
        .CO({finished0_carry_n_0,finished0_carry_n_1,finished0_carry_n_2,finished0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({finished0_carry_i_1_n_0,finished0_carry_i_2_n_0,finished0_carry_i_3_n_0,finished0_carry_i_4_n_0}),
        .O(NLW_finished0_carry_O_UNCONNECTED[3:0]),
        .S({finished0_carry_i_5_n_0,finished0_carry_i_6_n_0,finished0_carry_i_7_n_0,finished0_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 finished0_carry__0
       (.CI(finished0_carry_n_0),
        .CO({finished0_carry__0_n_0,finished0_carry__0_n_1,finished0_carry__0_n_2,finished0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({finished0_carry__0_i_1_n_0,finished0_carry__0_i_2_n_0,finished0_carry__0_i_3_n_0,finished0_carry__0_i_4_n_0}),
        .O(NLW_finished0_carry__0_O_UNCONNECTED[3:0]),
        .S({finished0_carry__0_i_5_n_0,finished0_carry__0_i_6_n_0,finished0_carry__0_i_7_n_0,finished0_carry__0_i_8_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    finished0_carry__0_i_1
       (.I0(Q[11]),
        .I1(Q[12]),
        .O(finished0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    finished0_carry__0_i_2
       (.I0(Q[9]),
        .I1(Q[10]),
        .O(finished0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    finished0_carry__0_i_3
       (.I0(Q[7]),
        .I1(Q[8]),
        .O(finished0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    finished0_carry__0_i_4
       (.I0(Q[6]),
        .I1(Q[5]),
        .O(finished0_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    finished0_carry__0_i_5
       (.I0(Q[12]),
        .I1(Q[11]),
        .O(finished0_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    finished0_carry__0_i_6
       (.I0(Q[10]),
        .I1(Q[9]),
        .O(finished0_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    finished0_carry__0_i_7
       (.I0(Q[8]),
        .I1(Q[7]),
        .O(finished0_carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    finished0_carry__0_i_8
       (.I0(Q[5]),
        .I1(Q[6]),
        .O(finished0_carry__0_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 finished0_carry__1
       (.CI(finished0_carry__0_n_0),
        .CO({finished0_carry__1_n_0,finished0_carry__1_n_1,finished0_carry__1_n_2,finished0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({finished0_carry__1_i_1_n_0,finished0_carry__1_i_2_n_0,finished0_carry__1_i_3_n_0,finished0_carry__1_i_4_n_0}),
        .O(NLW_finished0_carry__1_O_UNCONNECTED[3:0]),
        .S({finished0_carry__1_i_5_n_0,finished0_carry__1_i_6_n_0,finished0_carry__1_i_7_n_0,finished0_carry__1_i_8_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    finished0_carry__1_i_1
       (.I0(r_counter[23]),
        .I1(r_auto_reload[23]),
        .I2(r_counter[22]),
        .I3(r_auto_reload[22]),
        .O(finished0_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    finished0_carry__1_i_2
       (.I0(r_counter[21]),
        .I1(r_auto_reload[21]),
        .I2(r_counter[20]),
        .I3(r_auto_reload[20]),
        .O(finished0_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    finished0_carry__1_i_3
       (.I0(r_counter[19]),
        .I1(r_auto_reload[19]),
        .I2(r_counter[18]),
        .I3(r_auto_reload[18]),
        .O(finished0_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    finished0_carry__1_i_4
       (.I0(r_counter[17]),
        .I1(r_auto_reload[17]),
        .I2(r_counter[16]),
        .I3(r_auto_reload[16]),
        .O(finished0_carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    finished0_carry__1_i_5
       (.I0(r_auto_reload[23]),
        .I1(r_counter[23]),
        .I2(r_auto_reload[22]),
        .I3(r_counter[22]),
        .O(finished0_carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    finished0_carry__1_i_6
       (.I0(r_auto_reload[21]),
        .I1(r_counter[21]),
        .I2(r_auto_reload[20]),
        .I3(r_counter[20]),
        .O(finished0_carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    finished0_carry__1_i_7
       (.I0(r_auto_reload[19]),
        .I1(r_counter[19]),
        .I2(r_auto_reload[18]),
        .I3(r_counter[18]),
        .O(finished0_carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    finished0_carry__1_i_8
       (.I0(r_auto_reload[17]),
        .I1(r_counter[17]),
        .I2(r_auto_reload[16]),
        .I3(r_counter[16]),
        .O(finished0_carry__1_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 finished0_carry__2
       (.CI(finished0_carry__1_n_0),
        .CO({finished0_carry__2_n_0,finished0_carry__2_n_1,finished0_carry__2_n_2,finished0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({finished0_carry__2_i_1_n_0,finished0_carry__2_i_2_n_0,finished0_carry__2_i_3_n_0,finished0_carry__2_i_4_n_0}),
        .O(NLW_finished0_carry__2_O_UNCONNECTED[3:0]),
        .S({finished0_carry__2_i_5_n_0,finished0_carry__2_i_6_n_0,finished0_carry__2_i_7_n_0,finished0_carry__2_i_8_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    finished0_carry__2_i_1
       (.I0(r_counter[31]),
        .I1(r_auto_reload[31]),
        .I2(r_counter[30]),
        .I3(r_auto_reload[30]),
        .O(finished0_carry__2_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    finished0_carry__2_i_2
       (.I0(r_counter[29]),
        .I1(r_auto_reload[29]),
        .I2(r_counter[28]),
        .I3(r_auto_reload[28]),
        .O(finished0_carry__2_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    finished0_carry__2_i_3
       (.I0(r_counter[27]),
        .I1(r_auto_reload[27]),
        .I2(r_counter[26]),
        .I3(r_auto_reload[26]),
        .O(finished0_carry__2_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    finished0_carry__2_i_4
       (.I0(r_counter[25]),
        .I1(r_auto_reload[25]),
        .I2(r_counter[24]),
        .I3(r_auto_reload[24]),
        .O(finished0_carry__2_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    finished0_carry__2_i_5
       (.I0(r_auto_reload[31]),
        .I1(r_counter[31]),
        .I2(r_auto_reload[30]),
        .I3(r_counter[30]),
        .O(finished0_carry__2_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    finished0_carry__2_i_6
       (.I0(r_auto_reload[29]),
        .I1(r_counter[29]),
        .I2(r_auto_reload[28]),
        .I3(r_counter[28]),
        .O(finished0_carry__2_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    finished0_carry__2_i_7
       (.I0(r_auto_reload[27]),
        .I1(r_counter[27]),
        .I2(r_auto_reload[26]),
        .I3(r_counter[26]),
        .O(finished0_carry__2_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    finished0_carry__2_i_8
       (.I0(r_auto_reload[25]),
        .I1(r_counter[25]),
        .I2(r_auto_reload[24]),
        .I3(r_counter[24]),
        .O(finished0_carry__2_i_8_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    finished0_carry_i_1
       (.I0(Q[3]),
        .I1(Q[4]),
        .O(finished0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    finished0_carry_i_2
       (.I0(Q[1]),
        .I1(Q[2]),
        .O(finished0_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'hBA)) 
    finished0_carry_i_3
       (.I0(Q[0]),
        .I1(r_auto_reload[2]),
        .I2(r_counter[2]),
        .O(finished0_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    finished0_carry_i_4
       (.I0(r_counter[1]),
        .I1(r_auto_reload[1]),
        .I2(r_counter[0]),
        .I3(r_auto_reload[0]),
        .O(finished0_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    finished0_carry_i_5
       (.I0(Q[4]),
        .I1(Q[3]),
        .O(finished0_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    finished0_carry_i_6
       (.I0(Q[2]),
        .I1(Q[1]),
        .O(finished0_carry_i_6_n_0));
  LUT3 #(
    .INIT(8'h41)) 
    finished0_carry_i_7
       (.I0(Q[0]),
        .I1(r_auto_reload[2]),
        .I2(r_counter[2]),
        .O(finished0_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    finished0_carry_i_8
       (.I0(r_auto_reload[1]),
        .I1(r_counter[1]),
        .I2(r_auto_reload[0]),
        .I3(r_counter[0]),
        .O(finished0_carry_i_8_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_1
       (.I0(Q[5]),
        .O(i__carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_2
       (.I0(Q[4]),
        .O(i__carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_3
       (.I0(Q[3]),
        .O(i__carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_4
       (.I0(Q[2]),
        .O(i__carry__0_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_1
       (.I0(Q[9]),
        .O(i__carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_2
       (.I0(Q[8]),
        .O(i__carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_3
       (.I0(Q[7]),
        .O(i__carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_4
       (.I0(Q[6]),
        .O(i__carry__1_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_1
       (.I0(r_counter[16]),
        .O(i__carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_2
       (.I0(Q[12]),
        .O(i__carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_3
       (.I0(Q[11]),
        .O(i__carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_4
       (.I0(Q[10]),
        .O(i__carry__2_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__3_i_1
       (.I0(r_counter[20]),
        .O(i__carry__3_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__3_i_2
       (.I0(r_counter[19]),
        .O(i__carry__3_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__3_i_3
       (.I0(r_counter[18]),
        .O(i__carry__3_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__3_i_4
       (.I0(r_counter[17]),
        .O(i__carry__3_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__4_i_1
       (.I0(r_counter[24]),
        .O(i__carry__4_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__4_i_2
       (.I0(r_counter[23]),
        .O(i__carry__4_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__4_i_3
       (.I0(r_counter[22]),
        .O(i__carry__4_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__4_i_4
       (.I0(r_counter[21]),
        .O(i__carry__4_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__5_i_1
       (.I0(r_counter[28]),
        .O(i__carry__5_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__5_i_2
       (.I0(r_counter[27]),
        .O(i__carry__5_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__5_i_3
       (.I0(r_counter[26]),
        .O(i__carry__5_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__5_i_4
       (.I0(r_counter[25]),
        .O(i__carry__5_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__6_i_1
       (.I0(r_counter[31]),
        .O(i__carry__6_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__6_i_2
       (.I0(r_counter[30]),
        .O(i__carry__6_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__6_i_3
       (.I0(r_counter[29]),
        .O(i__carry__6_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_1
       (.I0(Q[1]),
        .O(i__carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_2
       (.I0(Q[0]),
        .O(i__carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_3
       (.I0(r_counter[2]),
        .O(i__carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_4
       (.I0(r_counter[1]),
        .O(i__carry_i_4_n_0));
  FDCE \r_auto_reload_reg[0] 
       (.C(aclk),
        .CE(\r_auto_reload_reg[31]_0 ),
        .CLR(wr_done_reg_0),
        .D(\r_auto_reload_reg[31]_1 [0]),
        .Q(r_auto_reload[0]));
  FDCE \r_auto_reload_reg[16] 
       (.C(aclk),
        .CE(\r_auto_reload_reg[31]_0 ),
        .CLR(wr_done_reg_0),
        .D(\r_auto_reload_reg[31]_1 [3]),
        .Q(r_auto_reload[16]));
  FDCE \r_auto_reload_reg[17] 
       (.C(aclk),
        .CE(\r_auto_reload_reg[31]_0 ),
        .CLR(wr_done_reg_0),
        .D(\r_auto_reload_reg[31]_1 [4]),
        .Q(r_auto_reload[17]));
  FDCE \r_auto_reload_reg[18] 
       (.C(aclk),
        .CE(\r_auto_reload_reg[31]_0 ),
        .CLR(wr_done_reg_0),
        .D(\r_auto_reload_reg[31]_1 [5]),
        .Q(r_auto_reload[18]));
  FDCE \r_auto_reload_reg[19] 
       (.C(aclk),
        .CE(\r_auto_reload_reg[31]_0 ),
        .CLR(wr_done_reg_0),
        .D(\r_auto_reload_reg[31]_1 [6]),
        .Q(r_auto_reload[19]));
  FDCE \r_auto_reload_reg[1] 
       (.C(aclk),
        .CE(\r_auto_reload_reg[31]_0 ),
        .CLR(wr_done_reg_0),
        .D(\r_auto_reload_reg[31]_1 [1]),
        .Q(r_auto_reload[1]));
  FDCE \r_auto_reload_reg[20] 
       (.C(aclk),
        .CE(\r_auto_reload_reg[31]_0 ),
        .CLR(wr_done_reg_0),
        .D(\r_auto_reload_reg[31]_1 [7]),
        .Q(r_auto_reload[20]));
  FDCE \r_auto_reload_reg[21] 
       (.C(aclk),
        .CE(\r_auto_reload_reg[31]_0 ),
        .CLR(wr_done_reg_0),
        .D(\r_auto_reload_reg[31]_1 [8]),
        .Q(r_auto_reload[21]));
  FDCE \r_auto_reload_reg[22] 
       (.C(aclk),
        .CE(\r_auto_reload_reg[31]_0 ),
        .CLR(wr_done_reg_0),
        .D(\r_auto_reload_reg[31]_1 [9]),
        .Q(r_auto_reload[22]));
  FDCE \r_auto_reload_reg[23] 
       (.C(aclk),
        .CE(\r_auto_reload_reg[31]_0 ),
        .CLR(wr_done_reg_0),
        .D(\r_auto_reload_reg[31]_1 [10]),
        .Q(r_auto_reload[23]));
  FDCE \r_auto_reload_reg[24] 
       (.C(aclk),
        .CE(\r_auto_reload_reg[31]_0 ),
        .CLR(wr_done_reg_0),
        .D(\r_auto_reload_reg[31]_1 [11]),
        .Q(r_auto_reload[24]));
  FDCE \r_auto_reload_reg[25] 
       (.C(aclk),
        .CE(\r_auto_reload_reg[31]_0 ),
        .CLR(wr_done_reg_0),
        .D(\r_auto_reload_reg[31]_1 [12]),
        .Q(r_auto_reload[25]));
  FDCE \r_auto_reload_reg[26] 
       (.C(aclk),
        .CE(\r_auto_reload_reg[31]_0 ),
        .CLR(wr_done_reg_0),
        .D(\r_auto_reload_reg[31]_1 [13]),
        .Q(r_auto_reload[26]));
  FDCE \r_auto_reload_reg[27] 
       (.C(aclk),
        .CE(\r_auto_reload_reg[31]_0 ),
        .CLR(wr_done_reg_0),
        .D(\r_auto_reload_reg[31]_1 [14]),
        .Q(r_auto_reload[27]));
  FDCE \r_auto_reload_reg[28] 
       (.C(aclk),
        .CE(\r_auto_reload_reg[31]_0 ),
        .CLR(wr_done_reg_0),
        .D(\r_auto_reload_reg[31]_1 [15]),
        .Q(r_auto_reload[28]));
  FDCE \r_auto_reload_reg[29] 
       (.C(aclk),
        .CE(\r_auto_reload_reg[31]_0 ),
        .CLR(wr_done_reg_0),
        .D(\r_auto_reload_reg[31]_1 [16]),
        .Q(r_auto_reload[29]));
  FDCE \r_auto_reload_reg[2] 
       (.C(aclk),
        .CE(\r_auto_reload_reg[31]_0 ),
        .CLR(wr_done_reg_0),
        .D(\r_auto_reload_reg[31]_1 [2]),
        .Q(r_auto_reload[2]));
  FDCE \r_auto_reload_reg[30] 
       (.C(aclk),
        .CE(\r_auto_reload_reg[31]_0 ),
        .CLR(wr_done_reg_0),
        .D(\r_auto_reload_reg[31]_1 [17]),
        .Q(r_auto_reload[30]));
  FDCE \r_auto_reload_reg[31] 
       (.C(aclk),
        .CE(\r_auto_reload_reg[31]_0 ),
        .CLR(wr_done_reg_0),
        .D(\r_auto_reload_reg[31]_1 [18]),
        .Q(r_auto_reload[31]));
  FDCE \r_control_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(wr_done_reg_0),
        .D(\r_control_reg[0]_0 ),
        .Q(p_0_in));
  FDCE \r_control_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(wr_done_reg_0),
        .D(\r_control_reg[1]_0 ),
        .Q(p_0_in1_in));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \r_counter0_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\r_counter0_inferred__0/i__carry_n_0 ,\r_counter0_inferred__0/i__carry_n_1 ,\r_counter0_inferred__0/i__carry_n_2 ,\r_counter0_inferred__0/i__carry_n_3 }),
        .CYINIT(r_counter[0]),
        .DI({Q[1:0],r_counter[2:1]}),
        .O({\r_counter0_inferred__0/i__carry_n_4 ,\r_counter0_inferred__0/i__carry_n_5 ,\r_counter0_inferred__0/i__carry_n_6 ,\r_counter0_inferred__0/i__carry_n_7 }),
        .S({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \r_counter0_inferred__0/i__carry__0 
       (.CI(\r_counter0_inferred__0/i__carry_n_0 ),
        .CO({\r_counter0_inferred__0/i__carry__0_n_0 ,\r_counter0_inferred__0/i__carry__0_n_1 ,\r_counter0_inferred__0/i__carry__0_n_2 ,\r_counter0_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[5:2]),
        .O({\r_counter0_inferred__0/i__carry__0_n_4 ,\r_counter0_inferred__0/i__carry__0_n_5 ,\r_counter0_inferred__0/i__carry__0_n_6 ,\r_counter0_inferred__0/i__carry__0_n_7 }),
        .S({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \r_counter0_inferred__0/i__carry__1 
       (.CI(\r_counter0_inferred__0/i__carry__0_n_0 ),
        .CO({\r_counter0_inferred__0/i__carry__1_n_0 ,\r_counter0_inferred__0/i__carry__1_n_1 ,\r_counter0_inferred__0/i__carry__1_n_2 ,\r_counter0_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[9:6]),
        .O({\r_counter0_inferred__0/i__carry__1_n_4 ,\r_counter0_inferred__0/i__carry__1_n_5 ,\r_counter0_inferred__0/i__carry__1_n_6 ,\r_counter0_inferred__0/i__carry__1_n_7 }),
        .S({i__carry__1_i_1_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0,i__carry__1_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \r_counter0_inferred__0/i__carry__2 
       (.CI(\r_counter0_inferred__0/i__carry__1_n_0 ),
        .CO({\r_counter0_inferred__0/i__carry__2_n_0 ,\r_counter0_inferred__0/i__carry__2_n_1 ,\r_counter0_inferred__0/i__carry__2_n_2 ,\r_counter0_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({r_counter[16],Q[12:10]}),
        .O({\r_counter0_inferred__0/i__carry__2_n_4 ,\r_counter0_inferred__0/i__carry__2_n_5 ,\r_counter0_inferred__0/i__carry__2_n_6 ,\r_counter0_inferred__0/i__carry__2_n_7 }),
        .S({i__carry__2_i_1_n_0,i__carry__2_i_2_n_0,i__carry__2_i_3_n_0,i__carry__2_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \r_counter0_inferred__0/i__carry__3 
       (.CI(\r_counter0_inferred__0/i__carry__2_n_0 ),
        .CO({\r_counter0_inferred__0/i__carry__3_n_0 ,\r_counter0_inferred__0/i__carry__3_n_1 ,\r_counter0_inferred__0/i__carry__3_n_2 ,\r_counter0_inferred__0/i__carry__3_n_3 }),
        .CYINIT(1'b0),
        .DI(r_counter[20:17]),
        .O({\r_counter0_inferred__0/i__carry__3_n_4 ,\r_counter0_inferred__0/i__carry__3_n_5 ,\r_counter0_inferred__0/i__carry__3_n_6 ,\r_counter0_inferred__0/i__carry__3_n_7 }),
        .S({i__carry__3_i_1_n_0,i__carry__3_i_2_n_0,i__carry__3_i_3_n_0,i__carry__3_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \r_counter0_inferred__0/i__carry__4 
       (.CI(\r_counter0_inferred__0/i__carry__3_n_0 ),
        .CO({\r_counter0_inferred__0/i__carry__4_n_0 ,\r_counter0_inferred__0/i__carry__4_n_1 ,\r_counter0_inferred__0/i__carry__4_n_2 ,\r_counter0_inferred__0/i__carry__4_n_3 }),
        .CYINIT(1'b0),
        .DI(r_counter[24:21]),
        .O({\r_counter0_inferred__0/i__carry__4_n_4 ,\r_counter0_inferred__0/i__carry__4_n_5 ,\r_counter0_inferred__0/i__carry__4_n_6 ,\r_counter0_inferred__0/i__carry__4_n_7 }),
        .S({i__carry__4_i_1_n_0,i__carry__4_i_2_n_0,i__carry__4_i_3_n_0,i__carry__4_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \r_counter0_inferred__0/i__carry__5 
       (.CI(\r_counter0_inferred__0/i__carry__4_n_0 ),
        .CO({\r_counter0_inferred__0/i__carry__5_n_0 ,\r_counter0_inferred__0/i__carry__5_n_1 ,\r_counter0_inferred__0/i__carry__5_n_2 ,\r_counter0_inferred__0/i__carry__5_n_3 }),
        .CYINIT(1'b0),
        .DI(r_counter[28:25]),
        .O({\r_counter0_inferred__0/i__carry__5_n_4 ,\r_counter0_inferred__0/i__carry__5_n_5 ,\r_counter0_inferred__0/i__carry__5_n_6 ,\r_counter0_inferred__0/i__carry__5_n_7 }),
        .S({i__carry__5_i_1_n_0,i__carry__5_i_2_n_0,i__carry__5_i_3_n_0,i__carry__5_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \r_counter0_inferred__0/i__carry__6 
       (.CI(\r_counter0_inferred__0/i__carry__5_n_0 ),
        .CO({\NLW_r_counter0_inferred__0/i__carry__6_CO_UNCONNECTED [3:2],\r_counter0_inferred__0/i__carry__6_n_2 ,\r_counter0_inferred__0/i__carry__6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,r_counter[30:29]}),
        .O({\NLW_r_counter0_inferred__0/i__carry__6_O_UNCONNECTED [3],\r_counter0_inferred__0/i__carry__6_n_5 ,\r_counter0_inferred__0/i__carry__6_n_6 ,\r_counter0_inferred__0/i__carry__6_n_7 }),
        .S({1'b0,i__carry__6_i_1_n_0,i__carry__6_i_2_n_0,i__carry__6_i_3_n_0}));
  LUT6 #(
    .INIT(64'hF300550000005500)) 
    \r_counter[0]_i_1 
       (.I0(r_counter[0]),
        .I1(r_eg),
        .I2(p_0_in1_in),
        .I3(p_0_in),
        .I4(\r_counter[31]_i_3_n_0 ),
        .I5(r_auto_reload[0]),
        .O(p_1_in[0]));
  LUT6 #(
    .INIT(64'h1000FFFF10001000)) 
    \r_counter[10]_i_1 
       (.I0(finished0_carry__2_n_0),
        .I1(p_0_in1_in),
        .I2(p_0_in),
        .I3(r_counter0__0[10]),
        .I4(\r_counter[15]_i_2_n_0 ),
        .I5(\r_counter0_inferred__0/i__carry__1_n_6 ),
        .O(p_1_in[10]));
  LUT6 #(
    .INIT(64'h1000FFFF10001000)) 
    \r_counter[11]_i_1 
       (.I0(finished0_carry__2_n_0),
        .I1(p_0_in1_in),
        .I2(p_0_in),
        .I3(r_counter0__0[11]),
        .I4(\r_counter[15]_i_2_n_0 ),
        .I5(\r_counter0_inferred__0/i__carry__1_n_5 ),
        .O(p_1_in[11]));
  LUT6 #(
    .INIT(64'h1000FFFF10001000)) 
    \r_counter[12]_i_1 
       (.I0(finished0_carry__2_n_0),
        .I1(p_0_in1_in),
        .I2(p_0_in),
        .I3(r_counter0__0[12]),
        .I4(\r_counter[15]_i_2_n_0 ),
        .I5(\r_counter0_inferred__0/i__carry__1_n_4 ),
        .O(p_1_in[12]));
  LUT6 #(
    .INIT(64'h1000FFFF10001000)) 
    \r_counter[13]_i_1 
       (.I0(finished0_carry__2_n_0),
        .I1(p_0_in1_in),
        .I2(p_0_in),
        .I3(r_counter0__0[13]),
        .I4(\r_counter[15]_i_2_n_0 ),
        .I5(\r_counter0_inferred__0/i__carry__2_n_7 ),
        .O(p_1_in[13]));
  LUT6 #(
    .INIT(64'h1000FFFF10001000)) 
    \r_counter[14]_i_1 
       (.I0(finished0_carry__2_n_0),
        .I1(p_0_in1_in),
        .I2(p_0_in),
        .I3(r_counter0__0[14]),
        .I4(\r_counter[15]_i_2_n_0 ),
        .I5(\r_counter0_inferred__0/i__carry__2_n_6 ),
        .O(p_1_in[14]));
  LUT6 #(
    .INIT(64'h1000FFFF10001000)) 
    \r_counter[15]_i_1 
       (.I0(finished0_carry__2_n_0),
        .I1(p_0_in1_in),
        .I2(p_0_in),
        .I3(r_counter0__0[15]),
        .I4(\r_counter[15]_i_2_n_0 ),
        .I5(\r_counter0_inferred__0/i__carry__2_n_5 ),
        .O(p_1_in[15]));
  LUT5 #(
    .INIT(32'h5575FFFF)) 
    \r_counter[15]_i_2 
       (.I0(p_0_in),
        .I1(\r_counter[31]_i_6_n_0 ),
        .I2(\r_counter[31]_i_7_n_0 ),
        .I3(\r_counter[31]_i_12_n_0 ),
        .I4(p_0_in1_in),
        .O(\r_counter[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h23002000EF00EC00)) 
    \r_counter[16]_i_1 
       (.I0(\r_counter0_inferred__0/i__carry__2_n_4 ),
        .I1(\r_counter[31]_i_3_n_0 ),
        .I2(p_0_in1_in),
        .I3(p_0_in),
        .I4(r_counter0__0[16]),
        .I5(\r_counter[16]_i_3_n_0 ),
        .O(p_1_in[16]));
  LUT6 #(
    .INIT(64'h04550400FFFFFFFF)) 
    \r_counter[16]_i_3 
       (.I0(\r_counter[31]_i_10_n_0 ),
        .I1(\r_counter[31]_i_11_n_0 ),
        .I2(\r_counter[31]_i_12_n_0 ),
        .I3(p_0_in1_in),
        .I4(finished0_carry__2_n_0),
        .I5(r_auto_reload[16]),
        .O(\r_counter[16]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h23002000EF00EC00)) 
    \r_counter[17]_i_1 
       (.I0(\r_counter0_inferred__0/i__carry__3_n_7 ),
        .I1(\r_counter[31]_i_3_n_0 ),
        .I2(p_0_in1_in),
        .I3(p_0_in),
        .I4(r_counter0__0[17]),
        .I5(\r_counter[17]_i_2_n_0 ),
        .O(p_1_in[17]));
  LUT6 #(
    .INIT(64'h04550400FFFFFFFF)) 
    \r_counter[17]_i_2 
       (.I0(\r_counter[31]_i_10_n_0 ),
        .I1(\r_counter[31]_i_11_n_0 ),
        .I2(\r_counter[31]_i_12_n_0 ),
        .I3(p_0_in1_in),
        .I4(finished0_carry__2_n_0),
        .I5(r_auto_reload[17]),
        .O(\r_counter[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h23002000EF00EC00)) 
    \r_counter[18]_i_1 
       (.I0(\r_counter0_inferred__0/i__carry__3_n_6 ),
        .I1(\r_counter[31]_i_3_n_0 ),
        .I2(p_0_in1_in),
        .I3(p_0_in),
        .I4(r_counter0__0[18]),
        .I5(\r_counter[18]_i_2_n_0 ),
        .O(p_1_in[18]));
  LUT6 #(
    .INIT(64'h04550400FFFFFFFF)) 
    \r_counter[18]_i_2 
       (.I0(\r_counter[31]_i_10_n_0 ),
        .I1(\r_counter[31]_i_11_n_0 ),
        .I2(\r_counter[31]_i_12_n_0 ),
        .I3(p_0_in1_in),
        .I4(finished0_carry__2_n_0),
        .I5(r_auto_reload[18]),
        .O(\r_counter[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0FEE00000F440000)) 
    \r_counter[19]_i_1 
       (.I0(p_0_in1_in),
        .I1(r_counter0__0[19]),
        .I2(\r_counter[19]_i_2_n_0 ),
        .I3(\r_counter[31]_i_3_n_0 ),
        .I4(p_0_in),
        .I5(\r_counter0_inferred__0/i__carry__3_n_5 ),
        .O(p_1_in[19]));
  LUT6 #(
    .INIT(64'h04550400FFFFFFFF)) 
    \r_counter[19]_i_2 
       (.I0(\r_counter[31]_i_10_n_0 ),
        .I1(\r_counter[31]_i_11_n_0 ),
        .I2(\r_counter[31]_i_12_n_0 ),
        .I3(p_0_in1_in),
        .I4(finished0_carry__2_n_0),
        .I5(r_auto_reload[19]),
        .O(\r_counter[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0FEE00000F440000)) 
    \r_counter[1]_i_1 
       (.I0(p_0_in1_in),
        .I1(r_counter0__0[1]),
        .I2(\r_counter[1]_i_2_n_0 ),
        .I3(\r_counter[31]_i_3_n_0 ),
        .I4(p_0_in),
        .I5(\r_counter0_inferred__0/i__carry_n_7 ),
        .O(p_1_in[1]));
  LUT6 #(
    .INIT(64'h04550400FFFFFFFF)) 
    \r_counter[1]_i_2 
       (.I0(\r_counter[31]_i_10_n_0 ),
        .I1(\r_counter[31]_i_11_n_0 ),
        .I2(\r_counter[31]_i_12_n_0 ),
        .I3(p_0_in1_in),
        .I4(finished0_carry__2_n_0),
        .I5(r_auto_reload[1]),
        .O(\r_counter[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h23002000EF00EC00)) 
    \r_counter[20]_i_1 
       (.I0(\r_counter0_inferred__0/i__carry__3_n_4 ),
        .I1(\r_counter[31]_i_3_n_0 ),
        .I2(p_0_in1_in),
        .I3(p_0_in),
        .I4(r_counter0__0[20]),
        .I5(\r_counter[20]_i_3_n_0 ),
        .O(p_1_in[20]));
  LUT6 #(
    .INIT(64'h04550400FFFFFFFF)) 
    \r_counter[20]_i_3 
       (.I0(\r_counter[31]_i_10_n_0 ),
        .I1(\r_counter[31]_i_11_n_0 ),
        .I2(\r_counter[31]_i_12_n_0 ),
        .I3(p_0_in1_in),
        .I4(finished0_carry__2_n_0),
        .I5(r_auto_reload[20]),
        .O(\r_counter[20]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h23002000EF00EC00)) 
    \r_counter[21]_i_1 
       (.I0(\r_counter0_inferred__0/i__carry__4_n_7 ),
        .I1(\r_counter[31]_i_3_n_0 ),
        .I2(p_0_in1_in),
        .I3(p_0_in),
        .I4(r_counter0__0[21]),
        .I5(\r_counter[21]_i_2_n_0 ),
        .O(p_1_in[21]));
  LUT6 #(
    .INIT(64'h04550400FFFFFFFF)) 
    \r_counter[21]_i_2 
       (.I0(\r_counter[31]_i_10_n_0 ),
        .I1(\r_counter[31]_i_11_n_0 ),
        .I2(\r_counter[31]_i_12_n_0 ),
        .I3(p_0_in1_in),
        .I4(finished0_carry__2_n_0),
        .I5(r_auto_reload[21]),
        .O(\r_counter[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h23002000EF00EC00)) 
    \r_counter[22]_i_1 
       (.I0(\r_counter0_inferred__0/i__carry__4_n_6 ),
        .I1(\r_counter[31]_i_3_n_0 ),
        .I2(p_0_in1_in),
        .I3(p_0_in),
        .I4(r_counter0__0[22]),
        .I5(\r_counter[22]_i_2_n_0 ),
        .O(p_1_in[22]));
  LUT6 #(
    .INIT(64'h04550400FFFFFFFF)) 
    \r_counter[22]_i_2 
       (.I0(\r_counter[31]_i_10_n_0 ),
        .I1(\r_counter[31]_i_11_n_0 ),
        .I2(\r_counter[31]_i_12_n_0 ),
        .I3(p_0_in1_in),
        .I4(finished0_carry__2_n_0),
        .I5(r_auto_reload[22]),
        .O(\r_counter[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h23002000EF00EC00)) 
    \r_counter[23]_i_1 
       (.I0(\r_counter0_inferred__0/i__carry__4_n_5 ),
        .I1(\r_counter[31]_i_3_n_0 ),
        .I2(p_0_in1_in),
        .I3(p_0_in),
        .I4(r_counter0__0[23]),
        .I5(\r_counter[23]_i_2_n_0 ),
        .O(p_1_in[23]));
  LUT6 #(
    .INIT(64'h04550400FFFFFFFF)) 
    \r_counter[23]_i_2 
       (.I0(\r_counter[31]_i_10_n_0 ),
        .I1(\r_counter[31]_i_11_n_0 ),
        .I2(\r_counter[31]_i_12_n_0 ),
        .I3(p_0_in1_in),
        .I4(finished0_carry__2_n_0),
        .I5(r_auto_reload[23]),
        .O(\r_counter[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h23002000EF00EC00)) 
    \r_counter[24]_i_1 
       (.I0(\r_counter0_inferred__0/i__carry__4_n_4 ),
        .I1(\r_counter[31]_i_3_n_0 ),
        .I2(p_0_in1_in),
        .I3(p_0_in),
        .I4(r_counter0__0[24]),
        .I5(\r_counter[24]_i_3_n_0 ),
        .O(p_1_in[24]));
  LUT6 #(
    .INIT(64'h04550400FFFFFFFF)) 
    \r_counter[24]_i_3 
       (.I0(\r_counter[31]_i_10_n_0 ),
        .I1(\r_counter[31]_i_11_n_0 ),
        .I2(\r_counter[31]_i_12_n_0 ),
        .I3(p_0_in1_in),
        .I4(finished0_carry__2_n_0),
        .I5(r_auto_reload[24]),
        .O(\r_counter[24]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h23002000EF00EC00)) 
    \r_counter[25]_i_1 
       (.I0(\r_counter0_inferred__0/i__carry__5_n_7 ),
        .I1(\r_counter[31]_i_3_n_0 ),
        .I2(p_0_in1_in),
        .I3(p_0_in),
        .I4(r_counter0__0[25]),
        .I5(\r_counter[25]_i_2_n_0 ),
        .O(p_1_in[25]));
  LUT6 #(
    .INIT(64'h04550400FFFFFFFF)) 
    \r_counter[25]_i_2 
       (.I0(\r_counter[31]_i_10_n_0 ),
        .I1(\r_counter[31]_i_11_n_0 ),
        .I2(\r_counter[31]_i_12_n_0 ),
        .I3(p_0_in1_in),
        .I4(finished0_carry__2_n_0),
        .I5(r_auto_reload[25]),
        .O(\r_counter[25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h23002000EF00EC00)) 
    \r_counter[26]_i_1 
       (.I0(\r_counter0_inferred__0/i__carry__5_n_6 ),
        .I1(\r_counter[31]_i_3_n_0 ),
        .I2(p_0_in1_in),
        .I3(p_0_in),
        .I4(r_counter0__0[26]),
        .I5(\r_counter[26]_i_2_n_0 ),
        .O(p_1_in[26]));
  LUT6 #(
    .INIT(64'h04550400FFFFFFFF)) 
    \r_counter[26]_i_2 
       (.I0(\r_counter[31]_i_10_n_0 ),
        .I1(\r_counter[31]_i_11_n_0 ),
        .I2(\r_counter[31]_i_12_n_0 ),
        .I3(p_0_in1_in),
        .I4(finished0_carry__2_n_0),
        .I5(r_auto_reload[26]),
        .O(\r_counter[26]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0FEE00000F440000)) 
    \r_counter[27]_i_1 
       (.I0(p_0_in1_in),
        .I1(r_counter0__0[27]),
        .I2(\r_counter[27]_i_2_n_0 ),
        .I3(\r_counter[31]_i_3_n_0 ),
        .I4(p_0_in),
        .I5(\r_counter0_inferred__0/i__carry__5_n_5 ),
        .O(p_1_in[27]));
  LUT6 #(
    .INIT(64'h04550400FFFFFFFF)) 
    \r_counter[27]_i_2 
       (.I0(\r_counter[31]_i_10_n_0 ),
        .I1(\r_counter[31]_i_11_n_0 ),
        .I2(\r_counter[31]_i_12_n_0 ),
        .I3(p_0_in1_in),
        .I4(finished0_carry__2_n_0),
        .I5(r_auto_reload[27]),
        .O(\r_counter[27]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0FEE00000F440000)) 
    \r_counter[28]_i_1 
       (.I0(p_0_in1_in),
        .I1(r_counter0__0[28]),
        .I2(\r_counter[28]_i_3_n_0 ),
        .I3(\r_counter[31]_i_3_n_0 ),
        .I4(p_0_in),
        .I5(\r_counter0_inferred__0/i__carry__5_n_4 ),
        .O(p_1_in[28]));
  LUT6 #(
    .INIT(64'h04550400FFFFFFFF)) 
    \r_counter[28]_i_3 
       (.I0(\r_counter[31]_i_10_n_0 ),
        .I1(\r_counter[31]_i_11_n_0 ),
        .I2(\r_counter[31]_i_12_n_0 ),
        .I3(p_0_in1_in),
        .I4(finished0_carry__2_n_0),
        .I5(r_auto_reload[28]),
        .O(\r_counter[28]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h23002000EF00EC00)) 
    \r_counter[29]_i_1 
       (.I0(\r_counter0_inferred__0/i__carry__6_n_7 ),
        .I1(\r_counter[31]_i_3_n_0 ),
        .I2(p_0_in1_in),
        .I3(p_0_in),
        .I4(r_counter0__0[29]),
        .I5(\r_counter[29]_i_2_n_0 ),
        .O(p_1_in[29]));
  LUT6 #(
    .INIT(64'h04550400FFFFFFFF)) 
    \r_counter[29]_i_2 
       (.I0(\r_counter[31]_i_10_n_0 ),
        .I1(\r_counter[31]_i_11_n_0 ),
        .I2(\r_counter[31]_i_12_n_0 ),
        .I3(p_0_in1_in),
        .I4(finished0_carry__2_n_0),
        .I5(r_auto_reload[29]),
        .O(\r_counter[29]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0FEE00000F440000)) 
    \r_counter[2]_i_1 
       (.I0(p_0_in1_in),
        .I1(r_counter0__0[2]),
        .I2(\r_counter[2]_i_2_n_0 ),
        .I3(\r_counter[31]_i_3_n_0 ),
        .I4(p_0_in),
        .I5(\r_counter0_inferred__0/i__carry_n_6 ),
        .O(p_1_in[2]));
  LUT6 #(
    .INIT(64'h04550400FFFFFFFF)) 
    \r_counter[2]_i_2 
       (.I0(\r_counter[31]_i_10_n_0 ),
        .I1(\r_counter[31]_i_11_n_0 ),
        .I2(\r_counter[31]_i_12_n_0 ),
        .I3(p_0_in1_in),
        .I4(finished0_carry__2_n_0),
        .I5(r_auto_reload[2]),
        .O(\r_counter[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h23002000EF00EC00)) 
    \r_counter[30]_i_1 
       (.I0(\r_counter0_inferred__0/i__carry__6_n_6 ),
        .I1(\r_counter[31]_i_3_n_0 ),
        .I2(p_0_in1_in),
        .I3(p_0_in),
        .I4(r_counter0__0[30]),
        .I5(\r_counter[30]_i_2_n_0 ),
        .O(p_1_in[30]));
  LUT6 #(
    .INIT(64'h04550400FFFFFFFF)) 
    \r_counter[30]_i_2 
       (.I0(\r_counter[31]_i_10_n_0 ),
        .I1(\r_counter[31]_i_11_n_0 ),
        .I2(\r_counter[31]_i_12_n_0 ),
        .I3(p_0_in1_in),
        .I4(finished0_carry__2_n_0),
        .I5(r_auto_reload[30]),
        .O(\r_counter[30]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hDF)) 
    \r_counter[31]_i_1 
       (.I0(p_0_in),
        .I1(r_eg),
        .I2(\r_counter[31]_i_3_n_0 ),
        .O(\r_counter[31]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hDF)) 
    \r_counter[31]_i_10 
       (.I0(r_eg),
        .I1(p_0_in1_in),
        .I2(p_0_in),
        .O(\r_counter[31]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \r_counter[31]_i_11 
       (.I0(\r_counter[31]_i_16_n_0 ),
        .I1(\r_counter[31]_i_15_n_0 ),
        .I2(\r_counter[31]_i_19_n_0 ),
        .I3(\r_counter[31]_i_20_n_0 ),
        .I4(\r_counter[31]_i_21_n_0 ),
        .I5(\r_counter[31]_i_22_n_0 ),
        .O(\r_counter[31]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \r_counter[31]_i_12 
       (.I0(\r_counter[31]_i_18_n_0 ),
        .I1(\r_counter[31]_i_23_n_0 ),
        .I2(\r_counter[31]_i_17_n_0 ),
        .I3(\r_counter[31]_i_24_n_0 ),
        .O(\r_counter[31]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \r_counter[31]_i_13 
       (.I0(Q[3]),
        .I1(Q[4]),
        .O(\r_counter[31]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \r_counter[31]_i_14 
       (.I0(Q[1]),
        .I1(Q[2]),
        .O(\r_counter[31]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \r_counter[31]_i_15 
       (.I0(Q[11]),
        .I1(Q[12]),
        .O(\r_counter[31]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \r_counter[31]_i_16 
       (.I0(Q[9]),
        .I1(Q[10]),
        .O(\r_counter[31]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \r_counter[31]_i_17 
       (.I0(r_counter[31]),
        .I1(r_counter[30]),
        .I2(r_counter[28]),
        .I3(r_counter[29]),
        .O(\r_counter[31]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \r_counter[31]_i_18 
       (.I0(r_counter[16]),
        .I1(r_counter[17]),
        .I2(r_counter[18]),
        .I3(r_counter[19]),
        .O(\r_counter[31]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \r_counter[31]_i_19 
       (.I0(Q[5]),
        .I1(Q[6]),
        .O(\r_counter[31]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h23002000EF00EC00)) 
    \r_counter[31]_i_2 
       (.I0(\r_counter0_inferred__0/i__carry__6_n_5 ),
        .I1(\r_counter[31]_i_3_n_0 ),
        .I2(p_0_in1_in),
        .I3(p_0_in),
        .I4(r_counter0__0[31]),
        .I5(\r_counter[31]_i_5_n_0 ),
        .O(p_1_in[31]));
  LUT2 #(
    .INIT(4'hE)) 
    \r_counter[31]_i_20 
       (.I0(Q[7]),
        .I1(Q[8]),
        .O(\r_counter[31]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \r_counter[31]_i_21 
       (.I0(Q[0]),
        .I1(r_counter[2]),
        .I2(r_counter[0]),
        .I3(r_counter[1]),
        .O(\r_counter[31]_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \r_counter[31]_i_22 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[4]),
        .I3(Q[3]),
        .O(\r_counter[31]_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \r_counter[31]_i_23 
       (.I0(r_counter[20]),
        .I1(r_counter[21]),
        .I2(r_counter[22]),
        .I3(r_counter[23]),
        .O(\r_counter[31]_i_23_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \r_counter[31]_i_24 
       (.I0(r_counter[26]),
        .I1(r_counter[27]),
        .I2(r_counter[24]),
        .I3(r_counter[25]),
        .O(\r_counter[31]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \r_counter[31]_i_3 
       (.I0(\r_counter[31]_i_6_n_0 ),
        .I1(\r_counter[31]_i_7_n_0 ),
        .I2(\r_counter[31]_i_8_n_0 ),
        .I3(\r_counter[31]_i_9_n_0 ),
        .I4(p_0_in1_in),
        .I5(finished0_carry__2_n_0),
        .O(\r_counter[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h04550400FFFFFFFF)) 
    \r_counter[31]_i_5 
       (.I0(\r_counter[31]_i_10_n_0 ),
        .I1(\r_counter[31]_i_11_n_0 ),
        .I2(\r_counter[31]_i_12_n_0 ),
        .I3(p_0_in1_in),
        .I4(finished0_carry__2_n_0),
        .I5(r_auto_reload[31]),
        .O(\r_counter[31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \r_counter[31]_i_6 
       (.I0(\r_counter[31]_i_13_n_0 ),
        .I1(\r_counter[31]_i_14_n_0 ),
        .I2(r_counter[1]),
        .I3(r_counter[0]),
        .I4(r_counter[2]),
        .I5(Q[0]),
        .O(\r_counter[31]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \r_counter[31]_i_7 
       (.I0(Q[7]),
        .I1(Q[8]),
        .I2(Q[5]),
        .I3(Q[6]),
        .I4(\r_counter[31]_i_15_n_0 ),
        .I5(\r_counter[31]_i_16_n_0 ),
        .O(\r_counter[31]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \r_counter[31]_i_8 
       (.I0(r_counter[25]),
        .I1(r_counter[24]),
        .I2(r_counter[27]),
        .I3(r_counter[26]),
        .I4(\r_counter[31]_i_17_n_0 ),
        .O(\r_counter[31]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \r_counter[31]_i_9 
       (.I0(r_counter[23]),
        .I1(r_counter[22]),
        .I2(r_counter[21]),
        .I3(r_counter[20]),
        .I4(\r_counter[31]_i_18_n_0 ),
        .O(\r_counter[31]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h1000FFFF10001000)) 
    \r_counter[3]_i_1 
       (.I0(finished0_carry__2_n_0),
        .I1(p_0_in1_in),
        .I2(p_0_in),
        .I3(r_counter0__0[3]),
        .I4(\r_counter[15]_i_2_n_0 ),
        .I5(\r_counter0_inferred__0/i__carry_n_5 ),
        .O(p_1_in[3]));
  LUT6 #(
    .INIT(64'h1000FFFF10001000)) 
    \r_counter[4]_i_1 
       (.I0(finished0_carry__2_n_0),
        .I1(p_0_in1_in),
        .I2(p_0_in),
        .I3(r_counter0__0[4]),
        .I4(\r_counter[15]_i_2_n_0 ),
        .I5(\r_counter0_inferred__0/i__carry_n_4 ),
        .O(p_1_in[4]));
  LUT6 #(
    .INIT(64'h1000FFFF10001000)) 
    \r_counter[5]_i_1 
       (.I0(finished0_carry__2_n_0),
        .I1(p_0_in1_in),
        .I2(p_0_in),
        .I3(r_counter0__0[5]),
        .I4(\r_counter[15]_i_2_n_0 ),
        .I5(\r_counter0_inferred__0/i__carry__0_n_7 ),
        .O(p_1_in[5]));
  LUT6 #(
    .INIT(64'h1000FFFF10001000)) 
    \r_counter[6]_i_1 
       (.I0(finished0_carry__2_n_0),
        .I1(p_0_in1_in),
        .I2(p_0_in),
        .I3(r_counter0__0[6]),
        .I4(\r_counter[15]_i_2_n_0 ),
        .I5(\r_counter0_inferred__0/i__carry__0_n_6 ),
        .O(p_1_in[6]));
  LUT6 #(
    .INIT(64'h1000FFFF10001000)) 
    \r_counter[7]_i_1 
       (.I0(finished0_carry__2_n_0),
        .I1(p_0_in1_in),
        .I2(p_0_in),
        .I3(r_counter0__0[7]),
        .I4(\r_counter[15]_i_2_n_0 ),
        .I5(\r_counter0_inferred__0/i__carry__0_n_5 ),
        .O(p_1_in[7]));
  LUT6 #(
    .INIT(64'h1000FFFF10001000)) 
    \r_counter[8]_i_1 
       (.I0(finished0_carry__2_n_0),
        .I1(p_0_in1_in),
        .I2(p_0_in),
        .I3(r_counter0__0[8]),
        .I4(\r_counter[15]_i_2_n_0 ),
        .I5(\r_counter0_inferred__0/i__carry__0_n_4 ),
        .O(p_1_in[8]));
  LUT6 #(
    .INIT(64'h1000FFFF10001000)) 
    \r_counter[9]_i_1 
       (.I0(finished0_carry__2_n_0),
        .I1(p_0_in1_in),
        .I2(p_0_in),
        .I3(r_counter0__0[9]),
        .I4(\r_counter[15]_i_2_n_0 ),
        .I5(\r_counter0_inferred__0/i__carry__1_n_7 ),
        .O(p_1_in[9]));
  FDCE \r_counter_reg[0] 
       (.C(aclk),
        .CE(\r_counter[31]_i_1_n_0 ),
        .CLR(wr_done_reg_0),
        .D(p_1_in[0]),
        .Q(r_counter[0]));
  FDCE \r_counter_reg[10] 
       (.C(aclk),
        .CE(\r_counter[31]_i_1_n_0 ),
        .CLR(wr_done_reg_0),
        .D(p_1_in[10]),
        .Q(Q[7]));
  FDCE \r_counter_reg[11] 
       (.C(aclk),
        .CE(\r_counter[31]_i_1_n_0 ),
        .CLR(wr_done_reg_0),
        .D(p_1_in[11]),
        .Q(Q[8]));
  FDCE \r_counter_reg[12] 
       (.C(aclk),
        .CE(\r_counter[31]_i_1_n_0 ),
        .CLR(wr_done_reg_0),
        .D(p_1_in[12]),
        .Q(Q[9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \r_counter_reg[12]_i_2 
       (.CI(\r_counter_reg[8]_i_2_n_0 ),
        .CO({\r_counter_reg[12]_i_2_n_0 ,\r_counter_reg[12]_i_2_n_1 ,\r_counter_reg[12]_i_2_n_2 ,\r_counter_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(r_counter0__0[12:9]),
        .S(Q[9:6]));
  FDCE \r_counter_reg[13] 
       (.C(aclk),
        .CE(\r_counter[31]_i_1_n_0 ),
        .CLR(wr_done_reg_0),
        .D(p_1_in[13]),
        .Q(Q[10]));
  FDCE \r_counter_reg[14] 
       (.C(aclk),
        .CE(\r_counter[31]_i_1_n_0 ),
        .CLR(wr_done_reg_0),
        .D(p_1_in[14]),
        .Q(Q[11]));
  FDCE \r_counter_reg[15] 
       (.C(aclk),
        .CE(\r_counter[31]_i_1_n_0 ),
        .CLR(wr_done_reg_0),
        .D(p_1_in[15]),
        .Q(Q[12]));
  FDCE \r_counter_reg[16] 
       (.C(aclk),
        .CE(\r_counter[31]_i_1_n_0 ),
        .CLR(wr_done_reg_0),
        .D(p_1_in[16]),
        .Q(r_counter[16]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \r_counter_reg[16]_i_2 
       (.CI(\r_counter_reg[12]_i_2_n_0 ),
        .CO({\r_counter_reg[16]_i_2_n_0 ,\r_counter_reg[16]_i_2_n_1 ,\r_counter_reg[16]_i_2_n_2 ,\r_counter_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(r_counter0__0[16:13]),
        .S({r_counter[16],Q[12:10]}));
  FDCE \r_counter_reg[17] 
       (.C(aclk),
        .CE(\r_counter[31]_i_1_n_0 ),
        .CLR(wr_done_reg_0),
        .D(p_1_in[17]),
        .Q(r_counter[17]));
  FDCE \r_counter_reg[18] 
       (.C(aclk),
        .CE(\r_counter[31]_i_1_n_0 ),
        .CLR(wr_done_reg_0),
        .D(p_1_in[18]),
        .Q(r_counter[18]));
  FDCE \r_counter_reg[19] 
       (.C(aclk),
        .CE(\r_counter[31]_i_1_n_0 ),
        .CLR(wr_done_reg_0),
        .D(p_1_in[19]),
        .Q(r_counter[19]));
  FDCE \r_counter_reg[1] 
       (.C(aclk),
        .CE(\r_counter[31]_i_1_n_0 ),
        .CLR(wr_done_reg_0),
        .D(p_1_in[1]),
        .Q(r_counter[1]));
  FDCE \r_counter_reg[20] 
       (.C(aclk),
        .CE(\r_counter[31]_i_1_n_0 ),
        .CLR(wr_done_reg_0),
        .D(p_1_in[20]),
        .Q(r_counter[20]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \r_counter_reg[20]_i_2 
       (.CI(\r_counter_reg[16]_i_2_n_0 ),
        .CO({\r_counter_reg[20]_i_2_n_0 ,\r_counter_reg[20]_i_2_n_1 ,\r_counter_reg[20]_i_2_n_2 ,\r_counter_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(r_counter0__0[20:17]),
        .S(r_counter[20:17]));
  FDCE \r_counter_reg[21] 
       (.C(aclk),
        .CE(\r_counter[31]_i_1_n_0 ),
        .CLR(wr_done_reg_0),
        .D(p_1_in[21]),
        .Q(r_counter[21]));
  FDCE \r_counter_reg[22] 
       (.C(aclk),
        .CE(\r_counter[31]_i_1_n_0 ),
        .CLR(wr_done_reg_0),
        .D(p_1_in[22]),
        .Q(r_counter[22]));
  FDCE \r_counter_reg[23] 
       (.C(aclk),
        .CE(\r_counter[31]_i_1_n_0 ),
        .CLR(wr_done_reg_0),
        .D(p_1_in[23]),
        .Q(r_counter[23]));
  FDCE \r_counter_reg[24] 
       (.C(aclk),
        .CE(\r_counter[31]_i_1_n_0 ),
        .CLR(wr_done_reg_0),
        .D(p_1_in[24]),
        .Q(r_counter[24]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \r_counter_reg[24]_i_2 
       (.CI(\r_counter_reg[20]_i_2_n_0 ),
        .CO({\r_counter_reg[24]_i_2_n_0 ,\r_counter_reg[24]_i_2_n_1 ,\r_counter_reg[24]_i_2_n_2 ,\r_counter_reg[24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(r_counter0__0[24:21]),
        .S(r_counter[24:21]));
  FDCE \r_counter_reg[25] 
       (.C(aclk),
        .CE(\r_counter[31]_i_1_n_0 ),
        .CLR(wr_done_reg_0),
        .D(p_1_in[25]),
        .Q(r_counter[25]));
  FDCE \r_counter_reg[26] 
       (.C(aclk),
        .CE(\r_counter[31]_i_1_n_0 ),
        .CLR(wr_done_reg_0),
        .D(p_1_in[26]),
        .Q(r_counter[26]));
  FDCE \r_counter_reg[27] 
       (.C(aclk),
        .CE(\r_counter[31]_i_1_n_0 ),
        .CLR(wr_done_reg_0),
        .D(p_1_in[27]),
        .Q(r_counter[27]));
  FDCE \r_counter_reg[28] 
       (.C(aclk),
        .CE(\r_counter[31]_i_1_n_0 ),
        .CLR(wr_done_reg_0),
        .D(p_1_in[28]),
        .Q(r_counter[28]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \r_counter_reg[28]_i_2 
       (.CI(\r_counter_reg[24]_i_2_n_0 ),
        .CO({\r_counter_reg[28]_i_2_n_0 ,\r_counter_reg[28]_i_2_n_1 ,\r_counter_reg[28]_i_2_n_2 ,\r_counter_reg[28]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(r_counter0__0[28:25]),
        .S(r_counter[28:25]));
  FDCE \r_counter_reg[29] 
       (.C(aclk),
        .CE(\r_counter[31]_i_1_n_0 ),
        .CLR(wr_done_reg_0),
        .D(p_1_in[29]),
        .Q(r_counter[29]));
  FDCE \r_counter_reg[2] 
       (.C(aclk),
        .CE(\r_counter[31]_i_1_n_0 ),
        .CLR(wr_done_reg_0),
        .D(p_1_in[2]),
        .Q(r_counter[2]));
  FDCE \r_counter_reg[30] 
       (.C(aclk),
        .CE(\r_counter[31]_i_1_n_0 ),
        .CLR(wr_done_reg_0),
        .D(p_1_in[30]),
        .Q(r_counter[30]));
  FDCE \r_counter_reg[31] 
       (.C(aclk),
        .CE(\r_counter[31]_i_1_n_0 ),
        .CLR(wr_done_reg_0),
        .D(p_1_in[31]),
        .Q(r_counter[31]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \r_counter_reg[31]_i_4 
       (.CI(\r_counter_reg[28]_i_2_n_0 ),
        .CO({\NLW_r_counter_reg[31]_i_4_CO_UNCONNECTED [3:2],\r_counter_reg[31]_i_4_n_2 ,\r_counter_reg[31]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_r_counter_reg[31]_i_4_O_UNCONNECTED [3],r_counter0__0[31:29]}),
        .S({1'b0,r_counter[31:29]}));
  FDCE \r_counter_reg[3] 
       (.C(aclk),
        .CE(\r_counter[31]_i_1_n_0 ),
        .CLR(wr_done_reg_0),
        .D(p_1_in[3]),
        .Q(Q[0]));
  FDCE \r_counter_reg[4] 
       (.C(aclk),
        .CE(\r_counter[31]_i_1_n_0 ),
        .CLR(wr_done_reg_0),
        .D(p_1_in[4]),
        .Q(Q[1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \r_counter_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\r_counter_reg[4]_i_2_n_0 ,\r_counter_reg[4]_i_2_n_1 ,\r_counter_reg[4]_i_2_n_2 ,\r_counter_reg[4]_i_2_n_3 }),
        .CYINIT(r_counter[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(r_counter0__0[4:1]),
        .S({Q[1:0],r_counter[2:1]}));
  FDCE \r_counter_reg[5] 
       (.C(aclk),
        .CE(\r_counter[31]_i_1_n_0 ),
        .CLR(wr_done_reg_0),
        .D(p_1_in[5]),
        .Q(Q[2]));
  FDCE \r_counter_reg[6] 
       (.C(aclk),
        .CE(\r_counter[31]_i_1_n_0 ),
        .CLR(wr_done_reg_0),
        .D(p_1_in[6]),
        .Q(Q[3]));
  FDCE \r_counter_reg[7] 
       (.C(aclk),
        .CE(\r_counter[31]_i_1_n_0 ),
        .CLR(wr_done_reg_0),
        .D(p_1_in[7]),
        .Q(Q[4]));
  FDCE \r_counter_reg[8] 
       (.C(aclk),
        .CE(\r_counter[31]_i_1_n_0 ),
        .CLR(wr_done_reg_0),
        .D(p_1_in[8]),
        .Q(Q[5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \r_counter_reg[8]_i_2 
       (.CI(\r_counter_reg[4]_i_2_n_0 ),
        .CO({\r_counter_reg[8]_i_2_n_0 ,\r_counter_reg[8]_i_2_n_1 ,\r_counter_reg[8]_i_2_n_2 ,\r_counter_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(r_counter0__0[8:5]),
        .S(Q[5:2]));
  FDCE \r_counter_reg[9] 
       (.C(aclk),
        .CE(\r_counter[31]_i_1_n_0 ),
        .CLR(wr_done_reg_0),
        .D(p_1_in[9]),
        .Q(Q[6]));
  FDCE r_eg_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(wr_done_reg_0),
        .D(r_eg_reg_0),
        .Q(r_eg));
  FDCE \rd_data_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(wr_done_reg_0),
        .D(w_rd_data[0]),
        .Q(\rd_data_reg[31]_0 [0]));
  FDCE \rd_data_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(wr_done_reg_0),
        .D(w_rd_data[10]),
        .Q(\rd_data_reg[31]_0 [10]));
  FDCE \rd_data_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(wr_done_reg_0),
        .D(w_rd_data[11]),
        .Q(\rd_data_reg[31]_0 [11]));
  FDCE \rd_data_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(wr_done_reg_0),
        .D(w_rd_data[12]),
        .Q(\rd_data_reg[31]_0 [12]));
  FDCE \rd_data_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(wr_done_reg_0),
        .D(w_rd_data[13]),
        .Q(\rd_data_reg[31]_0 [13]));
  FDCE \rd_data_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(wr_done_reg_0),
        .D(w_rd_data[14]),
        .Q(\rd_data_reg[31]_0 [14]));
  FDCE \rd_data_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(wr_done_reg_0),
        .D(w_rd_data[15]),
        .Q(\rd_data_reg[31]_0 [15]));
  FDCE \rd_data_reg[16] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(wr_done_reg_0),
        .D(w_rd_data[16]),
        .Q(\rd_data_reg[31]_0 [16]));
  FDCE \rd_data_reg[17] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(wr_done_reg_0),
        .D(w_rd_data[17]),
        .Q(\rd_data_reg[31]_0 [17]));
  FDCE \rd_data_reg[18] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(wr_done_reg_0),
        .D(w_rd_data[18]),
        .Q(\rd_data_reg[31]_0 [18]));
  FDCE \rd_data_reg[19] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(wr_done_reg_0),
        .D(w_rd_data[19]),
        .Q(\rd_data_reg[31]_0 [19]));
  FDCE \rd_data_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(wr_done_reg_0),
        .D(w_rd_data[1]),
        .Q(\rd_data_reg[31]_0 [1]));
  FDCE \rd_data_reg[20] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(wr_done_reg_0),
        .D(w_rd_data[20]),
        .Q(\rd_data_reg[31]_0 [20]));
  FDCE \rd_data_reg[21] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(wr_done_reg_0),
        .D(w_rd_data[21]),
        .Q(\rd_data_reg[31]_0 [21]));
  FDCE \rd_data_reg[22] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(wr_done_reg_0),
        .D(w_rd_data[22]),
        .Q(\rd_data_reg[31]_0 [22]));
  FDCE \rd_data_reg[23] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(wr_done_reg_0),
        .D(w_rd_data[23]),
        .Q(\rd_data_reg[31]_0 [23]));
  FDCE \rd_data_reg[24] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(wr_done_reg_0),
        .D(w_rd_data[24]),
        .Q(\rd_data_reg[31]_0 [24]));
  FDCE \rd_data_reg[25] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(wr_done_reg_0),
        .D(w_rd_data[25]),
        .Q(\rd_data_reg[31]_0 [25]));
  FDCE \rd_data_reg[26] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(wr_done_reg_0),
        .D(w_rd_data[26]),
        .Q(\rd_data_reg[31]_0 [26]));
  FDCE \rd_data_reg[27] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(wr_done_reg_0),
        .D(w_rd_data[27]),
        .Q(\rd_data_reg[31]_0 [27]));
  FDCE \rd_data_reg[28] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(wr_done_reg_0),
        .D(w_rd_data[28]),
        .Q(\rd_data_reg[31]_0 [28]));
  FDCE \rd_data_reg[29] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(wr_done_reg_0),
        .D(w_rd_data[29]),
        .Q(\rd_data_reg[31]_0 [29]));
  FDCE \rd_data_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(wr_done_reg_0),
        .D(w_rd_data[2]),
        .Q(\rd_data_reg[31]_0 [2]));
  FDCE \rd_data_reg[30] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(wr_done_reg_0),
        .D(w_rd_data[30]),
        .Q(\rd_data_reg[31]_0 [30]));
  FDCE \rd_data_reg[31] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(wr_done_reg_0),
        .D(w_rd_data[31]),
        .Q(\rd_data_reg[31]_0 [31]));
  FDCE \rd_data_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(wr_done_reg_0),
        .D(w_rd_data[3]),
        .Q(\rd_data_reg[31]_0 [3]));
  FDCE \rd_data_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(wr_done_reg_0),
        .D(w_rd_data[4]),
        .Q(\rd_data_reg[31]_0 [4]));
  FDCE \rd_data_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(wr_done_reg_0),
        .D(w_rd_data[5]),
        .Q(\rd_data_reg[31]_0 [5]));
  FDCE \rd_data_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(wr_done_reg_0),
        .D(w_rd_data[6]),
        .Q(\rd_data_reg[31]_0 [6]));
  FDCE \rd_data_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(wr_done_reg_0),
        .D(w_rd_data[7]),
        .Q(\rd_data_reg[31]_0 [7]));
  FDCE \rd_data_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(wr_done_reg_0),
        .D(w_rd_data[8]),
        .Q(\rd_data_reg[31]_0 [8]));
  FDCE \rd_data_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(wr_done_reg_0),
        .D(w_rd_data[9]),
        .Q(\rd_data_reg[31]_0 [9]));
  FDCE rd_done_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(wr_done_reg_0),
        .D(w_rd_done),
        .Q(slot_rd_done));
  FDPE slave_error_reg
       (.C(aclk),
        .CE(1'b1),
        .D(w_slave_error),
        .PRE(wr_done_reg_0),
        .Q(slot_slave_error));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    w_decode_error_reg
       (.CLR(1'b0),
        .D(w_decode_error_reg_i_1_n_0),
        .G(w_decode_error__0),
        .GE(1'b1),
        .Q(w_decode_error));
  LUT3 #(
    .INIT(8'hEA)) 
    w_decode_error_reg_i_1
       (.I0(\FSM_onehot_r_state_reg[2]_0 [1]),
        .I1(\FSM_onehot_r_state_reg[2]_0 [2]),
        .I2(slot_decode_error),
        .O(w_decode_error_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    w_decode_error_reg_i_2
       (.I0(\FSM_onehot_r_state_reg[2]_0 [2]),
        .I1(decode_error_reg_0),
        .I2(\FSM_onehot_r_state_reg[2]_0 [1]),
        .O(w_decode_error__0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \w_rd_data_reg[0] 
       (.CLR(1'b0),
        .D(\w_rd_data_reg[0]_i_1_n_0 ),
        .G(E),
        .GE(1'b1),
        .Q(w_rd_data[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \w_rd_data_reg[0]_i_1 
       (.I0(r_eg),
        .I1(p_0_in),
        .I2(\rd_data_reg[0]_0 [1]),
        .I3(r_auto_reload[0]),
        .I4(\rd_data_reg[0]_0 [0]),
        .I5(r_counter[0]),
        .O(\w_rd_data_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \w_rd_data_reg[10] 
       (.CLR(1'b0),
        .D(\rd_data_reg[15]_0 [7]),
        .G(E),
        .GE(1'b1),
        .Q(w_rd_data[10]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \w_rd_data_reg[11] 
       (.CLR(1'b0),
        .D(\rd_data_reg[15]_0 [8]),
        .G(E),
        .GE(1'b1),
        .Q(w_rd_data[11]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \w_rd_data_reg[12] 
       (.CLR(1'b0),
        .D(\rd_data_reg[15]_0 [9]),
        .G(E),
        .GE(1'b1),
        .Q(w_rd_data[12]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \w_rd_data_reg[13] 
       (.CLR(1'b0),
        .D(\rd_data_reg[15]_0 [10]),
        .G(E),
        .GE(1'b1),
        .Q(w_rd_data[13]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \w_rd_data_reg[14] 
       (.CLR(1'b0),
        .D(\rd_data_reg[15]_0 [11]),
        .G(E),
        .GE(1'b1),
        .Q(w_rd_data[14]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \w_rd_data_reg[15] 
       (.CLR(1'b0),
        .D(\rd_data_reg[15]_0 [12]),
        .G(E),
        .GE(1'b1),
        .Q(w_rd_data[15]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \w_rd_data_reg[16] 
       (.CLR(1'b0),
        .D(\w_rd_data_reg[16]_i_1_n_0 ),
        .G(E),
        .GE(1'b1),
        .Q(w_rd_data[16]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \w_rd_data_reg[16]_i_1 
       (.I0(r_counter[16]),
        .I1(\rd_data_reg[0]_0 [0]),
        .I2(r_auto_reload[16]),
        .I3(\rd_data_reg[0]_0 [1]),
        .O(\w_rd_data_reg[16]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \w_rd_data_reg[17] 
       (.CLR(1'b0),
        .D(\w_rd_data_reg[17]_i_1_n_0 ),
        .G(E),
        .GE(1'b1),
        .Q(w_rd_data[17]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \w_rd_data_reg[17]_i_1 
       (.I0(r_counter[17]),
        .I1(\rd_data_reg[0]_0 [0]),
        .I2(r_auto_reload[17]),
        .I3(\rd_data_reg[0]_0 [1]),
        .O(\w_rd_data_reg[17]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \w_rd_data_reg[18] 
       (.CLR(1'b0),
        .D(\w_rd_data_reg[18]_i_1_n_0 ),
        .G(E),
        .GE(1'b1),
        .Q(w_rd_data[18]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \w_rd_data_reg[18]_i_1 
       (.I0(r_counter[18]),
        .I1(\rd_data_reg[0]_0 [0]),
        .I2(r_auto_reload[18]),
        .I3(\rd_data_reg[0]_0 [1]),
        .O(\w_rd_data_reg[18]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \w_rd_data_reg[19] 
       (.CLR(1'b0),
        .D(\w_rd_data_reg[19]_i_1_n_0 ),
        .G(E),
        .GE(1'b1),
        .Q(w_rd_data[19]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \w_rd_data_reg[19]_i_1 
       (.I0(r_counter[19]),
        .I1(\rd_data_reg[0]_0 [0]),
        .I2(r_auto_reload[19]),
        .I3(\rd_data_reg[0]_0 [1]),
        .O(\w_rd_data_reg[19]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \w_rd_data_reg[1] 
       (.CLR(1'b0),
        .D(\w_rd_data_reg[1]_i_1_n_0 ),
        .G(E),
        .GE(1'b1),
        .Q(w_rd_data[1]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \w_rd_data_reg[1]_i_1 
       (.I0(p_0_in1_in),
        .I1(\rd_data_reg[0]_0 [1]),
        .I2(r_auto_reload[1]),
        .I3(\rd_data_reg[0]_0 [0]),
        .I4(r_counter[1]),
        .O(\w_rd_data_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \w_rd_data_reg[20] 
       (.CLR(1'b0),
        .D(\w_rd_data_reg[20]_i_1_n_0 ),
        .G(E),
        .GE(1'b1),
        .Q(w_rd_data[20]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \w_rd_data_reg[20]_i_1 
       (.I0(r_counter[20]),
        .I1(\rd_data_reg[0]_0 [0]),
        .I2(r_auto_reload[20]),
        .I3(\rd_data_reg[0]_0 [1]),
        .O(\w_rd_data_reg[20]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \w_rd_data_reg[21] 
       (.CLR(1'b0),
        .D(\w_rd_data_reg[21]_i_1_n_0 ),
        .G(E),
        .GE(1'b1),
        .Q(w_rd_data[21]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \w_rd_data_reg[21]_i_1 
       (.I0(r_counter[21]),
        .I1(\rd_data_reg[0]_0 [0]),
        .I2(r_auto_reload[21]),
        .I3(\rd_data_reg[0]_0 [1]),
        .O(\w_rd_data_reg[21]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \w_rd_data_reg[22] 
       (.CLR(1'b0),
        .D(\w_rd_data_reg[22]_i_1_n_0 ),
        .G(E),
        .GE(1'b1),
        .Q(w_rd_data[22]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \w_rd_data_reg[22]_i_1 
       (.I0(r_counter[22]),
        .I1(\rd_data_reg[0]_0 [0]),
        .I2(r_auto_reload[22]),
        .I3(\rd_data_reg[0]_0 [1]),
        .O(\w_rd_data_reg[22]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \w_rd_data_reg[23] 
       (.CLR(1'b0),
        .D(\w_rd_data_reg[23]_i_1_n_0 ),
        .G(E),
        .GE(1'b1),
        .Q(w_rd_data[23]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \w_rd_data_reg[23]_i_1 
       (.I0(r_counter[23]),
        .I1(\rd_data_reg[0]_0 [0]),
        .I2(r_auto_reload[23]),
        .I3(\rd_data_reg[0]_0 [1]),
        .O(\w_rd_data_reg[23]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \w_rd_data_reg[24] 
       (.CLR(1'b0),
        .D(\w_rd_data_reg[24]_i_1_n_0 ),
        .G(E),
        .GE(1'b1),
        .Q(w_rd_data[24]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \w_rd_data_reg[24]_i_1 
       (.I0(r_counter[24]),
        .I1(\rd_data_reg[0]_0 [0]),
        .I2(r_auto_reload[24]),
        .I3(\rd_data_reg[0]_0 [1]),
        .O(\w_rd_data_reg[24]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \w_rd_data_reg[25] 
       (.CLR(1'b0),
        .D(\w_rd_data_reg[25]_i_1_n_0 ),
        .G(E),
        .GE(1'b1),
        .Q(w_rd_data[25]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \w_rd_data_reg[25]_i_1 
       (.I0(r_counter[25]),
        .I1(\rd_data_reg[0]_0 [0]),
        .I2(r_auto_reload[25]),
        .I3(\rd_data_reg[0]_0 [1]),
        .O(\w_rd_data_reg[25]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \w_rd_data_reg[26] 
       (.CLR(1'b0),
        .D(\w_rd_data_reg[26]_i_1_n_0 ),
        .G(E),
        .GE(1'b1),
        .Q(w_rd_data[26]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \w_rd_data_reg[26]_i_1 
       (.I0(r_counter[26]),
        .I1(\rd_data_reg[0]_0 [0]),
        .I2(r_auto_reload[26]),
        .I3(\rd_data_reg[0]_0 [1]),
        .O(\w_rd_data_reg[26]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \w_rd_data_reg[27] 
       (.CLR(1'b0),
        .D(\w_rd_data_reg[27]_i_1_n_0 ),
        .G(E),
        .GE(1'b1),
        .Q(w_rd_data[27]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \w_rd_data_reg[27]_i_1 
       (.I0(r_counter[27]),
        .I1(\rd_data_reg[0]_0 [0]),
        .I2(r_auto_reload[27]),
        .I3(\rd_data_reg[0]_0 [1]),
        .O(\w_rd_data_reg[27]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \w_rd_data_reg[28] 
       (.CLR(1'b0),
        .D(\w_rd_data_reg[28]_i_1_n_0 ),
        .G(E),
        .GE(1'b1),
        .Q(w_rd_data[28]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \w_rd_data_reg[28]_i_1 
       (.I0(r_counter[28]),
        .I1(\rd_data_reg[0]_0 [0]),
        .I2(r_auto_reload[28]),
        .I3(\rd_data_reg[0]_0 [1]),
        .O(\w_rd_data_reg[28]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \w_rd_data_reg[29] 
       (.CLR(1'b0),
        .D(\w_rd_data_reg[29]_i_1_n_0 ),
        .G(E),
        .GE(1'b1),
        .Q(w_rd_data[29]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \w_rd_data_reg[29]_i_1 
       (.I0(r_counter[29]),
        .I1(\rd_data_reg[0]_0 [0]),
        .I2(r_auto_reload[29]),
        .I3(\rd_data_reg[0]_0 [1]),
        .O(\w_rd_data_reg[29]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \w_rd_data_reg[2] 
       (.CLR(1'b0),
        .D(\w_rd_data_reg[2]_i_1_n_0 ),
        .G(E),
        .GE(1'b1),
        .Q(w_rd_data[2]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \w_rd_data_reg[2]_i_1 
       (.I0(r_counter[2]),
        .I1(\rd_data_reg[0]_0 [0]),
        .I2(r_auto_reload[2]),
        .I3(\rd_data_reg[0]_0 [1]),
        .O(\w_rd_data_reg[2]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \w_rd_data_reg[30] 
       (.CLR(1'b0),
        .D(\w_rd_data_reg[30]_i_1_n_0 ),
        .G(E),
        .GE(1'b1),
        .Q(w_rd_data[30]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \w_rd_data_reg[30]_i_1 
       (.I0(r_counter[30]),
        .I1(\rd_data_reg[0]_0 [0]),
        .I2(r_auto_reload[30]),
        .I3(\rd_data_reg[0]_0 [1]),
        .O(\w_rd_data_reg[30]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \w_rd_data_reg[31] 
       (.CLR(1'b0),
        .D(\w_rd_data_reg[31]_i_1_n_0 ),
        .G(E),
        .GE(1'b1),
        .Q(w_rd_data[31]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \w_rd_data_reg[31]_i_1 
       (.I0(r_counter[31]),
        .I1(\rd_data_reg[0]_0 [0]),
        .I2(r_auto_reload[31]),
        .I3(\rd_data_reg[0]_0 [1]),
        .O(\w_rd_data_reg[31]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \w_rd_data_reg[3] 
       (.CLR(1'b0),
        .D(\rd_data_reg[15]_0 [0]),
        .G(E),
        .GE(1'b1),
        .Q(w_rd_data[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \w_rd_data_reg[4] 
       (.CLR(1'b0),
        .D(\rd_data_reg[15]_0 [1]),
        .G(E),
        .GE(1'b1),
        .Q(w_rd_data[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \w_rd_data_reg[5] 
       (.CLR(1'b0),
        .D(\rd_data_reg[15]_0 [2]),
        .G(E),
        .GE(1'b1),
        .Q(w_rd_data[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \w_rd_data_reg[6] 
       (.CLR(1'b0),
        .D(\rd_data_reg[15]_0 [3]),
        .G(E),
        .GE(1'b1),
        .Q(w_rd_data[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \w_rd_data_reg[7] 
       (.CLR(1'b0),
        .D(\rd_data_reg[15]_0 [4]),
        .G(E),
        .GE(1'b1),
        .Q(w_rd_data[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \w_rd_data_reg[8] 
       (.CLR(1'b0),
        .D(\rd_data_reg[15]_0 [5]),
        .G(E),
        .GE(1'b1),
        .Q(w_rd_data[8]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \w_rd_data_reg[9] 
       (.CLR(1'b0),
        .D(\rd_data_reg[15]_0 [6]),
        .G(E),
        .GE(1'b1),
        .Q(w_rd_data[9]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    w_rd_done_reg
       (.CLR(1'b0),
        .D(rd_done_reg_0),
        .G(w_rd_done__0),
        .GE(1'b1),
        .Q(w_rd_done));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    w_slave_error_reg
       (.CLR(1'b0),
        .D(w_slave_error_reg_i_1_n_0),
        .G(w_slave_error__0),
        .GE(1'b1),
        .Q(w_slave_error));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    w_slave_error_reg_i_1
       (.I0(\FSM_onehot_r_state_reg[2]_0 [1]),
        .I1(\FSM_onehot_r_state_reg[2]_1 [0]),
        .I2(slot_slave_error),
        .I3(\FSM_onehot_r_state_reg[2]_0 [2]),
        .I4(\FSM_onehot_r_state_reg[2]_0 [0]),
        .O(w_slave_error_reg_i_1_n_0));
  FDCE wr_done_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(wr_done_reg_0),
        .D(w_wr_done),
        .Q(debug_slot_wr_done));
endmodule

(* ORIG_REF_NAME = "tx" *) 
module top_mmio_subsystem_0_0_tx
   (\FSM_sequential_r_state_reg[1]_0 ,
    Q,
    \r_control_reg[1] ,
    E,
    tx,
    \r_in_shift_reg[2]_0 ,
    CO,
    \r_rd_logic_reg[0] ,
    tx_empty,
    full_reg,
    aclk,
    \r_in_shift_reg[0]_0 ,
    D);
  output \FSM_sequential_r_state_reg[1]_0 ;
  output [0:0]Q;
  output \r_control_reg[1] ;
  output [0:0]E;
  output tx;
  output [1:0]\r_in_shift_reg[2]_0 ;
  input [0:0]CO;
  input [0:0]\r_rd_logic_reg[0] ;
  input tx_empty;
  input full_reg;
  input aclk;
  input \r_in_shift_reg[0]_0 ;
  input [2:0]D;

  wire [0:0]CO;
  wire [2:0]D;
  wire [0:0]E;
  wire \FSM_sequential_r_state[0]_i_2__0_n_0 ;
  wire \FSM_sequential_r_state[1]_i_2__0_n_0 ;
  wire \FSM_sequential_r_state[1]_i_3_n_0 ;
  wire \FSM_sequential_r_state[1]_i_4_n_0 ;
  wire \FSM_sequential_r_state_reg[1]_0 ;
  wire [0:0]Q;
  wire aclk;
  wire full_reg;
  wire \r_control_reg[1] ;
  wire [2:0]r_data_bits_sent;
  wire \r_data_bits_sent[1]_i_1_n_0 ;
  wire \r_data_bits_sent[2]_i_1_n_0 ;
  wire \r_in_shift[2]_i_1_n_0 ;
  wire \r_in_shift_reg[0]_0 ;
  wire [1:0]\r_in_shift_reg[2]_0 ;
  wire \r_in_shift_reg_n_0_[0] ;
  wire [0:0]\r_rd_logic_reg[0] ;
  wire \r_sampling_ticks[2]_i_2_n_0 ;
  wire \r_sampling_ticks[3]_i_1__0_n_0 ;
  wire \r_sampling_ticks[4]_i_2__0_n_0 ;
  wire \r_sampling_ticks_reg_n_0_[0] ;
  wire \r_sampling_ticks_reg_n_0_[1] ;
  wire \r_sampling_ticks_reg_n_0_[2] ;
  wire \r_sampling_ticks_reg_n_0_[3] ;
  wire \r_sampling_ticks_reg_n_0_[4] ;
  wire [0:0]r_state;
  wire tx;
  wire tx_empty;
  wire [0:0]w_next_data_bits_sent;
  wire [4:0]w_next_sampling_ticks;
  wire [1:0]w_next_state;

  LUT6 #(
    .INIT(64'h00000000B0B5FCFD)) 
    \FSM_sequential_r_state[0]_i_1 
       (.I0(Q),
        .I1(\FSM_sequential_r_state[1]_i_2__0_n_0 ),
        .I2(r_state),
        .I3(tx_empty),
        .I4(\FSM_sequential_r_state[0]_i_2__0_n_0 ),
        .I5(\FSM_sequential_r_state[1]_i_3_n_0 ),
        .O(w_next_state[0]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \FSM_sequential_r_state[0]_i_2__0 
       (.I0(r_data_bits_sent[0]),
        .I1(r_data_bits_sent[1]),
        .I2(r_data_bits_sent[2]),
        .I3(Q),
        .O(\FSM_sequential_r_state[0]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT4 #(
    .INIT(16'h3230)) 
    \FSM_sequential_r_state[1]_i_1__0 
       (.I0(\FSM_sequential_r_state[1]_i_2__0_n_0 ),
        .I1(\FSM_sequential_r_state[1]_i_3_n_0 ),
        .I2(Q),
        .I3(r_state),
        .O(w_next_state[1]));
  LUT5 #(
    .INIT(32'h00000004)) 
    \FSM_sequential_r_state[1]_i_2__0 
       (.I0(\r_sampling_ticks_reg_n_0_[0] ),
        .I1(\r_sampling_ticks_reg_n_0_[4] ),
        .I2(\r_sampling_ticks_reg_n_0_[3] ),
        .I3(\r_sampling_ticks_reg_n_0_[2] ),
        .I4(\r_sampling_ticks_reg_n_0_[1] ),
        .O(\FSM_sequential_r_state[1]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h0040000000000000)) 
    \FSM_sequential_r_state[1]_i_3 
       (.I0(\r_sampling_ticks_reg_n_0_[4] ),
        .I1(\r_sampling_ticks_reg_n_0_[2] ),
        .I2(\r_sampling_ticks_reg_n_0_[3] ),
        .I3(\FSM_sequential_r_state[1]_i_4_n_0 ),
        .I4(Q),
        .I5(r_state),
        .O(\FSM_sequential_r_state[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \FSM_sequential_r_state[1]_i_4 
       (.I0(\r_sampling_ticks_reg_n_0_[0] ),
        .I1(\r_sampling_ticks_reg_n_0_[1] ),
        .O(\FSM_sequential_r_state[1]_i_4_n_0 ));
  (* FSM_ENCODED_STATES = "START:01,DATA:10,STOP:11,IDLE:00" *) 
  FDCE \FSM_sequential_r_state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r_in_shift_reg[0]_0 ),
        .D(w_next_state[0]),
        .Q(r_state));
  (* FSM_ENCODED_STATES = "START:01,DATA:10,STOP:11,IDLE:00" *) 
  FDCE \FSM_sequential_r_state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r_in_shift_reg[0]_0 ),
        .D(w_next_state[1]),
        .Q(Q));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT5 #(
    .INIT(32'hFFFEAAAB)) 
    full_i_4
       (.I0(\r_rd_logic_reg[0] ),
        .I1(r_state),
        .I2(Q),
        .I3(tx_empty),
        .I4(full_reg),
        .O(\r_control_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r_data_bits_sent[0]_i_1 
       (.I0(Q),
        .I1(r_data_bits_sent[0]),
        .O(w_next_data_bits_sent));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \r_data_bits_sent[1]_i_1 
       (.I0(r_data_bits_sent[1]),
        .I1(r_data_bits_sent[0]),
        .I2(Q),
        .O(\r_data_bits_sent[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'h7800)) 
    \r_data_bits_sent[2]_i_1 
       (.I0(r_data_bits_sent[0]),
        .I1(r_data_bits_sent[1]),
        .I2(r_data_bits_sent[2]),
        .I3(Q),
        .O(\r_data_bits_sent[2]_i_1_n_0 ));
  FDCE \r_data_bits_sent_reg[0] 
       (.C(aclk),
        .CE(\r_in_shift[2]_i_1_n_0 ),
        .CLR(\r_in_shift_reg[0]_0 ),
        .D(w_next_data_bits_sent),
        .Q(r_data_bits_sent[0]));
  FDCE \r_data_bits_sent_reg[1] 
       (.C(aclk),
        .CE(\r_in_shift[2]_i_1_n_0 ),
        .CLR(\r_in_shift_reg[0]_0 ),
        .D(\r_data_bits_sent[1]_i_1_n_0 ),
        .Q(r_data_bits_sent[1]));
  FDCE \r_data_bits_sent_reg[2] 
       (.C(aclk),
        .CE(\r_in_shift[2]_i_1_n_0 ),
        .CLR(\r_in_shift_reg[0]_0 ),
        .D(\r_data_bits_sent[2]_i_1_n_0 ),
        .Q(r_data_bits_sent[2]));
  LUT3 #(
    .INIT(8'h45)) 
    \r_in_shift[2]_i_1 
       (.I0(r_state),
        .I1(\FSM_sequential_r_state[1]_i_2__0_n_0 ),
        .I2(Q),
        .O(\r_in_shift[2]_i_1_n_0 ));
  FDCE \r_in_shift_reg[0] 
       (.C(aclk),
        .CE(\r_in_shift[2]_i_1_n_0 ),
        .CLR(\r_in_shift_reg[0]_0 ),
        .D(D[0]),
        .Q(\r_in_shift_reg_n_0_[0] ));
  FDCE \r_in_shift_reg[1] 
       (.C(aclk),
        .CE(\r_in_shift[2]_i_1_n_0 ),
        .CLR(\r_in_shift_reg[0]_0 ),
        .D(D[1]),
        .Q(\r_in_shift_reg[2]_0 [0]));
  FDCE \r_in_shift_reg[2] 
       (.C(aclk),
        .CE(\r_in_shift[2]_i_1_n_0 ),
        .CLR(\r_in_shift_reg[0]_0 ),
        .D(D[2]),
        .Q(\r_in_shift_reg[2]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'hAAAB)) 
    \r_rd_logic[3]_i_1 
       (.I0(\r_rd_logic_reg[0] ),
        .I1(tx_empty),
        .I2(Q),
        .I3(r_state),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT5 #(
    .INIT(32'h00B2B200)) 
    \r_sampling_ticks[0]_i_1__0 
       (.I0(r_state),
        .I1(\FSM_sequential_r_state[1]_i_2__0_n_0 ),
        .I2(Q),
        .I3(\r_sampling_ticks_reg_n_0_[0] ),
        .I4(CO),
        .O(w_next_sampling_ticks[0]));
  LUT6 #(
    .INIT(64'h00B2B2B2B2000000)) 
    \r_sampling_ticks[1]_i_1__0 
       (.I0(r_state),
        .I1(\FSM_sequential_r_state[1]_i_2__0_n_0 ),
        .I2(Q),
        .I3(CO),
        .I4(\r_sampling_ticks_reg_n_0_[0] ),
        .I5(\r_sampling_ticks_reg_n_0_[1] ),
        .O(w_next_sampling_ticks[1]));
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \r_sampling_ticks[2]_i_1__0 
       (.I0(\r_sampling_ticks[2]_i_2_n_0 ),
        .I1(CO),
        .I2(\r_sampling_ticks_reg_n_0_[1] ),
        .I3(\r_sampling_ticks_reg_n_0_[0] ),
        .I4(\r_sampling_ticks_reg_n_0_[2] ),
        .O(w_next_sampling_ticks[2]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \r_sampling_ticks[2]_i_2 
       (.I0(Q),
        .I1(\FSM_sequential_r_state[1]_i_2__0_n_0 ),
        .I2(r_state),
        .O(\r_sampling_ticks[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000006AAAAAAA)) 
    \r_sampling_ticks[3]_i_1__0 
       (.I0(\r_sampling_ticks_reg_n_0_[3] ),
        .I1(\r_sampling_ticks_reg_n_0_[2] ),
        .I2(CO),
        .I3(\r_sampling_ticks_reg_n_0_[1] ),
        .I4(\r_sampling_ticks_reg_n_0_[0] ),
        .I5(\FSM_sequential_r_state_reg[1]_0 ),
        .O(\r_sampling_ticks[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \r_sampling_ticks[3]_i_2 
       (.I0(Q),
        .I1(r_state),
        .O(\FSM_sequential_r_state_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT5 #(
    .INIT(32'h00B2B200)) 
    \r_sampling_ticks[4]_i_1__0 
       (.I0(r_state),
        .I1(\FSM_sequential_r_state[1]_i_2__0_n_0 ),
        .I2(Q),
        .I3(\r_sampling_ticks[4]_i_2__0_n_0 ),
        .I4(\r_sampling_ticks_reg_n_0_[4] ),
        .O(w_next_sampling_ticks[4]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \r_sampling_ticks[4]_i_2__0 
       (.I0(\r_sampling_ticks_reg_n_0_[2] ),
        .I1(CO),
        .I2(\r_sampling_ticks_reg_n_0_[1] ),
        .I3(\r_sampling_ticks_reg_n_0_[0] ),
        .I4(\r_sampling_ticks_reg_n_0_[3] ),
        .O(\r_sampling_ticks[4]_i_2__0_n_0 ));
  FDCE \r_sampling_ticks_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r_in_shift_reg[0]_0 ),
        .D(w_next_sampling_ticks[0]),
        .Q(\r_sampling_ticks_reg_n_0_[0] ));
  FDCE \r_sampling_ticks_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r_in_shift_reg[0]_0 ),
        .D(w_next_sampling_ticks[1]),
        .Q(\r_sampling_ticks_reg_n_0_[1] ));
  FDCE \r_sampling_ticks_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r_in_shift_reg[0]_0 ),
        .D(w_next_sampling_ticks[2]),
        .Q(\r_sampling_ticks_reg_n_0_[2] ));
  FDCE \r_sampling_ticks_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r_in_shift_reg[0]_0 ),
        .D(\r_sampling_ticks[3]_i_1__0_n_0 ),
        .Q(\r_sampling_ticks_reg_n_0_[3] ));
  FDCE \r_sampling_ticks_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r_in_shift_reg[0]_0 ),
        .D(w_next_sampling_ticks[4]),
        .Q(\r_sampling_ticks_reg_n_0_[4] ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hE3)) 
    tx_INST_0
       (.I0(\r_in_shift_reg_n_0_[0] ),
        .I1(r_state),
        .I2(Q),
        .O(tx));
endmodule

(* ORIG_REF_NAME = "uart" *) 
module top_mmio_subsystem_0_0_uart
   (r_dvsr,
    arst_n_0,
    \r_status_reg[9]_0 ,
    debug_slot_wr_done,
    slot_rd_done,
    CO,
    rx_empty,
    tx_full,
    slot_slave_error,
    slot_decode_error,
    Q,
    \r_rd_logic_reg[2] ,
    \r_rd_logic_reg[2]_0 ,
    tx,
    \rd_data_reg[9]_0 ,
    \r_dvsr_reg[2]_0 ,
    aclk,
    \r_dvsr_reg[1]_0 ,
    \r_dvsr_reg[0]_0 ,
    \r_status_reg[9]_1 ,
    \r_status_reg[8]_0 ,
    w_wr_done,
    w_rd_done,
    slave_error_reg_0,
    decode_error_reg_0,
    \r_wr_logic_reg[3] ,
    empty_reg,
    \rd_data_reg[5]_0 ,
    \r_status_reg[5]_0 ,
    \r_status_reg[5]_1 ,
    full_reg,
    \FSM_onehot_r_state_reg[2]_0 ,
    S_AXI_rready,
    \rd_data_reg[1]_0 ,
    rx,
    arst_n,
    D,
    \r_control_reg[1]_0 ,
    \r_reg_array_reg[0][2] ,
    E,
    \rd_data_reg[9]_1 );
  output [2:0]r_dvsr;
  output arst_n_0;
  output [3:0]\r_status_reg[9]_0 ;
  output [0:0]debug_slot_wr_done;
  output [0:0]slot_rd_done;
  output [0:0]CO;
  output rx_empty;
  output tx_full;
  output [0:0]slot_slave_error;
  output [0:0]slot_decode_error;
  output [2:0]Q;
  output \r_rd_logic_reg[2] ;
  output \r_rd_logic_reg[2]_0 ;
  output tx;
  output [9:0]\rd_data_reg[9]_0 ;
  input \r_dvsr_reg[2]_0 ;
  input aclk;
  input \r_dvsr_reg[1]_0 ;
  input \r_dvsr_reg[0]_0 ;
  input \r_status_reg[9]_1 ;
  input \r_status_reg[8]_0 ;
  input w_wr_done;
  input w_rd_done;
  input slave_error_reg_0;
  input decode_error_reg_0;
  input \r_wr_logic_reg[3] ;
  input empty_reg;
  input \rd_data_reg[5]_0 ;
  input \r_status_reg[5]_0 ;
  input \r_status_reg[5]_1 ;
  input full_reg;
  input [0:0]\FSM_onehot_r_state_reg[2]_0 ;
  input S_AXI_rready;
  input [2:0]\rd_data_reg[1]_0 ;
  input rx;
  input arst_n;
  input [1:0]D;
  input [1:0]\r_control_reg[1]_0 ;
  input [2:0]\r_reg_array_reg[0][2] ;
  input [0:0]E;
  input [3:0]\rd_data_reg[9]_1 ;

  wire [0:0]CO;
  wire [1:0]D;
  wire [0:0]E;
  wire [0:0]\FSM_onehot_r_state_reg[2]_0 ;
  wire \FSM_onehot_w_next_state_reg[2]_i_1__0_n_0 ;
  wire \FSM_onehot_w_next_state_reg_n_0_[0] ;
  wire \FSM_onehot_w_next_state_reg_n_0_[1] ;
  wire \FSM_onehot_w_next_state_reg_n_0_[2] ;
  wire [2:0]Q;
  wire S_AXI_rready;
  wire aclk;
  wire arst_n;
  wire arst_n_0;
  wire core_n_10;
  wire core_n_11;
  wire core_n_14;
  wire core_n_16;
  wire core_n_17;
  wire core_n_4;
  wire core_n_5;
  wire core_n_6;
  wire core_n_7;
  wire core_n_8;
  wire core_n_9;
  wire [0:0]debug_slot_wr_done;
  wire decode_error_reg_0;
  wire empty_reg;
  wire full_reg;
  wire [1:0]r_control;
  wire [1:0]\r_control_reg[1]_0 ;
  wire [2:0]r_dvsr;
  wire \r_dvsr_reg[0]_0 ;
  wire \r_dvsr_reg[1]_0 ;
  wire \r_dvsr_reg[2]_0 ;
  wire \r_rd_logic_reg[2] ;
  wire \r_rd_logic_reg[2]_0 ;
  wire [2:0]\r_reg_array_reg[0][2] ;
  wire [5:0]r_status;
  wire \r_status[5]_i_2_n_0 ;
  wire \r_status_reg[5]_0 ;
  wire \r_status_reg[5]_1 ;
  wire \r_status_reg[8]_0 ;
  wire [3:0]\r_status_reg[9]_0 ;
  wire \r_status_reg[9]_1 ;
  wire \r_wr_logic_reg[3] ;
  wire \rd_data[0]_i_2__0_n_0 ;
  wire \rd_data[1]_i_2_n_0 ;
  wire [2:0]\rd_data_reg[1]_0 ;
  wire \rd_data_reg[5]_0 ;
  wire [9:0]\rd_data_reg[9]_0 ;
  wire [3:0]\rd_data_reg[9]_1 ;
  wire rx;
  wire rx_empty;
  wire slave_error_reg_0;
  wire [0:0]slot_decode_error;
  wire [0:0]slot_rd_done;
  wire [0:0]slot_slave_error;
  wire tx;
  wire tx_full;
  wire w_next_state;
  wire w_rd_done;
  wire w_wr_done;

  (* FSM_ENCODED_STATES = "ACTIVE:010,DONE:100,IDLE:001" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_r_state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\FSM_onehot_w_next_state_reg_n_0_[0] ),
        .PRE(arst_n_0),
        .Q(Q[0]));
  (* FSM_ENCODED_STATES = "ACTIVE:010,DONE:100,IDLE:001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_r_state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(arst_n_0),
        .D(\FSM_onehot_w_next_state_reg_n_0_[1] ),
        .Q(Q[1]));
  (* FSM_ENCODED_STATES = "ACTIVE:010,DONE:100,IDLE:001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_r_state_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(arst_n_0),
        .D(\FSM_onehot_w_next_state_reg_n_0_[2] ),
        .Q(Q[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b1)) 
    \FSM_onehot_w_next_state_reg[0] 
       (.CLR(1'b0),
        .D(D[0]),
        .G(w_next_state),
        .GE(1'b1),
        .Q(\FSM_onehot_w_next_state_reg_n_0_[0] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_w_next_state_reg[1] 
       (.CLR(1'b0),
        .D(D[1]),
        .G(w_next_state),
        .GE(1'b1),
        .Q(\FSM_onehot_w_next_state_reg_n_0_[1] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_w_next_state_reg[2] 
       (.CLR(1'b0),
        .D(\FSM_onehot_w_next_state_reg[2]_i_1__0_n_0 ),
        .G(w_next_state),
        .GE(1'b1),
        .Q(\FSM_onehot_w_next_state_reg_n_0_[2] ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT4 #(
    .INIT(16'hABAA)) 
    \FSM_onehot_w_next_state_reg[2]_i_1__0 
       (.I0(Q[1]),
        .I1(\FSM_onehot_r_state_reg[2]_0 ),
        .I2(S_AXI_rready),
        .I3(Q[2]),
        .O(\FSM_onehot_w_next_state_reg[2]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_onehot_w_next_state_reg[2]_i_2__1 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .O(w_next_state));
  top_mmio_subsystem_0_0_uart_core core
       (.CO(CO),
        .D({core_n_6,core_n_7,core_n_8,core_n_9,core_n_10,core_n_11}),
        .\FSM_sequential_r_state_reg[0] (core_n_14),
        .Q(r_control),
        .aclk(aclk),
        .arst_n(arst_n),
        .arst_n_0(arst_n_0),
        .debug_uart_tick(r_dvsr[2]),
        .debug_uart_tick_0(r_dvsr[0]),
        .debug_uart_tick_1(r_dvsr[1]),
        .empty_reg(rx_empty),
        .empty_reg_0(core_n_4),
        .empty_reg_1(core_n_5),
        .empty_reg_2(empty_reg),
        .full_reg(tx_full),
        .full_reg_0(core_n_16),
        .full_reg_1(core_n_17),
        .full_reg_2(full_reg),
        .\r_rd_logic_reg[2] (\r_rd_logic_reg[2] ),
        .\r_rd_logic_reg[2]_0 (\r_rd_logic_reg[2]_0 ),
        .\r_reg_array_reg[0][2] (\r_reg_array_reg[0][2] ),
        .r_status(r_status[5]),
        .\r_status_reg[3] (Q),
        .\r_status_reg[5] (\r_status[5]_i_2_n_0 ),
        .\r_status_reg[5]_0 (\r_status_reg[5]_0 ),
        .\r_status_reg[5]_1 (\r_status_reg[5]_1 ),
        .\r_wr_logic_reg[3] (\r_wr_logic_reg[3] ),
        .\rd_data_reg[0] (\rd_data[0]_i_2__0_n_0 ),
        .\rd_data_reg[1] (\rd_data[1]_i_2_n_0 ),
        .\rd_data_reg[5] (\rd_data_reg[5]_0 ),
        .rx(rx),
        .tx(tx));
  FDPE decode_error_reg
       (.C(aclk),
        .CE(1'b1),
        .D(decode_error_reg_0),
        .PRE(arst_n_0),
        .Q(slot_decode_error));
  FDCE \r_control_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(arst_n_0),
        .D(\r_control_reg[1]_0 [0]),
        .Q(r_control[0]));
  FDCE \r_control_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(arst_n_0),
        .D(\r_control_reg[1]_0 [1]),
        .Q(r_control[1]));
  FDCE \r_dvsr_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(arst_n_0),
        .D(\r_dvsr_reg[0]_0 ),
        .Q(r_dvsr[0]));
  FDCE \r_dvsr_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(arst_n_0),
        .D(\r_dvsr_reg[1]_0 ),
        .Q(r_dvsr[1]));
  FDCE \r_dvsr_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(arst_n_0),
        .D(\r_dvsr_reg[2]_0 ),
        .Q(r_dvsr[2]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \r_status[5]_i_2 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[0]),
        .O(\r_status[5]_i_2_n_0 ));
  FDCE \r_status_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(arst_n_0),
        .D(core_n_5),
        .Q(r_status[0]));
  FDCE \r_status_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(arst_n_0),
        .D(core_n_16),
        .Q(r_status[1]));
  FDCE \r_status_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(arst_n_0),
        .D(core_n_4),
        .Q(\r_status_reg[9]_0 [0]));
  FDCE \r_status_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(arst_n_0),
        .D(core_n_17),
        .Q(\r_status_reg[9]_0 [1]));
  FDCE \r_status_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(arst_n_0),
        .D(core_n_14),
        .Q(r_status[5]));
  FDCE \r_status_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(arst_n_0),
        .D(\r_status_reg[8]_0 ),
        .Q(\r_status_reg[9]_0 [2]));
  FDCE \r_status_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(arst_n_0),
        .D(\r_status_reg[9]_1 ),
        .Q(\r_status_reg[9]_0 [3]));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \rd_data[0]_i_2__0 
       (.I0(r_control[0]),
        .I1(\rd_data_reg[1]_0 [0]),
        .I2(r_status[0]),
        .I3(\rd_data_reg[1]_0 [2]),
        .I4(\rd_data_reg[1]_0 [1]),
        .I5(r_dvsr[0]),
        .O(\rd_data[0]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \rd_data[1]_i_2 
       (.I0(r_control[1]),
        .I1(\rd_data_reg[1]_0 [0]),
        .I2(r_status[1]),
        .I3(\rd_data_reg[1]_0 [2]),
        .I4(\rd_data_reg[1]_0 [1]),
        .I5(r_dvsr[1]),
        .O(\rd_data[1]_i_2_n_0 ));
  FDCE \rd_data_reg[0] 
       (.C(aclk),
        .CE(E),
        .CLR(arst_n_0),
        .D(core_n_11),
        .Q(\rd_data_reg[9]_0 [0]));
  FDCE \rd_data_reg[1] 
       (.C(aclk),
        .CE(E),
        .CLR(arst_n_0),
        .D(core_n_10),
        .Q(\rd_data_reg[9]_0 [1]));
  FDCE \rd_data_reg[2] 
       (.C(aclk),
        .CE(E),
        .CLR(arst_n_0),
        .D(\rd_data_reg[9]_1 [0]),
        .Q(\rd_data_reg[9]_0 [2]));
  FDCE \rd_data_reg[3] 
       (.C(aclk),
        .CE(E),
        .CLR(arst_n_0),
        .D(\rd_data_reg[9]_1 [1]),
        .Q(\rd_data_reg[9]_0 [3]));
  FDCE \rd_data_reg[4] 
       (.C(aclk),
        .CE(E),
        .CLR(arst_n_0),
        .D(core_n_9),
        .Q(\rd_data_reg[9]_0 [4]));
  FDCE \rd_data_reg[5] 
       (.C(aclk),
        .CE(E),
        .CLR(arst_n_0),
        .D(core_n_8),
        .Q(\rd_data_reg[9]_0 [5]));
  FDCE \rd_data_reg[6] 
       (.C(aclk),
        .CE(E),
        .CLR(arst_n_0),
        .D(core_n_7),
        .Q(\rd_data_reg[9]_0 [6]));
  FDCE \rd_data_reg[7] 
       (.C(aclk),
        .CE(E),
        .CLR(arst_n_0),
        .D(core_n_6),
        .Q(\rd_data_reg[9]_0 [7]));
  FDCE \rd_data_reg[8] 
       (.C(aclk),
        .CE(E),
        .CLR(arst_n_0),
        .D(\rd_data_reg[9]_1 [2]),
        .Q(\rd_data_reg[9]_0 [8]));
  FDCE \rd_data_reg[9] 
       (.C(aclk),
        .CE(E),
        .CLR(arst_n_0),
        .D(\rd_data_reg[9]_1 [3]),
        .Q(\rd_data_reg[9]_0 [9]));
  FDCE rd_done_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(arst_n_0),
        .D(w_rd_done),
        .Q(slot_rd_done));
  FDPE slave_error_reg
       (.C(aclk),
        .CE(1'b1),
        .D(slave_error_reg_0),
        .PRE(arst_n_0),
        .Q(slot_slave_error));
  FDCE wr_done_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(arst_n_0),
        .D(w_wr_done),
        .Q(debug_slot_wr_done));
endmodule

(* ORIG_REF_NAME = "uart_core" *) 
module top_mmio_subsystem_0_0_uart_core
   (CO,
    empty_reg,
    arst_n_0,
    full_reg,
    empty_reg_0,
    empty_reg_1,
    D,
    \r_rd_logic_reg[2] ,
    \r_rd_logic_reg[2]_0 ,
    \FSM_sequential_r_state_reg[0] ,
    tx,
    full_reg_0,
    full_reg_1,
    aclk,
    Q,
    \r_wr_logic_reg[3] ,
    debug_uart_tick,
    debug_uart_tick_0,
    debug_uart_tick_1,
    \r_status_reg[3] ,
    empty_reg_2,
    \rd_data_reg[0] ,
    \rd_data_reg[1] ,
    \rd_data_reg[5] ,
    r_status,
    \r_status_reg[5] ,
    \r_status_reg[5]_0 ,
    \r_status_reg[5]_1 ,
    full_reg_2,
    rx,
    arst_n,
    \r_reg_array_reg[0][2] );
  output [0:0]CO;
  output empty_reg;
  output arst_n_0;
  output full_reg;
  output empty_reg_0;
  output empty_reg_1;
  output [5:0]D;
  output \r_rd_logic_reg[2] ;
  output \r_rd_logic_reg[2]_0 ;
  output \FSM_sequential_r_state_reg[0] ;
  output tx;
  output full_reg_0;
  output full_reg_1;
  input aclk;
  input [1:0]Q;
  input \r_wr_logic_reg[3] ;
  input debug_uart_tick;
  input debug_uart_tick_0;
  input debug_uart_tick_1;
  input [2:0]\r_status_reg[3] ;
  input empty_reg_2;
  input \rd_data_reg[0] ;
  input \rd_data_reg[1] ;
  input \rd_data_reg[5] ;
  input [0:0]r_status;
  input \r_status_reg[5] ;
  input \r_status_reg[5]_0 ;
  input \r_status_reg[5]_1 ;
  input full_reg_2;
  input rx;
  input arst_n;
  input [2:0]\r_reg_array_reg[0][2] ;

  wire [0:0]CO;
  wire [5:0]D;
  wire \FSM_sequential_r_state_reg[0] ;
  wire [1:0]Q;
  wire aclk;
  wire arst_n;
  wire arst_n_0;
  wire buad_gen_n_1;
  wire debug_uart_tick;
  wire debug_uart_tick_0;
  wire debug_uart_tick_1;
  wire empty_reg;
  wire empty_reg_0;
  wire empty_reg_1;
  wire empty_reg_2;
  wire full_reg;
  wire full_reg_0;
  wire full_reg_1;
  wire full_reg_2;
  wire \r_rd_logic_reg[2] ;
  wire \r_rd_logic_reg[2]_0 ;
  wire [2:0]\r_reg_array_reg[0][2] ;
  wire [0:0]r_sampling_ticks;
  wire [1:1]r_state;
  wire [0:0]r_status;
  wire [2:0]\r_status_reg[3] ;
  wire \r_status_reg[5] ;
  wire \r_status_reg[5]_0 ;
  wire \r_status_reg[5]_1 ;
  wire \r_wr_logic_reg[3] ;
  wire \rd_data_reg[0] ;
  wire \rd_data_reg[1] ;
  wire \rd_data_reg[5] ;
  wire rx;
  wire rx_full;
  wire rx_inst_n_0;
  wire rx_inst_n_1;
  wire rx_inst_n_10;
  wire rx_inst_n_11;
  wire rx_inst_n_4;
  wire rx_inst_n_5;
  wire rx_inst_n_6;
  wire rx_inst_n_7;
  wire rx_inst_n_8;
  wire rx_inst_n_9;
  wire tx;
  wire tx_empty;
  wire tx_fifo_n_3;
  wire tx_inst_n_0;
  wire tx_inst_n_2;
  wire tx_inst_n_3;
  wire tx_inst_n_5;
  wire tx_inst_n_6;
  wire [1:0]w_in_shift;

  top_mmio_subsystem_0_0_buad_generator buad_gen
       (.CO(CO),
        .Q(r_sampling_ticks),
        .aclk(aclk),
        .debug_uart_tick(debug_uart_tick),
        .debug_uart_tick_0(debug_uart_tick_0),
        .debug_uart_tick_1(debug_uart_tick_1),
        .\r_cnt_reg[9]_0 (arst_n_0),
        .\r_sampling_ticks_reg[0] (buad_gen_n_1));
  top_mmio_subsystem_0_0_fifo rx_fifo
       (.D(D),
        .E(rx_inst_n_0),
        .Q(Q[0]),
        .aclk(aclk),
        .arst_n(arst_n),
        .arst_n_0(arst_n_0),
        .empty_reg(empty_reg),
        .empty_reg_0(empty_reg_1),
        .full_reg(full_reg_0),
        .\r_rd_logic_reg[2] (\r_rd_logic_reg[2] ),
        .\r_rd_logic_reg[2]_0 (\r_rd_logic_reg[2]_0 ),
        .\r_reg_array_reg[0][7] ({rx_inst_n_4,rx_inst_n_5,rx_inst_n_6,rx_inst_n_7,rx_inst_n_8,rx_inst_n_9,rx_inst_n_10,rx_inst_n_11}),
        .\r_reg_array_reg[15][7] (rx_inst_n_1),
        .r_status(r_status),
        .\r_status_reg[0] (\r_status_reg[3] ),
        .\rd_data_reg[0] (\rd_data_reg[0] ),
        .\rd_data_reg[1] (\rd_data_reg[1] ),
        .\rd_data_reg[5] (\rd_data_reg[5] ),
        .\rd_data_reg[7] (\r_wr_logic_reg[3] ),
        .rx_full(rx_full));
  top_mmio_subsystem_0_0_rx rx_inst
       (.CO(CO),
        .E(rx_inst_n_0),
        .\FSM_sequential_r_state_reg[0]_0 (\FSM_sequential_r_state_reg[0] ),
        .\FSM_sequential_r_state_reg[1]_0 (rx_inst_n_1),
        .Q(Q[0]),
        .aclk(aclk),
        .\dout_reg[7]_0 ({rx_inst_n_4,rx_inst_n_5,rx_inst_n_6,rx_inst_n_7,rx_inst_n_8,rx_inst_n_9,rx_inst_n_10,rx_inst_n_11}),
        .\r_data_bits_received_reg[0]_0 (arst_n_0),
        .\r_sampling_ticks_reg[0]_0 (r_sampling_ticks),
        .\r_sampling_ticks_reg[4]_0 (buad_gen_n_1),
        .\r_status_reg[5] (\r_status_reg[5] ),
        .\r_status_reg[5]_0 (\r_status_reg[5]_0 ),
        .\r_status_reg[5]_1 (\r_status_reg[5]_1 ),
        .\r_wr_logic_reg[3] (\r_wr_logic_reg[3] ),
        .rx(rx),
        .rx_full(rx_full));
  top_mmio_subsystem_0_0_fifo_0 tx_fifo
       (.D({tx_fifo_n_3,w_in_shift}),
        .E(tx_inst_n_3),
        .Q(Q[1]),
        .aclk(aclk),
        .empty_reg(empty_reg_0),
        .empty_reg_0(empty_reg_2),
        .empty_reg_1(tx_inst_n_0),
        .full_reg(full_reg),
        .full_reg_0(full_reg_1),
        .full_reg_1(full_reg_2),
        .full_reg_2(tx_inst_n_2),
        .\r_in_shift_reg[0] (r_state),
        .\r_in_shift_reg[1] ({tx_inst_n_5,tx_inst_n_6}),
        .\r_reg_array_reg[0][2] (arst_n_0),
        .\r_reg_array_reg[0][2]_0 (\r_reg_array_reg[0][2] ),
        .\r_status_reg[3] (\r_status_reg[3] ),
        .tx_empty(tx_empty));
  top_mmio_subsystem_0_0_tx tx_inst
       (.CO(CO),
        .D({tx_fifo_n_3,w_in_shift}),
        .E(tx_inst_n_3),
        .\FSM_sequential_r_state_reg[1]_0 (tx_inst_n_0),
        .Q(r_state),
        .aclk(aclk),
        .full_reg(empty_reg_2),
        .\r_control_reg[1] (tx_inst_n_2),
        .\r_in_shift_reg[0]_0 (arst_n_0),
        .\r_in_shift_reg[2]_0 ({tx_inst_n_5,tx_inst_n_6}),
        .\r_rd_logic_reg[0] (Q[1]),
        .tx(tx),
        .tx_empty(tx_empty));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
