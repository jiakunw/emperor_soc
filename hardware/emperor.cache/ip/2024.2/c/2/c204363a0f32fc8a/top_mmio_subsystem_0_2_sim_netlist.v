// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Tue Aug 12 14:22:08 2025
// Host        : wangjiakun-Inspiron-14-Plus-7430 running 64-bit Ubuntu 24.04.1 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ top_mmio_subsystem_0_2_sim_netlist.v
// Design      : top_mmio_subsystem_0_2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mmio_controller
   (S_AXI_awready,
    \r_state_reg[2]_0 ,
    S_AXI_wready,
    D,
    \r_addr_reg[10]_0 ,
    Q,
    \r_addr_reg[11]_0 ,
    \S_AXI_wdata[31] ,
    \r_state_reg[0]_0 ,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rresp,
    S_AXI_rvalid,
    \r_addr_reg[9]_0 ,
    w_en__0,
    w_en__0_0,
    \FSM_onehot_r_state_reg[0] ,
    w_en__0_1,
    \S_AXI_wdata[7] ,
    S_AXI_wvalid_0,
    \r_addr_reg[1]_0 ,
    w_slave_error__0,
    \r_addr_reg[1]_1 ,
    E,
    w_rd_done__0,
    \r_addr_reg[0]_0 ,
    w_wr_done,
    w_rd_done,
    w_decode_error,
    \FSM_onehot_r_state_reg[1] ,
    \r_addr_reg[1]_2 ,
    w_decode_error__0,
    \r_addr_reg[3]_0 ,
    w_rd_done_2,
    \r_addr_reg[1]_3 ,
    w_en_wr,
    w_led_data,
    \r_addr_reg[2]_0 ,
    \r_addr_reg[3]_1 ,
    w_en_rd,
    w_wr_done_3,
    w_rd_data,
    S_AXI_awready_0,
    S_AXI_awaddr,
    S_AXI_araddr,
    S_AXI_arvalid,
    S_AXI_awvalid,
    S_AXI_arready,
    S_AXI_wvalid,
    S_AXI_wdata,
    S_AXI_bready,
    S_AXI_rready,
    \S_AXI_rdata[31] ,
    \slot_rd_data[1] ,
    \S_AXI_rdata[9] ,
    slot_slave_error,
    slot_decode_error,
    slot_rd_done,
    slot_wr_done,
    \r_control_reg[0] ,
    \r_reg_array_reg[0][0] ,
    slave_error_reg,
    decode_error_reg,
    \rd_data_reg[9] ,
    \rd_data_reg[9]_0 ,
    \rd_data_reg[9]_1 ,
    tx_full,
    \rd_data_reg[0] ,
    \rd_data_reg[9]_2 ,
    \rd_data_reg[1] ,
    \rd_data_reg[2] ,
    \rd_data_reg[3] ,
    \rd_data_reg[4] ,
    \rd_data_reg[5] ,
    \rd_data_reg[6] ,
    \rd_data_reg[7] ,
    rx_empty,
    \rd_data_reg[0]_0 ,
    aclk,
    \r_state_reg[2]_1 );
  output S_AXI_awready;
  output \r_state_reg[2]_0 ;
  output S_AXI_wready;
  output [9:0]D;
  output \r_addr_reg[10]_0 ;
  output [5:0]Q;
  output \r_addr_reg[11]_0 ;
  output [31:0]\S_AXI_wdata[31] ;
  output \r_state_reg[0]_0 ;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  output \r_addr_reg[9]_0 ;
  output w_en__0;
  output w_en__0_0;
  output [0:0]\FSM_onehot_r_state_reg[0] ;
  output w_en__0_1;
  output [7:0]\S_AXI_wdata[7] ;
  output [1:0]S_AXI_wvalid_0;
  output \r_addr_reg[1]_0 ;
  output w_slave_error__0;
  output \r_addr_reg[1]_1 ;
  output [0:0]E;
  output w_rd_done__0;
  output [0:0]\r_addr_reg[0]_0 ;
  output w_wr_done;
  output w_rd_done;
  output w_decode_error;
  output [0:0]\FSM_onehot_r_state_reg[1] ;
  output \r_addr_reg[1]_2 ;
  output w_decode_error__0;
  output [0:0]\r_addr_reg[3]_0 ;
  output w_rd_done_2;
  output \r_addr_reg[1]_3 ;
  output w_en_wr;
  output [3:0]w_led_data;
  output [9:0]\r_addr_reg[2]_0 ;
  output \r_addr_reg[3]_1 ;
  output w_en_rd;
  output w_wr_done_3;
  output w_rd_data;
  input S_AXI_awready_0;
  input [12:0]S_AXI_awaddr;
  input [12:0]S_AXI_araddr;
  input S_AXI_arvalid;
  input S_AXI_awvalid;
  input S_AXI_arready;
  input S_AXI_wvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_bready;
  input S_AXI_rready;
  input [31:0]\S_AXI_rdata[31] ;
  input [0:0]\slot_rd_data[1] ;
  input [9:0]\S_AXI_rdata[9] ;
  input [1:0]slot_slave_error;
  input [2:0]slot_decode_error;
  input [2:0]slot_rd_done;
  input [2:0]slot_wr_done;
  input [1:0]\r_control_reg[0] ;
  input [1:0]\r_reg_array_reg[0][0] ;
  input [1:0]slave_error_reg;
  input [0:0]decode_error_reg;
  input \rd_data_reg[9] ;
  input \rd_data_reg[9]_0 ;
  input \rd_data_reg[9]_1 ;
  input tx_full;
  input \rd_data_reg[0] ;
  input [9:0]\rd_data_reg[9]_2 ;
  input \rd_data_reg[1] ;
  input \rd_data_reg[2] ;
  input \rd_data_reg[3] ;
  input \rd_data_reg[4] ;
  input \rd_data_reg[5] ;
  input \rd_data_reg[6] ;
  input \rd_data_reg[7] ;
  input rx_empty;
  input \rd_data_reg[0]_0 ;
  input aclk;
  input \r_state_reg[2]_1 ;

  wire [9:0]D;
  wire [0:0]E;
  wire [0:0]\FSM_onehot_r_state_reg[0] ;
  wire [0:0]\FSM_onehot_r_state_reg[1] ;
  wire \FSM_onehot_w_next_state_reg[1]_i_3__0_n_0 ;
  wire \FSM_onehot_w_next_state_reg[1]_i_3_n_0 ;
  wire \FSM_onehot_w_next_state_reg[1]_i_4_n_0 ;
  wire [5:0]Q;
  wire [12:0]S_AXI_araddr;
  wire S_AXI_arready;
  wire S_AXI_arvalid;
  wire [12:0]S_AXI_awaddr;
  wire S_AXI_awready;
  wire S_AXI_awready_0;
  wire S_AXI_awvalid;
  wire S_AXI_bready;
  wire [1:0]S_AXI_bresp;
  wire \S_AXI_bresp[0]_INST_0_i_1_n_0 ;
  wire \S_AXI_bresp[0]_INST_0_i_2_n_0 ;
  wire \S_AXI_bresp[1]_INST_0_i_1_n_0 ;
  wire S_AXI_bvalid;
  wire [31:0]S_AXI_rdata;
  wire [31:0]\S_AXI_rdata[31] ;
  wire \S_AXI_rdata[31]_INST_0_i_1_n_0 ;
  wire [9:0]\S_AXI_rdata[9] ;
  wire \S_AXI_rdata[9]_INST_0_i_1_n_0 ;
  wire S_AXI_rready;
  wire [1:0]S_AXI_rresp;
  wire \S_AXI_rresp[1]_INST_0_i_1_n_0 ;
  wire S_AXI_rvalid;
  wire [31:0]S_AXI_wdata;
  wire [31:0]\S_AXI_wdata[31] ;
  wire [7:0]\S_AXI_wdata[7] ;
  wire S_AXI_wready;
  wire S_AXI_wvalid;
  wire [1:0]S_AXI_wvalid_0;
  wire aclk;
  wire [0:0]decode_error_reg;
  wire \out_ports[3]_i_6_n_0 ;
  wire [11:8]r_addr;
  wire \r_addr[15]_i_3_n_0 ;
  wire [0:0]\r_addr_reg[0]_0 ;
  wire \r_addr_reg[10]_0 ;
  wire \r_addr_reg[11]_0 ;
  wire \r_addr_reg[1]_0 ;
  wire \r_addr_reg[1]_1 ;
  wire \r_addr_reg[1]_2 ;
  wire \r_addr_reg[1]_3 ;
  wire [9:0]\r_addr_reg[2]_0 ;
  wire [0:0]\r_addr_reg[3]_0 ;
  wire \r_addr_reg[3]_1 ;
  wire \r_addr_reg[9]_0 ;
  wire \r_auto_reload[31]_i_3_n_0 ;
  wire \r_auto_reload[31]_i_4_n_0 ;
  wire \r_auto_reload[9]_i_2_n_0 ;
  wire [1:0]\r_control_reg[0] ;
  wire \r_dvsr[9]_i_3_n_0 ;
  wire \r_reg_array[15][7]_i_4_n_0 ;
  wire [1:0]\r_reg_array_reg[0][0] ;
  wire \r_state_reg[0]_0 ;
  wire \r_state_reg[2]_0 ;
  wire \r_state_reg[2]_1 ;
  wire \r_state_reg_n_0_[0] ;
  wire \r_state_reg_n_0_[1] ;
  wire \r_state_reg_n_0_[2] ;
  wire \rd_data[0]_i_2_n_0 ;
  wire \rd_data[7]_i_3_n_0 ;
  wire \rd_data_reg[0] ;
  wire \rd_data_reg[0]_0 ;
  wire \rd_data_reg[1] ;
  wire \rd_data_reg[2] ;
  wire \rd_data_reg[3] ;
  wire \rd_data_reg[4] ;
  wire \rd_data_reg[5] ;
  wire \rd_data_reg[6] ;
  wire \rd_data_reg[7] ;
  wire \rd_data_reg[9] ;
  wire \rd_data_reg[9]_0 ;
  wire \rd_data_reg[9]_1 ;
  wire [9:0]\rd_data_reg[9]_2 ;
  wire rd_done_i_2_n_0;
  wire rx_empty;
  wire [7:4]sel0;
  wire [1:0]slave_error_reg;
  wire [2:0]slot_decode_error;
  wire [0:0]\slot_rd_data[1] ;
  wire [2:0]slot_rd_done;
  wire [1:0]slot_slave_error;
  wire [2:0]slot_wr_done;
  wire tx_full;
  wire [15:0]w_addr;
  wire w_decode_error;
  wire w_decode_error__0;
  wire w_en__0;
  wire w_en__0_0;
  wire w_en__0_1;
  wire w_en_addr;
  wire w_en_rd;
  wire w_en_wr;
  wire [3:0]w_led_data;
  wire [2:0]w_next_state;
  wire \w_next_state_reg[0]_i_2_n_0 ;
  wire \w_next_state_reg[1]_i_2_n_0 ;
  wire \w_next_state_reg[1]_i_3_n_0 ;
  wire \w_next_state_reg[1]_i_4_n_0 ;
  wire \w_next_state_reg[2]_i_2_n_0 ;
  wire \w_next_state_reg_n_0_[0] ;
  wire \w_next_state_reg_n_0_[1] ;
  wire \w_next_state_reg_n_0_[2] ;
  wire w_rd_data;
  wire w_rd_done;
  wire w_rd_done_2;
  wire w_rd_done__0;
  wire w_rd_done_reg_i_3_n_0;
  wire w_rd_done_reg_i_4_n_0;
  wire w_slave_error__0;
  wire w_slave_error_reg_i_4_n_0;
  wire w_wr_done;
  wire w_wr_done_3;
  wire wr_done_i_2_n_0;

  LUT6 #(
    .INIT(64'h0002000200020000)) 
    \FSM_onehot_w_next_state_reg[0]_i_2 
       (.I0(r_addr[9]),
        .I1(r_addr[8]),
        .I2(\FSM_onehot_w_next_state_reg[1]_i_3_n_0 ),
        .I3(\r_addr_reg[10]_0 ),
        .I4(S_AXI_wvalid),
        .I5(S_AXI_rready),
        .O(w_en__0_1));
  LUT6 #(
    .INIT(64'h00000000000000A8)) 
    \FSM_onehot_w_next_state_reg[1]_i_1__1 
       (.I0(\r_control_reg[0] [0]),
        .I1(S_AXI_rready),
        .I2(S_AXI_wvalid),
        .I3(\r_addr_reg[10]_0 ),
        .I4(\FSM_onehot_w_next_state_reg[1]_i_3_n_0 ),
        .I5(\FSM_onehot_w_next_state_reg[1]_i_4_n_0 ),
        .O(\FSM_onehot_r_state_reg[0] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_onehot_w_next_state_reg[1]_i_2 
       (.I0(Q[5]),
        .I1(r_addr[11]),
        .I2(sel0[4]),
        .I3(sel0[7]),
        .I4(sel0[6]),
        .I5(sel0[5]),
        .O(\r_addr_reg[10]_0 ));
  LUT5 #(
    .INIT(32'h0000000E)) 
    \FSM_onehot_w_next_state_reg[1]_i_2__0 
       (.I0(S_AXI_wvalid),
        .I1(S_AXI_rready),
        .I2(\S_AXI_rdata[31]_INST_0_i_1_n_0 ),
        .I3(\FSM_onehot_w_next_state_reg[1]_i_3__0_n_0 ),
        .I4(\FSM_onehot_w_next_state_reg[1]_i_3_n_0 ),
        .O(w_en__0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFFC7)) 
    \FSM_onehot_w_next_state_reg[1]_i_3 
       (.I0(S_AXI_wvalid),
        .I1(\r_state_reg_n_0_[0] ),
        .I2(\r_state_reg_n_0_[2] ),
        .I3(\r_state_reg_n_0_[1] ),
        .O(\FSM_onehot_w_next_state_reg[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_onehot_w_next_state_reg[1]_i_3__0 
       (.I0(sel0[5]),
        .I1(sel0[6]),
        .I2(sel0[7]),
        .I3(sel0[4]),
        .I4(r_addr[11]),
        .O(\FSM_onehot_w_next_state_reg[1]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000E0000)) 
    \FSM_onehot_w_next_state_reg[1]_i_3__1 
       (.I0(S_AXI_wvalid),
        .I1(S_AXI_rready),
        .I2(\FSM_onehot_w_next_state_reg[1]_i_3_n_0 ),
        .I3(r_addr[9]),
        .I4(r_addr[8]),
        .I5(\r_addr_reg[10]_0 ),
        .O(w_en__0_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_onehot_w_next_state_reg[1]_i_4 
       (.I0(r_addr[8]),
        .I1(r_addr[9]),
        .O(\FSM_onehot_w_next_state_reg[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    S_AXI_arready_INST_0
       (.I0(\r_state_reg_n_0_[2] ),
        .I1(\r_state_reg_n_0_[1] ),
        .I2(\r_state_reg_n_0_[0] ),
        .I3(S_AXI_arready),
        .O(\r_state_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    S_AXI_awready_INST_0
       (.I0(\r_state_reg_n_0_[0] ),
        .I1(\r_state_reg_n_0_[1] ),
        .I2(\r_state_reg_n_0_[2] ),
        .I3(S_AXI_awready_0),
        .O(S_AXI_awready));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \S_AXI_bresp[0]_INST_0 
       (.I0(\r_state_reg_n_0_[2] ),
        .I1(\r_state_reg_n_0_[0] ),
        .I2(\r_state_reg_n_0_[1] ),
        .I3(\S_AXI_bresp[0]_INST_0_i_1_n_0 ),
        .O(S_AXI_bresp[0]));
  LUT6 #(
    .INIT(64'h0000000051505155)) 
    \S_AXI_bresp[0]_INST_0_i_1 
       (.I0(\S_AXI_bresp[0]_INST_0_i_2_n_0 ),
        .I1(slot_slave_error[1]),
        .I2(r_addr[8]),
        .I3(r_addr[9]),
        .I4(slot_slave_error[0]),
        .I5(\S_AXI_rresp[1]_INST_0_i_1_n_0 ),
        .O(\S_AXI_bresp[0]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \S_AXI_bresp[0]_INST_0_i_2 
       (.I0(Q[5]),
        .I1(r_addr[11]),
        .O(\S_AXI_bresp[0]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \S_AXI_bresp[1]_INST_0 
       (.I0(\S_AXI_bresp[1]_INST_0_i_1_n_0 ),
        .I1(\r_state_reg_n_0_[1] ),
        .I2(\r_state_reg_n_0_[0] ),
        .I3(\r_state_reg_n_0_[2] ),
        .I4(Q[5]),
        .I5(r_addr[11]),
        .O(S_AXI_bresp[1]));
  LUT5 #(
    .INIT(32'h0E02FFFF)) 
    \S_AXI_bresp[1]_INST_0_i_1 
       (.I0(slot_slave_error[0]),
        .I1(r_addr[9]),
        .I2(r_addr[8]),
        .I3(slot_slave_error[1]),
        .I4(\S_AXI_rresp[1]_INST_0_i_1_n_0 ),
        .O(\S_AXI_bresp[1]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h08)) 
    S_AXI_bvalid_INST_0
       (.I0(\r_state_reg_n_0_[1] ),
        .I1(\r_state_reg_n_0_[0] ),
        .I2(\r_state_reg_n_0_[2] ),
        .O(S_AXI_bvalid));
  LUT6 #(
    .INIT(64'h0A0AA8080000A808)) 
    \S_AXI_rdata[0]_INST_0 
       (.I0(\S_AXI_rdata[9]_INST_0_i_1_n_0 ),
        .I1(\S_AXI_rdata[31] [0]),
        .I2(r_addr[8]),
        .I3(\slot_rd_data[1] ),
        .I4(r_addr[9]),
        .I5(\S_AXI_rdata[9] [0]),
        .O(S_AXI_rdata[0]));
  LUT6 #(
    .INIT(64'h0000000000200000)) 
    \S_AXI_rdata[10]_INST_0 
       (.I0(\r_state_reg_n_0_[2] ),
        .I1(\r_state_reg_n_0_[0] ),
        .I2(\r_state_reg_n_0_[1] ),
        .I3(r_addr[11]),
        .I4(\S_AXI_rdata[31] [10]),
        .I5(\S_AXI_rdata[31]_INST_0_i_1_n_0 ),
        .O(S_AXI_rdata[10]));
  LUT6 #(
    .INIT(64'h0000000000200000)) 
    \S_AXI_rdata[11]_INST_0 
       (.I0(\r_state_reg_n_0_[2] ),
        .I1(\r_state_reg_n_0_[0] ),
        .I2(\r_state_reg_n_0_[1] ),
        .I3(r_addr[11]),
        .I4(\S_AXI_rdata[31] [11]),
        .I5(\S_AXI_rdata[31]_INST_0_i_1_n_0 ),
        .O(S_AXI_rdata[11]));
  LUT6 #(
    .INIT(64'h0000000000200000)) 
    \S_AXI_rdata[12]_INST_0 
       (.I0(\r_state_reg_n_0_[2] ),
        .I1(\r_state_reg_n_0_[0] ),
        .I2(\r_state_reg_n_0_[1] ),
        .I3(r_addr[11]),
        .I4(\S_AXI_rdata[31] [12]),
        .I5(\S_AXI_rdata[31]_INST_0_i_1_n_0 ),
        .O(S_AXI_rdata[12]));
  LUT6 #(
    .INIT(64'h0000000000200000)) 
    \S_AXI_rdata[13]_INST_0 
       (.I0(\r_state_reg_n_0_[2] ),
        .I1(\r_state_reg_n_0_[0] ),
        .I2(\r_state_reg_n_0_[1] ),
        .I3(r_addr[11]),
        .I4(\S_AXI_rdata[31] [13]),
        .I5(\S_AXI_rdata[31]_INST_0_i_1_n_0 ),
        .O(S_AXI_rdata[13]));
  LUT6 #(
    .INIT(64'h0000000000200000)) 
    \S_AXI_rdata[14]_INST_0 
       (.I0(\r_state_reg_n_0_[2] ),
        .I1(\r_state_reg_n_0_[0] ),
        .I2(\r_state_reg_n_0_[1] ),
        .I3(r_addr[11]),
        .I4(\S_AXI_rdata[31] [14]),
        .I5(\S_AXI_rdata[31]_INST_0_i_1_n_0 ),
        .O(S_AXI_rdata[14]));
  LUT6 #(
    .INIT(64'h0000000000200000)) 
    \S_AXI_rdata[15]_INST_0 
       (.I0(\r_state_reg_n_0_[2] ),
        .I1(\r_state_reg_n_0_[0] ),
        .I2(\r_state_reg_n_0_[1] ),
        .I3(r_addr[11]),
        .I4(\S_AXI_rdata[31] [15]),
        .I5(\S_AXI_rdata[31]_INST_0_i_1_n_0 ),
        .O(S_AXI_rdata[15]));
  LUT6 #(
    .INIT(64'h0000000000200000)) 
    \S_AXI_rdata[16]_INST_0 
       (.I0(\r_state_reg_n_0_[2] ),
        .I1(\r_state_reg_n_0_[0] ),
        .I2(\r_state_reg_n_0_[1] ),
        .I3(r_addr[11]),
        .I4(\S_AXI_rdata[31] [16]),
        .I5(\S_AXI_rdata[31]_INST_0_i_1_n_0 ),
        .O(S_AXI_rdata[16]));
  LUT6 #(
    .INIT(64'h0000000000200000)) 
    \S_AXI_rdata[17]_INST_0 
       (.I0(\r_state_reg_n_0_[2] ),
        .I1(\r_state_reg_n_0_[0] ),
        .I2(\r_state_reg_n_0_[1] ),
        .I3(r_addr[11]),
        .I4(\S_AXI_rdata[31] [17]),
        .I5(\S_AXI_rdata[31]_INST_0_i_1_n_0 ),
        .O(S_AXI_rdata[17]));
  LUT6 #(
    .INIT(64'h0000000000200000)) 
    \S_AXI_rdata[18]_INST_0 
       (.I0(\r_state_reg_n_0_[2] ),
        .I1(\r_state_reg_n_0_[0] ),
        .I2(\r_state_reg_n_0_[1] ),
        .I3(r_addr[11]),
        .I4(\S_AXI_rdata[31] [18]),
        .I5(\S_AXI_rdata[31]_INST_0_i_1_n_0 ),
        .O(S_AXI_rdata[18]));
  LUT6 #(
    .INIT(64'h0000000000200000)) 
    \S_AXI_rdata[19]_INST_0 
       (.I0(\r_state_reg_n_0_[2] ),
        .I1(\r_state_reg_n_0_[0] ),
        .I2(\r_state_reg_n_0_[1] ),
        .I3(r_addr[11]),
        .I4(\S_AXI_rdata[31] [19]),
        .I5(\S_AXI_rdata[31]_INST_0_i_1_n_0 ),
        .O(S_AXI_rdata[19]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
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
    .INIT(64'h0000000000200000)) 
    \S_AXI_rdata[20]_INST_0 
       (.I0(\r_state_reg_n_0_[2] ),
        .I1(\r_state_reg_n_0_[0] ),
        .I2(\r_state_reg_n_0_[1] ),
        .I3(r_addr[11]),
        .I4(\S_AXI_rdata[31] [20]),
        .I5(\S_AXI_rdata[31]_INST_0_i_1_n_0 ),
        .O(S_AXI_rdata[20]));
  LUT6 #(
    .INIT(64'h0000000000200000)) 
    \S_AXI_rdata[21]_INST_0 
       (.I0(\r_state_reg_n_0_[2] ),
        .I1(\r_state_reg_n_0_[0] ),
        .I2(\r_state_reg_n_0_[1] ),
        .I3(r_addr[11]),
        .I4(\S_AXI_rdata[31] [21]),
        .I5(\S_AXI_rdata[31]_INST_0_i_1_n_0 ),
        .O(S_AXI_rdata[21]));
  LUT6 #(
    .INIT(64'h0000000000200000)) 
    \S_AXI_rdata[22]_INST_0 
       (.I0(\r_state_reg_n_0_[2] ),
        .I1(\r_state_reg_n_0_[0] ),
        .I2(\r_state_reg_n_0_[1] ),
        .I3(r_addr[11]),
        .I4(\S_AXI_rdata[31] [22]),
        .I5(\S_AXI_rdata[31]_INST_0_i_1_n_0 ),
        .O(S_AXI_rdata[22]));
  LUT6 #(
    .INIT(64'h0000000000200000)) 
    \S_AXI_rdata[23]_INST_0 
       (.I0(\r_state_reg_n_0_[2] ),
        .I1(\r_state_reg_n_0_[0] ),
        .I2(\r_state_reg_n_0_[1] ),
        .I3(r_addr[11]),
        .I4(\S_AXI_rdata[31] [23]),
        .I5(\S_AXI_rdata[31]_INST_0_i_1_n_0 ),
        .O(S_AXI_rdata[23]));
  LUT6 #(
    .INIT(64'h0000000000200000)) 
    \S_AXI_rdata[24]_INST_0 
       (.I0(\r_state_reg_n_0_[2] ),
        .I1(\r_state_reg_n_0_[0] ),
        .I2(\r_state_reg_n_0_[1] ),
        .I3(r_addr[11]),
        .I4(\S_AXI_rdata[31] [24]),
        .I5(\S_AXI_rdata[31]_INST_0_i_1_n_0 ),
        .O(S_AXI_rdata[24]));
  LUT6 #(
    .INIT(64'h0000000000200000)) 
    \S_AXI_rdata[25]_INST_0 
       (.I0(\r_state_reg_n_0_[2] ),
        .I1(\r_state_reg_n_0_[0] ),
        .I2(\r_state_reg_n_0_[1] ),
        .I3(r_addr[11]),
        .I4(\S_AXI_rdata[31] [25]),
        .I5(\S_AXI_rdata[31]_INST_0_i_1_n_0 ),
        .O(S_AXI_rdata[25]));
  LUT6 #(
    .INIT(64'h0000000000200000)) 
    \S_AXI_rdata[26]_INST_0 
       (.I0(\r_state_reg_n_0_[2] ),
        .I1(\r_state_reg_n_0_[0] ),
        .I2(\r_state_reg_n_0_[1] ),
        .I3(r_addr[11]),
        .I4(\S_AXI_rdata[31] [26]),
        .I5(\S_AXI_rdata[31]_INST_0_i_1_n_0 ),
        .O(S_AXI_rdata[26]));
  LUT6 #(
    .INIT(64'h0000000000200000)) 
    \S_AXI_rdata[27]_INST_0 
       (.I0(\r_state_reg_n_0_[2] ),
        .I1(\r_state_reg_n_0_[0] ),
        .I2(\r_state_reg_n_0_[1] ),
        .I3(r_addr[11]),
        .I4(\S_AXI_rdata[31] [27]),
        .I5(\S_AXI_rdata[31]_INST_0_i_1_n_0 ),
        .O(S_AXI_rdata[27]));
  LUT6 #(
    .INIT(64'h0000000000200000)) 
    \S_AXI_rdata[28]_INST_0 
       (.I0(\r_state_reg_n_0_[2] ),
        .I1(\r_state_reg_n_0_[0] ),
        .I2(\r_state_reg_n_0_[1] ),
        .I3(r_addr[11]),
        .I4(\S_AXI_rdata[31] [28]),
        .I5(\S_AXI_rdata[31]_INST_0_i_1_n_0 ),
        .O(S_AXI_rdata[28]));
  LUT6 #(
    .INIT(64'h0000000000200000)) 
    \S_AXI_rdata[29]_INST_0 
       (.I0(\r_state_reg_n_0_[2] ),
        .I1(\r_state_reg_n_0_[0] ),
        .I2(\r_state_reg_n_0_[1] ),
        .I3(r_addr[11]),
        .I4(\S_AXI_rdata[31] [29]),
        .I5(\S_AXI_rdata[31]_INST_0_i_1_n_0 ),
        .O(S_AXI_rdata[29]));
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
    .INIT(64'h0000000000200000)) 
    \S_AXI_rdata[30]_INST_0 
       (.I0(\r_state_reg_n_0_[2] ),
        .I1(\r_state_reg_n_0_[0] ),
        .I2(\r_state_reg_n_0_[1] ),
        .I3(r_addr[11]),
        .I4(\S_AXI_rdata[31] [30]),
        .I5(\S_AXI_rdata[31]_INST_0_i_1_n_0 ),
        .O(S_AXI_rdata[30]));
  LUT6 #(
    .INIT(64'h0000000000200000)) 
    \S_AXI_rdata[31]_INST_0 
       (.I0(\r_state_reg_n_0_[2] ),
        .I1(\r_state_reg_n_0_[0] ),
        .I2(\r_state_reg_n_0_[1] ),
        .I3(r_addr[11]),
        .I4(\S_AXI_rdata[31] [31]),
        .I5(\S_AXI_rdata[31]_INST_0_i_1_n_0 ),
        .O(S_AXI_rdata[31]));
  LUT3 #(
    .INIT(8'hFE)) 
    \S_AXI_rdata[31]_INST_0_i_1 
       (.I0(Q[5]),
        .I1(r_addr[9]),
        .I2(r_addr[8]),
        .O(\S_AXI_rdata[31]_INST_0_i_1_n_0 ));
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
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \S_AXI_rdata[9]_INST_0_i_1 
       (.I0(r_addr[11]),
        .I1(Q[5]),
        .I2(\r_state_reg_n_0_[1] ),
        .I3(\r_state_reg_n_0_[0] ),
        .I4(\r_state_reg_n_0_[2] ),
        .O(\S_AXI_rdata[9]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \S_AXI_rresp[0]_INST_0 
       (.I0(\S_AXI_bresp[0]_INST_0_i_1_n_0 ),
        .I1(\r_state_reg_n_0_[1] ),
        .I2(\r_state_reg_n_0_[0] ),
        .I3(\r_state_reg_n_0_[2] ),
        .O(S_AXI_rresp[0]));
  LUT6 #(
    .INIT(64'h5D5F5D5500000000)) 
    \S_AXI_rresp[1]_INST_0 
       (.I0(\S_AXI_rresp[1]_INST_0_i_1_n_0 ),
        .I1(slot_slave_error[1]),
        .I2(r_addr[8]),
        .I3(r_addr[9]),
        .I4(slot_slave_error[0]),
        .I5(\S_AXI_rdata[9]_INST_0_i_1_n_0 ),
        .O(S_AXI_rresp[1]));
  LUT5 #(
    .INIT(32'hCF44CF77)) 
    \S_AXI_rresp[1]_INST_0_i_1 
       (.I0(slot_decode_error[2]),
        .I1(r_addr[9]),
        .I2(slot_decode_error[1]),
        .I3(r_addr[8]),
        .I4(slot_decode_error[0]),
        .O(\S_AXI_rresp[1]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h20)) 
    S_AXI_rvalid_INST_0
       (.I0(\r_state_reg_n_0_[1] ),
        .I1(\r_state_reg_n_0_[0] ),
        .I2(\r_state_reg_n_0_[2] ),
        .O(S_AXI_rvalid));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    S_AXI_wready_INST_0
       (.I0(S_AXI_wvalid),
        .I1(\r_state_reg_n_0_[0] ),
        .I2(\r_state_reg_n_0_[2] ),
        .I3(\r_state_reg_n_0_[1] ),
        .O(S_AXI_wready));
  LUT6 #(
    .INIT(64'hFAFAFAC200000000)) 
    decode_error_i_1
       (.I0(S_AXI_rready),
        .I1(Q[4]),
        .I2(S_AXI_wvalid),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(decode_error_reg),
        .O(w_decode_error));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    empty_i_4
       (.I0(w_slave_error_reg_i_4_n_0),
        .I1(\r_addr_reg[1]_1 ),
        .I2(S_AXI_rready),
        .I3(rx_empty),
        .I4(Q[4]),
        .I5(\r_control_reg[0] [1]),
        .O(w_en_rd));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    \out_ports[0]_i_2 
       (.I0(Q[4]),
        .I1(w_slave_error_reg_i_4_n_0),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(S_AXI_wvalid),
        .I5(decode_error_reg),
        .O(w_led_data[0]));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \out_ports[1]_i_2 
       (.I0(Q[4]),
        .I1(Q[1]),
        .I2(\r_auto_reload[31]_i_3_n_0 ),
        .I3(Q[0]),
        .I4(S_AXI_wvalid),
        .I5(decode_error_reg),
        .O(w_led_data[1]));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \out_ports[2]_i_2 
       (.I0(Q[4]),
        .I1(Q[1]),
        .I2(\r_dvsr[9]_i_3_n_0 ),
        .I3(Q[0]),
        .I4(S_AXI_wvalid),
        .I5(decode_error_reg),
        .O(w_led_data[2]));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \out_ports[3]_i_3 
       (.I0(r_addr[11]),
        .I1(sel0[4]),
        .I2(r_addr[8]),
        .I3(\r_state_reg_n_0_[0] ),
        .I4(\r_state_reg_n_0_[2] ),
        .I5(\r_state_reg_n_0_[1] ),
        .O(\r_addr_reg[11]_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \out_ports[3]_i_4 
       (.I0(r_addr[9]),
        .I1(sel0[5]),
        .I2(sel0[6]),
        .I3(sel0[7]),
        .O(\r_addr_reg[9]_0 ));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \out_ports[3]_i_5 
       (.I0(Q[4]),
        .I1(Q[1]),
        .I2(\out_ports[3]_i_6_n_0 ),
        .I3(Q[0]),
        .I4(S_AXI_wvalid),
        .I5(decode_error_reg),
        .O(w_led_data[3]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \out_ports[3]_i_6 
       (.I0(Q[2]),
        .I1(Q[3]),
        .O(\out_ports[3]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hF4444444)) 
    \r_addr[0]_i_1 
       (.I0(\r_addr[15]_i_3_n_0 ),
        .I1(S_AXI_awaddr[0]),
        .I2(S_AXI_araddr[0]),
        .I3(S_AXI_awready_0),
        .I4(\r_state_reg[2]_0 ),
        .O(w_addr[0]));
  LUT5 #(
    .INIT(32'hF4444444)) 
    \r_addr[10]_i_1 
       (.I0(\r_addr[15]_i_3_n_0 ),
        .I1(S_AXI_awaddr[7]),
        .I2(S_AXI_araddr[7]),
        .I3(S_AXI_awready_0),
        .I4(\r_state_reg[2]_0 ),
        .O(w_addr[10]));
  LUT5 #(
    .INIT(32'hF4444444)) 
    \r_addr[11]_i_1 
       (.I0(\r_addr[15]_i_3_n_0 ),
        .I1(S_AXI_awaddr[8]),
        .I2(S_AXI_araddr[8]),
        .I3(S_AXI_awready_0),
        .I4(\r_state_reg[2]_0 ),
        .O(w_addr[11]));
  LUT5 #(
    .INIT(32'hF4444444)) 
    \r_addr[12]_i_1 
       (.I0(\r_addr[15]_i_3_n_0 ),
        .I1(S_AXI_awaddr[9]),
        .I2(S_AXI_araddr[9]),
        .I3(S_AXI_awready_0),
        .I4(\r_state_reg[2]_0 ),
        .O(w_addr[12]));
  LUT5 #(
    .INIT(32'hF4444444)) 
    \r_addr[13]_i_1 
       (.I0(\r_addr[15]_i_3_n_0 ),
        .I1(S_AXI_awaddr[10]),
        .I2(S_AXI_araddr[10]),
        .I3(S_AXI_awready_0),
        .I4(\r_state_reg[2]_0 ),
        .O(w_addr[13]));
  LUT5 #(
    .INIT(32'hF4444444)) 
    \r_addr[14]_i_1 
       (.I0(\r_addr[15]_i_3_n_0 ),
        .I1(S_AXI_awaddr[11]),
        .I2(S_AXI_araddr[11]),
        .I3(S_AXI_awready_0),
        .I4(\r_state_reg[2]_0 ),
        .O(w_addr[14]));
  LUT5 #(
    .INIT(32'h01010100)) 
    \r_addr[15]_i_1 
       (.I0(\r_state_reg_n_0_[2] ),
        .I1(\r_state_reg_n_0_[1] ),
        .I2(\r_state_reg_n_0_[0] ),
        .I3(S_AXI_arvalid),
        .I4(S_AXI_awvalid),
        .O(w_en_addr));
  LUT5 #(
    .INIT(32'hF4444444)) 
    \r_addr[15]_i_2 
       (.I0(\r_addr[15]_i_3_n_0 ),
        .I1(S_AXI_awaddr[12]),
        .I2(S_AXI_araddr[12]),
        .I3(S_AXI_awready_0),
        .I4(\r_state_reg[2]_0 ),
        .O(w_addr[15]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \r_addr[15]_i_3 
       (.I0(S_AXI_awready_0),
        .I1(\r_state_reg_n_0_[2] ),
        .I2(\r_state_reg_n_0_[1] ),
        .I3(\r_state_reg_n_0_[0] ),
        .O(\r_addr[15]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hF4444444)) 
    \r_addr[1]_i_1 
       (.I0(\r_addr[15]_i_3_n_0 ),
        .I1(S_AXI_awaddr[1]),
        .I2(S_AXI_araddr[1]),
        .I3(S_AXI_awready_0),
        .I4(\r_state_reg[2]_0 ),
        .O(w_addr[1]));
  LUT5 #(
    .INIT(32'hF4444444)) 
    \r_addr[2]_i_1 
       (.I0(\r_addr[15]_i_3_n_0 ),
        .I1(S_AXI_awaddr[2]),
        .I2(S_AXI_araddr[2]),
        .I3(S_AXI_awready_0),
        .I4(\r_state_reg[2]_0 ),
        .O(w_addr[2]));
  LUT5 #(
    .INIT(32'hF4444444)) 
    \r_addr[3]_i_1 
       (.I0(\r_addr[15]_i_3_n_0 ),
        .I1(S_AXI_awaddr[3]),
        .I2(S_AXI_araddr[3]),
        .I3(S_AXI_awready_0),
        .I4(\r_state_reg[2]_0 ),
        .O(w_addr[3]));
  LUT5 #(
    .INIT(32'hF4444444)) 
    \r_addr[5]_i_1 
       (.I0(\r_addr[15]_i_3_n_0 ),
        .I1(S_AXI_awaddr[4]),
        .I2(S_AXI_araddr[4]),
        .I3(S_AXI_awready_0),
        .I4(\r_state_reg[2]_0 ),
        .O(w_addr[5]));
  LUT5 #(
    .INIT(32'hF4444444)) 
    \r_addr[8]_i_1 
       (.I0(\r_addr[15]_i_3_n_0 ),
        .I1(S_AXI_awaddr[5]),
        .I2(S_AXI_araddr[5]),
        .I3(S_AXI_awready_0),
        .I4(\r_state_reg[2]_0 ),
        .O(w_addr[8]));
  LUT5 #(
    .INIT(32'hF4444444)) 
    \r_addr[9]_i_1 
       (.I0(\r_addr[15]_i_3_n_0 ),
        .I1(S_AXI_awaddr[6]),
        .I2(S_AXI_araddr[6]),
        .I3(S_AXI_awready_0),
        .I4(\r_state_reg[2]_0 ),
        .O(w_addr[9]));
  FDCE \r_addr_reg[0] 
       (.C(aclk),
        .CE(w_en_addr),
        .CLR(\r_state_reg[2]_1 ),
        .D(w_addr[0]),
        .Q(Q[0]));
  FDCE \r_addr_reg[10] 
       (.C(aclk),
        .CE(w_en_addr),
        .CLR(\r_state_reg[2]_1 ),
        .D(w_addr[10]),
        .Q(Q[5]));
  FDCE \r_addr_reg[11] 
       (.C(aclk),
        .CE(w_en_addr),
        .CLR(\r_state_reg[2]_1 ),
        .D(w_addr[11]),
        .Q(r_addr[11]));
  FDCE \r_addr_reg[12] 
       (.C(aclk),
        .CE(w_en_addr),
        .CLR(\r_state_reg[2]_1 ),
        .D(w_addr[12]),
        .Q(sel0[4]));
  FDCE \r_addr_reg[13] 
       (.C(aclk),
        .CE(w_en_addr),
        .CLR(\r_state_reg[2]_1 ),
        .D(w_addr[13]),
        .Q(sel0[5]));
  FDCE \r_addr_reg[14] 
       (.C(aclk),
        .CE(w_en_addr),
        .CLR(\r_state_reg[2]_1 ),
        .D(w_addr[14]),
        .Q(sel0[6]));
  FDCE \r_addr_reg[15] 
       (.C(aclk),
        .CE(w_en_addr),
        .CLR(\r_state_reg[2]_1 ),
        .D(w_addr[15]),
        .Q(sel0[7]));
  FDCE \r_addr_reg[1] 
       (.C(aclk),
        .CE(w_en_addr),
        .CLR(\r_state_reg[2]_1 ),
        .D(w_addr[1]),
        .Q(Q[1]));
  FDCE \r_addr_reg[2] 
       (.C(aclk),
        .CE(w_en_addr),
        .CLR(\r_state_reg[2]_1 ),
        .D(w_addr[2]),
        .Q(Q[2]));
  FDCE \r_addr_reg[3] 
       (.C(aclk),
        .CE(w_en_addr),
        .CLR(\r_state_reg[2]_1 ),
        .D(w_addr[3]),
        .Q(Q[3]));
  FDCE \r_addr_reg[5] 
       (.C(aclk),
        .CE(w_en_addr),
        .CLR(\r_state_reg[2]_1 ),
        .D(w_addr[5]),
        .Q(Q[4]));
  FDCE \r_addr_reg[8] 
       (.C(aclk),
        .CE(w_en_addr),
        .CLR(\r_state_reg[2]_1 ),
        .D(w_addr[8]),
        .Q(r_addr[8]));
  FDCE \r_addr_reg[9] 
       (.C(aclk),
        .CE(w_en_addr),
        .CLR(\r_state_reg[2]_1 ),
        .D(w_addr[9]),
        .Q(r_addr[9]));
  LUT6 #(
    .INIT(64'h0000000400000000)) 
    \r_auto_reload[0]_i_1 
       (.I0(\r_addr_reg[10]_0 ),
        .I1(S_AXI_wdata[0]),
        .I2(\r_auto_reload[9]_i_2_n_0 ),
        .I3(\r_state_reg_n_0_[1] ),
        .I4(\r_state_reg_n_0_[2] ),
        .I5(\r_state_reg_n_0_[0] ),
        .O(\S_AXI_wdata[31] [0]));
  LUT5 #(
    .INIT(32'h00000800)) 
    \r_auto_reload[10]_i_1 
       (.I0(\r_auto_reload[31]_i_4_n_0 ),
        .I1(S_AXI_wdata[10]),
        .I2(Q[5]),
        .I3(\r_state_reg_n_0_[0] ),
        .I4(r_addr[9]),
        .O(\S_AXI_wdata[31] [10]));
  LUT5 #(
    .INIT(32'h00000800)) 
    \r_auto_reload[11]_i_1 
       (.I0(\r_auto_reload[31]_i_4_n_0 ),
        .I1(S_AXI_wdata[11]),
        .I2(Q[5]),
        .I3(\r_state_reg_n_0_[0] ),
        .I4(r_addr[9]),
        .O(\S_AXI_wdata[31] [11]));
  LUT5 #(
    .INIT(32'h00000800)) 
    \r_auto_reload[12]_i_1 
       (.I0(\r_auto_reload[31]_i_4_n_0 ),
        .I1(S_AXI_wdata[12]),
        .I2(Q[5]),
        .I3(\r_state_reg_n_0_[0] ),
        .I4(r_addr[9]),
        .O(\S_AXI_wdata[31] [12]));
  LUT5 #(
    .INIT(32'h00000800)) 
    \r_auto_reload[13]_i_1 
       (.I0(\r_auto_reload[31]_i_4_n_0 ),
        .I1(S_AXI_wdata[13]),
        .I2(Q[5]),
        .I3(\r_state_reg_n_0_[0] ),
        .I4(r_addr[9]),
        .O(\S_AXI_wdata[31] [13]));
  LUT5 #(
    .INIT(32'h00000800)) 
    \r_auto_reload[14]_i_1 
       (.I0(\r_auto_reload[31]_i_4_n_0 ),
        .I1(S_AXI_wdata[14]),
        .I2(Q[5]),
        .I3(\r_state_reg_n_0_[0] ),
        .I4(r_addr[9]),
        .O(\S_AXI_wdata[31] [14]));
  LUT5 #(
    .INIT(32'h00000800)) 
    \r_auto_reload[15]_i_1 
       (.I0(\r_auto_reload[31]_i_4_n_0 ),
        .I1(S_AXI_wdata[15]),
        .I2(Q[5]),
        .I3(\r_state_reg_n_0_[0] ),
        .I4(r_addr[9]),
        .O(\S_AXI_wdata[31] [15]));
  LUT5 #(
    .INIT(32'h00000800)) 
    \r_auto_reload[16]_i_1 
       (.I0(\r_auto_reload[31]_i_4_n_0 ),
        .I1(S_AXI_wdata[16]),
        .I2(Q[5]),
        .I3(\r_state_reg_n_0_[0] ),
        .I4(r_addr[9]),
        .O(\S_AXI_wdata[31] [16]));
  LUT5 #(
    .INIT(32'h00000800)) 
    \r_auto_reload[17]_i_1 
       (.I0(\r_auto_reload[31]_i_4_n_0 ),
        .I1(S_AXI_wdata[17]),
        .I2(Q[5]),
        .I3(\r_state_reg_n_0_[0] ),
        .I4(r_addr[9]),
        .O(\S_AXI_wdata[31] [17]));
  LUT5 #(
    .INIT(32'h00000800)) 
    \r_auto_reload[18]_i_1 
       (.I0(\r_auto_reload[31]_i_4_n_0 ),
        .I1(S_AXI_wdata[18]),
        .I2(Q[5]),
        .I3(\r_state_reg_n_0_[0] ),
        .I4(r_addr[9]),
        .O(\S_AXI_wdata[31] [18]));
  LUT5 #(
    .INIT(32'h00000800)) 
    \r_auto_reload[19]_i_1 
       (.I0(\r_auto_reload[31]_i_4_n_0 ),
        .I1(S_AXI_wdata[19]),
        .I2(Q[5]),
        .I3(\r_state_reg_n_0_[0] ),
        .I4(r_addr[9]),
        .O(\S_AXI_wdata[31] [19]));
  LUT6 #(
    .INIT(64'h0000000400000000)) 
    \r_auto_reload[1]_i_1 
       (.I0(\r_addr_reg[10]_0 ),
        .I1(S_AXI_wdata[1]),
        .I2(\r_auto_reload[9]_i_2_n_0 ),
        .I3(\r_state_reg_n_0_[1] ),
        .I4(\r_state_reg_n_0_[2] ),
        .I5(\r_state_reg_n_0_[0] ),
        .O(\S_AXI_wdata[31] [1]));
  LUT5 #(
    .INIT(32'h00000800)) 
    \r_auto_reload[20]_i_1 
       (.I0(\r_auto_reload[31]_i_4_n_0 ),
        .I1(S_AXI_wdata[20]),
        .I2(Q[5]),
        .I3(\r_state_reg_n_0_[0] ),
        .I4(r_addr[9]),
        .O(\S_AXI_wdata[31] [20]));
  LUT5 #(
    .INIT(32'h00000800)) 
    \r_auto_reload[21]_i_1 
       (.I0(\r_auto_reload[31]_i_4_n_0 ),
        .I1(S_AXI_wdata[21]),
        .I2(Q[5]),
        .I3(\r_state_reg_n_0_[0] ),
        .I4(r_addr[9]),
        .O(\S_AXI_wdata[31] [21]));
  LUT5 #(
    .INIT(32'h00000800)) 
    \r_auto_reload[22]_i_1 
       (.I0(\r_auto_reload[31]_i_4_n_0 ),
        .I1(S_AXI_wdata[22]),
        .I2(Q[5]),
        .I3(\r_state_reg_n_0_[0] ),
        .I4(r_addr[9]),
        .O(\S_AXI_wdata[31] [22]));
  LUT5 #(
    .INIT(32'h00000800)) 
    \r_auto_reload[23]_i_1 
       (.I0(\r_auto_reload[31]_i_4_n_0 ),
        .I1(S_AXI_wdata[23]),
        .I2(Q[5]),
        .I3(\r_state_reg_n_0_[0] ),
        .I4(r_addr[9]),
        .O(\S_AXI_wdata[31] [23]));
  LUT5 #(
    .INIT(32'h00000800)) 
    \r_auto_reload[24]_i_1 
       (.I0(\r_auto_reload[31]_i_4_n_0 ),
        .I1(S_AXI_wdata[24]),
        .I2(Q[5]),
        .I3(\r_state_reg_n_0_[0] ),
        .I4(r_addr[9]),
        .O(\S_AXI_wdata[31] [24]));
  LUT5 #(
    .INIT(32'h00000800)) 
    \r_auto_reload[25]_i_1 
       (.I0(\r_auto_reload[31]_i_4_n_0 ),
        .I1(S_AXI_wdata[25]),
        .I2(Q[5]),
        .I3(\r_state_reg_n_0_[0] ),
        .I4(r_addr[9]),
        .O(\S_AXI_wdata[31] [25]));
  LUT5 #(
    .INIT(32'h00000800)) 
    \r_auto_reload[26]_i_1 
       (.I0(\r_auto_reload[31]_i_4_n_0 ),
        .I1(S_AXI_wdata[26]),
        .I2(Q[5]),
        .I3(\r_state_reg_n_0_[0] ),
        .I4(r_addr[9]),
        .O(\S_AXI_wdata[31] [26]));
  LUT5 #(
    .INIT(32'h00000800)) 
    \r_auto_reload[27]_i_1 
       (.I0(\r_auto_reload[31]_i_4_n_0 ),
        .I1(S_AXI_wdata[27]),
        .I2(Q[5]),
        .I3(\r_state_reg_n_0_[0] ),
        .I4(r_addr[9]),
        .O(\S_AXI_wdata[31] [27]));
  LUT5 #(
    .INIT(32'h00000800)) 
    \r_auto_reload[28]_i_1 
       (.I0(\r_auto_reload[31]_i_4_n_0 ),
        .I1(S_AXI_wdata[28]),
        .I2(Q[5]),
        .I3(\r_state_reg_n_0_[0] ),
        .I4(r_addr[9]),
        .O(\S_AXI_wdata[31] [28]));
  LUT5 #(
    .INIT(32'h00000800)) 
    \r_auto_reload[29]_i_1 
       (.I0(\r_auto_reload[31]_i_4_n_0 ),
        .I1(S_AXI_wdata[29]),
        .I2(Q[5]),
        .I3(\r_state_reg_n_0_[0] ),
        .I4(r_addr[9]),
        .O(\S_AXI_wdata[31] [29]));
  LUT6 #(
    .INIT(64'h0000000400000000)) 
    \r_auto_reload[2]_i_1 
       (.I0(\r_addr_reg[10]_0 ),
        .I1(S_AXI_wdata[2]),
        .I2(\r_auto_reload[9]_i_2_n_0 ),
        .I3(\r_state_reg_n_0_[1] ),
        .I4(\r_state_reg_n_0_[2] ),
        .I5(\r_state_reg_n_0_[0] ),
        .O(\S_AXI_wdata[31] [2]));
  LUT5 #(
    .INIT(32'h00000800)) 
    \r_auto_reload[30]_i_1 
       (.I0(\r_auto_reload[31]_i_4_n_0 ),
        .I1(S_AXI_wdata[30]),
        .I2(Q[5]),
        .I3(\r_state_reg_n_0_[0] ),
        .I4(r_addr[9]),
        .O(\S_AXI_wdata[31] [30]));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    \r_auto_reload[31]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(S_AXI_wvalid),
        .I3(\r_auto_reload[31]_i_3_n_0 ),
        .I4(Q[4]),
        .I5(slave_error_reg[0]),
        .O(\r_addr_reg[0]_0 ));
  LUT5 #(
    .INIT(32'h00000800)) 
    \r_auto_reload[31]_i_2 
       (.I0(\r_auto_reload[31]_i_4_n_0 ),
        .I1(S_AXI_wdata[31]),
        .I2(Q[5]),
        .I3(\r_state_reg_n_0_[0] ),
        .I4(r_addr[9]),
        .O(\S_AXI_wdata[31] [31]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r_auto_reload[31]_i_3 
       (.I0(Q[2]),
        .I1(Q[3]),
        .O(\r_auto_reload[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000051)) 
    \r_auto_reload[31]_i_4 
       (.I0(\r_addr_reg[10]_0 ),
        .I1(r_addr[8]),
        .I2(r_addr[9]),
        .I3(\r_state_reg_n_0_[2] ),
        .I4(\r_state_reg_n_0_[1] ),
        .O(\r_auto_reload[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000400000000)) 
    \r_auto_reload[3]_i_1 
       (.I0(\r_addr_reg[10]_0 ),
        .I1(S_AXI_wdata[3]),
        .I2(\r_auto_reload[9]_i_2_n_0 ),
        .I3(\r_state_reg_n_0_[1] ),
        .I4(\r_state_reg_n_0_[2] ),
        .I5(\r_state_reg_n_0_[0] ),
        .O(\S_AXI_wdata[31] [3]));
  LUT6 #(
    .INIT(64'h0000000400000000)) 
    \r_auto_reload[4]_i_1 
       (.I0(\r_addr_reg[10]_0 ),
        .I1(S_AXI_wdata[4]),
        .I2(\r_auto_reload[9]_i_2_n_0 ),
        .I3(\r_state_reg_n_0_[1] ),
        .I4(\r_state_reg_n_0_[2] ),
        .I5(\r_state_reg_n_0_[0] ),
        .O(\S_AXI_wdata[31] [4]));
  LUT6 #(
    .INIT(64'h0000000400000000)) 
    \r_auto_reload[5]_i_1 
       (.I0(\r_addr_reg[10]_0 ),
        .I1(S_AXI_wdata[5]),
        .I2(\r_auto_reload[9]_i_2_n_0 ),
        .I3(\r_state_reg_n_0_[1] ),
        .I4(\r_state_reg_n_0_[2] ),
        .I5(\r_state_reg_n_0_[0] ),
        .O(\S_AXI_wdata[31] [5]));
  LUT6 #(
    .INIT(64'h0000000400000000)) 
    \r_auto_reload[6]_i_1 
       (.I0(\r_addr_reg[10]_0 ),
        .I1(S_AXI_wdata[6]),
        .I2(\r_auto_reload[9]_i_2_n_0 ),
        .I3(\r_state_reg_n_0_[1] ),
        .I4(\r_state_reg_n_0_[2] ),
        .I5(\r_state_reg_n_0_[0] ),
        .O(\S_AXI_wdata[31] [6]));
  LUT6 #(
    .INIT(64'h0000000400000000)) 
    \r_auto_reload[7]_i_1 
       (.I0(\r_addr_reg[10]_0 ),
        .I1(S_AXI_wdata[7]),
        .I2(\r_auto_reload[9]_i_2_n_0 ),
        .I3(\r_state_reg_n_0_[1] ),
        .I4(\r_state_reg_n_0_[2] ),
        .I5(\r_state_reg_n_0_[0] ),
        .O(\S_AXI_wdata[31] [7]));
  LUT6 #(
    .INIT(64'h0000000400000000)) 
    \r_auto_reload[8]_i_1 
       (.I0(\r_addr_reg[10]_0 ),
        .I1(S_AXI_wdata[8]),
        .I2(\r_auto_reload[9]_i_2_n_0 ),
        .I3(\r_state_reg_n_0_[1] ),
        .I4(\r_state_reg_n_0_[2] ),
        .I5(\r_state_reg_n_0_[0] ),
        .O(\S_AXI_wdata[31] [8]));
  LUT6 #(
    .INIT(64'h0000000400000000)) 
    \r_auto_reload[9]_i_1 
       (.I0(\r_addr_reg[10]_0 ),
        .I1(S_AXI_wdata[9]),
        .I2(\r_auto_reload[9]_i_2_n_0 ),
        .I3(\r_state_reg_n_0_[1] ),
        .I4(\r_state_reg_n_0_[2] ),
        .I5(\r_state_reg_n_0_[0] ),
        .O(\S_AXI_wdata[31] [9]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \r_auto_reload[9]_i_2 
       (.I0(r_addr[8]),
        .I1(r_addr[9]),
        .O(\r_auto_reload[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \r_control[0]_i_1 
       (.I0(\r_addr_reg[1]_0 ),
        .I1(S_AXI_wvalid),
        .I2(Q[2]),
        .I3(D[0]),
        .I4(Q[4]),
        .I5(\r_control_reg[0] [1]),
        .O(S_AXI_wvalid_0[0]));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \r_control[1]_i_1 
       (.I0(\r_addr_reg[1]_0 ),
        .I1(S_AXI_wvalid),
        .I2(Q[2]),
        .I3(D[1]),
        .I4(Q[4]),
        .I5(\r_control_reg[0] [1]),
        .O(S_AXI_wvalid_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFD)) 
    \r_control[1]_i_2 
       (.I0(\r_state_reg_n_0_[0] ),
        .I1(\r_state_reg_n_0_[2] ),
        .I2(\r_state_reg_n_0_[1] ),
        .I3(r_addr[9]),
        .I4(r_addr[8]),
        .O(\r_state_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h0000000001000000)) 
    \r_control[1]_i_3 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(S_AXI_wvalid),
        .I5(Q[4]),
        .O(\r_addr_reg[1]_2 ));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    \r_dvsr[0]_i_1 
       (.I0(\FSM_onehot_w_next_state_reg[1]_i_4_n_0 ),
        .I1(\r_state_reg_n_0_[1] ),
        .I2(\r_state_reg_n_0_[2] ),
        .I3(\r_state_reg_n_0_[0] ),
        .I4(\r_addr_reg[10]_0 ),
        .I5(S_AXI_wdata[0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    \r_dvsr[1]_i_1 
       (.I0(\FSM_onehot_w_next_state_reg[1]_i_4_n_0 ),
        .I1(\r_state_reg_n_0_[1] ),
        .I2(\r_state_reg_n_0_[2] ),
        .I3(\r_state_reg_n_0_[0] ),
        .I4(\r_addr_reg[10]_0 ),
        .I5(S_AXI_wdata[1]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    \r_dvsr[2]_i_1 
       (.I0(\FSM_onehot_w_next_state_reg[1]_i_4_n_0 ),
        .I1(\r_state_reg_n_0_[1] ),
        .I2(\r_state_reg_n_0_[2] ),
        .I3(\r_state_reg_n_0_[0] ),
        .I4(\r_addr_reg[10]_0 ),
        .I5(S_AXI_wdata[2]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    \r_dvsr[3]_i_1 
       (.I0(\FSM_onehot_w_next_state_reg[1]_i_4_n_0 ),
        .I1(\r_state_reg_n_0_[1] ),
        .I2(\r_state_reg_n_0_[2] ),
        .I3(\r_state_reg_n_0_[0] ),
        .I4(\r_addr_reg[10]_0 ),
        .I5(S_AXI_wdata[3]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    \r_dvsr[4]_i_1 
       (.I0(\FSM_onehot_w_next_state_reg[1]_i_4_n_0 ),
        .I1(\r_state_reg_n_0_[1] ),
        .I2(\r_state_reg_n_0_[2] ),
        .I3(\r_state_reg_n_0_[0] ),
        .I4(\r_addr_reg[10]_0 ),
        .I5(S_AXI_wdata[4]),
        .O(D[4]));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    \r_dvsr[5]_i_1 
       (.I0(\FSM_onehot_w_next_state_reg[1]_i_4_n_0 ),
        .I1(\r_state_reg_n_0_[1] ),
        .I2(\r_state_reg_n_0_[2] ),
        .I3(\r_state_reg_n_0_[0] ),
        .I4(\r_addr_reg[10]_0 ),
        .I5(S_AXI_wdata[5]),
        .O(D[5]));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    \r_dvsr[6]_i_1 
       (.I0(\FSM_onehot_w_next_state_reg[1]_i_4_n_0 ),
        .I1(\r_state_reg_n_0_[1] ),
        .I2(\r_state_reg_n_0_[2] ),
        .I3(\r_state_reg_n_0_[0] ),
        .I4(\r_addr_reg[10]_0 ),
        .I5(S_AXI_wdata[6]),
        .O(D[6]));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    \r_dvsr[7]_i_1 
       (.I0(\FSM_onehot_w_next_state_reg[1]_i_4_n_0 ),
        .I1(\r_state_reg_n_0_[1] ),
        .I2(\r_state_reg_n_0_[2] ),
        .I3(\r_state_reg_n_0_[0] ),
        .I4(\r_addr_reg[10]_0 ),
        .I5(S_AXI_wdata[7]),
        .O(D[7]));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    \r_dvsr[8]_i_1 
       (.I0(\FSM_onehot_w_next_state_reg[1]_i_4_n_0 ),
        .I1(\r_state_reg_n_0_[1] ),
        .I2(\r_state_reg_n_0_[2] ),
        .I3(\r_state_reg_n_0_[0] ),
        .I4(\r_addr_reg[10]_0 ),
        .I5(S_AXI_wdata[8]),
        .O(D[8]));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \r_dvsr[9]_i_1 
       (.I0(\r_control_reg[0] [1]),
        .I1(Q[4]),
        .I2(S_AXI_wvalid),
        .I3(\r_dvsr[9]_i_3_n_0 ),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\FSM_onehot_r_state_reg[1] ));
  LUT6 #(
    .INIT(64'h0000000400000000)) 
    \r_dvsr[9]_i_2 
       (.I0(\r_addr_reg[10]_0 ),
        .I1(S_AXI_wdata[9]),
        .I2(\FSM_onehot_w_next_state_reg[1]_i_4_n_0 ),
        .I3(\r_state_reg_n_0_[1] ),
        .I4(\r_state_reg_n_0_[2] ),
        .I5(\r_state_reg_n_0_[0] ),
        .O(D[9]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r_dvsr[9]_i_3 
       (.I0(Q[3]),
        .I1(Q[2]),
        .O(\r_dvsr[9]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h04)) 
    r_eg_i_2
       (.I0(Q[1]),
        .I1(Q[3]),
        .I2(Q[0]),
        .O(\r_addr_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \r_rd_logic[3]_i_3 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(\r_addr_reg[3]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \r_reg_array[15][0]_i_1 
       (.I0(S_AXI_wdata[0]),
        .I1(\r_addr_reg[10]_0 ),
        .I2(\r_reg_array[15][7]_i_4_n_0 ),
        .I3(\r_reg_array_reg[0][0] [1]),
        .O(\S_AXI_wdata[7] [0]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \r_reg_array[15][1]_i_1 
       (.I0(S_AXI_wdata[1]),
        .I1(\r_addr_reg[10]_0 ),
        .I2(\r_reg_array[15][7]_i_4_n_0 ),
        .I3(\r_reg_array_reg[0][0] [1]),
        .O(\S_AXI_wdata[7] [1]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \r_reg_array[15][2]_i_1 
       (.I0(S_AXI_wdata[2]),
        .I1(\r_addr_reg[10]_0 ),
        .I2(\r_reg_array[15][7]_i_4_n_0 ),
        .I3(\r_reg_array_reg[0][0] [1]),
        .O(\S_AXI_wdata[7] [2]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \r_reg_array[15][3]_i_1 
       (.I0(S_AXI_wdata[3]),
        .I1(\r_addr_reg[10]_0 ),
        .I2(\r_reg_array[15][7]_i_4_n_0 ),
        .I3(\r_reg_array_reg[0][0] [1]),
        .O(\S_AXI_wdata[7] [3]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \r_reg_array[15][4]_i_1 
       (.I0(S_AXI_wdata[4]),
        .I1(\r_addr_reg[10]_0 ),
        .I2(\r_reg_array[15][7]_i_4_n_0 ),
        .I3(\r_reg_array_reg[0][0] [1]),
        .O(\S_AXI_wdata[7] [4]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \r_reg_array[15][5]_i_1 
       (.I0(S_AXI_wdata[5]),
        .I1(\r_addr_reg[10]_0 ),
        .I2(\r_reg_array[15][7]_i_4_n_0 ),
        .I3(\r_reg_array_reg[0][0] [1]),
        .O(\S_AXI_wdata[7] [5]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \r_reg_array[15][6]_i_1 
       (.I0(S_AXI_wdata[6]),
        .I1(\r_addr_reg[10]_0 ),
        .I2(\r_reg_array[15][7]_i_4_n_0 ),
        .I3(\r_reg_array_reg[0][0] [1]),
        .O(\S_AXI_wdata[7] [6]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \r_reg_array[15][7]_i_2 
       (.I0(S_AXI_wdata[7]),
        .I1(\r_addr_reg[10]_0 ),
        .I2(\r_reg_array[15][7]_i_4_n_0 ),
        .I3(\r_reg_array_reg[0][0] [1]),
        .O(\S_AXI_wdata[7] [7]));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \r_reg_array[15][7]_i_3 
       (.I0(\r_auto_reload[31]_i_3_n_0 ),
        .I1(tx_full),
        .I2(S_AXI_wvalid),
        .I3(\r_addr_reg[1]_1 ),
        .I4(Q[4]),
        .I5(\r_control_reg[0] [1]),
        .O(w_en_wr));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000200)) 
    \r_reg_array[15][7]_i_4 
       (.I0(\r_state_reg_n_0_[0] ),
        .I1(\r_state_reg_n_0_[2] ),
        .I2(\r_state_reg_n_0_[1] ),
        .I3(r_addr[9]),
        .I4(r_addr[8]),
        .O(\r_reg_array[15][7]_i_4_n_0 ));
  FDCE \r_state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r_state_reg[2]_1 ),
        .D(\w_next_state_reg_n_0_[0] ),
        .Q(\r_state_reg_n_0_[0] ));
  FDCE \r_state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r_state_reg[2]_1 ),
        .D(\w_next_state_reg_n_0_[1] ),
        .Q(\r_state_reg_n_0_[1] ));
  FDCE \r_state_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r_state_reg[2]_1 ),
        .D(\w_next_state_reg_n_0_[2] ),
        .Q(\r_state_reg_n_0_[2] ));
  LUT6 #(
    .INIT(64'hFF22F2F222222222)) 
    \rd_data[0]_i_1 
       (.I0(\rd_data[7]_i_3_n_0 ),
        .I1(\rd_data_reg[0] ),
        .I2(\rd_data_reg[9]_2 [0]),
        .I3(\r_reg_array_reg[0][0] [0]),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(\r_addr_reg[2]_0 [0]));
  LUT4 #(
    .INIT(16'h2000)) 
    \rd_data[0]_i_1__0 
       (.I0(\rd_data[0]_i_2_n_0 ),
        .I1(Q[0]),
        .I2(Q[4]),
        .I3(\rd_data_reg[0]_0 ),
        .O(w_rd_data));
  LUT4 #(
    .INIT(16'h0400)) 
    \rd_data[0]_i_2 
       (.I0(Q[1]),
        .I1(decode_error_reg),
        .I2(S_AXI_wvalid),
        .I3(S_AXI_rready),
        .O(\rd_data[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF22F2F222222222)) 
    \rd_data[1]_i_1 
       (.I0(\rd_data[7]_i_3_n_0 ),
        .I1(\rd_data_reg[1] ),
        .I2(\rd_data_reg[9]_2 [1]),
        .I3(\r_reg_array_reg[0][0] [1]),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(\r_addr_reg[2]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h08FF0808)) 
    \rd_data[2]_i_1 
       (.I0(\rd_data_reg[9]_2 [2]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(\rd_data_reg[2] ),
        .I4(\rd_data[7]_i_3_n_0 ),
        .O(\r_addr_reg[2]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h08FF0808)) 
    \rd_data[3]_i_1 
       (.I0(\rd_data_reg[9]_2 [3]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(\rd_data_reg[3] ),
        .I4(\rd_data[7]_i_3_n_0 ),
        .O(\r_addr_reg[2]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h08FF0808)) 
    \rd_data[4]_i_1 
       (.I0(\rd_data_reg[9]_2 [4]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(\rd_data_reg[4] ),
        .I4(\rd_data[7]_i_3_n_0 ),
        .O(\r_addr_reg[2]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h08FF0808)) 
    \rd_data[5]_i_1 
       (.I0(\rd_data_reg[9]_2 [5]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(\rd_data_reg[5] ),
        .I4(\rd_data[7]_i_3_n_0 ),
        .O(\r_addr_reg[2]_0 [5]));
  LUT5 #(
    .INIT(32'h08FF0808)) 
    \rd_data[6]_i_1 
       (.I0(\rd_data_reg[9]_2 [6]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(\rd_data_reg[6] ),
        .I4(\rd_data[7]_i_3_n_0 ),
        .O(\r_addr_reg[2]_0 [6]));
  LUT5 #(
    .INIT(32'h08FF0808)) 
    \rd_data[7]_i_1 
       (.I0(\rd_data_reg[9]_2 [7]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(\rd_data_reg[7] ),
        .I4(\rd_data[7]_i_3_n_0 ),
        .O(\r_addr_reg[2]_0 [7]));
  LUT6 #(
    .INIT(64'h0000000002000000)) 
    \rd_data[7]_i_3 
       (.I0(\r_control_reg[0] [1]),
        .I1(Q[4]),
        .I2(rx_empty),
        .I3(S_AXI_rready),
        .I4(\r_addr_reg[3]_1 ),
        .I5(Q[3]),
        .O(\rd_data[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \rd_data[8]_i_1 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(\rd_data_reg[9]_2 [8]),
        .O(\r_addr_reg[2]_0 [8]));
  LUT6 #(
    .INIT(64'h4000400040444000)) 
    \rd_data[9]_i_1 
       (.I0(\r_addr_reg[1]_1 ),
        .I1(\rd_data_reg[9] ),
        .I2(\rd_data_reg[9]_0 ),
        .I3(Q[3]),
        .I4(\rd_data_reg[9]_1 ),
        .I5(Q[2]),
        .O(\r_addr_reg[3]_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \rd_data[9]_i_2 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(\rd_data_reg[9]_2 [9]),
        .O(\r_addr_reg[2]_0 [9]));
  LUT4 #(
    .INIT(16'hA0C0)) 
    rd_done_i_1
       (.I0(S_AXI_rready),
        .I1(rd_done_i_2_n_0),
        .I2(\r_control_reg[0] [1]),
        .I3(Q[4]),
        .O(w_rd_done));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    rd_done_i_1__0
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(S_AXI_wvalid),
        .I3(S_AXI_rready),
        .I4(decode_error_reg),
        .I5(Q[4]),
        .O(w_rd_done_2));
  LUT6 #(
    .INIT(64'hFFF1FFFF00000000)) 
    rd_done_i_2
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(S_AXI_wvalid),
        .I5(S_AXI_rready),
        .O(rd_done_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFFFFFE00)) 
    w_decode_error_reg_i_2
       (.I0(Q[4]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(slave_error_reg[0]),
        .I4(slave_error_reg[1]),
        .O(w_decode_error__0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \w_next_state_reg[0] 
       (.CLR(1'b0),
        .D(w_next_state[0]),
        .G(\w_next_state_reg[2]_i_2_n_0 ),
        .GE(1'b1),
        .Q(\w_next_state_reg_n_0_[0] ));
  LUT6 #(
    .INIT(64'h0055F0F300550000)) 
    \w_next_state_reg[0]_i_1 
       (.I0(S_AXI_bready),
        .I1(S_AXI_awready_0),
        .I2(\r_state_reg_n_0_[0] ),
        .I3(\r_state_reg_n_0_[2] ),
        .I4(\r_state_reg_n_0_[1] ),
        .I5(\w_next_state_reg[0]_i_2_n_0 ),
        .O(w_next_state[0]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hFDFF)) 
    \w_next_state_reg[0]_i_2 
       (.I0(\r_state_reg_n_0_[2] ),
        .I1(Q[5]),
        .I2(r_addr[11]),
        .I3(\w_next_state_reg[1]_i_4_n_0 ),
        .O(\w_next_state_reg[0]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \w_next_state_reg[1] 
       (.CLR(1'b0),
        .D(w_next_state[1]),
        .G(\w_next_state_reg[2]_i_2_n_0 ),
        .GE(1'b1),
        .Q(\w_next_state_reg_n_0_[1] ));
  LUT5 #(
    .INIT(32'h47FF4700)) 
    \w_next_state_reg[1]_i_1 
       (.I0(S_AXI_rready),
        .I1(\r_state_reg_n_0_[2] ),
        .I2(S_AXI_bready),
        .I3(\r_state_reg_n_0_[1] ),
        .I4(\w_next_state_reg[1]_i_2_n_0 ),
        .O(w_next_state[1]));
  LUT6 #(
    .INIT(64'h000000F000000088)) 
    \w_next_state_reg[1]_i_2 
       (.I0(\w_next_state_reg[1]_i_3_n_0 ),
        .I1(\r_state_reg_n_0_[0] ),
        .I2(\w_next_state_reg[1]_i_4_n_0 ),
        .I3(r_addr[11]),
        .I4(Q[5]),
        .I5(\r_state_reg_n_0_[2] ),
        .O(\w_next_state_reg[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \w_next_state_reg[1]_i_3 
       (.I0(slot_wr_done[2]),
        .I1(r_addr[9]),
        .I2(slot_wr_done[1]),
        .I3(r_addr[8]),
        .I4(slot_wr_done[0]),
        .O(\w_next_state_reg[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \w_next_state_reg[1]_i_4 
       (.I0(slot_rd_done[2]),
        .I1(r_addr[9]),
        .I2(slot_rd_done[1]),
        .I3(r_addr[8]),
        .I4(slot_rd_done[0]),
        .O(\w_next_state_reg[1]_i_4_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \w_next_state_reg[2] 
       (.CLR(1'b0),
        .D(w_next_state[2]),
        .G(\w_next_state_reg[2]_i_2_n_0 ),
        .GE(1'b1),
        .Q(\w_next_state_reg_n_0_[2] ));
  LUT6 #(
    .INIT(64'h0F00FF000F00FF22)) 
    \w_next_state_reg[2]_i_1 
       (.I0(S_AXI_awready_0),
        .I1(S_AXI_arready),
        .I2(S_AXI_rready),
        .I3(\r_state_reg_n_0_[2] ),
        .I4(\r_state_reg_n_0_[1] ),
        .I5(\r_state_reg_n_0_[0] ),
        .O(w_next_state[2]));
  LUT3 #(
    .INIT(8'h6F)) 
    \w_next_state_reg[2]_i_2 
       (.I0(\r_state_reg_n_0_[2] ),
        .I1(\r_state_reg_n_0_[0] ),
        .I2(\r_state_reg_n_0_[1] ),
        .O(\w_next_state_reg[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    \w_rd_data_reg[31]_i_2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(S_AXI_rready),
        .I3(S_AXI_wvalid),
        .I4(Q[4]),
        .I5(slave_error_reg[0]),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    w_rd_done_reg_i_1
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(S_AXI_rready),
        .I3(Q[4]),
        .O(\r_addr_reg[1]_3 ));
  LUT6 #(
    .INIT(64'h3333000022230000)) 
    w_rd_done_reg_i_2
       (.I0(S_AXI_rready),
        .I1(S_AXI_wvalid),
        .I2(w_rd_done_reg_i_3_n_0),
        .I3(w_rd_done_reg_i_4_n_0),
        .I4(slave_error_reg[0]),
        .I5(Q[4]),
        .O(w_rd_done__0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h1001)) 
    w_rd_done_reg_i_3
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(w_rd_done_reg_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h0110)) 
    w_rd_done_reg_i_4
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(w_rd_done_reg_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF02000000)) 
    w_slave_error_reg_i_2
       (.I0(slave_error_reg[0]),
        .I1(Q[4]),
        .I2(\r_addr_reg[1]_1 ),
        .I3(w_slave_error_reg_i_4_n_0),
        .I4(S_AXI_wvalid),
        .I5(slave_error_reg[1]),
        .O(w_slave_error__0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'hE)) 
    w_slave_error_reg_i_3
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\r_addr_reg[1]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h1)) 
    w_slave_error_reg_i_4
       (.I0(Q[2]),
        .I1(Q[3]),
        .O(w_slave_error_reg_i_4_n_0));
  LUT4 #(
    .INIT(16'hA0C0)) 
    wr_done_i_1
       (.I0(S_AXI_wvalid),
        .I1(wr_done_i_2_n_0),
        .I2(\r_control_reg[0] [1]),
        .I3(Q[4]),
        .O(w_wr_done));
  LUT5 #(
    .INIT(32'h00001000)) 
    wr_done_i_1__0
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(decode_error_reg),
        .I3(S_AXI_wvalid),
        .I4(Q[4]),
        .O(w_wr_done_3));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000000)) 
    wr_done_i_2
       (.I0(S_AXI_rready),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(S_AXI_wvalid),
        .O(wr_done_i_2_n_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_buad_generator
   (tick,
    w_next_cnt1_carry_0,
    aclk,
    \r_cnt_reg[0]_0 );
  output tick;
  input [9:0]w_next_cnt1_carry_0;
  input aclk;
  input \r_cnt_reg[0]_0 ;

  wire aclk;
  wire load;
  wire \r_cnt[5]_i_2_n_0 ;
  wire \r_cnt[9]_i_2_n_0 ;
  wire [9:0]r_cnt_reg;
  wire \r_cnt_reg[0]_0 ;
  wire \r_sampling_ticks[3]_i_3_n_0 ;
  wire tick;
  wire [9:0]w_next_cnt;
  wire [9:0]w_next_cnt1_carry_0;
  wire w_next_cnt1_carry_i_1_n_0;
  wire w_next_cnt1_carry_i_2_n_0;
  wire w_next_cnt1_carry_i_3_n_0;
  wire w_next_cnt1_carry_i_4_n_0;
  wire w_next_cnt1_carry_n_1;
  wire w_next_cnt1_carry_n_2;
  wire w_next_cnt1_carry_n_3;
  wire [3:0]NLW_w_next_cnt1_carry_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \r_cnt[0]_i_1 
       (.I0(load),
        .I1(r_cnt_reg[0]),
        .O(w_next_cnt[0]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h14)) 
    \r_cnt[1]_i_1 
       (.I0(load),
        .I1(r_cnt_reg[0]),
        .I2(r_cnt_reg[1]),
        .O(w_next_cnt[1]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h0708)) 
    \r_cnt[2]_i_1 
       (.I0(r_cnt_reg[1]),
        .I1(r_cnt_reg[0]),
        .I2(load),
        .I3(r_cnt_reg[2]),
        .O(w_next_cnt[2]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h007F0080)) 
    \r_cnt[3]_i_1 
       (.I0(r_cnt_reg[2]),
        .I1(r_cnt_reg[0]),
        .I2(r_cnt_reg[1]),
        .I3(load),
        .I4(r_cnt_reg[3]),
        .O(w_next_cnt[3]));
  LUT6 #(
    .INIT(64'h00007FFF00008000)) 
    \r_cnt[4]_i_1 
       (.I0(r_cnt_reg[3]),
        .I1(r_cnt_reg[1]),
        .I2(r_cnt_reg[0]),
        .I3(r_cnt_reg[2]),
        .I4(load),
        .I5(r_cnt_reg[4]),
        .O(w_next_cnt[4]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h12)) 
    \r_cnt[5]_i_1 
       (.I0(\r_cnt[5]_i_2_n_0 ),
        .I1(load),
        .I2(r_cnt_reg[5]),
        .O(w_next_cnt[5]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \r_cnt[5]_i_2 
       (.I0(r_cnt_reg[4]),
        .I1(r_cnt_reg[2]),
        .I2(r_cnt_reg[0]),
        .I3(r_cnt_reg[1]),
        .I4(r_cnt_reg[3]),
        .O(\r_cnt[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h12)) 
    \r_cnt[6]_i_1 
       (.I0(\r_cnt[9]_i_2_n_0 ),
        .I1(load),
        .I2(r_cnt_reg[6]),
        .O(w_next_cnt[6]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h0708)) 
    \r_cnt[7]_i_1 
       (.I0(r_cnt_reg[6]),
        .I1(\r_cnt[9]_i_2_n_0 ),
        .I2(load),
        .I3(r_cnt_reg[7]),
        .O(w_next_cnt[7]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h007F0080)) 
    \r_cnt[8]_i_1 
       (.I0(r_cnt_reg[7]),
        .I1(\r_cnt[9]_i_2_n_0 ),
        .I2(r_cnt_reg[6]),
        .I3(load),
        .I4(r_cnt_reg[8]),
        .O(w_next_cnt[8]));
  LUT6 #(
    .INIT(64'h00007FFF00008000)) 
    \r_cnt[9]_i_1 
       (.I0(r_cnt_reg[8]),
        .I1(r_cnt_reg[6]),
        .I2(\r_cnt[9]_i_2_n_0 ),
        .I3(r_cnt_reg[7]),
        .I4(load),
        .I5(r_cnt_reg[9]),
        .O(w_next_cnt[9]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \r_cnt[9]_i_2 
       (.I0(r_cnt_reg[5]),
        .I1(r_cnt_reg[3]),
        .I2(r_cnt_reg[1]),
        .I3(r_cnt_reg[0]),
        .I4(r_cnt_reg[2]),
        .I5(r_cnt_reg[4]),
        .O(\r_cnt[9]_i_2_n_0 ));
  FDCE \r_cnt_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r_cnt_reg[0]_0 ),
        .D(w_next_cnt[0]),
        .Q(r_cnt_reg[0]));
  FDCE \r_cnt_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r_cnt_reg[0]_0 ),
        .D(w_next_cnt[1]),
        .Q(r_cnt_reg[1]));
  FDCE \r_cnt_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r_cnt_reg[0]_0 ),
        .D(w_next_cnt[2]),
        .Q(r_cnt_reg[2]));
  FDCE \r_cnt_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r_cnt_reg[0]_0 ),
        .D(w_next_cnt[3]),
        .Q(r_cnt_reg[3]));
  FDCE \r_cnt_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r_cnt_reg[0]_0 ),
        .D(w_next_cnt[4]),
        .Q(r_cnt_reg[4]));
  FDCE \r_cnt_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r_cnt_reg[0]_0 ),
        .D(w_next_cnt[5]),
        .Q(r_cnt_reg[5]));
  FDCE \r_cnt_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r_cnt_reg[0]_0 ),
        .D(w_next_cnt[6]),
        .Q(r_cnt_reg[6]));
  FDCE \r_cnt_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r_cnt_reg[0]_0 ),
        .D(w_next_cnt[7]),
        .Q(r_cnt_reg[7]));
  FDCE \r_cnt_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r_cnt_reg[0]_0 ),
        .D(w_next_cnt[8]),
        .Q(r_cnt_reg[8]));
  FDCE \r_cnt_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r_cnt_reg[0]_0 ),
        .D(w_next_cnt[9]),
        .Q(r_cnt_reg[9]));
  LUT5 #(
    .INIT(32'h00000002)) 
    \r_sampling_ticks[3]_i_2__0 
       (.I0(\r_sampling_ticks[3]_i_3_n_0 ),
        .I1(r_cnt_reg[2]),
        .I2(r_cnt_reg[3]),
        .I3(r_cnt_reg[0]),
        .I4(r_cnt_reg[1]),
        .O(tick));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \r_sampling_ticks[3]_i_3 
       (.I0(r_cnt_reg[4]),
        .I1(r_cnt_reg[5]),
        .I2(r_cnt_reg[6]),
        .I3(r_cnt_reg[7]),
        .I4(r_cnt_reg[9]),
        .I5(r_cnt_reg[8]),
        .O(\r_sampling_ticks[3]_i_3_n_0 ));
  CARRY4 w_next_cnt1_carry
       (.CI(1'b0),
        .CO({load,w_next_cnt1_carry_n_1,w_next_cnt1_carry_n_2,w_next_cnt1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_w_next_cnt1_carry_O_UNCONNECTED[3:0]),
        .S({w_next_cnt1_carry_i_1_n_0,w_next_cnt1_carry_i_2_n_0,w_next_cnt1_carry_i_3_n_0,w_next_cnt1_carry_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    w_next_cnt1_carry_i_1
       (.I0(w_next_cnt1_carry_0[9]),
        .I1(r_cnt_reg[9]),
        .O(w_next_cnt1_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    w_next_cnt1_carry_i_2
       (.I0(r_cnt_reg[7]),
        .I1(w_next_cnt1_carry_0[7]),
        .I2(r_cnt_reg[6]),
        .I3(w_next_cnt1_carry_0[6]),
        .I4(w_next_cnt1_carry_0[8]),
        .I5(r_cnt_reg[8]),
        .O(w_next_cnt1_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    w_next_cnt1_carry_i_3
       (.I0(r_cnt_reg[4]),
        .I1(w_next_cnt1_carry_0[4]),
        .I2(r_cnt_reg[3]),
        .I3(w_next_cnt1_carry_0[3]),
        .I4(w_next_cnt1_carry_0[5]),
        .I5(r_cnt_reg[5]),
        .O(w_next_cnt1_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    w_next_cnt1_carry_i_4
       (.I0(r_cnt_reg[1]),
        .I1(w_next_cnt1_carry_0[1]),
        .I2(r_cnt_reg[0]),
        .I3(w_next_cnt1_carry_0[0]),
        .I4(w_next_cnt1_carry_0[2]),
        .I5(r_cnt_reg[2]),
        .O(w_next_cnt1_carry_i_4_n_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo
   (empty_reg,
    S_AXI_rready_0,
    \r_rd_logic_reg[3] ,
    \r_rd_logic_reg[3]_0 ,
    \r_rd_logic_reg[3]_1 ,
    \r_rd_logic_reg[3]_2 ,
    \r_rd_logic_reg[3]_3 ,
    \r_rd_logic_reg[3]_4 ,
    \r_rd_logic_reg[3]_5 ,
    \r_rd_logic_reg[3]_6 ,
    full_reg,
    \r_rd_logic_reg[0] ,
    S_AXI_rready,
    \r_rd_logic_reg[0]_0 ,
    \r_rd_logic_reg[0]_1 ,
    Q,
    \r_reg_array_reg[15][7] ,
    w_en_rd,
    aclk,
    \r_reg_array_reg[0][0] ,
    D,
    E);
  output empty_reg;
  output S_AXI_rready_0;
  output \r_rd_logic_reg[3] ;
  output \r_rd_logic_reg[3]_0 ;
  output \r_rd_logic_reg[3]_1 ;
  output \r_rd_logic_reg[3]_2 ;
  output \r_rd_logic_reg[3]_3 ;
  output \r_rd_logic_reg[3]_4 ;
  output \r_rd_logic_reg[3]_5 ;
  output \r_rd_logic_reg[3]_6 ;
  output full_reg;
  input \r_rd_logic_reg[0] ;
  input S_AXI_rready;
  input [0:0]\r_rd_logic_reg[0]_0 ;
  input [0:0]\r_rd_logic_reg[0]_1 ;
  input [0:0]Q;
  input \r_reg_array_reg[15][7] ;
  input w_en_rd;
  input aclk;
  input \r_reg_array_reg[0][0] ;
  input [7:0]D;
  input [0:0]E;

  wire [7:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire S_AXI_rready;
  wire S_AXI_rready_0;
  wire aclk;
  wire control_n_1;
  wire control_n_10;
  wire control_n_11;
  wire control_n_12;
  wire control_n_13;
  wire control_n_14;
  wire control_n_15;
  wire control_n_16;
  wire control_n_2;
  wire control_n_3;
  wire control_n_4;
  wire control_n_5;
  wire control_n_6;
  wire control_n_7;
  wire control_n_8;
  wire control_n_9;
  wire empty_reg;
  wire full_reg;
  wire [3:0]r_rd_logic_reg;
  wire [0:0]\r_rd_logic_reg[0]_0 ;
  wire [0:0]\r_rd_logic_reg[0]_1 ;
  wire \r_rd_logic_reg[3]_0 ;
  wire \r_rd_logic_reg[3]_1 ;
  wire \r_rd_logic_reg[3]_2 ;
  wire \r_rd_logic_reg[3]_3 ;
  wire \r_rd_logic_reg[3]_4 ;
  wire \r_rd_logic_reg[3]_5 ;
  wire \r_rd_logic_reg[3]_6 ;
  wire r_rd_logic_reg_0_sn_1;
  wire r_rd_logic_reg_3_sn_1;
  wire \r_reg_array_reg[0][0] ;
  wire \r_reg_array_reg[15][7] ;
  wire w_en_rd;

  assign \r_rd_logic_reg[3]  = r_rd_logic_reg_3_sn_1;
  assign r_rd_logic_reg_0_sn_1 = \r_rd_logic_reg[0] ;
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_controller_1 control
       (.E(control_n_1),
        .Q(Q),
        .S_AXI_rready(S_AXI_rready),
        .S_AXI_rready_0(S_AXI_rready_0),
        .aclk(aclk),
        .empty_reg_0(empty_reg),
        .full_reg_0(full_reg),
        .\r_rd_logic_reg[0]_0 (r_rd_logic_reg_0_sn_1),
        .\r_rd_logic_reg[0]_1 (\r_rd_logic_reg[0]_0 ),
        .\r_rd_logic_reg[0]_2 (\r_rd_logic_reg[0]_1 ),
        .\r_rd_logic_reg[3]_0 (r_rd_logic_reg),
        .\r_reg_array_reg[15][7] (\r_reg_array_reg[15][7] ),
        .\r_wr_logic_reg[0]_0 (control_n_2),
        .\r_wr_logic_reg[0]_1 (control_n_4),
        .\r_wr_logic_reg[0]_10 (control_n_16),
        .\r_wr_logic_reg[0]_11 (E),
        .\r_wr_logic_reg[0]_2 (control_n_5),
        .\r_wr_logic_reg[0]_3 (control_n_6),
        .\r_wr_logic_reg[0]_4 (control_n_8),
        .\r_wr_logic_reg[0]_5 (control_n_9),
        .\r_wr_logic_reg[0]_6 (control_n_10),
        .\r_wr_logic_reg[0]_7 (control_n_12),
        .\r_wr_logic_reg[0]_8 (control_n_13),
        .\r_wr_logic_reg[0]_9 (control_n_14),
        .\r_wr_logic_reg[1]_0 (control_n_3),
        .\r_wr_logic_reg[1]_1 (control_n_7),
        .\r_wr_logic_reg[1]_2 (control_n_11),
        .\r_wr_logic_reg[1]_3 (control_n_15),
        .\r_wr_logic_reg[3]_0 (\r_reg_array_reg[0][0] ),
        .w_en_rd(w_en_rd));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_file_2 rf
       (.D(D),
        .E(control_n_16),
        .aclk(aclk),
        .\r_rd_logic_reg[3] (r_rd_logic_reg_3_sn_1),
        .\r_rd_logic_reg[3]_0 (\r_rd_logic_reg[3]_0 ),
        .\r_rd_logic_reg[3]_1 (\r_rd_logic_reg[3]_1 ),
        .\r_rd_logic_reg[3]_2 (\r_rd_logic_reg[3]_2 ),
        .\r_rd_logic_reg[3]_3 (\r_rd_logic_reg[3]_3 ),
        .\r_rd_logic_reg[3]_4 (\r_rd_logic_reg[3]_4 ),
        .\r_rd_logic_reg[3]_5 (\r_rd_logic_reg[3]_5 ),
        .\r_rd_logic_reg[3]_6 (\r_rd_logic_reg[3]_6 ),
        .\r_reg_array_reg[0][0]_0 (\r_reg_array_reg[0][0] ),
        .\r_reg_array_reg[0][7]_0 (control_n_1),
        .\r_reg_array_reg[10][7]_0 (control_n_11),
        .\r_reg_array_reg[11][7]_0 (control_n_12),
        .\r_reg_array_reg[12][7]_0 (control_n_13),
        .\r_reg_array_reg[13][7]_0 (control_n_14),
        .\r_reg_array_reg[14][7]_0 (control_n_15),
        .\r_reg_array_reg[1][7]_0 (control_n_2),
        .\r_reg_array_reg[2][7]_0 (control_n_3),
        .\r_reg_array_reg[3][7]_0 (control_n_4),
        .\r_reg_array_reg[4][7]_0 (control_n_5),
        .\r_reg_array_reg[5][7]_0 (control_n_6),
        .\r_reg_array_reg[6][7]_0 (control_n_7),
        .\r_reg_array_reg[7][7]_0 (control_n_8),
        .\r_reg_array_reg[8][7]_0 (control_n_9),
        .\r_reg_array_reg[9][7]_0 (control_n_10),
        .\rd_data_reg[7] (r_rd_logic_reg));
endmodule

(* ORIG_REF_NAME = "fifo" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_0
   (arst_n_0,
    full_reg,
    full_reg_0,
    r_reg_array__0,
    empty_reg,
    arst_n,
    S_AXI_rready,
    S_AXI_wvalid,
    slave_error_reg,
    slave_error_reg_0,
    w_en_wr,
    Q,
    \r_reg_array_reg[0][7] ,
    aclk,
    full_reg_1,
    E,
    \r_wr_logic_reg[0] );
  output arst_n_0;
  output full_reg;
  output full_reg_0;
  output [7:0]r_reg_array__0;
  output empty_reg;
  input arst_n;
  input S_AXI_rready;
  input S_AXI_wvalid;
  input [0:0]slave_error_reg;
  input slave_error_reg_0;
  input w_en_wr;
  input [0:0]Q;
  input [7:0]\r_reg_array_reg[0][7] ;
  input aclk;
  input full_reg_1;
  input [0:0]E;
  input [0:0]\r_wr_logic_reg[0] ;

  wire [0:0]E;
  wire [0:0]Q;
  wire S_AXI_rready;
  wire S_AXI_wvalid;
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
  wire control_n_6;
  wire control_n_7;
  wire control_n_8;
  wire control_n_9;
  wire empty_reg;
  wire full_reg;
  wire full_reg_0;
  wire full_reg_1;
  wire [3:0]r_rd_logic_reg;
  wire [7:0]r_reg_array__0;
  wire [7:0]\r_reg_array_reg[0][7] ;
  wire [0:0]\r_wr_logic_reg[0] ;
  wire [0:0]slave_error_reg;
  wire slave_error_reg_0;
  wire w_en_wr;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_controller control
       (.E(control_n_6),
        .Q(r_rd_logic_reg),
        .S_AXI_rready(S_AXI_rready),
        .S_AXI_wvalid(S_AXI_wvalid),
        .aclk(aclk),
        .empty_reg_0(empty_reg),
        .full_reg_0(full_reg),
        .full_reg_1(full_reg_0),
        .full_reg_2(full_reg_1),
        .\r_rd_logic_reg[0]_0 (E),
        .\r_wr_logic_reg[0]_0 (control_n_7),
        .\r_wr_logic_reg[0]_1 (control_n_11),
        .\r_wr_logic_reg[0]_2 (control_n_15),
        .\r_wr_logic_reg[0]_3 (control_n_19),
        .\r_wr_logic_reg[0]_4 (Q),
        .\r_wr_logic_reg[0]_5 (\r_wr_logic_reg[0] ),
        .\r_wr_logic_reg[1]_0 (control_n_8),
        .\r_wr_logic_reg[1]_1 (control_n_9),
        .\r_wr_logic_reg[1]_10 (control_n_21),
        .\r_wr_logic_reg[1]_2 (control_n_10),
        .\r_wr_logic_reg[1]_3 (control_n_12),
        .\r_wr_logic_reg[1]_4 (control_n_13),
        .\r_wr_logic_reg[1]_5 (control_n_14),
        .\r_wr_logic_reg[1]_6 (control_n_16),
        .\r_wr_logic_reg[1]_7 (control_n_17),
        .\r_wr_logic_reg[1]_8 (control_n_18),
        .\r_wr_logic_reg[1]_9 (control_n_20),
        .\r_wr_logic_reg[3]_0 (arst_n_0),
        .slave_error_reg(slave_error_reg),
        .slave_error_reg_0(slave_error_reg_0),
        .w_en_wr(w_en_wr));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_file rf
       (.E(control_n_21),
        .Q(r_rd_logic_reg),
        .aclk(aclk),
        .arst_n(arst_n),
        .arst_n_0(arst_n_0),
        .r_reg_array__0(r_reg_array__0),
        .\r_reg_array_reg[0][7]_0 (\r_reg_array_reg[0][7] ),
        .\r_reg_array_reg[0][7]_1 (control_n_6),
        .\r_reg_array_reg[10][7]_0 (control_n_16),
        .\r_reg_array_reg[11][7]_0 (control_n_17),
        .\r_reg_array_reg[12][7]_0 (control_n_18),
        .\r_reg_array_reg[13][7]_0 (control_n_19),
        .\r_reg_array_reg[14][7]_0 (control_n_20),
        .\r_reg_array_reg[1][7]_0 (control_n_7),
        .\r_reg_array_reg[2][7]_0 (control_n_8),
        .\r_reg_array_reg[3][7]_0 (control_n_9),
        .\r_reg_array_reg[4][7]_0 (control_n_10),
        .\r_reg_array_reg[5][7]_0 (control_n_11),
        .\r_reg_array_reg[6][7]_0 (control_n_12),
        .\r_reg_array_reg[7][7]_0 (control_n_13),
        .\r_reg_array_reg[8][7]_0 (control_n_14),
        .\r_reg_array_reg[9][7]_0 (control_n_15));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_controller
   (full_reg_0,
    full_reg_1,
    Q,
    E,
    \r_wr_logic_reg[0]_0 ,
    \r_wr_logic_reg[1]_0 ,
    \r_wr_logic_reg[1]_1 ,
    \r_wr_logic_reg[1]_2 ,
    \r_wr_logic_reg[0]_1 ,
    \r_wr_logic_reg[1]_3 ,
    \r_wr_logic_reg[1]_4 ,
    \r_wr_logic_reg[1]_5 ,
    \r_wr_logic_reg[0]_2 ,
    \r_wr_logic_reg[1]_6 ,
    \r_wr_logic_reg[1]_7 ,
    \r_wr_logic_reg[1]_8 ,
    \r_wr_logic_reg[0]_3 ,
    \r_wr_logic_reg[1]_9 ,
    \r_wr_logic_reg[1]_10 ,
    empty_reg_0,
    S_AXI_rready,
    S_AXI_wvalid,
    slave_error_reg,
    slave_error_reg_0,
    w_en_wr,
    \r_wr_logic_reg[0]_4 ,
    full_reg_2,
    aclk,
    \r_wr_logic_reg[3]_0 ,
    \r_rd_logic_reg[0]_0 ,
    \r_wr_logic_reg[0]_5 );
  output full_reg_0;
  output full_reg_1;
  output [3:0]Q;
  output [0:0]E;
  output [0:0]\r_wr_logic_reg[0]_0 ;
  output [0:0]\r_wr_logic_reg[1]_0 ;
  output [0:0]\r_wr_logic_reg[1]_1 ;
  output [0:0]\r_wr_logic_reg[1]_2 ;
  output [0:0]\r_wr_logic_reg[0]_1 ;
  output [0:0]\r_wr_logic_reg[1]_3 ;
  output [0:0]\r_wr_logic_reg[1]_4 ;
  output [0:0]\r_wr_logic_reg[1]_5 ;
  output [0:0]\r_wr_logic_reg[0]_2 ;
  output [0:0]\r_wr_logic_reg[1]_6 ;
  output [0:0]\r_wr_logic_reg[1]_7 ;
  output [0:0]\r_wr_logic_reg[1]_8 ;
  output [0:0]\r_wr_logic_reg[0]_3 ;
  output [0:0]\r_wr_logic_reg[1]_9 ;
  output [0:0]\r_wr_logic_reg[1]_10 ;
  output empty_reg_0;
  input S_AXI_rready;
  input S_AXI_wvalid;
  input [0:0]slave_error_reg;
  input slave_error_reg_0;
  input w_en_wr;
  input [0:0]\r_wr_logic_reg[0]_4 ;
  input full_reg_2;
  input aclk;
  input \r_wr_logic_reg[3]_0 ;
  input [0:0]\r_rd_logic_reg[0]_0 ;
  input [0:0]\r_wr_logic_reg[0]_5 ;

  wire [0:0]E;
  wire [3:0]Q;
  wire S_AXI_rready;
  wire S_AXI_wvalid;
  wire aclk;
  wire empty_i_1_n_0;
  wire empty_i_2_n_0;
  wire empty_i_4__0_n_0;
  wire empty_i_5__0_n_0;
  wire empty_reg_0;
  wire full_i_1_n_0;
  wire full_i_2__0_n_0;
  wire full_i_3__0_n_0;
  wire full_reg_0;
  wire full_reg_1;
  wire full_reg_2;
  wire [3:0]p_0_in__0;
  wire [3:0]p_0_in__2;
  wire [0:0]\r_rd_logic_reg[0]_0 ;
  wire [3:0]r_wr_logic_reg;
  wire [0:0]\r_wr_logic_reg[0]_0 ;
  wire [0:0]\r_wr_logic_reg[0]_1 ;
  wire [0:0]\r_wr_logic_reg[0]_2 ;
  wire [0:0]\r_wr_logic_reg[0]_3 ;
  wire [0:0]\r_wr_logic_reg[0]_4 ;
  wire [0:0]\r_wr_logic_reg[0]_5 ;
  wire [0:0]\r_wr_logic_reg[1]_0 ;
  wire [0:0]\r_wr_logic_reg[1]_1 ;
  wire [0:0]\r_wr_logic_reg[1]_10 ;
  wire [0:0]\r_wr_logic_reg[1]_2 ;
  wire [0:0]\r_wr_logic_reg[1]_3 ;
  wire [0:0]\r_wr_logic_reg[1]_4 ;
  wire [0:0]\r_wr_logic_reg[1]_5 ;
  wire [0:0]\r_wr_logic_reg[1]_6 ;
  wire [0:0]\r_wr_logic_reg[1]_7 ;
  wire [0:0]\r_wr_logic_reg[1]_8 ;
  wire [0:0]\r_wr_logic_reg[1]_9 ;
  wire \r_wr_logic_reg[3]_0 ;
  wire [0:0]slave_error_reg;
  wire slave_error_reg_0;
  wire w_en_wr;

  LUT6 #(
    .INIT(64'hFEF2FAF0FFF0FFFA)) 
    empty_i_1
       (.I0(empty_i_2_n_0),
        .I1(full_reg_1),
        .I2(\r_wr_logic_reg[0]_4 ),
        .I3(empty_reg_0),
        .I4(full_reg_2),
        .I5(w_en_wr),
        .O(empty_i_1_n_0));
  LUT6 #(
    .INIT(64'h0440404040040404)) 
    empty_i_2
       (.I0(w_en_wr),
        .I1(empty_i_4__0_n_0),
        .I2(r_wr_logic_reg[3]),
        .I3(empty_i_5__0_n_0),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(empty_i_2_n_0));
  LUT6 #(
    .INIT(64'h0140802010040802)) 
    empty_i_4__0
       (.I0(r_wr_logic_reg[0]),
        .I1(r_wr_logic_reg[1]),
        .I2(r_wr_logic_reg[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(empty_i_4__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h8)) 
    empty_i_5__0
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(empty_i_5__0_n_0));
  FDPE empty_reg
       (.C(aclk),
        .CE(1'b1),
        .D(empty_i_1_n_0),
        .PRE(\r_wr_logic_reg[3]_0 ),
        .Q(empty_reg_0));
  LUT6 #(
    .INIT(64'h0E0E0A0C0C0C0C00)) 
    full_i_1
       (.I0(full_i_2__0_n_0),
        .I1(full_reg_1),
        .I2(\r_wr_logic_reg[0]_4 ),
        .I3(empty_reg_0),
        .I4(full_reg_2),
        .I5(w_en_wr),
        .O(full_i_1_n_0));
  LUT6 #(
    .INIT(64'h2AAA800080002AAA)) 
    full_i_2__0
       (.I0(full_i_3__0_n_0),
        .I1(r_wr_logic_reg[1]),
        .I2(r_wr_logic_reg[0]),
        .I3(r_wr_logic_reg[2]),
        .I4(r_wr_logic_reg[3]),
        .I5(Q[3]),
        .O(full_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h0842100010000842)) 
    full_i_3__0
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(r_wr_logic_reg[0]),
        .I3(r_wr_logic_reg[1]),
        .I4(r_wr_logic_reg[2]),
        .I5(Q[2]),
        .O(full_i_3__0_n_0));
  FDCE full_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r_wr_logic_reg[3]_0 ),
        .D(full_i_1_n_0),
        .Q(full_reg_1));
  LUT2 #(
    .INIT(4'h1)) 
    \r_rd_logic[0]_i_1__0 
       (.I0(\r_wr_logic_reg[0]_4 ),
        .I1(Q[0]),
        .O(p_0_in__2[0]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \r_rd_logic[1]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\r_wr_logic_reg[0]_4 ),
        .O(p_0_in__2[1]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'h006A)) 
    \r_rd_logic[2]_i_1__0 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\r_wr_logic_reg[0]_4 ),
        .O(p_0_in__2[2]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT5 #(
    .INIT(32'h00006AAA)) 
    \r_rd_logic[3]_i_2__0 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\r_wr_logic_reg[0]_4 ),
        .O(p_0_in__2[3]));
  FDCE \r_rd_logic_reg[0] 
       (.C(aclk),
        .CE(\r_rd_logic_reg[0]_0 ),
        .CLR(\r_wr_logic_reg[3]_0 ),
        .D(p_0_in__2[0]),
        .Q(Q[0]));
  FDCE \r_rd_logic_reg[1] 
       (.C(aclk),
        .CE(\r_rd_logic_reg[0]_0 ),
        .CLR(\r_wr_logic_reg[3]_0 ),
        .D(p_0_in__2[1]),
        .Q(Q[1]));
  FDCE \r_rd_logic_reg[2] 
       (.C(aclk),
        .CE(\r_rd_logic_reg[0]_0 ),
        .CLR(\r_wr_logic_reg[3]_0 ),
        .D(p_0_in__2[2]),
        .Q(Q[2]));
  FDCE \r_rd_logic_reg[3] 
       (.C(aclk),
        .CE(\r_rd_logic_reg[0]_0 ),
        .CLR(\r_wr_logic_reg[3]_0 ),
        .D(p_0_in__2[3]),
        .Q(Q[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000010)) 
    \r_reg_array[0][7]_i_1 
       (.I0(r_wr_logic_reg[2]),
        .I1(r_wr_logic_reg[3]),
        .I2(w_en_wr),
        .I3(r_wr_logic_reg[1]),
        .I4(r_wr_logic_reg[0]),
        .I5(\r_wr_logic_reg[0]_4 ),
        .O(E));
  LUT6 #(
    .INIT(64'hFFFFFFFF00002000)) 
    \r_reg_array[10][7]_i_1 
       (.I0(r_wr_logic_reg[1]),
        .I1(r_wr_logic_reg[0]),
        .I2(r_wr_logic_reg[3]),
        .I3(w_en_wr),
        .I4(r_wr_logic_reg[2]),
        .I5(\r_wr_logic_reg[0]_4 ),
        .O(\r_wr_logic_reg[1]_6 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00008000)) 
    \r_reg_array[11][7]_i_1 
       (.I0(r_wr_logic_reg[1]),
        .I1(r_wr_logic_reg[0]),
        .I2(r_wr_logic_reg[3]),
        .I3(w_en_wr),
        .I4(r_wr_logic_reg[2]),
        .I5(\r_wr_logic_reg[0]_4 ),
        .O(\r_wr_logic_reg[1]_7 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF10000000)) 
    \r_reg_array[12][7]_i_1 
       (.I0(r_wr_logic_reg[1]),
        .I1(r_wr_logic_reg[0]),
        .I2(r_wr_logic_reg[3]),
        .I3(w_en_wr),
        .I4(r_wr_logic_reg[2]),
        .I5(\r_wr_logic_reg[0]_4 ),
        .O(\r_wr_logic_reg[1]_8 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF20000000)) 
    \r_reg_array[13][7]_i_1 
       (.I0(r_wr_logic_reg[0]),
        .I1(r_wr_logic_reg[1]),
        .I2(r_wr_logic_reg[3]),
        .I3(w_en_wr),
        .I4(r_wr_logic_reg[2]),
        .I5(\r_wr_logic_reg[0]_4 ),
        .O(\r_wr_logic_reg[0]_3 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF20000000)) 
    \r_reg_array[14][7]_i_1 
       (.I0(r_wr_logic_reg[1]),
        .I1(r_wr_logic_reg[0]),
        .I2(r_wr_logic_reg[3]),
        .I3(w_en_wr),
        .I4(r_wr_logic_reg[2]),
        .I5(\r_wr_logic_reg[0]_4 ),
        .O(\r_wr_logic_reg[1]_9 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF80000000)) 
    \r_reg_array[15][7]_i_1 
       (.I0(r_wr_logic_reg[1]),
        .I1(r_wr_logic_reg[0]),
        .I2(r_wr_logic_reg[3]),
        .I3(w_en_wr),
        .I4(r_wr_logic_reg[2]),
        .I5(\r_wr_logic_reg[0]_4 ),
        .O(\r_wr_logic_reg[1]_10 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00020000)) 
    \r_reg_array[1][7]_i_1 
       (.I0(r_wr_logic_reg[0]),
        .I1(r_wr_logic_reg[1]),
        .I2(r_wr_logic_reg[2]),
        .I3(r_wr_logic_reg[3]),
        .I4(w_en_wr),
        .I5(\r_wr_logic_reg[0]_4 ),
        .O(\r_wr_logic_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00020000)) 
    \r_reg_array[2][7]_i_1 
       (.I0(r_wr_logic_reg[1]),
        .I1(r_wr_logic_reg[0]),
        .I2(r_wr_logic_reg[2]),
        .I3(r_wr_logic_reg[3]),
        .I4(w_en_wr),
        .I5(\r_wr_logic_reg[0]_4 ),
        .O(\r_wr_logic_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00080000)) 
    \r_reg_array[3][7]_i_1 
       (.I0(r_wr_logic_reg[1]),
        .I1(r_wr_logic_reg[0]),
        .I2(r_wr_logic_reg[2]),
        .I3(r_wr_logic_reg[3]),
        .I4(w_en_wr),
        .I5(\r_wr_logic_reg[0]_4 ),
        .O(\r_wr_logic_reg[1]_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF01000000)) 
    \r_reg_array[4][7]_i_1 
       (.I0(r_wr_logic_reg[1]),
        .I1(r_wr_logic_reg[0]),
        .I2(r_wr_logic_reg[3]),
        .I3(w_en_wr),
        .I4(r_wr_logic_reg[2]),
        .I5(\r_wr_logic_reg[0]_4 ),
        .O(\r_wr_logic_reg[1]_2 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF02000000)) 
    \r_reg_array[5][7]_i_1 
       (.I0(r_wr_logic_reg[0]),
        .I1(r_wr_logic_reg[1]),
        .I2(r_wr_logic_reg[3]),
        .I3(w_en_wr),
        .I4(r_wr_logic_reg[2]),
        .I5(\r_wr_logic_reg[0]_4 ),
        .O(\r_wr_logic_reg[0]_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF02000000)) 
    \r_reg_array[6][7]_i_1 
       (.I0(r_wr_logic_reg[1]),
        .I1(r_wr_logic_reg[0]),
        .I2(r_wr_logic_reg[3]),
        .I3(w_en_wr),
        .I4(r_wr_logic_reg[2]),
        .I5(\r_wr_logic_reg[0]_4 ),
        .O(\r_wr_logic_reg[1]_3 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF08000000)) 
    \r_reg_array[7][7]_i_1 
       (.I0(r_wr_logic_reg[1]),
        .I1(r_wr_logic_reg[0]),
        .I2(r_wr_logic_reg[3]),
        .I3(w_en_wr),
        .I4(r_wr_logic_reg[2]),
        .I5(\r_wr_logic_reg[0]_4 ),
        .O(\r_wr_logic_reg[1]_4 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00001000)) 
    \r_reg_array[8][7]_i_1 
       (.I0(r_wr_logic_reg[1]),
        .I1(r_wr_logic_reg[0]),
        .I2(r_wr_logic_reg[3]),
        .I3(w_en_wr),
        .I4(r_wr_logic_reg[2]),
        .I5(\r_wr_logic_reg[0]_4 ),
        .O(\r_wr_logic_reg[1]_5 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00002000)) 
    \r_reg_array[9][7]_i_1 
       (.I0(r_wr_logic_reg[0]),
        .I1(r_wr_logic_reg[1]),
        .I2(r_wr_logic_reg[3]),
        .I3(w_en_wr),
        .I4(r_wr_logic_reg[2]),
        .I5(\r_wr_logic_reg[0]_4 ),
        .O(\r_wr_logic_reg[0]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \r_wr_logic[0]_i_1__0 
       (.I0(r_wr_logic_reg[0]),
        .I1(\r_wr_logic_reg[0]_4 ),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \r_wr_logic[1]_i_1__0 
       (.I0(r_wr_logic_reg[0]),
        .I1(r_wr_logic_reg[1]),
        .I2(\r_wr_logic_reg[0]_4 ),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'h006A)) 
    \r_wr_logic[2]_i_1__0 
       (.I0(r_wr_logic_reg[2]),
        .I1(r_wr_logic_reg[1]),
        .I2(r_wr_logic_reg[0]),
        .I3(\r_wr_logic_reg[0]_4 ),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT5 #(
    .INIT(32'h00006AAA)) 
    \r_wr_logic[3]_i_2__0 
       (.I0(r_wr_logic_reg[3]),
        .I1(r_wr_logic_reg[2]),
        .I2(r_wr_logic_reg[0]),
        .I3(r_wr_logic_reg[1]),
        .I4(\r_wr_logic_reg[0]_4 ),
        .O(p_0_in__0[3]));
  FDCE \r_wr_logic_reg[0] 
       (.C(aclk),
        .CE(\r_wr_logic_reg[0]_5 ),
        .CLR(\r_wr_logic_reg[3]_0 ),
        .D(p_0_in__0[0]),
        .Q(r_wr_logic_reg[0]));
  FDCE \r_wr_logic_reg[1] 
       (.C(aclk),
        .CE(\r_wr_logic_reg[0]_5 ),
        .CLR(\r_wr_logic_reg[3]_0 ),
        .D(p_0_in__0[1]),
        .Q(r_wr_logic_reg[1]));
  FDCE \r_wr_logic_reg[2] 
       (.C(aclk),
        .CE(\r_wr_logic_reg[0]_5 ),
        .CLR(\r_wr_logic_reg[3]_0 ),
        .D(p_0_in__0[2]),
        .Q(r_wr_logic_reg[2]));
  FDCE \r_wr_logic_reg[3] 
       (.C(aclk),
        .CE(\r_wr_logic_reg[0]_5 ),
        .CLR(\r_wr_logic_reg[3]_0 ),
        .D(p_0_in__0[3]),
        .Q(r_wr_logic_reg[3]));
  LUT5 #(
    .INIT(32'hACFCAC30)) 
    slave_error_i_3
       (.I0(full_reg_1),
        .I1(S_AXI_rready),
        .I2(S_AXI_wvalid),
        .I3(slave_error_reg),
        .I4(slave_error_reg_0),
        .O(full_reg_0));
endmodule

(* ORIG_REF_NAME = "fifo_controller" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_controller_1
   (empty_reg_0,
    E,
    \r_wr_logic_reg[0]_0 ,
    \r_wr_logic_reg[1]_0 ,
    \r_wr_logic_reg[0]_1 ,
    \r_wr_logic_reg[0]_2 ,
    \r_wr_logic_reg[0]_3 ,
    \r_wr_logic_reg[1]_1 ,
    \r_wr_logic_reg[0]_4 ,
    \r_wr_logic_reg[0]_5 ,
    \r_wr_logic_reg[0]_6 ,
    \r_wr_logic_reg[1]_2 ,
    \r_wr_logic_reg[0]_7 ,
    \r_wr_logic_reg[0]_8 ,
    \r_wr_logic_reg[0]_9 ,
    \r_wr_logic_reg[1]_3 ,
    \r_wr_logic_reg[0]_10 ,
    \r_rd_logic_reg[3]_0 ,
    S_AXI_rready_0,
    full_reg_0,
    \r_rd_logic_reg[0]_0 ,
    S_AXI_rready,
    \r_rd_logic_reg[0]_1 ,
    \r_rd_logic_reg[0]_2 ,
    Q,
    \r_reg_array_reg[15][7] ,
    w_en_rd,
    aclk,
    \r_wr_logic_reg[3]_0 ,
    \r_wr_logic_reg[0]_11 );
  output empty_reg_0;
  output [0:0]E;
  output [0:0]\r_wr_logic_reg[0]_0 ;
  output [0:0]\r_wr_logic_reg[1]_0 ;
  output [0:0]\r_wr_logic_reg[0]_1 ;
  output [0:0]\r_wr_logic_reg[0]_2 ;
  output [0:0]\r_wr_logic_reg[0]_3 ;
  output [0:0]\r_wr_logic_reg[1]_1 ;
  output [0:0]\r_wr_logic_reg[0]_4 ;
  output [0:0]\r_wr_logic_reg[0]_5 ;
  output [0:0]\r_wr_logic_reg[0]_6 ;
  output [0:0]\r_wr_logic_reg[1]_2 ;
  output [0:0]\r_wr_logic_reg[0]_7 ;
  output [0:0]\r_wr_logic_reg[0]_8 ;
  output [0:0]\r_wr_logic_reg[0]_9 ;
  output [0:0]\r_wr_logic_reg[1]_3 ;
  output [0:0]\r_wr_logic_reg[0]_10 ;
  output [3:0]\r_rd_logic_reg[3]_0 ;
  output S_AXI_rready_0;
  output full_reg_0;
  input \r_rd_logic_reg[0]_0 ;
  input S_AXI_rready;
  input [0:0]\r_rd_logic_reg[0]_1 ;
  input [0:0]\r_rd_logic_reg[0]_2 ;
  input [0:0]Q;
  input \r_reg_array_reg[15][7] ;
  input w_en_rd;
  input aclk;
  input \r_wr_logic_reg[3]_0 ;
  input [0:0]\r_wr_logic_reg[0]_11 ;

  wire [0:0]E;
  wire [0:0]Q;
  wire S_AXI_rready;
  wire S_AXI_rready_0;
  wire aclk;
  wire empty_i_1_n_0;
  wire empty_i_2__0_n_0;
  wire empty_i_6_n_0;
  wire empty_reg_0;
  wire full_i_1_n_0;
  wire full_i_2_n_0;
  wire full_i_3_n_0;
  wire full_i_4_n_0;
  wire full_reg_0;
  wire [3:0]p_0_in;
  wire [3:0]p_0_in__1;
  wire \r_rd_logic[3]_i_1_n_0 ;
  wire \r_rd_logic_reg[0]_0 ;
  wire [0:0]\r_rd_logic_reg[0]_1 ;
  wire [0:0]\r_rd_logic_reg[0]_2 ;
  wire [3:0]\r_rd_logic_reg[3]_0 ;
  wire \r_reg_array_reg[15][7] ;
  wire [3:0]r_wr_logic_reg;
  wire [0:0]\r_wr_logic_reg[0]_0 ;
  wire [0:0]\r_wr_logic_reg[0]_1 ;
  wire [0:0]\r_wr_logic_reg[0]_10 ;
  wire [0:0]\r_wr_logic_reg[0]_11 ;
  wire [0:0]\r_wr_logic_reg[0]_2 ;
  wire [0:0]\r_wr_logic_reg[0]_3 ;
  wire [0:0]\r_wr_logic_reg[0]_4 ;
  wire [0:0]\r_wr_logic_reg[0]_5 ;
  wire [0:0]\r_wr_logic_reg[0]_6 ;
  wire [0:0]\r_wr_logic_reg[0]_7 ;
  wire [0:0]\r_wr_logic_reg[0]_8 ;
  wire [0:0]\r_wr_logic_reg[0]_9 ;
  wire [0:0]\r_wr_logic_reg[1]_0 ;
  wire [0:0]\r_wr_logic_reg[1]_1 ;
  wire [0:0]\r_wr_logic_reg[1]_2 ;
  wire [0:0]\r_wr_logic_reg[1]_3 ;
  wire \r_wr_logic_reg[3]_0 ;
  wire [3:2]w_empty_next1;
  wire w_en_rd;

  LUT6 #(
    .INIT(64'hFAF0FFFAFEF2FFF0)) 
    empty_i_1
       (.I0(empty_i_2__0_n_0),
        .I1(full_reg_0),
        .I2(Q),
        .I3(empty_reg_0),
        .I4(\r_reg_array_reg[15][7] ),
        .I5(w_en_rd),
        .O(empty_i_1_n_0));
  LUT6 #(
    .INIT(64'h0090000000000090)) 
    empty_i_2__0
       (.I0(w_empty_next1[2]),
        .I1(r_wr_logic_reg[2]),
        .I2(empty_i_6_n_0),
        .I3(\r_reg_array_reg[15][7] ),
        .I4(r_wr_logic_reg[3]),
        .I5(w_empty_next1[3]),
        .O(empty_i_2__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h78)) 
    empty_i_5
       (.I0(\r_rd_logic_reg[3]_0 [1]),
        .I1(\r_rd_logic_reg[3]_0 [0]),
        .I2(\r_rd_logic_reg[3]_0 [2]),
        .O(w_empty_next1[2]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h0690)) 
    empty_i_6
       (.I0(r_wr_logic_reg[1]),
        .I1(\r_rd_logic_reg[3]_0 [1]),
        .I2(r_wr_logic_reg[0]),
        .I3(\r_rd_logic_reg[3]_0 [0]),
        .O(empty_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    empty_i_7
       (.I0(\r_rd_logic_reg[3]_0 [0]),
        .I1(\r_rd_logic_reg[3]_0 [1]),
        .I2(\r_rd_logic_reg[3]_0 [2]),
        .I3(\r_rd_logic_reg[3]_0 [3]),
        .O(w_empty_next1[3]));
  FDPE empty_reg
       (.C(aclk),
        .CE(1'b1),
        .D(empty_i_1_n_0),
        .PRE(\r_wr_logic_reg[3]_0 ),
        .Q(empty_reg_0));
  LUT6 #(
    .INIT(64'h0A0C0C0A0E0E0C0C)) 
    full_i_1
       (.I0(full_i_2_n_0),
        .I1(full_reg_0),
        .I2(Q),
        .I3(empty_reg_0),
        .I4(\r_reg_array_reg[15][7] ),
        .I5(w_en_rd),
        .O(full_i_1_n_0));
  LUT6 #(
    .INIT(64'h9969000000000000)) 
    full_i_2
       (.I0(\r_rd_logic_reg[3]_0 [3]),
        .I1(r_wr_logic_reg[3]),
        .I2(r_wr_logic_reg[2]),
        .I3(full_i_3_n_0),
        .I4(\r_reg_array_reg[15][7] ),
        .I5(full_i_4_n_0),
        .O(full_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h7)) 
    full_i_3
       (.I0(r_wr_logic_reg[0]),
        .I1(r_wr_logic_reg[1]),
        .O(full_i_3_n_0));
  LUT6 #(
    .INIT(64'h0140802010040802)) 
    full_i_4
       (.I0(\r_rd_logic_reg[3]_0 [0]),
        .I1(\r_rd_logic_reg[3]_0 [1]),
        .I2(r_wr_logic_reg[2]),
        .I3(r_wr_logic_reg[1]),
        .I4(r_wr_logic_reg[0]),
        .I5(\r_rd_logic_reg[3]_0 [2]),
        .O(full_i_4_n_0));
  FDCE full_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r_wr_logic_reg[3]_0 ),
        .D(full_i_1_n_0),
        .Q(full_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \r_rd_logic[0]_i_1 
       (.I0(Q),
        .I1(\r_rd_logic_reg[3]_0 [0]),
        .O(p_0_in__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \r_rd_logic[1]_i_1 
       (.I0(\r_rd_logic_reg[3]_0 [1]),
        .I1(\r_rd_logic_reg[3]_0 [0]),
        .I2(Q),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h006A)) 
    \r_rd_logic[2]_i_1 
       (.I0(\r_rd_logic_reg[3]_0 [2]),
        .I1(\r_rd_logic_reg[3]_0 [0]),
        .I2(\r_rd_logic_reg[3]_0 [1]),
        .I3(Q),
        .O(p_0_in__1[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFF00400000)) 
    \r_rd_logic[3]_i_1 
       (.I0(empty_reg_0),
        .I1(\r_rd_logic_reg[0]_0 ),
        .I2(S_AXI_rready),
        .I3(\r_rd_logic_reg[0]_1 ),
        .I4(\r_rd_logic_reg[0]_2 ),
        .I5(Q),
        .O(\r_rd_logic[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h00006AAA)) 
    \r_rd_logic[3]_i_2 
       (.I0(\r_rd_logic_reg[3]_0 [3]),
        .I1(\r_rd_logic_reg[3]_0 [2]),
        .I2(\r_rd_logic_reg[3]_0 [1]),
        .I3(\r_rd_logic_reg[3]_0 [0]),
        .I4(Q),
        .O(p_0_in__1[3]));
  FDCE \r_rd_logic_reg[0] 
       (.C(aclk),
        .CE(\r_rd_logic[3]_i_1_n_0 ),
        .CLR(\r_wr_logic_reg[3]_0 ),
        .D(p_0_in__1[0]),
        .Q(\r_rd_logic_reg[3]_0 [0]));
  FDCE \r_rd_logic_reg[1] 
       (.C(aclk),
        .CE(\r_rd_logic[3]_i_1_n_0 ),
        .CLR(\r_wr_logic_reg[3]_0 ),
        .D(p_0_in__1[1]),
        .Q(\r_rd_logic_reg[3]_0 [1]));
  FDCE \r_rd_logic_reg[2] 
       (.C(aclk),
        .CE(\r_rd_logic[3]_i_1_n_0 ),
        .CLR(\r_wr_logic_reg[3]_0 ),
        .D(p_0_in__1[2]),
        .Q(\r_rd_logic_reg[3]_0 [2]));
  FDCE \r_rd_logic_reg[3] 
       (.C(aclk),
        .CE(\r_rd_logic[3]_i_1_n_0 ),
        .CLR(\r_wr_logic_reg[3]_0 ),
        .D(p_0_in__1[3]),
        .Q(\r_rd_logic_reg[3]_0 [3]));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000010)) 
    \r_reg_array[0][7]_i_1__0 
       (.I0(r_wr_logic_reg[2]),
        .I1(r_wr_logic_reg[3]),
        .I2(\r_reg_array_reg[15][7] ),
        .I3(r_wr_logic_reg[0]),
        .I4(r_wr_logic_reg[1]),
        .I5(Q),
        .O(E));
  LUT6 #(
    .INIT(64'hFFFFFFFF00002000)) 
    \r_reg_array[10][7]_i_1__0 
       (.I0(r_wr_logic_reg[1]),
        .I1(r_wr_logic_reg[0]),
        .I2(r_wr_logic_reg[3]),
        .I3(\r_reg_array_reg[15][7] ),
        .I4(r_wr_logic_reg[2]),
        .I5(Q),
        .O(\r_wr_logic_reg[1]_2 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00008000)) 
    \r_reg_array[11][7]_i_1__0 
       (.I0(r_wr_logic_reg[0]),
        .I1(r_wr_logic_reg[1]),
        .I2(r_wr_logic_reg[3]),
        .I3(\r_reg_array_reg[15][7] ),
        .I4(r_wr_logic_reg[2]),
        .I5(Q),
        .O(\r_wr_logic_reg[0]_7 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF10000000)) 
    \r_reg_array[12][7]_i_1__0 
       (.I0(r_wr_logic_reg[0]),
        .I1(r_wr_logic_reg[1]),
        .I2(r_wr_logic_reg[3]),
        .I3(\r_reg_array_reg[15][7] ),
        .I4(r_wr_logic_reg[2]),
        .I5(Q),
        .O(\r_wr_logic_reg[0]_8 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF20000000)) 
    \r_reg_array[13][7]_i_1__0 
       (.I0(r_wr_logic_reg[0]),
        .I1(r_wr_logic_reg[1]),
        .I2(r_wr_logic_reg[3]),
        .I3(\r_reg_array_reg[15][7] ),
        .I4(r_wr_logic_reg[2]),
        .I5(Q),
        .O(\r_wr_logic_reg[0]_9 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF20000000)) 
    \r_reg_array[14][7]_i_1__0 
       (.I0(r_wr_logic_reg[1]),
        .I1(r_wr_logic_reg[0]),
        .I2(r_wr_logic_reg[3]),
        .I3(\r_reg_array_reg[15][7] ),
        .I4(r_wr_logic_reg[2]),
        .I5(Q),
        .O(\r_wr_logic_reg[1]_3 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF80000000)) 
    \r_reg_array[15][7]_i_1__0 
       (.I0(r_wr_logic_reg[0]),
        .I1(r_wr_logic_reg[1]),
        .I2(r_wr_logic_reg[3]),
        .I3(\r_reg_array_reg[15][7] ),
        .I4(r_wr_logic_reg[2]),
        .I5(Q),
        .O(\r_wr_logic_reg[0]_10 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00020000)) 
    \r_reg_array[1][7]_i_1__0 
       (.I0(r_wr_logic_reg[0]),
        .I1(r_wr_logic_reg[1]),
        .I2(r_wr_logic_reg[2]),
        .I3(r_wr_logic_reg[3]),
        .I4(\r_reg_array_reg[15][7] ),
        .I5(Q),
        .O(\r_wr_logic_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00020000)) 
    \r_reg_array[2][7]_i_1__0 
       (.I0(r_wr_logic_reg[1]),
        .I1(r_wr_logic_reg[0]),
        .I2(r_wr_logic_reg[2]),
        .I3(r_wr_logic_reg[3]),
        .I4(\r_reg_array_reg[15][7] ),
        .I5(Q),
        .O(\r_wr_logic_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00080000)) 
    \r_reg_array[3][7]_i_1__0 
       (.I0(r_wr_logic_reg[0]),
        .I1(r_wr_logic_reg[1]),
        .I2(r_wr_logic_reg[2]),
        .I3(r_wr_logic_reg[3]),
        .I4(\r_reg_array_reg[15][7] ),
        .I5(Q),
        .O(\r_wr_logic_reg[0]_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF01000000)) 
    \r_reg_array[4][7]_i_1__0 
       (.I0(r_wr_logic_reg[0]),
        .I1(r_wr_logic_reg[1]),
        .I2(r_wr_logic_reg[3]),
        .I3(\r_reg_array_reg[15][7] ),
        .I4(r_wr_logic_reg[2]),
        .I5(Q),
        .O(\r_wr_logic_reg[0]_2 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF02000000)) 
    \r_reg_array[5][7]_i_1__0 
       (.I0(r_wr_logic_reg[0]),
        .I1(r_wr_logic_reg[1]),
        .I2(r_wr_logic_reg[3]),
        .I3(\r_reg_array_reg[15][7] ),
        .I4(r_wr_logic_reg[2]),
        .I5(Q),
        .O(\r_wr_logic_reg[0]_3 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF02000000)) 
    \r_reg_array[6][7]_i_1__0 
       (.I0(r_wr_logic_reg[1]),
        .I1(r_wr_logic_reg[0]),
        .I2(r_wr_logic_reg[3]),
        .I3(\r_reg_array_reg[15][7] ),
        .I4(r_wr_logic_reg[2]),
        .I5(Q),
        .O(\r_wr_logic_reg[1]_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF08000000)) 
    \r_reg_array[7][7]_i_1__0 
       (.I0(r_wr_logic_reg[0]),
        .I1(r_wr_logic_reg[1]),
        .I2(r_wr_logic_reg[3]),
        .I3(\r_reg_array_reg[15][7] ),
        .I4(r_wr_logic_reg[2]),
        .I5(Q),
        .O(\r_wr_logic_reg[0]_4 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00001000)) 
    \r_reg_array[8][7]_i_1__0 
       (.I0(r_wr_logic_reg[0]),
        .I1(r_wr_logic_reg[1]),
        .I2(r_wr_logic_reg[3]),
        .I3(\r_reg_array_reg[15][7] ),
        .I4(r_wr_logic_reg[2]),
        .I5(Q),
        .O(\r_wr_logic_reg[0]_5 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00002000)) 
    \r_reg_array[9][7]_i_1__0 
       (.I0(r_wr_logic_reg[0]),
        .I1(r_wr_logic_reg[1]),
        .I2(r_wr_logic_reg[3]),
        .I3(\r_reg_array_reg[15][7] ),
        .I4(r_wr_logic_reg[2]),
        .I5(Q),
        .O(\r_wr_logic_reg[0]_6 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \r_wr_logic[0]_i_1 
       (.I0(r_wr_logic_reg[0]),
        .I1(Q),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \r_wr_logic[1]_i_1 
       (.I0(r_wr_logic_reg[1]),
        .I1(r_wr_logic_reg[0]),
        .I2(Q),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h0078)) 
    \r_wr_logic[2]_i_1 
       (.I0(r_wr_logic_reg[0]),
        .I1(r_wr_logic_reg[1]),
        .I2(r_wr_logic_reg[2]),
        .I3(Q),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h00006AAA)) 
    \r_wr_logic[3]_i_2 
       (.I0(r_wr_logic_reg[3]),
        .I1(r_wr_logic_reg[2]),
        .I2(r_wr_logic_reg[1]),
        .I3(r_wr_logic_reg[0]),
        .I4(Q),
        .O(p_0_in[3]));
  FDCE \r_wr_logic_reg[0] 
       (.C(aclk),
        .CE(\r_wr_logic_reg[0]_11 ),
        .CLR(\r_wr_logic_reg[3]_0 ),
        .D(p_0_in[0]),
        .Q(r_wr_logic_reg[0]));
  FDCE \r_wr_logic_reg[1] 
       (.C(aclk),
        .CE(\r_wr_logic_reg[0]_11 ),
        .CLR(\r_wr_logic_reg[3]_0 ),
        .D(p_0_in[1]),
        .Q(r_wr_logic_reg[1]));
  FDCE \r_wr_logic_reg[2] 
       (.C(aclk),
        .CE(\r_wr_logic_reg[0]_11 ),
        .CLR(\r_wr_logic_reg[3]_0 ),
        .D(p_0_in[2]),
        .Q(r_wr_logic_reg[2]));
  FDCE \r_wr_logic_reg[3] 
       (.C(aclk),
        .CE(\r_wr_logic_reg[0]_11 ),
        .CLR(\r_wr_logic_reg[3]_0 ),
        .D(p_0_in[3]),
        .Q(r_wr_logic_reg[3]));
  LUT2 #(
    .INIT(4'h2)) 
    \rd_data[9]_i_4 
       (.I0(S_AXI_rready),
        .I1(empty_reg_0),
        .O(S_AXI_rready_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gpio
   (slot_decode_error,
    slot_wr_done,
    slot_rd_done,
    \slot_rd_data[1] ,
    \r_input_data_reg[5]_0 ,
    \FSM_onehot_r_state_reg[1]_0 ,
    out_ports,
    w_decode_error,
    aclk,
    \rd_data_reg[0]_0 ,
    w_wr_done,
    w_rd_done,
    w_rd_data,
    w_en__0,
    Q,
    in_ports,
    \out_ports_reg[0]_0 ,
    S_AXI_wdata,
    \out_ports_reg[0]_1 ,
    w_led_data);
  output [0:0]slot_decode_error;
  output [0:0]slot_wr_done;
  output [0:0]slot_rd_done;
  output [0:0]\slot_rd_data[1] ;
  output \r_input_data_reg[5]_0 ;
  output [0:0]\FSM_onehot_r_state_reg[1]_0 ;
  output [3:0]out_ports;
  input w_decode_error;
  input aclk;
  input \rd_data_reg[0]_0 ;
  input w_wr_done;
  input w_rd_done;
  input w_rd_data;
  input w_en__0;
  input [2:0]Q;
  input [3:0]in_ports;
  input \out_ports_reg[0]_0 ;
  input [3:0]S_AXI_wdata;
  input \out_ports_reg[0]_1 ;
  input [3:0]w_led_data;

  wire [0:0]\FSM_onehot_r_state_reg[1]_0 ;
  wire \FSM_onehot_r_state_reg_n_0_[0] ;
  wire \FSM_onehot_w_next_state_reg[0]_i_1__1_n_0 ;
  wire \FSM_onehot_w_next_state_reg[1]_i_1__0_n_0 ;
  wire \FSM_onehot_w_next_state_reg_n_0_[0] ;
  wire \FSM_onehot_w_next_state_reg_n_0_[1] ;
  wire [2:0]Q;
  wire [3:0]S_AXI_wdata;
  wire aclk;
  wire data4;
  wire data5;
  wire data6;
  wire data7;
  wire [3:0]in_ports;
  wire [3:0]out_ports;
  wire \out_ports[0]_i_1_n_0 ;
  wire \out_ports[1]_i_1_n_0 ;
  wire \out_ports[2]_i_1_n_0 ;
  wire \out_ports[3]_i_1_n_0 ;
  wire \out_ports_reg[0]_0 ;
  wire \out_ports_reg[0]_1 ;
  wire \r_input_data_reg[5]_0 ;
  wire [7:4]r_input_data_sync;
  wire \rd_data_reg[0]_0 ;
  wire [0:0]slot_decode_error;
  wire [0:0]\slot_rd_data[1] ;
  wire [0:0]slot_rd_done;
  wire [0:0]slot_wr_done;
  wire w_decode_error;
  wire w_en__0;
  wire [3:0]w_led_data;
  wire w_next_state;
  wire w_rd_data;
  wire w_rd_done;
  wire w_wr_done;

  (* FSM_ENCODED_STATES = "iSTATE:100,IDLE:001,ACTIVE:010" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_r_state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\FSM_onehot_w_next_state_reg_n_0_[0] ),
        .PRE(\rd_data_reg[0]_0 ),
        .Q(\FSM_onehot_r_state_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "iSTATE:100,IDLE:001,ACTIVE:010" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_r_state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\rd_data_reg[0]_0 ),
        .D(\FSM_onehot_w_next_state_reg_n_0_[1] ),
        .Q(\FSM_onehot_r_state_reg[1]_0 ));
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
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_w_next_state_reg[0]_i_1__1 
       (.I0(\FSM_onehot_r_state_reg_n_0_[0] ),
        .I1(w_en__0),
        .O(\FSM_onehot_w_next_state_reg[0]_i_1__1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_w_next_state_reg[1] 
       (.CLR(1'b0),
        .D(\FSM_onehot_w_next_state_reg[1]_i_1__0_n_0 ),
        .G(w_next_state),
        .GE(1'b1),
        .Q(\FSM_onehot_w_next_state_reg_n_0_[1] ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_w_next_state_reg[1]_i_1__0 
       (.I0(\FSM_onehot_r_state_reg_n_0_[0] ),
        .I1(w_en__0),
        .O(\FSM_onehot_w_next_state_reg[1]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_w_next_state_reg[1]_i_2__1 
       (.I0(\FSM_onehot_r_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_r_state_reg[1]_0 ),
        .O(w_next_state));
  FDCE decode_error_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(\rd_data_reg[0]_0 ),
        .D(w_decode_error),
        .Q(slot_decode_error));
  LUT6 #(
    .INIT(64'h0020FFFF00200000)) 
    \out_ports[0]_i_1 
       (.I0(\out_ports_reg[0]_0 ),
        .I1(Q[2]),
        .I2(S_AXI_wdata[0]),
        .I3(\out_ports_reg[0]_1 ),
        .I4(w_led_data[0]),
        .I5(out_ports[0]),
        .O(\out_ports[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0020FFFF00200000)) 
    \out_ports[1]_i_1 
       (.I0(\out_ports_reg[0]_0 ),
        .I1(Q[2]),
        .I2(S_AXI_wdata[1]),
        .I3(\out_ports_reg[0]_1 ),
        .I4(w_led_data[1]),
        .I5(out_ports[1]),
        .O(\out_ports[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0020FFFF00200000)) 
    \out_ports[2]_i_1 
       (.I0(\out_ports_reg[0]_0 ),
        .I1(Q[2]),
        .I2(S_AXI_wdata[2]),
        .I3(\out_ports_reg[0]_1 ),
        .I4(w_led_data[2]),
        .I5(out_ports[2]),
        .O(\out_ports[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0200FFFF02000000)) 
    \out_ports[3]_i_1 
       (.I0(\out_ports_reg[0]_0 ),
        .I1(\out_ports_reg[0]_1 ),
        .I2(Q[2]),
        .I3(S_AXI_wdata[3]),
        .I4(w_led_data[3]),
        .I5(out_ports[3]),
        .O(\out_ports[3]_i_1_n_0 ));
  FDCE \out_ports_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\rd_data_reg[0]_0 ),
        .D(\out_ports[0]_i_1_n_0 ),
        .Q(out_ports[0]));
  FDCE \out_ports_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\rd_data_reg[0]_0 ),
        .D(\out_ports[1]_i_1_n_0 ),
        .Q(out_ports[1]));
  FDCE \out_ports_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\rd_data_reg[0]_0 ),
        .D(\out_ports[2]_i_1_n_0 ),
        .Q(out_ports[2]));
  FDCE \out_ports_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\rd_data_reg[0]_0 ),
        .D(\out_ports[3]_i_1_n_0 ),
        .Q(out_ports[3]));
  FDCE \r_input_data_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\rd_data_reg[0]_0 ),
        .D(r_input_data_sync[4]),
        .Q(data4));
  FDCE \r_input_data_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\rd_data_reg[0]_0 ),
        .D(r_input_data_sync[5]),
        .Q(data5));
  FDCE \r_input_data_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\rd_data_reg[0]_0 ),
        .D(r_input_data_sync[6]),
        .Q(data6));
  FDCE \r_input_data_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\rd_data_reg[0]_0 ),
        .D(r_input_data_sync[7]),
        .Q(data7));
  FDCE \r_input_data_sync_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\rd_data_reg[0]_0 ),
        .D(in_ports[0]),
        .Q(r_input_data_sync[4]));
  FDCE \r_input_data_sync_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\rd_data_reg[0]_0 ),
        .D(in_ports[1]),
        .Q(r_input_data_sync[5]));
  FDCE \r_input_data_sync_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\rd_data_reg[0]_0 ),
        .D(in_ports[2]),
        .Q(r_input_data_sync[6]));
  FDCE \r_input_data_sync_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\rd_data_reg[0]_0 ),
        .D(in_ports[3]),
        .Q(r_input_data_sync[7]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \rd_data[0]_i_3 
       (.I0(data5),
        .I1(data7),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(data4),
        .I5(data6),
        .O(\r_input_data_reg[5]_0 ));
  FDCE \rd_data_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\rd_data_reg[0]_0 ),
        .D(w_rd_data),
        .Q(\slot_rd_data[1] ));
  FDCE rd_done_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(\rd_data_reg[0]_0 ),
        .D(w_rd_done),
        .Q(slot_rd_done));
  FDCE wr_done_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(\rd_data_reg[0]_0 ),
        .D(w_wr_done),
        .Q(slot_wr_done));
endmodule

(* NUM_INPUT = "9" *) (* NUM_OUTPUT = "4" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mmio_subsystem
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
    debug_w_next_state);
  input aclk;
  input arst_n;
  input [15:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  input S_AXI_awvalid;
  output S_AXI_awready;
  input [31:0]S_AXI_wdata;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;
  output S_AXI_wready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  input S_AXI_bready;
  input [15:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  input S_AXI_arvalid;
  output S_AXI_arready;
  output [31:0]S_AXI_rdata;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input S_AXI_rready;
  input [8:0]in_ports;
  output [3:0]out_ports;
  input rx;
  output tx;
  output [2:0]debug_r_state;
  output [2:0]debug_w_next_state;

  wire \<const0> ;
  wire [15:0]S_AXI_araddr;
  wire S_AXI_arready;
  wire S_AXI_arvalid;
  wire [15:0]S_AXI_awaddr;
  wire S_AXI_awready;
  wire S_AXI_awvalid;
  wire S_AXI_bready;
  wire [1:0]S_AXI_bresp;
  wire S_AXI_bvalid;
  wire [31:0]S_AXI_rdata;
  wire S_AXI_rready;
  wire [1:0]S_AXI_rresp;
  wire S_AXI_rvalid;
  wire [31:0]S_AXI_wdata;
  wire S_AXI_wready;
  wire S_AXI_wvalid;
  wire aclk;
  wire arst_n;
  wire control_n_100;
  wire control_n_101;
  wire control_n_102;
  wire control_n_103;
  wire control_n_104;
  wire control_n_107;
  wire control_n_109;
  wire control_n_117;
  wire control_n_121;
  wire control_n_127;
  wire control_n_128;
  wire control_n_129;
  wire control_n_13;
  wire control_n_130;
  wire control_n_131;
  wire control_n_132;
  wire control_n_133;
  wire control_n_134;
  wire control_n_135;
  wire control_n_136;
  wire control_n_137;
  wire control_n_20;
  wire control_n_53;
  wire control_n_92;
  wire control_n_95;
  wire control_n_97;
  wire control_n_98;
  wire control_n_99;
  wire emperor_gpio_n_4;
  wire emperor_gpio_n_5;
  wire emperor_timer_n_4;
  wire emperor_timer_n_5;
  wire emperor_timer_n_6;
  wire emperor_timer_n_7;
  wire emperor_uart_n_1;
  wire emperor_uart_n_10;
  wire emperor_uart_n_12;
  wire emperor_uart_n_23;
  wire emperor_uart_n_24;
  wire emperor_uart_n_25;
  wire emperor_uart_n_26;
  wire emperor_uart_n_27;
  wire emperor_uart_n_28;
  wire emperor_uart_n_29;
  wire emperor_uart_n_3;
  wire emperor_uart_n_30;
  wire emperor_uart_n_4;
  wire emperor_uart_n_9;
  wire [8:0]in_ports;
  wire [3:0]out_ports;
  wire [10:10]r_addr;
  wire [1:0]r_control;
  wire [9:0]r_dvsr;
  wire [5:0]reg_addr;
  wire rx;
  wire rx_empty;
  wire [2:0]slot_decode_error;
  wire [31:0]\slot_rd_data[0] ;
  wire [0:0]\slot_rd_data[1] ;
  wire [9:0]\slot_rd_data[2] ;
  wire [2:0]slot_rd_done;
  wire [2:0]slot_slave_error;
  wire [31:0]\slot_wr_data[0] ;
  wire [9:0]\slot_wr_data[2] ;
  wire [2:0]slot_wr_done;
  wire tx;
  wire tx_full;
  wire w_auto_reload;
  wire [1:0]w_control;
  wire w_decode_error;
  wire w_decode_error__0;
  wire w_en__0;
  wire w_en__0_3;
  wire w_en__0_4;
  wire w_en_dvsr;
  wire w_en_rd;
  wire w_en_wr;
  wire [3:0]w_led_data;
  wire w_rd_data;
  wire w_rd_data_0;
  wire w_rd_data__0;
  wire w_rd_done;
  wire w_rd_done_1;
  wire w_rd_done__0;
  wire w_slave_error__0;
  wire w_wr_done;
  wire w_wr_done_2;

  assign debug_r_state[2] = \<const0> ;
  assign debug_r_state[1] = \<const0> ;
  assign debug_r_state[0] = \<const0> ;
  assign debug_w_next_state[2] = \<const0> ;
  assign debug_w_next_state[1] = \<const0> ;
  assign debug_w_next_state[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mmio_controller control
       (.D(\slot_wr_data[2] ),
        .E(w_rd_data__0),
        .\FSM_onehot_r_state_reg[0] (control_n_95),
        .\FSM_onehot_r_state_reg[1] (w_en_dvsr),
        .Q({r_addr,reg_addr[5],reg_addr[3:0]}),
        .S_AXI_araddr({S_AXI_araddr[15:8],S_AXI_araddr[5],S_AXI_araddr[3:0]}),
        .S_AXI_arready(emperor_timer_n_5),
        .S_AXI_arvalid(S_AXI_arvalid),
        .S_AXI_awaddr({S_AXI_awaddr[15:8],S_AXI_awaddr[5],S_AXI_awaddr[3:0]}),
        .S_AXI_awready(S_AXI_awready),
        .S_AXI_awready_0(emperor_timer_n_4),
        .S_AXI_awvalid(S_AXI_awvalid),
        .S_AXI_bready(S_AXI_bready),
        .S_AXI_bresp(S_AXI_bresp),
        .S_AXI_bvalid(S_AXI_bvalid),
        .S_AXI_rdata(S_AXI_rdata),
        .\S_AXI_rdata[31] (\slot_rd_data[0] ),
        .\S_AXI_rdata[9] (\slot_rd_data[2] ),
        .S_AXI_rready(S_AXI_rready),
        .S_AXI_rresp(S_AXI_rresp),
        .S_AXI_rvalid(S_AXI_rvalid),
        .S_AXI_wdata(S_AXI_wdata),
        .\S_AXI_wdata[31] (\slot_wr_data[0] ),
        .\S_AXI_wdata[7] ({control_n_97,control_n_98,control_n_99,control_n_100,control_n_101,control_n_102,control_n_103,control_n_104}),
        .S_AXI_wready(S_AXI_wready),
        .S_AXI_wvalid(S_AXI_wvalid),
        .S_AXI_wvalid_0(w_control),
        .aclk(aclk),
        .decode_error_reg(emperor_gpio_n_5),
        .\r_addr_reg[0]_0 (w_auto_reload),
        .\r_addr_reg[10]_0 (control_n_13),
        .\r_addr_reg[11]_0 (control_n_20),
        .\r_addr_reg[1]_0 (control_n_107),
        .\r_addr_reg[1]_1 (control_n_109),
        .\r_addr_reg[1]_2 (control_n_117),
        .\r_addr_reg[1]_3 (control_n_121),
        .\r_addr_reg[2]_0 ({control_n_127,control_n_128,control_n_129,control_n_130,control_n_131,control_n_132,control_n_133,control_n_134,control_n_135,control_n_136}),
        .\r_addr_reg[3]_0 (w_rd_data_0),
        .\r_addr_reg[3]_1 (control_n_137),
        .\r_addr_reg[9]_0 (control_n_92),
        .\r_control_reg[0] ({emperor_uart_n_3,emperor_uart_n_4}),
        .\r_reg_array_reg[0][0] (r_control),
        .\r_state_reg[0]_0 (control_n_53),
        .\r_state_reg[2]_0 (S_AXI_arready),
        .\r_state_reg[2]_1 (emperor_uart_n_1),
        .\rd_data_reg[0] (emperor_uart_n_30),
        .\rd_data_reg[0]_0 (emperor_gpio_n_4),
        .\rd_data_reg[1] (emperor_uart_n_29),
        .\rd_data_reg[2] (emperor_uart_n_28),
        .\rd_data_reg[3] (emperor_uart_n_27),
        .\rd_data_reg[4] (emperor_uart_n_26),
        .\rd_data_reg[5] (emperor_uart_n_25),
        .\rd_data_reg[6] (emperor_uart_n_24),
        .\rd_data_reg[7] (emperor_uart_n_23),
        .\rd_data_reg[9] (emperor_uart_n_10),
        .\rd_data_reg[9]_0 (emperor_uart_n_9),
        .\rd_data_reg[9]_1 (emperor_uart_n_12),
        .\rd_data_reg[9]_2 (r_dvsr),
        .rx_empty(rx_empty),
        .slave_error_reg({emperor_timer_n_6,emperor_timer_n_7}),
        .slot_decode_error(slot_decode_error),
        .\slot_rd_data[1] (\slot_rd_data[1] ),
        .slot_rd_done(slot_rd_done),
        .slot_slave_error({slot_slave_error[2],slot_slave_error[0]}),
        .slot_wr_done(slot_wr_done),
        .tx_full(tx_full),
        .w_decode_error(w_decode_error),
        .w_decode_error__0(w_decode_error__0),
        .w_en__0(w_en__0_4),
        .w_en__0_0(w_en__0_3),
        .w_en__0_1(w_en__0),
        .w_en_rd(w_en_rd),
        .w_en_wr(w_en_wr),
        .w_led_data(w_led_data),
        .w_rd_data(w_rd_data),
        .w_rd_done(w_rd_done_1),
        .w_rd_done_2(w_rd_done),
        .w_rd_done__0(w_rd_done__0),
        .w_slave_error__0(w_slave_error__0),
        .w_wr_done(w_wr_done_2),
        .w_wr_done_3(w_wr_done));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gpio emperor_gpio
       (.\FSM_onehot_r_state_reg[1]_0 (emperor_gpio_n_5),
        .Q({r_addr,reg_addr[3:2]}),
        .S_AXI_wdata(S_AXI_wdata[3:0]),
        .aclk(aclk),
        .in_ports(in_ports[7:4]),
        .out_ports(out_ports),
        .\out_ports_reg[0]_0 (control_n_20),
        .\out_ports_reg[0]_1 (control_n_92),
        .\r_input_data_reg[5]_0 (emperor_gpio_n_4),
        .\rd_data_reg[0]_0 (emperor_uart_n_1),
        .slot_decode_error(slot_decode_error[1]),
        .\slot_rd_data[1] (\slot_rd_data[1] ),
        .slot_rd_done(slot_rd_done[1]),
        .slot_wr_done(slot_wr_done[1]),
        .w_decode_error(w_decode_error),
        .w_en__0(w_en__0_3),
        .w_led_data(w_led_data),
        .w_rd_data(w_rd_data),
        .w_rd_done(w_rd_done),
        .w_wr_done(w_wr_done));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_timer emperor_timer
       (.D(\slot_wr_data[0] ),
        .E(w_rd_data__0),
        .Q({emperor_timer_n_6,emperor_timer_n_7}),
        .S_AXI_araddr(S_AXI_araddr[7:4]),
        .\S_AXI_araddr[5] (emperor_timer_n_5),
        .S_AXI_arvalid(S_AXI_arvalid),
        .S_AXI_awaddr(S_AXI_awaddr[7:4]),
        .\S_AXI_awaddr[4] (emperor_timer_n_4),
        .S_AXI_awvalid(S_AXI_awvalid),
        .S_AXI_wdata(S_AXI_wdata[1:0]),
        .S_AXI_wvalid(S_AXI_wvalid),
        .aclk(aclk),
        .\r_auto_reload_reg[31]_0 (w_auto_reload),
        .\r_control_reg[0]_0 (control_n_13),
        .\r_control_reg[0]_1 (control_n_53),
        .\r_control_reg[0]_2 (control_n_117),
        .r_eg_reg_0({reg_addr[5],reg_addr[3:2]}),
        .r_eg_reg_1(control_n_107),
        .\rd_data_reg[31]_0 (\slot_rd_data[0] ),
        .rd_done_reg_0(control_n_121),
        .rd_done_reg_1(emperor_uart_n_1),
        .slot_decode_error(slot_decode_error[0]),
        .slot_rd_done(slot_rd_done[0]),
        .slot_slave_error(slot_slave_error[0]),
        .slot_wr_done(slot_wr_done[0]),
        .w_decode_error__0(w_decode_error__0),
        .w_en__0(w_en__0_4),
        .w_rd_done__0(w_rd_done__0),
        .w_slave_error__0(w_slave_error__0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart emperor_uart
       (.D(control_n_95),
        .E(w_en_dvsr),
        .\FSM_onehot_r_state_reg[1]_0 (emperor_uart_n_10),
        .Q({emperor_uart_n_3,emperor_uart_n_4}),
        .S_AXI_bready(S_AXI_bready),
        .S_AXI_rready(S_AXI_rready),
        .S_AXI_rready_0(emperor_uart_n_9),
        .S_AXI_rready_1(emperor_uart_n_12),
        .S_AXI_wvalid(S_AXI_wvalid),
        .aclk(aclk),
        .arst_n(arst_n),
        .arst_n_0(emperor_uart_n_1),
        .\r_control_reg[1]_0 (r_control),
        .\r_control_reg[1]_1 (w_control),
        .\r_dvsr_reg[9]_0 (r_dvsr),
        .\r_dvsr_reg[9]_1 (\slot_wr_data[2] ),
        .\r_rd_logic_reg[0] ({reg_addr[5],reg_addr[3:0]}),
        .\r_rd_logic_reg[0]_0 (control_n_137),
        .\r_rd_logic_reg[3] (emperor_uart_n_23),
        .\r_rd_logic_reg[3]_0 (emperor_uart_n_24),
        .\r_rd_logic_reg[3]_1 (emperor_uart_n_25),
        .\r_rd_logic_reg[3]_2 (emperor_uart_n_26),
        .\r_rd_logic_reg[3]_3 (emperor_uart_n_27),
        .\r_rd_logic_reg[3]_4 (emperor_uart_n_28),
        .\r_rd_logic_reg[3]_5 (emperor_uart_n_29),
        .\r_rd_logic_reg[3]_6 (emperor_uart_n_30),
        .\r_reg_array_reg[0][7] ({control_n_97,control_n_98,control_n_99,control_n_100,control_n_101,control_n_102,control_n_103,control_n_104}),
        .\rd_data_reg[9]_0 (\slot_rd_data[2] ),
        .\rd_data_reg[9]_1 (w_rd_data_0),
        .\rd_data_reg[9]_2 ({control_n_127,control_n_128,control_n_129,control_n_130,control_n_131,control_n_132,control_n_133,control_n_134,control_n_135,control_n_136}),
        .rx(rx),
        .rx_empty(rx_empty),
        .slave_error_reg_0(control_n_109),
        .slot_decode_error(slot_decode_error[2]),
        .slot_rd_done(slot_rd_done[2]),
        .slot_slave_error(slot_slave_error[2]),
        .slot_wr_done(slot_wr_done[2]),
        .tx(tx),
        .tx_full(tx_full),
        .w_en__0(w_en__0),
        .w_en_rd(w_en_rd),
        .w_en_wr(w_en_wr),
        .w_rd_done(w_rd_done_1),
        .w_wr_done(w_wr_done_2));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_file
   (arst_n_0,
    r_reg_array__0,
    arst_n,
    Q,
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
  output arst_n_0;
  output [7:0]r_reg_array__0;
  input arst_n;
  input [3:0]Q;
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

  wire [0:0]E;
  wire [3:0]Q;
  wire aclk;
  wire arst_n;
  wire arst_n_0;
  wire \r_in_shift[0]_i_3_n_0 ;
  wire \r_in_shift[0]_i_4_n_0 ;
  wire \r_in_shift[0]_i_5_n_0 ;
  wire \r_in_shift[0]_i_6_n_0 ;
  wire \r_in_shift[1]_i_3_n_0 ;
  wire \r_in_shift[1]_i_4_n_0 ;
  wire \r_in_shift[1]_i_5_n_0 ;
  wire \r_in_shift[1]_i_6_n_0 ;
  wire \r_in_shift[2]_i_3_n_0 ;
  wire \r_in_shift[2]_i_4_n_0 ;
  wire \r_in_shift[2]_i_5_n_0 ;
  wire \r_in_shift[2]_i_6_n_0 ;
  wire \r_in_shift[3]_i_3_n_0 ;
  wire \r_in_shift[3]_i_4_n_0 ;
  wire \r_in_shift[3]_i_5_n_0 ;
  wire \r_in_shift[3]_i_6_n_0 ;
  wire \r_in_shift[4]_i_3_n_0 ;
  wire \r_in_shift[4]_i_4_n_0 ;
  wire \r_in_shift[4]_i_5_n_0 ;
  wire \r_in_shift[4]_i_6_n_0 ;
  wire \r_in_shift[5]_i_3_n_0 ;
  wire \r_in_shift[5]_i_4_n_0 ;
  wire \r_in_shift[5]_i_5_n_0 ;
  wire \r_in_shift[5]_i_6_n_0 ;
  wire \r_in_shift[6]_i_3_n_0 ;
  wire \r_in_shift[6]_i_4_n_0 ;
  wire \r_in_shift[6]_i_5_n_0 ;
  wire \r_in_shift[6]_i_6_n_0 ;
  wire \r_in_shift[7]_i_4_n_0 ;
  wire \r_in_shift[7]_i_5_n_0 ;
  wire \r_in_shift[7]_i_6_n_0 ;
  wire \r_in_shift[7]_i_7_n_0 ;
  wire [7:0]r_reg_array__0;
  wire [7:0]\r_reg_array_reg[0][7]_0 ;
  wire [0:0]\r_reg_array_reg[0][7]_1 ;
  wire [0:0]\r_reg_array_reg[10][7]_0 ;
  wire [0:0]\r_reg_array_reg[11][7]_0 ;
  wire [0:0]\r_reg_array_reg[12][7]_0 ;
  wire [0:0]\r_reg_array_reg[13][7]_0 ;
  wire [0:0]\r_reg_array_reg[14][7]_0 ;
  wire [0:0]\r_reg_array_reg[1][7]_0 ;
  wire [0:0]\r_reg_array_reg[2][7]_0 ;
  wire [0:0]\r_reg_array_reg[3][7]_0 ;
  wire [0:0]\r_reg_array_reg[4][7]_0 ;
  wire [0:0]\r_reg_array_reg[5][7]_0 ;
  wire [0:0]\r_reg_array_reg[6][7]_0 ;
  wire [0:0]\r_reg_array_reg[7][7]_0 ;
  wire [0:0]\r_reg_array_reg[8][7]_0 ;
  wire [0:0]\r_reg_array_reg[9][7]_0 ;
  wire \r_reg_array_reg_n_0_[0][0] ;
  wire \r_reg_array_reg_n_0_[0][1] ;
  wire \r_reg_array_reg_n_0_[0][2] ;
  wire \r_reg_array_reg_n_0_[0][3] ;
  wire \r_reg_array_reg_n_0_[0][4] ;
  wire \r_reg_array_reg_n_0_[0][5] ;
  wire \r_reg_array_reg_n_0_[0][6] ;
  wire \r_reg_array_reg_n_0_[0][7] ;
  wire \r_reg_array_reg_n_0_[10][0] ;
  wire \r_reg_array_reg_n_0_[10][1] ;
  wire \r_reg_array_reg_n_0_[10][2] ;
  wire \r_reg_array_reg_n_0_[10][3] ;
  wire \r_reg_array_reg_n_0_[10][4] ;
  wire \r_reg_array_reg_n_0_[10][5] ;
  wire \r_reg_array_reg_n_0_[10][6] ;
  wire \r_reg_array_reg_n_0_[10][7] ;
  wire \r_reg_array_reg_n_0_[11][0] ;
  wire \r_reg_array_reg_n_0_[11][1] ;
  wire \r_reg_array_reg_n_0_[11][2] ;
  wire \r_reg_array_reg_n_0_[11][3] ;
  wire \r_reg_array_reg_n_0_[11][4] ;
  wire \r_reg_array_reg_n_0_[11][5] ;
  wire \r_reg_array_reg_n_0_[11][6] ;
  wire \r_reg_array_reg_n_0_[11][7] ;
  wire \r_reg_array_reg_n_0_[12][0] ;
  wire \r_reg_array_reg_n_0_[12][1] ;
  wire \r_reg_array_reg_n_0_[12][2] ;
  wire \r_reg_array_reg_n_0_[12][3] ;
  wire \r_reg_array_reg_n_0_[12][4] ;
  wire \r_reg_array_reg_n_0_[12][5] ;
  wire \r_reg_array_reg_n_0_[12][6] ;
  wire \r_reg_array_reg_n_0_[12][7] ;
  wire \r_reg_array_reg_n_0_[13][0] ;
  wire \r_reg_array_reg_n_0_[13][1] ;
  wire \r_reg_array_reg_n_0_[13][2] ;
  wire \r_reg_array_reg_n_0_[13][3] ;
  wire \r_reg_array_reg_n_0_[13][4] ;
  wire \r_reg_array_reg_n_0_[13][5] ;
  wire \r_reg_array_reg_n_0_[13][6] ;
  wire \r_reg_array_reg_n_0_[13][7] ;
  wire \r_reg_array_reg_n_0_[14][0] ;
  wire \r_reg_array_reg_n_0_[14][1] ;
  wire \r_reg_array_reg_n_0_[14][2] ;
  wire \r_reg_array_reg_n_0_[14][3] ;
  wire \r_reg_array_reg_n_0_[14][4] ;
  wire \r_reg_array_reg_n_0_[14][5] ;
  wire \r_reg_array_reg_n_0_[14][6] ;
  wire \r_reg_array_reg_n_0_[14][7] ;
  wire \r_reg_array_reg_n_0_[15][0] ;
  wire \r_reg_array_reg_n_0_[15][1] ;
  wire \r_reg_array_reg_n_0_[15][2] ;
  wire \r_reg_array_reg_n_0_[15][3] ;
  wire \r_reg_array_reg_n_0_[15][4] ;
  wire \r_reg_array_reg_n_0_[15][5] ;
  wire \r_reg_array_reg_n_0_[15][6] ;
  wire \r_reg_array_reg_n_0_[15][7] ;
  wire \r_reg_array_reg_n_0_[1][0] ;
  wire \r_reg_array_reg_n_0_[1][1] ;
  wire \r_reg_array_reg_n_0_[1][2] ;
  wire \r_reg_array_reg_n_0_[1][3] ;
  wire \r_reg_array_reg_n_0_[1][4] ;
  wire \r_reg_array_reg_n_0_[1][5] ;
  wire \r_reg_array_reg_n_0_[1][6] ;
  wire \r_reg_array_reg_n_0_[1][7] ;
  wire \r_reg_array_reg_n_0_[2][0] ;
  wire \r_reg_array_reg_n_0_[2][1] ;
  wire \r_reg_array_reg_n_0_[2][2] ;
  wire \r_reg_array_reg_n_0_[2][3] ;
  wire \r_reg_array_reg_n_0_[2][4] ;
  wire \r_reg_array_reg_n_0_[2][5] ;
  wire \r_reg_array_reg_n_0_[2][6] ;
  wire \r_reg_array_reg_n_0_[2][7] ;
  wire \r_reg_array_reg_n_0_[3][0] ;
  wire \r_reg_array_reg_n_0_[3][1] ;
  wire \r_reg_array_reg_n_0_[3][2] ;
  wire \r_reg_array_reg_n_0_[3][3] ;
  wire \r_reg_array_reg_n_0_[3][4] ;
  wire \r_reg_array_reg_n_0_[3][5] ;
  wire \r_reg_array_reg_n_0_[3][6] ;
  wire \r_reg_array_reg_n_0_[3][7] ;
  wire \r_reg_array_reg_n_0_[4][0] ;
  wire \r_reg_array_reg_n_0_[4][1] ;
  wire \r_reg_array_reg_n_0_[4][2] ;
  wire \r_reg_array_reg_n_0_[4][3] ;
  wire \r_reg_array_reg_n_0_[4][4] ;
  wire \r_reg_array_reg_n_0_[4][5] ;
  wire \r_reg_array_reg_n_0_[4][6] ;
  wire \r_reg_array_reg_n_0_[4][7] ;
  wire \r_reg_array_reg_n_0_[5][0] ;
  wire \r_reg_array_reg_n_0_[5][1] ;
  wire \r_reg_array_reg_n_0_[5][2] ;
  wire \r_reg_array_reg_n_0_[5][3] ;
  wire \r_reg_array_reg_n_0_[5][4] ;
  wire \r_reg_array_reg_n_0_[5][5] ;
  wire \r_reg_array_reg_n_0_[5][6] ;
  wire \r_reg_array_reg_n_0_[5][7] ;
  wire \r_reg_array_reg_n_0_[6][0] ;
  wire \r_reg_array_reg_n_0_[6][1] ;
  wire \r_reg_array_reg_n_0_[6][2] ;
  wire \r_reg_array_reg_n_0_[6][3] ;
  wire \r_reg_array_reg_n_0_[6][4] ;
  wire \r_reg_array_reg_n_0_[6][5] ;
  wire \r_reg_array_reg_n_0_[6][6] ;
  wire \r_reg_array_reg_n_0_[6][7] ;
  wire \r_reg_array_reg_n_0_[7][0] ;
  wire \r_reg_array_reg_n_0_[7][1] ;
  wire \r_reg_array_reg_n_0_[7][2] ;
  wire \r_reg_array_reg_n_0_[7][3] ;
  wire \r_reg_array_reg_n_0_[7][4] ;
  wire \r_reg_array_reg_n_0_[7][5] ;
  wire \r_reg_array_reg_n_0_[7][6] ;
  wire \r_reg_array_reg_n_0_[7][7] ;
  wire \r_reg_array_reg_n_0_[8][0] ;
  wire \r_reg_array_reg_n_0_[8][1] ;
  wire \r_reg_array_reg_n_0_[8][2] ;
  wire \r_reg_array_reg_n_0_[8][3] ;
  wire \r_reg_array_reg_n_0_[8][4] ;
  wire \r_reg_array_reg_n_0_[8][5] ;
  wire \r_reg_array_reg_n_0_[8][6] ;
  wire \r_reg_array_reg_n_0_[8][7] ;
  wire \r_reg_array_reg_n_0_[9][0] ;
  wire \r_reg_array_reg_n_0_[9][1] ;
  wire \r_reg_array_reg_n_0_[9][2] ;
  wire \r_reg_array_reg_n_0_[9][3] ;
  wire \r_reg_array_reg_n_0_[9][4] ;
  wire \r_reg_array_reg_n_0_[9][5] ;
  wire \r_reg_array_reg_n_0_[9][6] ;
  wire \r_reg_array_reg_n_0_[9][7] ;

  LUT1 #(
    .INIT(2'h1)) 
    \out_ports[3]_i_2 
       (.I0(arst_n),
        .O(arst_n_0));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \r_in_shift[0]_i_2 
       (.I0(\r_in_shift[0]_i_3_n_0 ),
        .I1(\r_in_shift[0]_i_4_n_0 ),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(\r_in_shift[0]_i_5_n_0 ),
        .I5(\r_in_shift[0]_i_6_n_0 ),
        .O(r_reg_array__0[0]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \r_in_shift[0]_i_3 
       (.I0(\r_reg_array_reg_n_0_[5][0] ),
        .I1(\r_reg_array_reg_n_0_[7][0] ),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\r_reg_array_reg_n_0_[4][0] ),
        .I5(\r_reg_array_reg_n_0_[6][0] ),
        .O(\r_in_shift[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \r_in_shift[0]_i_4 
       (.I0(\r_reg_array_reg_n_0_[13][0] ),
        .I1(\r_reg_array_reg_n_0_[15][0] ),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\r_reg_array_reg_n_0_[12][0] ),
        .I5(\r_reg_array_reg_n_0_[14][0] ),
        .O(\r_in_shift[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \r_in_shift[0]_i_5 
       (.I0(\r_reg_array_reg_n_0_[1][0] ),
        .I1(\r_reg_array_reg_n_0_[3][0] ),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\r_reg_array_reg_n_0_[0][0] ),
        .I5(\r_reg_array_reg_n_0_[2][0] ),
        .O(\r_in_shift[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \r_in_shift[0]_i_6 
       (.I0(\r_reg_array_reg_n_0_[9][0] ),
        .I1(\r_reg_array_reg_n_0_[11][0] ),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\r_reg_array_reg_n_0_[8][0] ),
        .I5(\r_reg_array_reg_n_0_[10][0] ),
        .O(\r_in_shift[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \r_in_shift[1]_i_2 
       (.I0(\r_in_shift[1]_i_3_n_0 ),
        .I1(\r_in_shift[1]_i_4_n_0 ),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(\r_in_shift[1]_i_5_n_0 ),
        .I5(\r_in_shift[1]_i_6_n_0 ),
        .O(r_reg_array__0[1]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \r_in_shift[1]_i_3 
       (.I0(\r_reg_array_reg_n_0_[5][1] ),
        .I1(\r_reg_array_reg_n_0_[7][1] ),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\r_reg_array_reg_n_0_[4][1] ),
        .I5(\r_reg_array_reg_n_0_[6][1] ),
        .O(\r_in_shift[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \r_in_shift[1]_i_4 
       (.I0(\r_reg_array_reg_n_0_[13][1] ),
        .I1(\r_reg_array_reg_n_0_[15][1] ),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\r_reg_array_reg_n_0_[12][1] ),
        .I5(\r_reg_array_reg_n_0_[14][1] ),
        .O(\r_in_shift[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \r_in_shift[1]_i_5 
       (.I0(\r_reg_array_reg_n_0_[1][1] ),
        .I1(\r_reg_array_reg_n_0_[3][1] ),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\r_reg_array_reg_n_0_[0][1] ),
        .I5(\r_reg_array_reg_n_0_[2][1] ),
        .O(\r_in_shift[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \r_in_shift[1]_i_6 
       (.I0(\r_reg_array_reg_n_0_[9][1] ),
        .I1(\r_reg_array_reg_n_0_[11][1] ),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\r_reg_array_reg_n_0_[8][1] ),
        .I5(\r_reg_array_reg_n_0_[10][1] ),
        .O(\r_in_shift[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \r_in_shift[2]_i_2 
       (.I0(\r_in_shift[2]_i_3_n_0 ),
        .I1(\r_in_shift[2]_i_4_n_0 ),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(\r_in_shift[2]_i_5_n_0 ),
        .I5(\r_in_shift[2]_i_6_n_0 ),
        .O(r_reg_array__0[2]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \r_in_shift[2]_i_3 
       (.I0(\r_reg_array_reg_n_0_[5][2] ),
        .I1(\r_reg_array_reg_n_0_[7][2] ),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\r_reg_array_reg_n_0_[4][2] ),
        .I5(\r_reg_array_reg_n_0_[6][2] ),
        .O(\r_in_shift[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \r_in_shift[2]_i_4 
       (.I0(\r_reg_array_reg_n_0_[13][2] ),
        .I1(\r_reg_array_reg_n_0_[15][2] ),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\r_reg_array_reg_n_0_[12][2] ),
        .I5(\r_reg_array_reg_n_0_[14][2] ),
        .O(\r_in_shift[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \r_in_shift[2]_i_5 
       (.I0(\r_reg_array_reg_n_0_[1][2] ),
        .I1(\r_reg_array_reg_n_0_[3][2] ),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\r_reg_array_reg_n_0_[0][2] ),
        .I5(\r_reg_array_reg_n_0_[2][2] ),
        .O(\r_in_shift[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \r_in_shift[2]_i_6 
       (.I0(\r_reg_array_reg_n_0_[9][2] ),
        .I1(\r_reg_array_reg_n_0_[11][2] ),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\r_reg_array_reg_n_0_[8][2] ),
        .I5(\r_reg_array_reg_n_0_[10][2] ),
        .O(\r_in_shift[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \r_in_shift[3]_i_2 
       (.I0(\r_in_shift[3]_i_3_n_0 ),
        .I1(\r_in_shift[3]_i_4_n_0 ),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(\r_in_shift[3]_i_5_n_0 ),
        .I5(\r_in_shift[3]_i_6_n_0 ),
        .O(r_reg_array__0[3]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \r_in_shift[3]_i_3 
       (.I0(\r_reg_array_reg_n_0_[5][3] ),
        .I1(\r_reg_array_reg_n_0_[7][3] ),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\r_reg_array_reg_n_0_[4][3] ),
        .I5(\r_reg_array_reg_n_0_[6][3] ),
        .O(\r_in_shift[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \r_in_shift[3]_i_4 
       (.I0(\r_reg_array_reg_n_0_[13][3] ),
        .I1(\r_reg_array_reg_n_0_[15][3] ),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\r_reg_array_reg_n_0_[12][3] ),
        .I5(\r_reg_array_reg_n_0_[14][3] ),
        .O(\r_in_shift[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \r_in_shift[3]_i_5 
       (.I0(\r_reg_array_reg_n_0_[1][3] ),
        .I1(\r_reg_array_reg_n_0_[3][3] ),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\r_reg_array_reg_n_0_[0][3] ),
        .I5(\r_reg_array_reg_n_0_[2][3] ),
        .O(\r_in_shift[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \r_in_shift[3]_i_6 
       (.I0(\r_reg_array_reg_n_0_[9][3] ),
        .I1(\r_reg_array_reg_n_0_[11][3] ),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\r_reg_array_reg_n_0_[8][3] ),
        .I5(\r_reg_array_reg_n_0_[10][3] ),
        .O(\r_in_shift[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \r_in_shift[4]_i_2 
       (.I0(\r_in_shift[4]_i_3_n_0 ),
        .I1(\r_in_shift[4]_i_4_n_0 ),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(\r_in_shift[4]_i_5_n_0 ),
        .I5(\r_in_shift[4]_i_6_n_0 ),
        .O(r_reg_array__0[4]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \r_in_shift[4]_i_3 
       (.I0(\r_reg_array_reg_n_0_[5][4] ),
        .I1(\r_reg_array_reg_n_0_[7][4] ),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\r_reg_array_reg_n_0_[4][4] ),
        .I5(\r_reg_array_reg_n_0_[6][4] ),
        .O(\r_in_shift[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \r_in_shift[4]_i_4 
       (.I0(\r_reg_array_reg_n_0_[13][4] ),
        .I1(\r_reg_array_reg_n_0_[15][4] ),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\r_reg_array_reg_n_0_[12][4] ),
        .I5(\r_reg_array_reg_n_0_[14][4] ),
        .O(\r_in_shift[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \r_in_shift[4]_i_5 
       (.I0(\r_reg_array_reg_n_0_[1][4] ),
        .I1(\r_reg_array_reg_n_0_[3][4] ),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\r_reg_array_reg_n_0_[0][4] ),
        .I5(\r_reg_array_reg_n_0_[2][4] ),
        .O(\r_in_shift[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \r_in_shift[4]_i_6 
       (.I0(\r_reg_array_reg_n_0_[9][4] ),
        .I1(\r_reg_array_reg_n_0_[11][4] ),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\r_reg_array_reg_n_0_[8][4] ),
        .I5(\r_reg_array_reg_n_0_[10][4] ),
        .O(\r_in_shift[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \r_in_shift[5]_i_2 
       (.I0(\r_in_shift[5]_i_3_n_0 ),
        .I1(\r_in_shift[5]_i_4_n_0 ),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(\r_in_shift[5]_i_5_n_0 ),
        .I5(\r_in_shift[5]_i_6_n_0 ),
        .O(r_reg_array__0[5]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \r_in_shift[5]_i_3 
       (.I0(\r_reg_array_reg_n_0_[5][5] ),
        .I1(\r_reg_array_reg_n_0_[7][5] ),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\r_reg_array_reg_n_0_[4][5] ),
        .I5(\r_reg_array_reg_n_0_[6][5] ),
        .O(\r_in_shift[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \r_in_shift[5]_i_4 
       (.I0(\r_reg_array_reg_n_0_[13][5] ),
        .I1(\r_reg_array_reg_n_0_[15][5] ),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\r_reg_array_reg_n_0_[12][5] ),
        .I5(\r_reg_array_reg_n_0_[14][5] ),
        .O(\r_in_shift[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \r_in_shift[5]_i_5 
       (.I0(\r_reg_array_reg_n_0_[1][5] ),
        .I1(\r_reg_array_reg_n_0_[3][5] ),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\r_reg_array_reg_n_0_[0][5] ),
        .I5(\r_reg_array_reg_n_0_[2][5] ),
        .O(\r_in_shift[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \r_in_shift[5]_i_6 
       (.I0(\r_reg_array_reg_n_0_[9][5] ),
        .I1(\r_reg_array_reg_n_0_[11][5] ),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\r_reg_array_reg_n_0_[8][5] ),
        .I5(\r_reg_array_reg_n_0_[10][5] ),
        .O(\r_in_shift[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \r_in_shift[6]_i_2 
       (.I0(\r_in_shift[6]_i_3_n_0 ),
        .I1(\r_in_shift[6]_i_4_n_0 ),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(\r_in_shift[6]_i_5_n_0 ),
        .I5(\r_in_shift[6]_i_6_n_0 ),
        .O(r_reg_array__0[6]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \r_in_shift[6]_i_3 
       (.I0(\r_reg_array_reg_n_0_[5][6] ),
        .I1(\r_reg_array_reg_n_0_[7][6] ),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\r_reg_array_reg_n_0_[4][6] ),
        .I5(\r_reg_array_reg_n_0_[6][6] ),
        .O(\r_in_shift[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \r_in_shift[6]_i_4 
       (.I0(\r_reg_array_reg_n_0_[13][6] ),
        .I1(\r_reg_array_reg_n_0_[15][6] ),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\r_reg_array_reg_n_0_[12][6] ),
        .I5(\r_reg_array_reg_n_0_[14][6] ),
        .O(\r_in_shift[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \r_in_shift[6]_i_5 
       (.I0(\r_reg_array_reg_n_0_[1][6] ),
        .I1(\r_reg_array_reg_n_0_[3][6] ),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\r_reg_array_reg_n_0_[0][6] ),
        .I5(\r_reg_array_reg_n_0_[2][6] ),
        .O(\r_in_shift[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \r_in_shift[6]_i_6 
       (.I0(\r_reg_array_reg_n_0_[9][6] ),
        .I1(\r_reg_array_reg_n_0_[11][6] ),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\r_reg_array_reg_n_0_[8][6] ),
        .I5(\r_reg_array_reg_n_0_[10][6] ),
        .O(\r_in_shift[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \r_in_shift[7]_i_3 
       (.I0(\r_in_shift[7]_i_4_n_0 ),
        .I1(\r_in_shift[7]_i_5_n_0 ),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(\r_in_shift[7]_i_6_n_0 ),
        .I5(\r_in_shift[7]_i_7_n_0 ),
        .O(r_reg_array__0[7]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \r_in_shift[7]_i_4 
       (.I0(\r_reg_array_reg_n_0_[5][7] ),
        .I1(\r_reg_array_reg_n_0_[7][7] ),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\r_reg_array_reg_n_0_[4][7] ),
        .I5(\r_reg_array_reg_n_0_[6][7] ),
        .O(\r_in_shift[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \r_in_shift[7]_i_5 
       (.I0(\r_reg_array_reg_n_0_[13][7] ),
        .I1(\r_reg_array_reg_n_0_[15][7] ),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\r_reg_array_reg_n_0_[12][7] ),
        .I5(\r_reg_array_reg_n_0_[14][7] ),
        .O(\r_in_shift[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \r_in_shift[7]_i_6 
       (.I0(\r_reg_array_reg_n_0_[1][7] ),
        .I1(\r_reg_array_reg_n_0_[3][7] ),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\r_reg_array_reg_n_0_[0][7] ),
        .I5(\r_reg_array_reg_n_0_[2][7] ),
        .O(\r_in_shift[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \r_in_shift[7]_i_7 
       (.I0(\r_reg_array_reg_n_0_[9][7] ),
        .I1(\r_reg_array_reg_n_0_[11][7] ),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\r_reg_array_reg_n_0_[8][7] ),
        .I5(\r_reg_array_reg_n_0_[10][7] ),
        .O(\r_in_shift[7]_i_7_n_0 ));
  FDCE \r_reg_array_reg[0][0] 
       (.C(aclk),
        .CE(\r_reg_array_reg[0][7]_1 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [0]),
        .Q(\r_reg_array_reg_n_0_[0][0] ));
  FDCE \r_reg_array_reg[0][1] 
       (.C(aclk),
        .CE(\r_reg_array_reg[0][7]_1 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [1]),
        .Q(\r_reg_array_reg_n_0_[0][1] ));
  FDCE \r_reg_array_reg[0][2] 
       (.C(aclk),
        .CE(\r_reg_array_reg[0][7]_1 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [2]),
        .Q(\r_reg_array_reg_n_0_[0][2] ));
  FDCE \r_reg_array_reg[0][3] 
       (.C(aclk),
        .CE(\r_reg_array_reg[0][7]_1 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [3]),
        .Q(\r_reg_array_reg_n_0_[0][3] ));
  FDCE \r_reg_array_reg[0][4] 
       (.C(aclk),
        .CE(\r_reg_array_reg[0][7]_1 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [4]),
        .Q(\r_reg_array_reg_n_0_[0][4] ));
  FDCE \r_reg_array_reg[0][5] 
       (.C(aclk),
        .CE(\r_reg_array_reg[0][7]_1 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [5]),
        .Q(\r_reg_array_reg_n_0_[0][5] ));
  FDCE \r_reg_array_reg[0][6] 
       (.C(aclk),
        .CE(\r_reg_array_reg[0][7]_1 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [6]),
        .Q(\r_reg_array_reg_n_0_[0][6] ));
  FDCE \r_reg_array_reg[0][7] 
       (.C(aclk),
        .CE(\r_reg_array_reg[0][7]_1 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [7]),
        .Q(\r_reg_array_reg_n_0_[0][7] ));
  FDCE \r_reg_array_reg[10][0] 
       (.C(aclk),
        .CE(\r_reg_array_reg[10][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [0]),
        .Q(\r_reg_array_reg_n_0_[10][0] ));
  FDCE \r_reg_array_reg[10][1] 
       (.C(aclk),
        .CE(\r_reg_array_reg[10][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [1]),
        .Q(\r_reg_array_reg_n_0_[10][1] ));
  FDCE \r_reg_array_reg[10][2] 
       (.C(aclk),
        .CE(\r_reg_array_reg[10][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [2]),
        .Q(\r_reg_array_reg_n_0_[10][2] ));
  FDCE \r_reg_array_reg[10][3] 
       (.C(aclk),
        .CE(\r_reg_array_reg[10][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [3]),
        .Q(\r_reg_array_reg_n_0_[10][3] ));
  FDCE \r_reg_array_reg[10][4] 
       (.C(aclk),
        .CE(\r_reg_array_reg[10][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [4]),
        .Q(\r_reg_array_reg_n_0_[10][4] ));
  FDCE \r_reg_array_reg[10][5] 
       (.C(aclk),
        .CE(\r_reg_array_reg[10][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [5]),
        .Q(\r_reg_array_reg_n_0_[10][5] ));
  FDCE \r_reg_array_reg[10][6] 
       (.C(aclk),
        .CE(\r_reg_array_reg[10][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [6]),
        .Q(\r_reg_array_reg_n_0_[10][6] ));
  FDCE \r_reg_array_reg[10][7] 
       (.C(aclk),
        .CE(\r_reg_array_reg[10][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [7]),
        .Q(\r_reg_array_reg_n_0_[10][7] ));
  FDCE \r_reg_array_reg[11][0] 
       (.C(aclk),
        .CE(\r_reg_array_reg[11][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [0]),
        .Q(\r_reg_array_reg_n_0_[11][0] ));
  FDCE \r_reg_array_reg[11][1] 
       (.C(aclk),
        .CE(\r_reg_array_reg[11][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [1]),
        .Q(\r_reg_array_reg_n_0_[11][1] ));
  FDCE \r_reg_array_reg[11][2] 
       (.C(aclk),
        .CE(\r_reg_array_reg[11][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [2]),
        .Q(\r_reg_array_reg_n_0_[11][2] ));
  FDCE \r_reg_array_reg[11][3] 
       (.C(aclk),
        .CE(\r_reg_array_reg[11][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [3]),
        .Q(\r_reg_array_reg_n_0_[11][3] ));
  FDCE \r_reg_array_reg[11][4] 
       (.C(aclk),
        .CE(\r_reg_array_reg[11][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [4]),
        .Q(\r_reg_array_reg_n_0_[11][4] ));
  FDCE \r_reg_array_reg[11][5] 
       (.C(aclk),
        .CE(\r_reg_array_reg[11][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [5]),
        .Q(\r_reg_array_reg_n_0_[11][5] ));
  FDCE \r_reg_array_reg[11][6] 
       (.C(aclk),
        .CE(\r_reg_array_reg[11][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [6]),
        .Q(\r_reg_array_reg_n_0_[11][6] ));
  FDCE \r_reg_array_reg[11][7] 
       (.C(aclk),
        .CE(\r_reg_array_reg[11][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [7]),
        .Q(\r_reg_array_reg_n_0_[11][7] ));
  FDCE \r_reg_array_reg[12][0] 
       (.C(aclk),
        .CE(\r_reg_array_reg[12][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [0]),
        .Q(\r_reg_array_reg_n_0_[12][0] ));
  FDCE \r_reg_array_reg[12][1] 
       (.C(aclk),
        .CE(\r_reg_array_reg[12][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [1]),
        .Q(\r_reg_array_reg_n_0_[12][1] ));
  FDCE \r_reg_array_reg[12][2] 
       (.C(aclk),
        .CE(\r_reg_array_reg[12][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [2]),
        .Q(\r_reg_array_reg_n_0_[12][2] ));
  FDCE \r_reg_array_reg[12][3] 
       (.C(aclk),
        .CE(\r_reg_array_reg[12][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [3]),
        .Q(\r_reg_array_reg_n_0_[12][3] ));
  FDCE \r_reg_array_reg[12][4] 
       (.C(aclk),
        .CE(\r_reg_array_reg[12][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [4]),
        .Q(\r_reg_array_reg_n_0_[12][4] ));
  FDCE \r_reg_array_reg[12][5] 
       (.C(aclk),
        .CE(\r_reg_array_reg[12][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [5]),
        .Q(\r_reg_array_reg_n_0_[12][5] ));
  FDCE \r_reg_array_reg[12][6] 
       (.C(aclk),
        .CE(\r_reg_array_reg[12][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [6]),
        .Q(\r_reg_array_reg_n_0_[12][6] ));
  FDCE \r_reg_array_reg[12][7] 
       (.C(aclk),
        .CE(\r_reg_array_reg[12][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [7]),
        .Q(\r_reg_array_reg_n_0_[12][7] ));
  FDCE \r_reg_array_reg[13][0] 
       (.C(aclk),
        .CE(\r_reg_array_reg[13][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [0]),
        .Q(\r_reg_array_reg_n_0_[13][0] ));
  FDCE \r_reg_array_reg[13][1] 
       (.C(aclk),
        .CE(\r_reg_array_reg[13][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [1]),
        .Q(\r_reg_array_reg_n_0_[13][1] ));
  FDCE \r_reg_array_reg[13][2] 
       (.C(aclk),
        .CE(\r_reg_array_reg[13][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [2]),
        .Q(\r_reg_array_reg_n_0_[13][2] ));
  FDCE \r_reg_array_reg[13][3] 
       (.C(aclk),
        .CE(\r_reg_array_reg[13][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [3]),
        .Q(\r_reg_array_reg_n_0_[13][3] ));
  FDCE \r_reg_array_reg[13][4] 
       (.C(aclk),
        .CE(\r_reg_array_reg[13][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [4]),
        .Q(\r_reg_array_reg_n_0_[13][4] ));
  FDCE \r_reg_array_reg[13][5] 
       (.C(aclk),
        .CE(\r_reg_array_reg[13][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [5]),
        .Q(\r_reg_array_reg_n_0_[13][5] ));
  FDCE \r_reg_array_reg[13][6] 
       (.C(aclk),
        .CE(\r_reg_array_reg[13][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [6]),
        .Q(\r_reg_array_reg_n_0_[13][6] ));
  FDCE \r_reg_array_reg[13][7] 
       (.C(aclk),
        .CE(\r_reg_array_reg[13][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [7]),
        .Q(\r_reg_array_reg_n_0_[13][7] ));
  FDCE \r_reg_array_reg[14][0] 
       (.C(aclk),
        .CE(\r_reg_array_reg[14][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [0]),
        .Q(\r_reg_array_reg_n_0_[14][0] ));
  FDCE \r_reg_array_reg[14][1] 
       (.C(aclk),
        .CE(\r_reg_array_reg[14][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [1]),
        .Q(\r_reg_array_reg_n_0_[14][1] ));
  FDCE \r_reg_array_reg[14][2] 
       (.C(aclk),
        .CE(\r_reg_array_reg[14][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [2]),
        .Q(\r_reg_array_reg_n_0_[14][2] ));
  FDCE \r_reg_array_reg[14][3] 
       (.C(aclk),
        .CE(\r_reg_array_reg[14][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [3]),
        .Q(\r_reg_array_reg_n_0_[14][3] ));
  FDCE \r_reg_array_reg[14][4] 
       (.C(aclk),
        .CE(\r_reg_array_reg[14][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [4]),
        .Q(\r_reg_array_reg_n_0_[14][4] ));
  FDCE \r_reg_array_reg[14][5] 
       (.C(aclk),
        .CE(\r_reg_array_reg[14][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [5]),
        .Q(\r_reg_array_reg_n_0_[14][5] ));
  FDCE \r_reg_array_reg[14][6] 
       (.C(aclk),
        .CE(\r_reg_array_reg[14][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [6]),
        .Q(\r_reg_array_reg_n_0_[14][6] ));
  FDCE \r_reg_array_reg[14][7] 
       (.C(aclk),
        .CE(\r_reg_array_reg[14][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [7]),
        .Q(\r_reg_array_reg_n_0_[14][7] ));
  FDCE \r_reg_array_reg[15][0] 
       (.C(aclk),
        .CE(E),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [0]),
        .Q(\r_reg_array_reg_n_0_[15][0] ));
  FDCE \r_reg_array_reg[15][1] 
       (.C(aclk),
        .CE(E),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [1]),
        .Q(\r_reg_array_reg_n_0_[15][1] ));
  FDCE \r_reg_array_reg[15][2] 
       (.C(aclk),
        .CE(E),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [2]),
        .Q(\r_reg_array_reg_n_0_[15][2] ));
  FDCE \r_reg_array_reg[15][3] 
       (.C(aclk),
        .CE(E),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [3]),
        .Q(\r_reg_array_reg_n_0_[15][3] ));
  FDCE \r_reg_array_reg[15][4] 
       (.C(aclk),
        .CE(E),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [4]),
        .Q(\r_reg_array_reg_n_0_[15][4] ));
  FDCE \r_reg_array_reg[15][5] 
       (.C(aclk),
        .CE(E),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [5]),
        .Q(\r_reg_array_reg_n_0_[15][5] ));
  FDCE \r_reg_array_reg[15][6] 
       (.C(aclk),
        .CE(E),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [6]),
        .Q(\r_reg_array_reg_n_0_[15][6] ));
  FDCE \r_reg_array_reg[15][7] 
       (.C(aclk),
        .CE(E),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [7]),
        .Q(\r_reg_array_reg_n_0_[15][7] ));
  FDCE \r_reg_array_reg[1][0] 
       (.C(aclk),
        .CE(\r_reg_array_reg[1][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [0]),
        .Q(\r_reg_array_reg_n_0_[1][0] ));
  FDCE \r_reg_array_reg[1][1] 
       (.C(aclk),
        .CE(\r_reg_array_reg[1][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [1]),
        .Q(\r_reg_array_reg_n_0_[1][1] ));
  FDCE \r_reg_array_reg[1][2] 
       (.C(aclk),
        .CE(\r_reg_array_reg[1][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [2]),
        .Q(\r_reg_array_reg_n_0_[1][2] ));
  FDCE \r_reg_array_reg[1][3] 
       (.C(aclk),
        .CE(\r_reg_array_reg[1][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [3]),
        .Q(\r_reg_array_reg_n_0_[1][3] ));
  FDCE \r_reg_array_reg[1][4] 
       (.C(aclk),
        .CE(\r_reg_array_reg[1][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [4]),
        .Q(\r_reg_array_reg_n_0_[1][4] ));
  FDCE \r_reg_array_reg[1][5] 
       (.C(aclk),
        .CE(\r_reg_array_reg[1][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [5]),
        .Q(\r_reg_array_reg_n_0_[1][5] ));
  FDCE \r_reg_array_reg[1][6] 
       (.C(aclk),
        .CE(\r_reg_array_reg[1][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [6]),
        .Q(\r_reg_array_reg_n_0_[1][6] ));
  FDCE \r_reg_array_reg[1][7] 
       (.C(aclk),
        .CE(\r_reg_array_reg[1][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [7]),
        .Q(\r_reg_array_reg_n_0_[1][7] ));
  FDCE \r_reg_array_reg[2][0] 
       (.C(aclk),
        .CE(\r_reg_array_reg[2][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [0]),
        .Q(\r_reg_array_reg_n_0_[2][0] ));
  FDCE \r_reg_array_reg[2][1] 
       (.C(aclk),
        .CE(\r_reg_array_reg[2][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [1]),
        .Q(\r_reg_array_reg_n_0_[2][1] ));
  FDCE \r_reg_array_reg[2][2] 
       (.C(aclk),
        .CE(\r_reg_array_reg[2][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [2]),
        .Q(\r_reg_array_reg_n_0_[2][2] ));
  FDCE \r_reg_array_reg[2][3] 
       (.C(aclk),
        .CE(\r_reg_array_reg[2][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [3]),
        .Q(\r_reg_array_reg_n_0_[2][3] ));
  FDCE \r_reg_array_reg[2][4] 
       (.C(aclk),
        .CE(\r_reg_array_reg[2][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [4]),
        .Q(\r_reg_array_reg_n_0_[2][4] ));
  FDCE \r_reg_array_reg[2][5] 
       (.C(aclk),
        .CE(\r_reg_array_reg[2][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [5]),
        .Q(\r_reg_array_reg_n_0_[2][5] ));
  FDCE \r_reg_array_reg[2][6] 
       (.C(aclk),
        .CE(\r_reg_array_reg[2][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [6]),
        .Q(\r_reg_array_reg_n_0_[2][6] ));
  FDCE \r_reg_array_reg[2][7] 
       (.C(aclk),
        .CE(\r_reg_array_reg[2][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [7]),
        .Q(\r_reg_array_reg_n_0_[2][7] ));
  FDCE \r_reg_array_reg[3][0] 
       (.C(aclk),
        .CE(\r_reg_array_reg[3][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [0]),
        .Q(\r_reg_array_reg_n_0_[3][0] ));
  FDCE \r_reg_array_reg[3][1] 
       (.C(aclk),
        .CE(\r_reg_array_reg[3][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [1]),
        .Q(\r_reg_array_reg_n_0_[3][1] ));
  FDCE \r_reg_array_reg[3][2] 
       (.C(aclk),
        .CE(\r_reg_array_reg[3][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [2]),
        .Q(\r_reg_array_reg_n_0_[3][2] ));
  FDCE \r_reg_array_reg[3][3] 
       (.C(aclk),
        .CE(\r_reg_array_reg[3][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [3]),
        .Q(\r_reg_array_reg_n_0_[3][3] ));
  FDCE \r_reg_array_reg[3][4] 
       (.C(aclk),
        .CE(\r_reg_array_reg[3][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [4]),
        .Q(\r_reg_array_reg_n_0_[3][4] ));
  FDCE \r_reg_array_reg[3][5] 
       (.C(aclk),
        .CE(\r_reg_array_reg[3][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [5]),
        .Q(\r_reg_array_reg_n_0_[3][5] ));
  FDCE \r_reg_array_reg[3][6] 
       (.C(aclk),
        .CE(\r_reg_array_reg[3][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [6]),
        .Q(\r_reg_array_reg_n_0_[3][6] ));
  FDCE \r_reg_array_reg[3][7] 
       (.C(aclk),
        .CE(\r_reg_array_reg[3][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [7]),
        .Q(\r_reg_array_reg_n_0_[3][7] ));
  FDCE \r_reg_array_reg[4][0] 
       (.C(aclk),
        .CE(\r_reg_array_reg[4][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [0]),
        .Q(\r_reg_array_reg_n_0_[4][0] ));
  FDCE \r_reg_array_reg[4][1] 
       (.C(aclk),
        .CE(\r_reg_array_reg[4][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [1]),
        .Q(\r_reg_array_reg_n_0_[4][1] ));
  FDCE \r_reg_array_reg[4][2] 
       (.C(aclk),
        .CE(\r_reg_array_reg[4][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [2]),
        .Q(\r_reg_array_reg_n_0_[4][2] ));
  FDCE \r_reg_array_reg[4][3] 
       (.C(aclk),
        .CE(\r_reg_array_reg[4][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [3]),
        .Q(\r_reg_array_reg_n_0_[4][3] ));
  FDCE \r_reg_array_reg[4][4] 
       (.C(aclk),
        .CE(\r_reg_array_reg[4][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [4]),
        .Q(\r_reg_array_reg_n_0_[4][4] ));
  FDCE \r_reg_array_reg[4][5] 
       (.C(aclk),
        .CE(\r_reg_array_reg[4][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [5]),
        .Q(\r_reg_array_reg_n_0_[4][5] ));
  FDCE \r_reg_array_reg[4][6] 
       (.C(aclk),
        .CE(\r_reg_array_reg[4][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [6]),
        .Q(\r_reg_array_reg_n_0_[4][6] ));
  FDCE \r_reg_array_reg[4][7] 
       (.C(aclk),
        .CE(\r_reg_array_reg[4][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [7]),
        .Q(\r_reg_array_reg_n_0_[4][7] ));
  FDCE \r_reg_array_reg[5][0] 
       (.C(aclk),
        .CE(\r_reg_array_reg[5][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [0]),
        .Q(\r_reg_array_reg_n_0_[5][0] ));
  FDCE \r_reg_array_reg[5][1] 
       (.C(aclk),
        .CE(\r_reg_array_reg[5][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [1]),
        .Q(\r_reg_array_reg_n_0_[5][1] ));
  FDCE \r_reg_array_reg[5][2] 
       (.C(aclk),
        .CE(\r_reg_array_reg[5][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [2]),
        .Q(\r_reg_array_reg_n_0_[5][2] ));
  FDCE \r_reg_array_reg[5][3] 
       (.C(aclk),
        .CE(\r_reg_array_reg[5][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [3]),
        .Q(\r_reg_array_reg_n_0_[5][3] ));
  FDCE \r_reg_array_reg[5][4] 
       (.C(aclk),
        .CE(\r_reg_array_reg[5][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [4]),
        .Q(\r_reg_array_reg_n_0_[5][4] ));
  FDCE \r_reg_array_reg[5][5] 
       (.C(aclk),
        .CE(\r_reg_array_reg[5][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [5]),
        .Q(\r_reg_array_reg_n_0_[5][5] ));
  FDCE \r_reg_array_reg[5][6] 
       (.C(aclk),
        .CE(\r_reg_array_reg[5][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [6]),
        .Q(\r_reg_array_reg_n_0_[5][6] ));
  FDCE \r_reg_array_reg[5][7] 
       (.C(aclk),
        .CE(\r_reg_array_reg[5][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [7]),
        .Q(\r_reg_array_reg_n_0_[5][7] ));
  FDCE \r_reg_array_reg[6][0] 
       (.C(aclk),
        .CE(\r_reg_array_reg[6][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [0]),
        .Q(\r_reg_array_reg_n_0_[6][0] ));
  FDCE \r_reg_array_reg[6][1] 
       (.C(aclk),
        .CE(\r_reg_array_reg[6][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [1]),
        .Q(\r_reg_array_reg_n_0_[6][1] ));
  FDCE \r_reg_array_reg[6][2] 
       (.C(aclk),
        .CE(\r_reg_array_reg[6][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [2]),
        .Q(\r_reg_array_reg_n_0_[6][2] ));
  FDCE \r_reg_array_reg[6][3] 
       (.C(aclk),
        .CE(\r_reg_array_reg[6][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [3]),
        .Q(\r_reg_array_reg_n_0_[6][3] ));
  FDCE \r_reg_array_reg[6][4] 
       (.C(aclk),
        .CE(\r_reg_array_reg[6][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [4]),
        .Q(\r_reg_array_reg_n_0_[6][4] ));
  FDCE \r_reg_array_reg[6][5] 
       (.C(aclk),
        .CE(\r_reg_array_reg[6][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [5]),
        .Q(\r_reg_array_reg_n_0_[6][5] ));
  FDCE \r_reg_array_reg[6][6] 
       (.C(aclk),
        .CE(\r_reg_array_reg[6][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [6]),
        .Q(\r_reg_array_reg_n_0_[6][6] ));
  FDCE \r_reg_array_reg[6][7] 
       (.C(aclk),
        .CE(\r_reg_array_reg[6][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [7]),
        .Q(\r_reg_array_reg_n_0_[6][7] ));
  FDCE \r_reg_array_reg[7][0] 
       (.C(aclk),
        .CE(\r_reg_array_reg[7][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [0]),
        .Q(\r_reg_array_reg_n_0_[7][0] ));
  FDCE \r_reg_array_reg[7][1] 
       (.C(aclk),
        .CE(\r_reg_array_reg[7][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [1]),
        .Q(\r_reg_array_reg_n_0_[7][1] ));
  FDCE \r_reg_array_reg[7][2] 
       (.C(aclk),
        .CE(\r_reg_array_reg[7][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [2]),
        .Q(\r_reg_array_reg_n_0_[7][2] ));
  FDCE \r_reg_array_reg[7][3] 
       (.C(aclk),
        .CE(\r_reg_array_reg[7][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [3]),
        .Q(\r_reg_array_reg_n_0_[7][3] ));
  FDCE \r_reg_array_reg[7][4] 
       (.C(aclk),
        .CE(\r_reg_array_reg[7][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [4]),
        .Q(\r_reg_array_reg_n_0_[7][4] ));
  FDCE \r_reg_array_reg[7][5] 
       (.C(aclk),
        .CE(\r_reg_array_reg[7][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [5]),
        .Q(\r_reg_array_reg_n_0_[7][5] ));
  FDCE \r_reg_array_reg[7][6] 
       (.C(aclk),
        .CE(\r_reg_array_reg[7][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [6]),
        .Q(\r_reg_array_reg_n_0_[7][6] ));
  FDCE \r_reg_array_reg[7][7] 
       (.C(aclk),
        .CE(\r_reg_array_reg[7][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [7]),
        .Q(\r_reg_array_reg_n_0_[7][7] ));
  FDCE \r_reg_array_reg[8][0] 
       (.C(aclk),
        .CE(\r_reg_array_reg[8][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [0]),
        .Q(\r_reg_array_reg_n_0_[8][0] ));
  FDCE \r_reg_array_reg[8][1] 
       (.C(aclk),
        .CE(\r_reg_array_reg[8][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [1]),
        .Q(\r_reg_array_reg_n_0_[8][1] ));
  FDCE \r_reg_array_reg[8][2] 
       (.C(aclk),
        .CE(\r_reg_array_reg[8][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [2]),
        .Q(\r_reg_array_reg_n_0_[8][2] ));
  FDCE \r_reg_array_reg[8][3] 
       (.C(aclk),
        .CE(\r_reg_array_reg[8][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [3]),
        .Q(\r_reg_array_reg_n_0_[8][3] ));
  FDCE \r_reg_array_reg[8][4] 
       (.C(aclk),
        .CE(\r_reg_array_reg[8][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [4]),
        .Q(\r_reg_array_reg_n_0_[8][4] ));
  FDCE \r_reg_array_reg[8][5] 
       (.C(aclk),
        .CE(\r_reg_array_reg[8][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [5]),
        .Q(\r_reg_array_reg_n_0_[8][5] ));
  FDCE \r_reg_array_reg[8][6] 
       (.C(aclk),
        .CE(\r_reg_array_reg[8][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [6]),
        .Q(\r_reg_array_reg_n_0_[8][6] ));
  FDCE \r_reg_array_reg[8][7] 
       (.C(aclk),
        .CE(\r_reg_array_reg[8][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [7]),
        .Q(\r_reg_array_reg_n_0_[8][7] ));
  FDCE \r_reg_array_reg[9][0] 
       (.C(aclk),
        .CE(\r_reg_array_reg[9][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [0]),
        .Q(\r_reg_array_reg_n_0_[9][0] ));
  FDCE \r_reg_array_reg[9][1] 
       (.C(aclk),
        .CE(\r_reg_array_reg[9][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [1]),
        .Q(\r_reg_array_reg_n_0_[9][1] ));
  FDCE \r_reg_array_reg[9][2] 
       (.C(aclk),
        .CE(\r_reg_array_reg[9][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [2]),
        .Q(\r_reg_array_reg_n_0_[9][2] ));
  FDCE \r_reg_array_reg[9][3] 
       (.C(aclk),
        .CE(\r_reg_array_reg[9][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [3]),
        .Q(\r_reg_array_reg_n_0_[9][3] ));
  FDCE \r_reg_array_reg[9][4] 
       (.C(aclk),
        .CE(\r_reg_array_reg[9][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [4]),
        .Q(\r_reg_array_reg_n_0_[9][4] ));
  FDCE \r_reg_array_reg[9][5] 
       (.C(aclk),
        .CE(\r_reg_array_reg[9][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [5]),
        .Q(\r_reg_array_reg_n_0_[9][5] ));
  FDCE \r_reg_array_reg[9][6] 
       (.C(aclk),
        .CE(\r_reg_array_reg[9][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [6]),
        .Q(\r_reg_array_reg_n_0_[9][6] ));
  FDCE \r_reg_array_reg[9][7] 
       (.C(aclk),
        .CE(\r_reg_array_reg[9][7]_0 ),
        .CLR(arst_n_0),
        .D(\r_reg_array_reg[0][7]_0 [7]),
        .Q(\r_reg_array_reg_n_0_[9][7] ));
endmodule

(* ORIG_REF_NAME = "register_file" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_file_2
   (\r_rd_logic_reg[3] ,
    \r_rd_logic_reg[3]_0 ,
    \r_rd_logic_reg[3]_1 ,
    \r_rd_logic_reg[3]_2 ,
    \r_rd_logic_reg[3]_3 ,
    \r_rd_logic_reg[3]_4 ,
    \r_rd_logic_reg[3]_5 ,
    \r_rd_logic_reg[3]_6 ,
    \rd_data_reg[7] ,
    E,
    D,
    aclk,
    \r_reg_array_reg[0][0]_0 ,
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
    \r_reg_array_reg[0][7]_0 );
  output \r_rd_logic_reg[3] ;
  output \r_rd_logic_reg[3]_0 ;
  output \r_rd_logic_reg[3]_1 ;
  output \r_rd_logic_reg[3]_2 ;
  output \r_rd_logic_reg[3]_3 ;
  output \r_rd_logic_reg[3]_4 ;
  output \r_rd_logic_reg[3]_5 ;
  output \r_rd_logic_reg[3]_6 ;
  input [3:0]\rd_data_reg[7] ;
  input [0:0]E;
  input [7:0]D;
  input aclk;
  input \r_reg_array_reg[0][0]_0 ;
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
  input [0:0]\r_reg_array_reg[0][7]_0 ;

  wire [7:0]D;
  wire [0:0]E;
  wire aclk;
  wire \r_rd_logic_reg[3] ;
  wire \r_rd_logic_reg[3]_0 ;
  wire \r_rd_logic_reg[3]_1 ;
  wire \r_rd_logic_reg[3]_2 ;
  wire \r_rd_logic_reg[3]_3 ;
  wire \r_rd_logic_reg[3]_4 ;
  wire \r_rd_logic_reg[3]_5 ;
  wire \r_rd_logic_reg[3]_6 ;
  wire [7:0]\r_reg_array_reg[0] ;
  wire \r_reg_array_reg[0][0]_0 ;
  wire [0:0]\r_reg_array_reg[0][7]_0 ;
  wire [7:0]\r_reg_array_reg[10] ;
  wire [0:0]\r_reg_array_reg[10][7]_0 ;
  wire [7:0]\r_reg_array_reg[11] ;
  wire [0:0]\r_reg_array_reg[11][7]_0 ;
  wire [7:0]\r_reg_array_reg[12] ;
  wire [0:0]\r_reg_array_reg[12][7]_0 ;
  wire [7:0]\r_reg_array_reg[13] ;
  wire [0:0]\r_reg_array_reg[13][7]_0 ;
  wire [7:0]\r_reg_array_reg[14] ;
  wire [0:0]\r_reg_array_reg[14][7]_0 ;
  wire [7:0]\r_reg_array_reg[15] ;
  wire [7:0]\r_reg_array_reg[1] ;
  wire [0:0]\r_reg_array_reg[1][7]_0 ;
  wire [7:0]\r_reg_array_reg[2] ;
  wire [0:0]\r_reg_array_reg[2][7]_0 ;
  wire [7:0]\r_reg_array_reg[3] ;
  wire [0:0]\r_reg_array_reg[3][7]_0 ;
  wire [7:0]\r_reg_array_reg[4] ;
  wire [0:0]\r_reg_array_reg[4][7]_0 ;
  wire [7:0]\r_reg_array_reg[5] ;
  wire [0:0]\r_reg_array_reg[5][7]_0 ;
  wire [7:0]\r_reg_array_reg[6] ;
  wire [0:0]\r_reg_array_reg[6][7]_0 ;
  wire [7:0]\r_reg_array_reg[7] ;
  wire [0:0]\r_reg_array_reg[7][7]_0 ;
  wire [7:0]\r_reg_array_reg[8] ;
  wire [0:0]\r_reg_array_reg[8][7]_0 ;
  wire [7:0]\r_reg_array_reg[9] ;
  wire [0:0]\r_reg_array_reg[9][7]_0 ;
  wire \rd_data[0]_i_3__0_n_0 ;
  wire \rd_data[0]_i_4_n_0 ;
  wire \rd_data[0]_i_5_n_0 ;
  wire \rd_data[0]_i_6_n_0 ;
  wire \rd_data[1]_i_3_n_0 ;
  wire \rd_data[1]_i_4_n_0 ;
  wire \rd_data[1]_i_5_n_0 ;
  wire \rd_data[1]_i_6_n_0 ;
  wire \rd_data[2]_i_3_n_0 ;
  wire \rd_data[2]_i_4_n_0 ;
  wire \rd_data[2]_i_5_n_0 ;
  wire \rd_data[2]_i_6_n_0 ;
  wire \rd_data[3]_i_3_n_0 ;
  wire \rd_data[3]_i_4_n_0 ;
  wire \rd_data[3]_i_5_n_0 ;
  wire \rd_data[3]_i_6_n_0 ;
  wire \rd_data[4]_i_3_n_0 ;
  wire \rd_data[4]_i_4_n_0 ;
  wire \rd_data[4]_i_5_n_0 ;
  wire \rd_data[4]_i_6_n_0 ;
  wire \rd_data[5]_i_3_n_0 ;
  wire \rd_data[5]_i_4_n_0 ;
  wire \rd_data[5]_i_5_n_0 ;
  wire \rd_data[5]_i_6_n_0 ;
  wire \rd_data[6]_i_3_n_0 ;
  wire \rd_data[6]_i_4_n_0 ;
  wire \rd_data[6]_i_5_n_0 ;
  wire \rd_data[6]_i_6_n_0 ;
  wire \rd_data[7]_i_4_n_0 ;
  wire \rd_data[7]_i_5_n_0 ;
  wire \rd_data[7]_i_6_n_0 ;
  wire \rd_data[7]_i_7_n_0 ;
  wire [3:0]\rd_data_reg[7] ;

  FDCE \r_reg_array_reg[0][0] 
       (.C(aclk),
        .CE(\r_reg_array_reg[0][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[0]),
        .Q(\r_reg_array_reg[0] [0]));
  FDCE \r_reg_array_reg[0][1] 
       (.C(aclk),
        .CE(\r_reg_array_reg[0][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[1]),
        .Q(\r_reg_array_reg[0] [1]));
  FDCE \r_reg_array_reg[0][2] 
       (.C(aclk),
        .CE(\r_reg_array_reg[0][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[2]),
        .Q(\r_reg_array_reg[0] [2]));
  FDCE \r_reg_array_reg[0][3] 
       (.C(aclk),
        .CE(\r_reg_array_reg[0][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[3]),
        .Q(\r_reg_array_reg[0] [3]));
  FDCE \r_reg_array_reg[0][4] 
       (.C(aclk),
        .CE(\r_reg_array_reg[0][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[4]),
        .Q(\r_reg_array_reg[0] [4]));
  FDCE \r_reg_array_reg[0][5] 
       (.C(aclk),
        .CE(\r_reg_array_reg[0][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[5]),
        .Q(\r_reg_array_reg[0] [5]));
  FDCE \r_reg_array_reg[0][6] 
       (.C(aclk),
        .CE(\r_reg_array_reg[0][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[6]),
        .Q(\r_reg_array_reg[0] [6]));
  FDCE \r_reg_array_reg[0][7] 
       (.C(aclk),
        .CE(\r_reg_array_reg[0][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[7]),
        .Q(\r_reg_array_reg[0] [7]));
  FDCE \r_reg_array_reg[10][0] 
       (.C(aclk),
        .CE(\r_reg_array_reg[10][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[0]),
        .Q(\r_reg_array_reg[10] [0]));
  FDCE \r_reg_array_reg[10][1] 
       (.C(aclk),
        .CE(\r_reg_array_reg[10][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[1]),
        .Q(\r_reg_array_reg[10] [1]));
  FDCE \r_reg_array_reg[10][2] 
       (.C(aclk),
        .CE(\r_reg_array_reg[10][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[2]),
        .Q(\r_reg_array_reg[10] [2]));
  FDCE \r_reg_array_reg[10][3] 
       (.C(aclk),
        .CE(\r_reg_array_reg[10][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[3]),
        .Q(\r_reg_array_reg[10] [3]));
  FDCE \r_reg_array_reg[10][4] 
       (.C(aclk),
        .CE(\r_reg_array_reg[10][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[4]),
        .Q(\r_reg_array_reg[10] [4]));
  FDCE \r_reg_array_reg[10][5] 
       (.C(aclk),
        .CE(\r_reg_array_reg[10][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[5]),
        .Q(\r_reg_array_reg[10] [5]));
  FDCE \r_reg_array_reg[10][6] 
       (.C(aclk),
        .CE(\r_reg_array_reg[10][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[6]),
        .Q(\r_reg_array_reg[10] [6]));
  FDCE \r_reg_array_reg[10][7] 
       (.C(aclk),
        .CE(\r_reg_array_reg[10][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[7]),
        .Q(\r_reg_array_reg[10] [7]));
  FDCE \r_reg_array_reg[11][0] 
       (.C(aclk),
        .CE(\r_reg_array_reg[11][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[0]),
        .Q(\r_reg_array_reg[11] [0]));
  FDCE \r_reg_array_reg[11][1] 
       (.C(aclk),
        .CE(\r_reg_array_reg[11][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[1]),
        .Q(\r_reg_array_reg[11] [1]));
  FDCE \r_reg_array_reg[11][2] 
       (.C(aclk),
        .CE(\r_reg_array_reg[11][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[2]),
        .Q(\r_reg_array_reg[11] [2]));
  FDCE \r_reg_array_reg[11][3] 
       (.C(aclk),
        .CE(\r_reg_array_reg[11][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[3]),
        .Q(\r_reg_array_reg[11] [3]));
  FDCE \r_reg_array_reg[11][4] 
       (.C(aclk),
        .CE(\r_reg_array_reg[11][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[4]),
        .Q(\r_reg_array_reg[11] [4]));
  FDCE \r_reg_array_reg[11][5] 
       (.C(aclk),
        .CE(\r_reg_array_reg[11][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[5]),
        .Q(\r_reg_array_reg[11] [5]));
  FDCE \r_reg_array_reg[11][6] 
       (.C(aclk),
        .CE(\r_reg_array_reg[11][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[6]),
        .Q(\r_reg_array_reg[11] [6]));
  FDCE \r_reg_array_reg[11][7] 
       (.C(aclk),
        .CE(\r_reg_array_reg[11][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[7]),
        .Q(\r_reg_array_reg[11] [7]));
  FDCE \r_reg_array_reg[12][0] 
       (.C(aclk),
        .CE(\r_reg_array_reg[12][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[0]),
        .Q(\r_reg_array_reg[12] [0]));
  FDCE \r_reg_array_reg[12][1] 
       (.C(aclk),
        .CE(\r_reg_array_reg[12][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[1]),
        .Q(\r_reg_array_reg[12] [1]));
  FDCE \r_reg_array_reg[12][2] 
       (.C(aclk),
        .CE(\r_reg_array_reg[12][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[2]),
        .Q(\r_reg_array_reg[12] [2]));
  FDCE \r_reg_array_reg[12][3] 
       (.C(aclk),
        .CE(\r_reg_array_reg[12][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[3]),
        .Q(\r_reg_array_reg[12] [3]));
  FDCE \r_reg_array_reg[12][4] 
       (.C(aclk),
        .CE(\r_reg_array_reg[12][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[4]),
        .Q(\r_reg_array_reg[12] [4]));
  FDCE \r_reg_array_reg[12][5] 
       (.C(aclk),
        .CE(\r_reg_array_reg[12][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[5]),
        .Q(\r_reg_array_reg[12] [5]));
  FDCE \r_reg_array_reg[12][6] 
       (.C(aclk),
        .CE(\r_reg_array_reg[12][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[6]),
        .Q(\r_reg_array_reg[12] [6]));
  FDCE \r_reg_array_reg[12][7] 
       (.C(aclk),
        .CE(\r_reg_array_reg[12][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[7]),
        .Q(\r_reg_array_reg[12] [7]));
  FDCE \r_reg_array_reg[13][0] 
       (.C(aclk),
        .CE(\r_reg_array_reg[13][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[0]),
        .Q(\r_reg_array_reg[13] [0]));
  FDCE \r_reg_array_reg[13][1] 
       (.C(aclk),
        .CE(\r_reg_array_reg[13][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[1]),
        .Q(\r_reg_array_reg[13] [1]));
  FDCE \r_reg_array_reg[13][2] 
       (.C(aclk),
        .CE(\r_reg_array_reg[13][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[2]),
        .Q(\r_reg_array_reg[13] [2]));
  FDCE \r_reg_array_reg[13][3] 
       (.C(aclk),
        .CE(\r_reg_array_reg[13][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[3]),
        .Q(\r_reg_array_reg[13] [3]));
  FDCE \r_reg_array_reg[13][4] 
       (.C(aclk),
        .CE(\r_reg_array_reg[13][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[4]),
        .Q(\r_reg_array_reg[13] [4]));
  FDCE \r_reg_array_reg[13][5] 
       (.C(aclk),
        .CE(\r_reg_array_reg[13][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[5]),
        .Q(\r_reg_array_reg[13] [5]));
  FDCE \r_reg_array_reg[13][6] 
       (.C(aclk),
        .CE(\r_reg_array_reg[13][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[6]),
        .Q(\r_reg_array_reg[13] [6]));
  FDCE \r_reg_array_reg[13][7] 
       (.C(aclk),
        .CE(\r_reg_array_reg[13][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[7]),
        .Q(\r_reg_array_reg[13] [7]));
  FDCE \r_reg_array_reg[14][0] 
       (.C(aclk),
        .CE(\r_reg_array_reg[14][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[0]),
        .Q(\r_reg_array_reg[14] [0]));
  FDCE \r_reg_array_reg[14][1] 
       (.C(aclk),
        .CE(\r_reg_array_reg[14][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[1]),
        .Q(\r_reg_array_reg[14] [1]));
  FDCE \r_reg_array_reg[14][2] 
       (.C(aclk),
        .CE(\r_reg_array_reg[14][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[2]),
        .Q(\r_reg_array_reg[14] [2]));
  FDCE \r_reg_array_reg[14][3] 
       (.C(aclk),
        .CE(\r_reg_array_reg[14][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[3]),
        .Q(\r_reg_array_reg[14] [3]));
  FDCE \r_reg_array_reg[14][4] 
       (.C(aclk),
        .CE(\r_reg_array_reg[14][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[4]),
        .Q(\r_reg_array_reg[14] [4]));
  FDCE \r_reg_array_reg[14][5] 
       (.C(aclk),
        .CE(\r_reg_array_reg[14][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[5]),
        .Q(\r_reg_array_reg[14] [5]));
  FDCE \r_reg_array_reg[14][6] 
       (.C(aclk),
        .CE(\r_reg_array_reg[14][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[6]),
        .Q(\r_reg_array_reg[14] [6]));
  FDCE \r_reg_array_reg[14][7] 
       (.C(aclk),
        .CE(\r_reg_array_reg[14][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[7]),
        .Q(\r_reg_array_reg[14] [7]));
  FDCE \r_reg_array_reg[15][0] 
       (.C(aclk),
        .CE(E),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[0]),
        .Q(\r_reg_array_reg[15] [0]));
  FDCE \r_reg_array_reg[15][1] 
       (.C(aclk),
        .CE(E),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[1]),
        .Q(\r_reg_array_reg[15] [1]));
  FDCE \r_reg_array_reg[15][2] 
       (.C(aclk),
        .CE(E),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[2]),
        .Q(\r_reg_array_reg[15] [2]));
  FDCE \r_reg_array_reg[15][3] 
       (.C(aclk),
        .CE(E),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[3]),
        .Q(\r_reg_array_reg[15] [3]));
  FDCE \r_reg_array_reg[15][4] 
       (.C(aclk),
        .CE(E),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[4]),
        .Q(\r_reg_array_reg[15] [4]));
  FDCE \r_reg_array_reg[15][5] 
       (.C(aclk),
        .CE(E),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[5]),
        .Q(\r_reg_array_reg[15] [5]));
  FDCE \r_reg_array_reg[15][6] 
       (.C(aclk),
        .CE(E),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[6]),
        .Q(\r_reg_array_reg[15] [6]));
  FDCE \r_reg_array_reg[15][7] 
       (.C(aclk),
        .CE(E),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[7]),
        .Q(\r_reg_array_reg[15] [7]));
  FDCE \r_reg_array_reg[1][0] 
       (.C(aclk),
        .CE(\r_reg_array_reg[1][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[0]),
        .Q(\r_reg_array_reg[1] [0]));
  FDCE \r_reg_array_reg[1][1] 
       (.C(aclk),
        .CE(\r_reg_array_reg[1][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[1]),
        .Q(\r_reg_array_reg[1] [1]));
  FDCE \r_reg_array_reg[1][2] 
       (.C(aclk),
        .CE(\r_reg_array_reg[1][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[2]),
        .Q(\r_reg_array_reg[1] [2]));
  FDCE \r_reg_array_reg[1][3] 
       (.C(aclk),
        .CE(\r_reg_array_reg[1][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[3]),
        .Q(\r_reg_array_reg[1] [3]));
  FDCE \r_reg_array_reg[1][4] 
       (.C(aclk),
        .CE(\r_reg_array_reg[1][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[4]),
        .Q(\r_reg_array_reg[1] [4]));
  FDCE \r_reg_array_reg[1][5] 
       (.C(aclk),
        .CE(\r_reg_array_reg[1][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[5]),
        .Q(\r_reg_array_reg[1] [5]));
  FDCE \r_reg_array_reg[1][6] 
       (.C(aclk),
        .CE(\r_reg_array_reg[1][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[6]),
        .Q(\r_reg_array_reg[1] [6]));
  FDCE \r_reg_array_reg[1][7] 
       (.C(aclk),
        .CE(\r_reg_array_reg[1][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[7]),
        .Q(\r_reg_array_reg[1] [7]));
  FDCE \r_reg_array_reg[2][0] 
       (.C(aclk),
        .CE(\r_reg_array_reg[2][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[0]),
        .Q(\r_reg_array_reg[2] [0]));
  FDCE \r_reg_array_reg[2][1] 
       (.C(aclk),
        .CE(\r_reg_array_reg[2][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[1]),
        .Q(\r_reg_array_reg[2] [1]));
  FDCE \r_reg_array_reg[2][2] 
       (.C(aclk),
        .CE(\r_reg_array_reg[2][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[2]),
        .Q(\r_reg_array_reg[2] [2]));
  FDCE \r_reg_array_reg[2][3] 
       (.C(aclk),
        .CE(\r_reg_array_reg[2][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[3]),
        .Q(\r_reg_array_reg[2] [3]));
  FDCE \r_reg_array_reg[2][4] 
       (.C(aclk),
        .CE(\r_reg_array_reg[2][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[4]),
        .Q(\r_reg_array_reg[2] [4]));
  FDCE \r_reg_array_reg[2][5] 
       (.C(aclk),
        .CE(\r_reg_array_reg[2][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[5]),
        .Q(\r_reg_array_reg[2] [5]));
  FDCE \r_reg_array_reg[2][6] 
       (.C(aclk),
        .CE(\r_reg_array_reg[2][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[6]),
        .Q(\r_reg_array_reg[2] [6]));
  FDCE \r_reg_array_reg[2][7] 
       (.C(aclk),
        .CE(\r_reg_array_reg[2][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[7]),
        .Q(\r_reg_array_reg[2] [7]));
  FDCE \r_reg_array_reg[3][0] 
       (.C(aclk),
        .CE(\r_reg_array_reg[3][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[0]),
        .Q(\r_reg_array_reg[3] [0]));
  FDCE \r_reg_array_reg[3][1] 
       (.C(aclk),
        .CE(\r_reg_array_reg[3][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[1]),
        .Q(\r_reg_array_reg[3] [1]));
  FDCE \r_reg_array_reg[3][2] 
       (.C(aclk),
        .CE(\r_reg_array_reg[3][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[2]),
        .Q(\r_reg_array_reg[3] [2]));
  FDCE \r_reg_array_reg[3][3] 
       (.C(aclk),
        .CE(\r_reg_array_reg[3][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[3]),
        .Q(\r_reg_array_reg[3] [3]));
  FDCE \r_reg_array_reg[3][4] 
       (.C(aclk),
        .CE(\r_reg_array_reg[3][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[4]),
        .Q(\r_reg_array_reg[3] [4]));
  FDCE \r_reg_array_reg[3][5] 
       (.C(aclk),
        .CE(\r_reg_array_reg[3][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[5]),
        .Q(\r_reg_array_reg[3] [5]));
  FDCE \r_reg_array_reg[3][6] 
       (.C(aclk),
        .CE(\r_reg_array_reg[3][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[6]),
        .Q(\r_reg_array_reg[3] [6]));
  FDCE \r_reg_array_reg[3][7] 
       (.C(aclk),
        .CE(\r_reg_array_reg[3][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[7]),
        .Q(\r_reg_array_reg[3] [7]));
  FDCE \r_reg_array_reg[4][0] 
       (.C(aclk),
        .CE(\r_reg_array_reg[4][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[0]),
        .Q(\r_reg_array_reg[4] [0]));
  FDCE \r_reg_array_reg[4][1] 
       (.C(aclk),
        .CE(\r_reg_array_reg[4][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[1]),
        .Q(\r_reg_array_reg[4] [1]));
  FDCE \r_reg_array_reg[4][2] 
       (.C(aclk),
        .CE(\r_reg_array_reg[4][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[2]),
        .Q(\r_reg_array_reg[4] [2]));
  FDCE \r_reg_array_reg[4][3] 
       (.C(aclk),
        .CE(\r_reg_array_reg[4][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[3]),
        .Q(\r_reg_array_reg[4] [3]));
  FDCE \r_reg_array_reg[4][4] 
       (.C(aclk),
        .CE(\r_reg_array_reg[4][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[4]),
        .Q(\r_reg_array_reg[4] [4]));
  FDCE \r_reg_array_reg[4][5] 
       (.C(aclk),
        .CE(\r_reg_array_reg[4][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[5]),
        .Q(\r_reg_array_reg[4] [5]));
  FDCE \r_reg_array_reg[4][6] 
       (.C(aclk),
        .CE(\r_reg_array_reg[4][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[6]),
        .Q(\r_reg_array_reg[4] [6]));
  FDCE \r_reg_array_reg[4][7] 
       (.C(aclk),
        .CE(\r_reg_array_reg[4][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[7]),
        .Q(\r_reg_array_reg[4] [7]));
  FDCE \r_reg_array_reg[5][0] 
       (.C(aclk),
        .CE(\r_reg_array_reg[5][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[0]),
        .Q(\r_reg_array_reg[5] [0]));
  FDCE \r_reg_array_reg[5][1] 
       (.C(aclk),
        .CE(\r_reg_array_reg[5][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[1]),
        .Q(\r_reg_array_reg[5] [1]));
  FDCE \r_reg_array_reg[5][2] 
       (.C(aclk),
        .CE(\r_reg_array_reg[5][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[2]),
        .Q(\r_reg_array_reg[5] [2]));
  FDCE \r_reg_array_reg[5][3] 
       (.C(aclk),
        .CE(\r_reg_array_reg[5][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[3]),
        .Q(\r_reg_array_reg[5] [3]));
  FDCE \r_reg_array_reg[5][4] 
       (.C(aclk),
        .CE(\r_reg_array_reg[5][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[4]),
        .Q(\r_reg_array_reg[5] [4]));
  FDCE \r_reg_array_reg[5][5] 
       (.C(aclk),
        .CE(\r_reg_array_reg[5][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[5]),
        .Q(\r_reg_array_reg[5] [5]));
  FDCE \r_reg_array_reg[5][6] 
       (.C(aclk),
        .CE(\r_reg_array_reg[5][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[6]),
        .Q(\r_reg_array_reg[5] [6]));
  FDCE \r_reg_array_reg[5][7] 
       (.C(aclk),
        .CE(\r_reg_array_reg[5][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[7]),
        .Q(\r_reg_array_reg[5] [7]));
  FDCE \r_reg_array_reg[6][0] 
       (.C(aclk),
        .CE(\r_reg_array_reg[6][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[0]),
        .Q(\r_reg_array_reg[6] [0]));
  FDCE \r_reg_array_reg[6][1] 
       (.C(aclk),
        .CE(\r_reg_array_reg[6][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[1]),
        .Q(\r_reg_array_reg[6] [1]));
  FDCE \r_reg_array_reg[6][2] 
       (.C(aclk),
        .CE(\r_reg_array_reg[6][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[2]),
        .Q(\r_reg_array_reg[6] [2]));
  FDCE \r_reg_array_reg[6][3] 
       (.C(aclk),
        .CE(\r_reg_array_reg[6][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[3]),
        .Q(\r_reg_array_reg[6] [3]));
  FDCE \r_reg_array_reg[6][4] 
       (.C(aclk),
        .CE(\r_reg_array_reg[6][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[4]),
        .Q(\r_reg_array_reg[6] [4]));
  FDCE \r_reg_array_reg[6][5] 
       (.C(aclk),
        .CE(\r_reg_array_reg[6][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[5]),
        .Q(\r_reg_array_reg[6] [5]));
  FDCE \r_reg_array_reg[6][6] 
       (.C(aclk),
        .CE(\r_reg_array_reg[6][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[6]),
        .Q(\r_reg_array_reg[6] [6]));
  FDCE \r_reg_array_reg[6][7] 
       (.C(aclk),
        .CE(\r_reg_array_reg[6][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[7]),
        .Q(\r_reg_array_reg[6] [7]));
  FDCE \r_reg_array_reg[7][0] 
       (.C(aclk),
        .CE(\r_reg_array_reg[7][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[0]),
        .Q(\r_reg_array_reg[7] [0]));
  FDCE \r_reg_array_reg[7][1] 
       (.C(aclk),
        .CE(\r_reg_array_reg[7][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[1]),
        .Q(\r_reg_array_reg[7] [1]));
  FDCE \r_reg_array_reg[7][2] 
       (.C(aclk),
        .CE(\r_reg_array_reg[7][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[2]),
        .Q(\r_reg_array_reg[7] [2]));
  FDCE \r_reg_array_reg[7][3] 
       (.C(aclk),
        .CE(\r_reg_array_reg[7][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[3]),
        .Q(\r_reg_array_reg[7] [3]));
  FDCE \r_reg_array_reg[7][4] 
       (.C(aclk),
        .CE(\r_reg_array_reg[7][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[4]),
        .Q(\r_reg_array_reg[7] [4]));
  FDCE \r_reg_array_reg[7][5] 
       (.C(aclk),
        .CE(\r_reg_array_reg[7][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[5]),
        .Q(\r_reg_array_reg[7] [5]));
  FDCE \r_reg_array_reg[7][6] 
       (.C(aclk),
        .CE(\r_reg_array_reg[7][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[6]),
        .Q(\r_reg_array_reg[7] [6]));
  FDCE \r_reg_array_reg[7][7] 
       (.C(aclk),
        .CE(\r_reg_array_reg[7][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[7]),
        .Q(\r_reg_array_reg[7] [7]));
  FDCE \r_reg_array_reg[8][0] 
       (.C(aclk),
        .CE(\r_reg_array_reg[8][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[0]),
        .Q(\r_reg_array_reg[8] [0]));
  FDCE \r_reg_array_reg[8][1] 
       (.C(aclk),
        .CE(\r_reg_array_reg[8][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[1]),
        .Q(\r_reg_array_reg[8] [1]));
  FDCE \r_reg_array_reg[8][2] 
       (.C(aclk),
        .CE(\r_reg_array_reg[8][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[2]),
        .Q(\r_reg_array_reg[8] [2]));
  FDCE \r_reg_array_reg[8][3] 
       (.C(aclk),
        .CE(\r_reg_array_reg[8][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[3]),
        .Q(\r_reg_array_reg[8] [3]));
  FDCE \r_reg_array_reg[8][4] 
       (.C(aclk),
        .CE(\r_reg_array_reg[8][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[4]),
        .Q(\r_reg_array_reg[8] [4]));
  FDCE \r_reg_array_reg[8][5] 
       (.C(aclk),
        .CE(\r_reg_array_reg[8][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[5]),
        .Q(\r_reg_array_reg[8] [5]));
  FDCE \r_reg_array_reg[8][6] 
       (.C(aclk),
        .CE(\r_reg_array_reg[8][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[6]),
        .Q(\r_reg_array_reg[8] [6]));
  FDCE \r_reg_array_reg[8][7] 
       (.C(aclk),
        .CE(\r_reg_array_reg[8][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[7]),
        .Q(\r_reg_array_reg[8] [7]));
  FDCE \r_reg_array_reg[9][0] 
       (.C(aclk),
        .CE(\r_reg_array_reg[9][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[0]),
        .Q(\r_reg_array_reg[9] [0]));
  FDCE \r_reg_array_reg[9][1] 
       (.C(aclk),
        .CE(\r_reg_array_reg[9][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[1]),
        .Q(\r_reg_array_reg[9] [1]));
  FDCE \r_reg_array_reg[9][2] 
       (.C(aclk),
        .CE(\r_reg_array_reg[9][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[2]),
        .Q(\r_reg_array_reg[9] [2]));
  FDCE \r_reg_array_reg[9][3] 
       (.C(aclk),
        .CE(\r_reg_array_reg[9][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[3]),
        .Q(\r_reg_array_reg[9] [3]));
  FDCE \r_reg_array_reg[9][4] 
       (.C(aclk),
        .CE(\r_reg_array_reg[9][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[4]),
        .Q(\r_reg_array_reg[9] [4]));
  FDCE \r_reg_array_reg[9][5] 
       (.C(aclk),
        .CE(\r_reg_array_reg[9][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[5]),
        .Q(\r_reg_array_reg[9] [5]));
  FDCE \r_reg_array_reg[9][6] 
       (.C(aclk),
        .CE(\r_reg_array_reg[9][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[6]),
        .Q(\r_reg_array_reg[9] [6]));
  FDCE \r_reg_array_reg[9][7] 
       (.C(aclk),
        .CE(\r_reg_array_reg[9][7]_0 ),
        .CLR(\r_reg_array_reg[0][0]_0 ),
        .D(D[7]),
        .Q(\r_reg_array_reg[9] [7]));
  LUT6 #(
    .INIT(64'h3500350F35F035FF)) 
    \rd_data[0]_i_2__0 
       (.I0(\rd_data[0]_i_3__0_n_0 ),
        .I1(\rd_data[0]_i_4_n_0 ),
        .I2(\rd_data_reg[7] [3]),
        .I3(\rd_data_reg[7] [2]),
        .I4(\rd_data[0]_i_5_n_0 ),
        .I5(\rd_data[0]_i_6_n_0 ),
        .O(\r_rd_logic_reg[3]_6 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \rd_data[0]_i_3__0 
       (.I0(\r_reg_array_reg[5] [0]),
        .I1(\r_reg_array_reg[7] [0]),
        .I2(\rd_data_reg[7] [1]),
        .I3(\rd_data_reg[7] [0]),
        .I4(\r_reg_array_reg[4] [0]),
        .I5(\r_reg_array_reg[6] [0]),
        .O(\rd_data[0]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \rd_data[0]_i_4 
       (.I0(\r_reg_array_reg[13] [0]),
        .I1(\r_reg_array_reg[15] [0]),
        .I2(\rd_data_reg[7] [1]),
        .I3(\rd_data_reg[7] [0]),
        .I4(\r_reg_array_reg[12] [0]),
        .I5(\r_reg_array_reg[14] [0]),
        .O(\rd_data[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \rd_data[0]_i_5 
       (.I0(\r_reg_array_reg[1] [0]),
        .I1(\r_reg_array_reg[3] [0]),
        .I2(\rd_data_reg[7] [1]),
        .I3(\rd_data_reg[7] [0]),
        .I4(\r_reg_array_reg[0] [0]),
        .I5(\r_reg_array_reg[2] [0]),
        .O(\rd_data[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \rd_data[0]_i_6 
       (.I0(\r_reg_array_reg[9] [0]),
        .I1(\r_reg_array_reg[11] [0]),
        .I2(\rd_data_reg[7] [1]),
        .I3(\rd_data_reg[7] [0]),
        .I4(\r_reg_array_reg[8] [0]),
        .I5(\r_reg_array_reg[10] [0]),
        .O(\rd_data[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h3500350F35F035FF)) 
    \rd_data[1]_i_2 
       (.I0(\rd_data[1]_i_3_n_0 ),
        .I1(\rd_data[1]_i_4_n_0 ),
        .I2(\rd_data_reg[7] [3]),
        .I3(\rd_data_reg[7] [2]),
        .I4(\rd_data[1]_i_5_n_0 ),
        .I5(\rd_data[1]_i_6_n_0 ),
        .O(\r_rd_logic_reg[3]_5 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \rd_data[1]_i_3 
       (.I0(\r_reg_array_reg[5] [1]),
        .I1(\r_reg_array_reg[7] [1]),
        .I2(\rd_data_reg[7] [1]),
        .I3(\rd_data_reg[7] [0]),
        .I4(\r_reg_array_reg[4] [1]),
        .I5(\r_reg_array_reg[6] [1]),
        .O(\rd_data[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \rd_data[1]_i_4 
       (.I0(\r_reg_array_reg[13] [1]),
        .I1(\r_reg_array_reg[15] [1]),
        .I2(\rd_data_reg[7] [1]),
        .I3(\rd_data_reg[7] [0]),
        .I4(\r_reg_array_reg[12] [1]),
        .I5(\r_reg_array_reg[14] [1]),
        .O(\rd_data[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \rd_data[1]_i_5 
       (.I0(\r_reg_array_reg[1] [1]),
        .I1(\r_reg_array_reg[3] [1]),
        .I2(\rd_data_reg[7] [1]),
        .I3(\rd_data_reg[7] [0]),
        .I4(\r_reg_array_reg[0] [1]),
        .I5(\r_reg_array_reg[2] [1]),
        .O(\rd_data[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \rd_data[1]_i_6 
       (.I0(\r_reg_array_reg[9] [1]),
        .I1(\r_reg_array_reg[11] [1]),
        .I2(\rd_data_reg[7] [1]),
        .I3(\rd_data_reg[7] [0]),
        .I4(\r_reg_array_reg[8] [1]),
        .I5(\r_reg_array_reg[10] [1]),
        .O(\rd_data[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h3500350F35F035FF)) 
    \rd_data[2]_i_2 
       (.I0(\rd_data[2]_i_3_n_0 ),
        .I1(\rd_data[2]_i_4_n_0 ),
        .I2(\rd_data_reg[7] [3]),
        .I3(\rd_data_reg[7] [2]),
        .I4(\rd_data[2]_i_5_n_0 ),
        .I5(\rd_data[2]_i_6_n_0 ),
        .O(\r_rd_logic_reg[3]_4 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \rd_data[2]_i_3 
       (.I0(\r_reg_array_reg[5] [2]),
        .I1(\r_reg_array_reg[7] [2]),
        .I2(\rd_data_reg[7] [1]),
        .I3(\rd_data_reg[7] [0]),
        .I4(\r_reg_array_reg[4] [2]),
        .I5(\r_reg_array_reg[6] [2]),
        .O(\rd_data[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \rd_data[2]_i_4 
       (.I0(\r_reg_array_reg[13] [2]),
        .I1(\r_reg_array_reg[15] [2]),
        .I2(\rd_data_reg[7] [1]),
        .I3(\rd_data_reg[7] [0]),
        .I4(\r_reg_array_reg[12] [2]),
        .I5(\r_reg_array_reg[14] [2]),
        .O(\rd_data[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \rd_data[2]_i_5 
       (.I0(\r_reg_array_reg[1] [2]),
        .I1(\r_reg_array_reg[3] [2]),
        .I2(\rd_data_reg[7] [1]),
        .I3(\rd_data_reg[7] [0]),
        .I4(\r_reg_array_reg[0] [2]),
        .I5(\r_reg_array_reg[2] [2]),
        .O(\rd_data[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \rd_data[2]_i_6 
       (.I0(\r_reg_array_reg[9] [2]),
        .I1(\r_reg_array_reg[11] [2]),
        .I2(\rd_data_reg[7] [1]),
        .I3(\rd_data_reg[7] [0]),
        .I4(\r_reg_array_reg[8] [2]),
        .I5(\r_reg_array_reg[10] [2]),
        .O(\rd_data[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h3500350F35F035FF)) 
    \rd_data[3]_i_2 
       (.I0(\rd_data[3]_i_3_n_0 ),
        .I1(\rd_data[3]_i_4_n_0 ),
        .I2(\rd_data_reg[7] [3]),
        .I3(\rd_data_reg[7] [2]),
        .I4(\rd_data[3]_i_5_n_0 ),
        .I5(\rd_data[3]_i_6_n_0 ),
        .O(\r_rd_logic_reg[3]_3 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \rd_data[3]_i_3 
       (.I0(\r_reg_array_reg[5] [3]),
        .I1(\r_reg_array_reg[7] [3]),
        .I2(\rd_data_reg[7] [1]),
        .I3(\rd_data_reg[7] [0]),
        .I4(\r_reg_array_reg[4] [3]),
        .I5(\r_reg_array_reg[6] [3]),
        .O(\rd_data[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \rd_data[3]_i_4 
       (.I0(\r_reg_array_reg[13] [3]),
        .I1(\r_reg_array_reg[15] [3]),
        .I2(\rd_data_reg[7] [1]),
        .I3(\rd_data_reg[7] [0]),
        .I4(\r_reg_array_reg[12] [3]),
        .I5(\r_reg_array_reg[14] [3]),
        .O(\rd_data[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \rd_data[3]_i_5 
       (.I0(\r_reg_array_reg[1] [3]),
        .I1(\r_reg_array_reg[3] [3]),
        .I2(\rd_data_reg[7] [1]),
        .I3(\rd_data_reg[7] [0]),
        .I4(\r_reg_array_reg[0] [3]),
        .I5(\r_reg_array_reg[2] [3]),
        .O(\rd_data[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \rd_data[3]_i_6 
       (.I0(\r_reg_array_reg[9] [3]),
        .I1(\r_reg_array_reg[11] [3]),
        .I2(\rd_data_reg[7] [1]),
        .I3(\rd_data_reg[7] [0]),
        .I4(\r_reg_array_reg[8] [3]),
        .I5(\r_reg_array_reg[10] [3]),
        .O(\rd_data[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h3500350F35F035FF)) 
    \rd_data[4]_i_2 
       (.I0(\rd_data[4]_i_3_n_0 ),
        .I1(\rd_data[4]_i_4_n_0 ),
        .I2(\rd_data_reg[7] [3]),
        .I3(\rd_data_reg[7] [2]),
        .I4(\rd_data[4]_i_5_n_0 ),
        .I5(\rd_data[4]_i_6_n_0 ),
        .O(\r_rd_logic_reg[3]_2 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \rd_data[4]_i_3 
       (.I0(\r_reg_array_reg[5] [4]),
        .I1(\r_reg_array_reg[7] [4]),
        .I2(\rd_data_reg[7] [1]),
        .I3(\rd_data_reg[7] [0]),
        .I4(\r_reg_array_reg[4] [4]),
        .I5(\r_reg_array_reg[6] [4]),
        .O(\rd_data[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \rd_data[4]_i_4 
       (.I0(\r_reg_array_reg[13] [4]),
        .I1(\r_reg_array_reg[15] [4]),
        .I2(\rd_data_reg[7] [1]),
        .I3(\rd_data_reg[7] [0]),
        .I4(\r_reg_array_reg[12] [4]),
        .I5(\r_reg_array_reg[14] [4]),
        .O(\rd_data[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \rd_data[4]_i_5 
       (.I0(\r_reg_array_reg[1] [4]),
        .I1(\r_reg_array_reg[3] [4]),
        .I2(\rd_data_reg[7] [1]),
        .I3(\rd_data_reg[7] [0]),
        .I4(\r_reg_array_reg[0] [4]),
        .I5(\r_reg_array_reg[2] [4]),
        .O(\rd_data[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \rd_data[4]_i_6 
       (.I0(\r_reg_array_reg[9] [4]),
        .I1(\r_reg_array_reg[11] [4]),
        .I2(\rd_data_reg[7] [1]),
        .I3(\rd_data_reg[7] [0]),
        .I4(\r_reg_array_reg[8] [4]),
        .I5(\r_reg_array_reg[10] [4]),
        .O(\rd_data[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h3500350F35F035FF)) 
    \rd_data[5]_i_2 
       (.I0(\rd_data[5]_i_3_n_0 ),
        .I1(\rd_data[5]_i_4_n_0 ),
        .I2(\rd_data_reg[7] [3]),
        .I3(\rd_data_reg[7] [2]),
        .I4(\rd_data[5]_i_5_n_0 ),
        .I5(\rd_data[5]_i_6_n_0 ),
        .O(\r_rd_logic_reg[3]_1 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \rd_data[5]_i_3 
       (.I0(\r_reg_array_reg[5] [5]),
        .I1(\r_reg_array_reg[7] [5]),
        .I2(\rd_data_reg[7] [1]),
        .I3(\rd_data_reg[7] [0]),
        .I4(\r_reg_array_reg[4] [5]),
        .I5(\r_reg_array_reg[6] [5]),
        .O(\rd_data[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \rd_data[5]_i_4 
       (.I0(\r_reg_array_reg[13] [5]),
        .I1(\r_reg_array_reg[15] [5]),
        .I2(\rd_data_reg[7] [1]),
        .I3(\rd_data_reg[7] [0]),
        .I4(\r_reg_array_reg[12] [5]),
        .I5(\r_reg_array_reg[14] [5]),
        .O(\rd_data[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \rd_data[5]_i_5 
       (.I0(\r_reg_array_reg[1] [5]),
        .I1(\r_reg_array_reg[3] [5]),
        .I2(\rd_data_reg[7] [1]),
        .I3(\rd_data_reg[7] [0]),
        .I4(\r_reg_array_reg[0] [5]),
        .I5(\r_reg_array_reg[2] [5]),
        .O(\rd_data[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \rd_data[5]_i_6 
       (.I0(\r_reg_array_reg[9] [5]),
        .I1(\r_reg_array_reg[11] [5]),
        .I2(\rd_data_reg[7] [1]),
        .I3(\rd_data_reg[7] [0]),
        .I4(\r_reg_array_reg[8] [5]),
        .I5(\r_reg_array_reg[10] [5]),
        .O(\rd_data[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h3500350F35F035FF)) 
    \rd_data[6]_i_2 
       (.I0(\rd_data[6]_i_3_n_0 ),
        .I1(\rd_data[6]_i_4_n_0 ),
        .I2(\rd_data_reg[7] [3]),
        .I3(\rd_data_reg[7] [2]),
        .I4(\rd_data[6]_i_5_n_0 ),
        .I5(\rd_data[6]_i_6_n_0 ),
        .O(\r_rd_logic_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \rd_data[6]_i_3 
       (.I0(\r_reg_array_reg[5] [6]),
        .I1(\r_reg_array_reg[7] [6]),
        .I2(\rd_data_reg[7] [1]),
        .I3(\rd_data_reg[7] [0]),
        .I4(\r_reg_array_reg[4] [6]),
        .I5(\r_reg_array_reg[6] [6]),
        .O(\rd_data[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \rd_data[6]_i_4 
       (.I0(\r_reg_array_reg[13] [6]),
        .I1(\r_reg_array_reg[15] [6]),
        .I2(\rd_data_reg[7] [1]),
        .I3(\rd_data_reg[7] [0]),
        .I4(\r_reg_array_reg[12] [6]),
        .I5(\r_reg_array_reg[14] [6]),
        .O(\rd_data[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \rd_data[6]_i_5 
       (.I0(\r_reg_array_reg[1] [6]),
        .I1(\r_reg_array_reg[3] [6]),
        .I2(\rd_data_reg[7] [1]),
        .I3(\rd_data_reg[7] [0]),
        .I4(\r_reg_array_reg[0] [6]),
        .I5(\r_reg_array_reg[2] [6]),
        .O(\rd_data[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \rd_data[6]_i_6 
       (.I0(\r_reg_array_reg[9] [6]),
        .I1(\r_reg_array_reg[11] [6]),
        .I2(\rd_data_reg[7] [1]),
        .I3(\rd_data_reg[7] [0]),
        .I4(\r_reg_array_reg[8] [6]),
        .I5(\r_reg_array_reg[10] [6]),
        .O(\rd_data[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h3500350F35F035FF)) 
    \rd_data[7]_i_2 
       (.I0(\rd_data[7]_i_4_n_0 ),
        .I1(\rd_data[7]_i_5_n_0 ),
        .I2(\rd_data_reg[7] [3]),
        .I3(\rd_data_reg[7] [2]),
        .I4(\rd_data[7]_i_6_n_0 ),
        .I5(\rd_data[7]_i_7_n_0 ),
        .O(\r_rd_logic_reg[3] ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \rd_data[7]_i_4 
       (.I0(\r_reg_array_reg[5] [7]),
        .I1(\r_reg_array_reg[7] [7]),
        .I2(\rd_data_reg[7] [1]),
        .I3(\rd_data_reg[7] [0]),
        .I4(\r_reg_array_reg[4] [7]),
        .I5(\r_reg_array_reg[6] [7]),
        .O(\rd_data[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \rd_data[7]_i_5 
       (.I0(\r_reg_array_reg[13] [7]),
        .I1(\r_reg_array_reg[15] [7]),
        .I2(\rd_data_reg[7] [1]),
        .I3(\rd_data_reg[7] [0]),
        .I4(\r_reg_array_reg[12] [7]),
        .I5(\r_reg_array_reg[14] [7]),
        .O(\rd_data[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \rd_data[7]_i_6 
       (.I0(\r_reg_array_reg[1] [7]),
        .I1(\r_reg_array_reg[3] [7]),
        .I2(\rd_data_reg[7] [1]),
        .I3(\rd_data_reg[7] [0]),
        .I4(\r_reg_array_reg[0] [7]),
        .I5(\r_reg_array_reg[2] [7]),
        .O(\rd_data[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \rd_data[7]_i_7 
       (.I0(\r_reg_array_reg[9] [7]),
        .I1(\r_reg_array_reg[11] [7]),
        .I2(\rd_data_reg[7] [1]),
        .I3(\rd_data_reg[7] [0]),
        .I4(\r_reg_array_reg[8] [7]),
        .I5(\r_reg_array_reg[10] [7]),
        .O(\rd_data[7]_i_7_n_0 ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rx
   (E,
    \FSM_sequential_r_state_reg[1]_0 ,
    D,
    w_en_rd,
    \r_wr_logic_reg[0] ,
    Q,
    rx,
    tick,
    aclk,
    \r_data_bits_received_reg[3]_0 );
  output [0:0]E;
  output \FSM_sequential_r_state_reg[1]_0 ;
  output [7:0]D;
  input w_en_rd;
  input \r_wr_logic_reg[0] ;
  input [0:0]Q;
  input rx;
  input tick;
  input aclk;
  input \r_data_bits_received_reg[3]_0 ;

  wire [7:0]D;
  wire [0:0]E;
  wire \FSM_sequential_r_state[0]_i_2__0_n_0 ;
  wire \FSM_sequential_r_state[1]_i_2_n_0 ;
  wire \FSM_sequential_r_state[1]_i_3_n_0 ;
  wire \FSM_sequential_r_state_reg[1]_0 ;
  wire [0:0]Q;
  wire aclk;
  wire [7:0]dout;
  wire [3:0]r_data_bits_received;
  wire \r_data_bits_received[3]_i_1_n_0 ;
  wire \r_data_bits_received[3]_i_3_n_0 ;
  wire \r_data_bits_received_reg[3]_0 ;
  wire [4:0]r_sampling_ticks;
  wire \r_sampling_ticks[4]_i_2_n_0 ;
  wire \r_sampling_ticks[4]_i_3_n_0 ;
  wire [1:0]r_state;
  wire \r_wr_logic_reg[0] ;
  wire rx;
  wire tick;
  wire w_en_rd;
  wire [3:0]w_next_data_bits_received;
  wire [4:0]w_next_sampling_ticks;
  wire [1:0]w_next_state;
  wire [7:0]w_out_shift;

  LUT6 #(
    .INIT(64'hFFCCCCCCDDDDCFCF)) 
    \FSM_sequential_r_state[0]_i_1 
       (.I0(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .I1(\FSM_sequential_r_state[0]_i_2__0_n_0 ),
        .I2(rx),
        .I3(\FSM_sequential_r_state[1]_i_3_n_0 ),
        .I4(r_state[0]),
        .I5(r_state[1]),
        .O(w_next_state[0]));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    \FSM_sequential_r_state[0]_i_2__0 
       (.I0(r_data_bits_received[0]),
        .I1(r_data_bits_received[1]),
        .I2(r_state[1]),
        .I3(r_state[0]),
        .I4(r_data_bits_received[2]),
        .I5(r_data_bits_received[3]),
        .O(\FSM_sequential_r_state[0]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'hF588)) 
    \FSM_sequential_r_state[1]_i_1 
       (.I0(r_state[0]),
        .I1(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .I2(\FSM_sequential_r_state[1]_i_3_n_0 ),
        .I3(r_state[1]),
        .O(w_next_state[1]));
  LUT5 #(
    .INIT(32'h00000100)) 
    \FSM_sequential_r_state[1]_i_2 
       (.I0(r_sampling_ticks[4]),
        .I1(r_sampling_ticks[2]),
        .I2(r_sampling_ticks[0]),
        .I3(r_sampling_ticks[3]),
        .I4(r_sampling_ticks[1]),
        .O(\FSM_sequential_r_state[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'hFF7FFFFF)) 
    \FSM_sequential_r_state[1]_i_3 
       (.I0(r_sampling_ticks[1]),
        .I1(r_sampling_ticks[0]),
        .I2(r_sampling_ticks[2]),
        .I3(r_sampling_ticks[4]),
        .I4(r_sampling_ticks[3]),
        .O(\FSM_sequential_r_state[1]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "START:01,DATA:10,STOP:11,IDLE:00" *) 
  FDCE \FSM_sequential_r_state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r_data_bits_received_reg[3]_0 ),
        .D(w_next_state[0]),
        .Q(r_state[0]));
  (* FSM_ENCODED_STATES = "START:01,DATA:10,STOP:11,IDLE:00" *) 
  FDCE \FSM_sequential_r_state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r_data_bits_received_reg[3]_0 ),
        .D(w_next_state[1]),
        .Q(r_state[1]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \dout[0]_i_1 
       (.I0(r_state[1]),
        .I1(dout[1]),
        .O(w_out_shift[0]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \dout[1]_i_1 
       (.I0(r_state[1]),
        .I1(dout[2]),
        .O(w_out_shift[1]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \dout[2]_i_1 
       (.I0(r_state[1]),
        .I1(dout[3]),
        .O(w_out_shift[2]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \dout[3]_i_1 
       (.I0(r_state[1]),
        .I1(dout[4]),
        .O(w_out_shift[3]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \dout[4]_i_1 
       (.I0(r_state[1]),
        .I1(dout[5]),
        .O(w_out_shift[4]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \dout[7]_i_1 
       (.I0(r_state[1]),
        .I1(rx),
        .O(w_out_shift[7]));
  FDCE \dout_reg[0] 
       (.C(aclk),
        .CE(\r_data_bits_received[3]_i_1_n_0 ),
        .CLR(\r_data_bits_received_reg[3]_0 ),
        .D(w_out_shift[0]),
        .Q(dout[0]));
  FDCE \dout_reg[1] 
       (.C(aclk),
        .CE(\r_data_bits_received[3]_i_1_n_0 ),
        .CLR(\r_data_bits_received_reg[3]_0 ),
        .D(w_out_shift[1]),
        .Q(dout[1]));
  FDCE \dout_reg[2] 
       (.C(aclk),
        .CE(\r_data_bits_received[3]_i_1_n_0 ),
        .CLR(\r_data_bits_received_reg[3]_0 ),
        .D(w_out_shift[2]),
        .Q(dout[2]));
  FDCE \dout_reg[3] 
       (.C(aclk),
        .CE(\r_data_bits_received[3]_i_1_n_0 ),
        .CLR(\r_data_bits_received_reg[3]_0 ),
        .D(w_out_shift[3]),
        .Q(dout[3]));
  FDCE \dout_reg[4] 
       (.C(aclk),
        .CE(\r_data_bits_received[3]_i_1_n_0 ),
        .CLR(\r_data_bits_received_reg[3]_0 ),
        .D(w_out_shift[4]),
        .Q(dout[4]));
  FDCE \dout_reg[5] 
       (.C(aclk),
        .CE(\r_data_bits_received[3]_i_1_n_0 ),
        .CLR(\r_data_bits_received_reg[3]_0 ),
        .D(w_out_shift[5]),
        .Q(dout[5]));
  FDCE \dout_reg[6] 
       (.C(aclk),
        .CE(\r_data_bits_received[3]_i_1_n_0 ),
        .CLR(\r_data_bits_received_reg[3]_0 ),
        .D(w_out_shift[6]),
        .Q(dout[6]));
  FDCE \dout_reg[7] 
       (.C(aclk),
        .CE(\r_data_bits_received[3]_i_1_n_0 ),
        .CLR(\r_data_bits_received_reg[3]_0 ),
        .D(w_out_shift[7]),
        .Q(dout[7]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h80)) 
    empty_i_3
       (.I0(r_state[1]),
        .I1(r_state[0]),
        .I2(\r_data_bits_received[3]_i_3_n_0 ),
        .O(\FSM_sequential_r_state_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r_data_bits_received[0]_i_1 
       (.I0(r_state[1]),
        .I1(r_data_bits_received[0]),
        .O(w_next_data_bits_received[0]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h48)) 
    \r_data_bits_received[1]_i_1 
       (.I0(r_data_bits_received[0]),
        .I1(r_state[1]),
        .I2(r_data_bits_received[1]),
        .O(w_next_data_bits_received[1]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    \r_data_bits_received[2]_i_1 
       (.I0(r_data_bits_received[1]),
        .I1(r_data_bits_received[0]),
        .I2(r_state[1]),
        .I3(r_data_bits_received[2]),
        .O(w_next_data_bits_received[2]));
  LUT3 #(
    .INIT(8'h0B)) 
    \r_data_bits_received[3]_i_1 
       (.I0(\r_data_bits_received[3]_i_3_n_0 ),
        .I1(r_state[1]),
        .I2(r_state[0]),
        .O(\r_data_bits_received[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h7F008000)) 
    \r_data_bits_received[3]_i_2 
       (.I0(r_data_bits_received[2]),
        .I1(r_data_bits_received[0]),
        .I2(r_data_bits_received[1]),
        .I3(r_state[1]),
        .I4(r_data_bits_received[3]),
        .O(w_next_data_bits_received[3]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \r_data_bits_received[3]_i_3 
       (.I0(r_sampling_ticks[4]),
        .I1(r_sampling_ticks[3]),
        .I2(r_sampling_ticks[2]),
        .I3(r_sampling_ticks[0]),
        .I4(r_sampling_ticks[1]),
        .O(\r_data_bits_received[3]_i_3_n_0 ));
  FDCE \r_data_bits_received_reg[0] 
       (.C(aclk),
        .CE(\r_data_bits_received[3]_i_1_n_0 ),
        .CLR(\r_data_bits_received_reg[3]_0 ),
        .D(w_next_data_bits_received[0]),
        .Q(r_data_bits_received[0]));
  FDCE \r_data_bits_received_reg[1] 
       (.C(aclk),
        .CE(\r_data_bits_received[3]_i_1_n_0 ),
        .CLR(\r_data_bits_received_reg[3]_0 ),
        .D(w_next_data_bits_received[1]),
        .Q(r_data_bits_received[1]));
  FDCE \r_data_bits_received_reg[2] 
       (.C(aclk),
        .CE(\r_data_bits_received[3]_i_1_n_0 ),
        .CLR(\r_data_bits_received_reg[3]_0 ),
        .D(w_next_data_bits_received[2]),
        .Q(r_data_bits_received[2]));
  FDCE \r_data_bits_received_reg[3] 
       (.C(aclk),
        .CE(\r_data_bits_received[3]_i_1_n_0 ),
        .CLR(\r_data_bits_received_reg[3]_0 ),
        .D(w_next_data_bits_received[3]),
        .Q(r_data_bits_received[3]));
  LUT2 #(
    .INIT(4'h2)) 
    \r_reg_array[15][0]_i_1__0 
       (.I0(dout[0]),
        .I1(Q),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r_reg_array[15][1]_i_1__0 
       (.I0(dout[1]),
        .I1(Q),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r_reg_array[15][2]_i_1__0 
       (.I0(dout[2]),
        .I1(Q),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r_reg_array[15][3]_i_1__0 
       (.I0(dout[3]),
        .I1(Q),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r_reg_array[15][4]_i_1__0 
       (.I0(dout[4]),
        .I1(Q),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r_reg_array[15][5]_i_1__0 
       (.I0(dout[5]),
        .I1(Q),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r_reg_array[15][6]_i_1__0 
       (.I0(dout[6]),
        .I1(Q),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r_reg_array[15][7]_i_2__0 
       (.I0(dout[7]),
        .I1(Q),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \r_sampling_ticks[0]_i_1 
       (.I0(\r_sampling_ticks[4]_i_2_n_0 ),
        .I1(tick),
        .I2(r_sampling_ticks[0]),
        .O(w_next_sampling_ticks[0]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \r_sampling_ticks[1]_i_1 
       (.I0(\r_sampling_ticks[4]_i_2_n_0 ),
        .I1(r_sampling_ticks[1]),
        .I2(tick),
        .I3(r_sampling_ticks[0]),
        .O(w_next_sampling_ticks[1]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'h28888888)) 
    \r_sampling_ticks[2]_i_1 
       (.I0(\r_sampling_ticks[4]_i_2_n_0 ),
        .I1(r_sampling_ticks[2]),
        .I2(r_sampling_ticks[1]),
        .I3(r_sampling_ticks[0]),
        .I4(tick),
        .O(w_next_sampling_ticks[2]));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \r_sampling_ticks[3]_i_1 
       (.I0(\r_sampling_ticks[4]_i_2_n_0 ),
        .I1(r_sampling_ticks[3]),
        .I2(r_sampling_ticks[2]),
        .I3(tick),
        .I4(r_sampling_ticks[0]),
        .I5(r_sampling_ticks[1]),
        .O(w_next_sampling_ticks[3]));
  LUT4 #(
    .INIT(16'h2888)) 
    \r_sampling_ticks[4]_i_1 
       (.I0(\r_sampling_ticks[4]_i_2_n_0 ),
        .I1(r_sampling_ticks[4]),
        .I2(r_sampling_ticks[3]),
        .I3(\r_sampling_ticks[4]_i_3_n_0 ),
        .O(w_next_sampling_ticks[4]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'hA2F2)) 
    \r_sampling_ticks[4]_i_2 
       (.I0(r_state[0]),
        .I1(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .I2(r_state[1]),
        .I3(\r_data_bits_received[3]_i_3_n_0 ),
        .O(\r_sampling_ticks[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \r_sampling_ticks[4]_i_3 
       (.I0(r_sampling_ticks[2]),
        .I1(tick),
        .I2(r_sampling_ticks[0]),
        .I3(r_sampling_ticks[1]),
        .O(\r_sampling_ticks[4]_i_3_n_0 ));
  FDCE \r_sampling_ticks_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r_data_bits_received_reg[3]_0 ),
        .D(w_next_sampling_ticks[0]),
        .Q(r_sampling_ticks[0]));
  FDCE \r_sampling_ticks_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r_data_bits_received_reg[3]_0 ),
        .D(w_next_sampling_ticks[1]),
        .Q(r_sampling_ticks[1]));
  FDCE \r_sampling_ticks_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r_data_bits_received_reg[3]_0 ),
        .D(w_next_sampling_ticks[2]),
        .Q(r_sampling_ticks[2]));
  FDCE \r_sampling_ticks_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r_data_bits_received_reg[3]_0 ),
        .D(w_next_sampling_ticks[3]),
        .Q(r_sampling_ticks[3]));
  FDCE \r_sampling_ticks_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r_data_bits_received_reg[3]_0 ),
        .D(w_next_sampling_ticks[4]),
        .Q(r_sampling_ticks[4]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'hFF8A)) 
    \r_wr_logic[3]_i_1__0 
       (.I0(\FSM_sequential_r_state_reg[1]_0 ),
        .I1(w_en_rd),
        .I2(\r_wr_logic_reg[0] ),
        .I3(Q),
        .O(E));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_timer
   (slot_decode_error,
    slot_slave_error,
    slot_wr_done,
    slot_rd_done,
    \S_AXI_awaddr[4] ,
    \S_AXI_araddr[5] ,
    Q,
    \rd_data_reg[31]_0 ,
    w_decode_error__0,
    w_slave_error__0,
    rd_done_reg_0,
    w_rd_done__0,
    aclk,
    rd_done_reg_1,
    S_AXI_awaddr,
    S_AXI_awvalid,
    S_AXI_araddr,
    S_AXI_arvalid,
    w_en__0,
    r_eg_reg_0,
    S_AXI_wvalid,
    E,
    \r_control_reg[0]_0 ,
    S_AXI_wdata,
    \r_control_reg[0]_1 ,
    \r_control_reg[0]_2 ,
    \r_auto_reload_reg[31]_0 ,
    D,
    r_eg_reg_1);
  output [0:0]slot_decode_error;
  output [0:0]slot_slave_error;
  output [0:0]slot_wr_done;
  output [0:0]slot_rd_done;
  output \S_AXI_awaddr[4] ;
  output \S_AXI_araddr[5] ;
  output [1:0]Q;
  output [31:0]\rd_data_reg[31]_0 ;
  input w_decode_error__0;
  input w_slave_error__0;
  input rd_done_reg_0;
  input w_rd_done__0;
  input aclk;
  input rd_done_reg_1;
  input [3:0]S_AXI_awaddr;
  input S_AXI_awvalid;
  input [3:0]S_AXI_araddr;
  input S_AXI_arvalid;
  input w_en__0;
  input [2:0]r_eg_reg_0;
  input S_AXI_wvalid;
  input [0:0]E;
  input \r_control_reg[0]_0 ;
  input [1:0]S_AXI_wdata;
  input \r_control_reg[0]_1 ;
  input \r_control_reg[0]_2 ;
  input [0:0]\r_auto_reload_reg[31]_0 ;
  input [31:0]D;
  input r_eg_reg_1;

  wire [31:0]D;
  wire [0:0]E;
  wire \FSM_onehot_r_state_reg_n_0_[0] ;
  wire \FSM_onehot_w_next_state_reg[0]_i_1__0_n_0 ;
  wire \FSM_onehot_w_next_state_reg[1]_i_1_n_0 ;
  wire \FSM_onehot_w_next_state_reg[2]_i_1__0_n_0 ;
  wire \FSM_onehot_w_next_state_reg_n_0_[0] ;
  wire \FSM_onehot_w_next_state_reg_n_0_[1] ;
  wire \FSM_onehot_w_next_state_reg_n_0_[2] ;
  wire [1:0]Q;
  wire [3:0]S_AXI_araddr;
  wire \S_AXI_araddr[5] ;
  wire S_AXI_arvalid;
  wire [3:0]S_AXI_awaddr;
  wire \S_AXI_awaddr[4] ;
  wire S_AXI_awvalid;
  wire [1:0]S_AXI_wdata;
  wire S_AXI_wvalid;
  wire aclk;
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
  wire finished__0;
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
  wire \r_control[0]_i_1_n_0 ;
  wire \r_control[1]_i_1_n_0 ;
  wire \r_control_reg[0]_0 ;
  wire \r_control_reg[0]_1 ;
  wire \r_control_reg[0]_2 ;
  wire [31:0]r_counter;
  wire [31:1]r_counter0;
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
  wire r_counter16_out__0;
  wire \r_counter[10]_i_2_n_0 ;
  wire \r_counter[11]_i_2_n_0 ;
  wire \r_counter[12]_i_3_n_0 ;
  wire \r_counter[13]_i_2_n_0 ;
  wire \r_counter[14]_i_2_n_0 ;
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
  wire \r_counter[31]_i_1_n_0 ;
  wire \r_counter[31]_i_6_n_0 ;
  wire \r_counter[31]_i_7_n_0 ;
  wire \r_counter[31]_i_8_n_0 ;
  wire \r_counter[31]_i_9_n_0 ;
  wire \r_counter[3]_i_2_n_0 ;
  wire \r_counter[4]_i_3_n_0 ;
  wire \r_counter[5]_i_2_n_0 ;
  wire \r_counter[6]_i_2_n_0 ;
  wire \r_counter[7]_i_2_n_0 ;
  wire \r_counter[8]_i_3_n_0 ;
  wire \r_counter[9]_i_2_n_0 ;
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
  wire r_eg_i_1_n_0;
  wire r_eg_i_3_n_0;
  wire [2:0]r_eg_reg_0;
  wire r_eg_reg_1;
  wire [31:0]\rd_data_reg[31]_0 ;
  wire rd_done_reg_0;
  wire rd_done_reg_1;
  wire [0:0]slot_decode_error;
  wire [0:0]slot_idle;
  wire [0:0]slot_rd_done;
  wire [0:0]slot_slave_error;
  wire [0:0]slot_wr_done;
  wire w_decode_error;
  wire w_decode_error__0;
  wire w_decode_error_reg_i_1_n_0;
  wire w_en__0;
  wire w_next_state;
  wire [31:0]w_rd_data;
  wire \w_rd_data_reg[0]_i_1_n_0 ;
  wire \w_rd_data_reg[10]_i_1_n_0 ;
  wire \w_rd_data_reg[11]_i_1_n_0 ;
  wire \w_rd_data_reg[12]_i_1_n_0 ;
  wire \w_rd_data_reg[13]_i_1_n_0 ;
  wire \w_rd_data_reg[14]_i_1_n_0 ;
  wire \w_rd_data_reg[15]_i_1_n_0 ;
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
  wire \w_rd_data_reg[3]_i_1_n_0 ;
  wire \w_rd_data_reg[4]_i_1_n_0 ;
  wire \w_rd_data_reg[5]_i_1_n_0 ;
  wire \w_rd_data_reg[6]_i_1_n_0 ;
  wire \w_rd_data_reg[7]_i_1_n_0 ;
  wire \w_rd_data_reg[8]_i_1_n_0 ;
  wire \w_rd_data_reg[9]_i_1_n_0 ;
  wire w_rd_done;
  wire w_rd_done__0;
  wire w_slave_error;
  wire w_slave_error__0;
  wire w_slave_error_reg_i_1_n_0;
  wire [4:4]w_status;
  wire w_wr_done;
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
        .PRE(rd_done_reg_1),
        .Q(\FSM_onehot_r_state_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "ACTIVE:010,DONE:100,IDLE:001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_r_state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(rd_done_reg_1),
        .D(\FSM_onehot_w_next_state_reg_n_0_[1] ),
        .Q(Q[0]));
  (* FSM_ENCODED_STATES = "ACTIVE:010,DONE:100,IDLE:001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_r_state_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(rd_done_reg_1),
        .D(\FSM_onehot_w_next_state_reg_n_0_[2] ),
        .Q(Q[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b1)) 
    \FSM_onehot_w_next_state_reg[0] 
       (.CLR(1'b0),
        .D(\FSM_onehot_w_next_state_reg[0]_i_1__0_n_0 ),
        .G(w_next_state),
        .GE(1'b1),
        .Q(\FSM_onehot_w_next_state_reg_n_0_[0] ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_w_next_state_reg[0]_i_1__0 
       (.I0(\FSM_onehot_r_state_reg_n_0_[0] ),
        .I1(w_en__0),
        .O(\FSM_onehot_w_next_state_reg[0]_i_1__0_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_w_next_state_reg[1] 
       (.CLR(1'b0),
        .D(\FSM_onehot_w_next_state_reg[1]_i_1_n_0 ),
        .G(w_next_state),
        .GE(1'b1),
        .Q(\FSM_onehot_w_next_state_reg_n_0_[1] ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_w_next_state_reg[1]_i_1 
       (.I0(\FSM_onehot_r_state_reg_n_0_[0] ),
        .I1(w_en__0),
        .O(\FSM_onehot_w_next_state_reg[1]_i_1_n_0 ));
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
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_w_next_state_reg[2]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\FSM_onehot_w_next_state_reg[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_onehot_w_next_state_reg[2]_i_2 
       (.I0(\FSM_onehot_r_state_reg_n_0_[0] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(w_next_state));
  LUT6 #(
    .INIT(64'hFFFFFFF1FFFFFFFF)) 
    S_AXI_arready_INST_0_i_1
       (.I0(S_AXI_araddr[1]),
        .I1(slot_idle),
        .I2(S_AXI_araddr[0]),
        .I3(S_AXI_araddr[2]),
        .I4(S_AXI_araddr[3]),
        .I5(S_AXI_arvalid),
        .O(\S_AXI_araddr[5] ));
  LUT6 #(
    .INIT(64'hFEFFFEFFFEFFFFFF)) 
    S_AXI_awready_INST_0_i_1
       (.I0(S_AXI_awaddr[0]),
        .I1(S_AXI_awaddr[2]),
        .I2(S_AXI_awaddr[3]),
        .I3(S_AXI_awvalid),
        .I4(slot_idle),
        .I5(S_AXI_awaddr[1]),
        .O(\S_AXI_awaddr[4] ));
  FDPE decode_error_reg
       (.C(aclk),
        .CE(1'b1),
        .D(w_decode_error),
        .PRE(rd_done_reg_1),
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
  LUT4 #(
    .INIT(16'h2F02)) 
    finished0_carry__0_i_1
       (.I0(r_counter[14]),
        .I1(r_auto_reload[14]),
        .I2(r_auto_reload[15]),
        .I3(r_counter[15]),
        .O(finished0_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    finished0_carry__0_i_2
       (.I0(r_counter[12]),
        .I1(r_auto_reload[12]),
        .I2(r_auto_reload[13]),
        .I3(r_counter[13]),
        .O(finished0_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    finished0_carry__0_i_3
       (.I0(r_counter[10]),
        .I1(r_auto_reload[10]),
        .I2(r_auto_reload[11]),
        .I3(r_counter[11]),
        .O(finished0_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    finished0_carry__0_i_4
       (.I0(r_counter[8]),
        .I1(r_auto_reload[8]),
        .I2(r_auto_reload[9]),
        .I3(r_counter[9]),
        .O(finished0_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    finished0_carry__0_i_5
       (.I0(r_auto_reload[15]),
        .I1(r_counter[15]),
        .I2(r_auto_reload[14]),
        .I3(r_counter[14]),
        .O(finished0_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    finished0_carry__0_i_6
       (.I0(r_auto_reload[13]),
        .I1(r_counter[13]),
        .I2(r_auto_reload[12]),
        .I3(r_counter[12]),
        .O(finished0_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    finished0_carry__0_i_7
       (.I0(r_auto_reload[11]),
        .I1(r_counter[11]),
        .I2(r_auto_reload[10]),
        .I3(r_counter[10]),
        .O(finished0_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    finished0_carry__0_i_8
       (.I0(r_auto_reload[9]),
        .I1(r_counter[9]),
        .I2(r_auto_reload[8]),
        .I3(r_counter[8]),
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
    .INIT(16'h2F02)) 
    finished0_carry__1_i_1
       (.I0(r_counter[22]),
        .I1(r_auto_reload[22]),
        .I2(r_auto_reload[23]),
        .I3(r_counter[23]),
        .O(finished0_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    finished0_carry__1_i_2
       (.I0(r_counter[20]),
        .I1(r_auto_reload[20]),
        .I2(r_auto_reload[21]),
        .I3(r_counter[21]),
        .O(finished0_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    finished0_carry__1_i_3
       (.I0(r_counter[18]),
        .I1(r_auto_reload[18]),
        .I2(r_auto_reload[19]),
        .I3(r_counter[19]),
        .O(finished0_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    finished0_carry__1_i_4
       (.I0(r_counter[16]),
        .I1(r_auto_reload[16]),
        .I2(r_auto_reload[17]),
        .I3(r_counter[17]),
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
    .INIT(16'h2F02)) 
    finished0_carry__2_i_1
       (.I0(r_counter[30]),
        .I1(r_auto_reload[30]),
        .I2(r_auto_reload[31]),
        .I3(r_counter[31]),
        .O(finished0_carry__2_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    finished0_carry__2_i_2
       (.I0(r_counter[28]),
        .I1(r_auto_reload[28]),
        .I2(r_auto_reload[29]),
        .I3(r_counter[29]),
        .O(finished0_carry__2_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    finished0_carry__2_i_3
       (.I0(r_counter[26]),
        .I1(r_auto_reload[26]),
        .I2(r_auto_reload[27]),
        .I3(r_counter[27]),
        .O(finished0_carry__2_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    finished0_carry__2_i_4
       (.I0(r_counter[24]),
        .I1(r_auto_reload[24]),
        .I2(r_auto_reload[25]),
        .I3(r_counter[25]),
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
  LUT4 #(
    .INIT(16'h2F02)) 
    finished0_carry_i_1
       (.I0(r_counter[6]),
        .I1(r_auto_reload[6]),
        .I2(r_auto_reload[7]),
        .I3(r_counter[7]),
        .O(finished0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    finished0_carry_i_2
       (.I0(r_counter[4]),
        .I1(r_auto_reload[4]),
        .I2(r_auto_reload[5]),
        .I3(r_counter[5]),
        .O(finished0_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    finished0_carry_i_3
       (.I0(r_counter[2]),
        .I1(r_auto_reload[2]),
        .I2(r_auto_reload[3]),
        .I3(r_counter[3]),
        .O(finished0_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    finished0_carry_i_4
       (.I0(r_counter[0]),
        .I1(r_auto_reload[0]),
        .I2(r_auto_reload[1]),
        .I3(r_counter[1]),
        .O(finished0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    finished0_carry_i_5
       (.I0(r_auto_reload[7]),
        .I1(r_counter[7]),
        .I2(r_auto_reload[6]),
        .I3(r_counter[6]),
        .O(finished0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    finished0_carry_i_6
       (.I0(r_auto_reload[5]),
        .I1(r_counter[5]),
        .I2(r_auto_reload[4]),
        .I3(r_counter[4]),
        .O(finished0_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    finished0_carry_i_7
       (.I0(r_auto_reload[3]),
        .I1(r_counter[3]),
        .I2(r_auto_reload[2]),
        .I3(r_counter[2]),
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
       (.I0(r_counter[8]),
        .O(i__carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_2
       (.I0(r_counter[7]),
        .O(i__carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_3
       (.I0(r_counter[6]),
        .O(i__carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_4
       (.I0(r_counter[5]),
        .O(i__carry__0_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_1
       (.I0(r_counter[12]),
        .O(i__carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_2
       (.I0(r_counter[11]),
        .O(i__carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_3
       (.I0(r_counter[10]),
        .O(i__carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_4
       (.I0(r_counter[9]),
        .O(i__carry__1_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_1
       (.I0(r_counter[16]),
        .O(i__carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_2
       (.I0(r_counter[15]),
        .O(i__carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_3
       (.I0(r_counter[14]),
        .O(i__carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_4
       (.I0(r_counter[13]),
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
       (.I0(r_counter[4]),
        .O(i__carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_2
       (.I0(r_counter[3]),
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
        .CLR(rd_done_reg_1),
        .D(D[0]),
        .Q(r_auto_reload[0]));
  FDCE \r_auto_reload_reg[10] 
       (.C(aclk),
        .CE(\r_auto_reload_reg[31]_0 ),
        .CLR(rd_done_reg_1),
        .D(D[10]),
        .Q(r_auto_reload[10]));
  FDCE \r_auto_reload_reg[11] 
       (.C(aclk),
        .CE(\r_auto_reload_reg[31]_0 ),
        .CLR(rd_done_reg_1),
        .D(D[11]),
        .Q(r_auto_reload[11]));
  FDCE \r_auto_reload_reg[12] 
       (.C(aclk),
        .CE(\r_auto_reload_reg[31]_0 ),
        .CLR(rd_done_reg_1),
        .D(D[12]),
        .Q(r_auto_reload[12]));
  FDCE \r_auto_reload_reg[13] 
       (.C(aclk),
        .CE(\r_auto_reload_reg[31]_0 ),
        .CLR(rd_done_reg_1),
        .D(D[13]),
        .Q(r_auto_reload[13]));
  FDCE \r_auto_reload_reg[14] 
       (.C(aclk),
        .CE(\r_auto_reload_reg[31]_0 ),
        .CLR(rd_done_reg_1),
        .D(D[14]),
        .Q(r_auto_reload[14]));
  FDCE \r_auto_reload_reg[15] 
       (.C(aclk),
        .CE(\r_auto_reload_reg[31]_0 ),
        .CLR(rd_done_reg_1),
        .D(D[15]),
        .Q(r_auto_reload[15]));
  FDCE \r_auto_reload_reg[16] 
       (.C(aclk),
        .CE(\r_auto_reload_reg[31]_0 ),
        .CLR(rd_done_reg_1),
        .D(D[16]),
        .Q(r_auto_reload[16]));
  FDCE \r_auto_reload_reg[17] 
       (.C(aclk),
        .CE(\r_auto_reload_reg[31]_0 ),
        .CLR(rd_done_reg_1),
        .D(D[17]),
        .Q(r_auto_reload[17]));
  FDCE \r_auto_reload_reg[18] 
       (.C(aclk),
        .CE(\r_auto_reload_reg[31]_0 ),
        .CLR(rd_done_reg_1),
        .D(D[18]),
        .Q(r_auto_reload[18]));
  FDCE \r_auto_reload_reg[19] 
       (.C(aclk),
        .CE(\r_auto_reload_reg[31]_0 ),
        .CLR(rd_done_reg_1),
        .D(D[19]),
        .Q(r_auto_reload[19]));
  FDCE \r_auto_reload_reg[1] 
       (.C(aclk),
        .CE(\r_auto_reload_reg[31]_0 ),
        .CLR(rd_done_reg_1),
        .D(D[1]),
        .Q(r_auto_reload[1]));
  FDCE \r_auto_reload_reg[20] 
       (.C(aclk),
        .CE(\r_auto_reload_reg[31]_0 ),
        .CLR(rd_done_reg_1),
        .D(D[20]),
        .Q(r_auto_reload[20]));
  FDCE \r_auto_reload_reg[21] 
       (.C(aclk),
        .CE(\r_auto_reload_reg[31]_0 ),
        .CLR(rd_done_reg_1),
        .D(D[21]),
        .Q(r_auto_reload[21]));
  FDCE \r_auto_reload_reg[22] 
       (.C(aclk),
        .CE(\r_auto_reload_reg[31]_0 ),
        .CLR(rd_done_reg_1),
        .D(D[22]),
        .Q(r_auto_reload[22]));
  FDCE \r_auto_reload_reg[23] 
       (.C(aclk),
        .CE(\r_auto_reload_reg[31]_0 ),
        .CLR(rd_done_reg_1),
        .D(D[23]),
        .Q(r_auto_reload[23]));
  FDCE \r_auto_reload_reg[24] 
       (.C(aclk),
        .CE(\r_auto_reload_reg[31]_0 ),
        .CLR(rd_done_reg_1),
        .D(D[24]),
        .Q(r_auto_reload[24]));
  FDCE \r_auto_reload_reg[25] 
       (.C(aclk),
        .CE(\r_auto_reload_reg[31]_0 ),
        .CLR(rd_done_reg_1),
        .D(D[25]),
        .Q(r_auto_reload[25]));
  FDCE \r_auto_reload_reg[26] 
       (.C(aclk),
        .CE(\r_auto_reload_reg[31]_0 ),
        .CLR(rd_done_reg_1),
        .D(D[26]),
        .Q(r_auto_reload[26]));
  FDCE \r_auto_reload_reg[27] 
       (.C(aclk),
        .CE(\r_auto_reload_reg[31]_0 ),
        .CLR(rd_done_reg_1),
        .D(D[27]),
        .Q(r_auto_reload[27]));
  FDCE \r_auto_reload_reg[28] 
       (.C(aclk),
        .CE(\r_auto_reload_reg[31]_0 ),
        .CLR(rd_done_reg_1),
        .D(D[28]),
        .Q(r_auto_reload[28]));
  FDCE \r_auto_reload_reg[29] 
       (.C(aclk),
        .CE(\r_auto_reload_reg[31]_0 ),
        .CLR(rd_done_reg_1),
        .D(D[29]),
        .Q(r_auto_reload[29]));
  FDCE \r_auto_reload_reg[2] 
       (.C(aclk),
        .CE(\r_auto_reload_reg[31]_0 ),
        .CLR(rd_done_reg_1),
        .D(D[2]),
        .Q(r_auto_reload[2]));
  FDCE \r_auto_reload_reg[30] 
       (.C(aclk),
        .CE(\r_auto_reload_reg[31]_0 ),
        .CLR(rd_done_reg_1),
        .D(D[30]),
        .Q(r_auto_reload[30]));
  FDCE \r_auto_reload_reg[31] 
       (.C(aclk),
        .CE(\r_auto_reload_reg[31]_0 ),
        .CLR(rd_done_reg_1),
        .D(D[31]),
        .Q(r_auto_reload[31]));
  FDCE \r_auto_reload_reg[3] 
       (.C(aclk),
        .CE(\r_auto_reload_reg[31]_0 ),
        .CLR(rd_done_reg_1),
        .D(D[3]),
        .Q(r_auto_reload[3]));
  FDCE \r_auto_reload_reg[4] 
       (.C(aclk),
        .CE(\r_auto_reload_reg[31]_0 ),
        .CLR(rd_done_reg_1),
        .D(D[4]),
        .Q(r_auto_reload[4]));
  FDCE \r_auto_reload_reg[5] 
       (.C(aclk),
        .CE(\r_auto_reload_reg[31]_0 ),
        .CLR(rd_done_reg_1),
        .D(D[5]),
        .Q(r_auto_reload[5]));
  FDCE \r_auto_reload_reg[6] 
       (.C(aclk),
        .CE(\r_auto_reload_reg[31]_0 ),
        .CLR(rd_done_reg_1),
        .D(D[6]),
        .Q(r_auto_reload[6]));
  FDCE \r_auto_reload_reg[7] 
       (.C(aclk),
        .CE(\r_auto_reload_reg[31]_0 ),
        .CLR(rd_done_reg_1),
        .D(D[7]),
        .Q(r_auto_reload[7]));
  FDCE \r_auto_reload_reg[8] 
       (.C(aclk),
        .CE(\r_auto_reload_reg[31]_0 ),
        .CLR(rd_done_reg_1),
        .D(D[8]),
        .Q(r_auto_reload[8]));
  FDCE \r_auto_reload_reg[9] 
       (.C(aclk),
        .CE(\r_auto_reload_reg[31]_0 ),
        .CLR(rd_done_reg_1),
        .D(D[9]),
        .Q(r_auto_reload[9]));
  LUT6 #(
    .INIT(64'h04FFFFFF04000000)) 
    \r_control[0]_i_1 
       (.I0(\r_control_reg[0]_0 ),
        .I1(S_AXI_wdata[0]),
        .I2(\r_control_reg[0]_1 ),
        .I3(Q[0]),
        .I4(\r_control_reg[0]_2 ),
        .I5(p_0_in),
        .O(\r_control[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h04FFFFFF04000000)) 
    \r_control[1]_i_1 
       (.I0(\r_control_reg[0]_0 ),
        .I1(S_AXI_wdata[1]),
        .I2(\r_control_reg[0]_1 ),
        .I3(Q[0]),
        .I4(\r_control_reg[0]_2 ),
        .I5(p_0_in1_in),
        .O(\r_control[1]_i_1_n_0 ));
  FDCE \r_control_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(rd_done_reg_1),
        .D(\r_control[0]_i_1_n_0 ),
        .Q(p_0_in));
  FDCE \r_control_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(rd_done_reg_1),
        .D(\r_control[1]_i_1_n_0 ),
        .Q(p_0_in1_in));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \r_counter0_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\r_counter0_inferred__0/i__carry_n_0 ,\r_counter0_inferred__0/i__carry_n_1 ,\r_counter0_inferred__0/i__carry_n_2 ,\r_counter0_inferred__0/i__carry_n_3 }),
        .CYINIT(r_counter[0]),
        .DI(r_counter[4:1]),
        .O({\r_counter0_inferred__0/i__carry_n_4 ,\r_counter0_inferred__0/i__carry_n_5 ,\r_counter0_inferred__0/i__carry_n_6 ,\r_counter0_inferred__0/i__carry_n_7 }),
        .S({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \r_counter0_inferred__0/i__carry__0 
       (.CI(\r_counter0_inferred__0/i__carry_n_0 ),
        .CO({\r_counter0_inferred__0/i__carry__0_n_0 ,\r_counter0_inferred__0/i__carry__0_n_1 ,\r_counter0_inferred__0/i__carry__0_n_2 ,\r_counter0_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI(r_counter[8:5]),
        .O({\r_counter0_inferred__0/i__carry__0_n_4 ,\r_counter0_inferred__0/i__carry__0_n_5 ,\r_counter0_inferred__0/i__carry__0_n_6 ,\r_counter0_inferred__0/i__carry__0_n_7 }),
        .S({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \r_counter0_inferred__0/i__carry__1 
       (.CI(\r_counter0_inferred__0/i__carry__0_n_0 ),
        .CO({\r_counter0_inferred__0/i__carry__1_n_0 ,\r_counter0_inferred__0/i__carry__1_n_1 ,\r_counter0_inferred__0/i__carry__1_n_2 ,\r_counter0_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI(r_counter[12:9]),
        .O({\r_counter0_inferred__0/i__carry__1_n_4 ,\r_counter0_inferred__0/i__carry__1_n_5 ,\r_counter0_inferred__0/i__carry__1_n_6 ,\r_counter0_inferred__0/i__carry__1_n_7 }),
        .S({i__carry__1_i_1_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0,i__carry__1_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \r_counter0_inferred__0/i__carry__2 
       (.CI(\r_counter0_inferred__0/i__carry__1_n_0 ),
        .CO({\r_counter0_inferred__0/i__carry__2_n_0 ,\r_counter0_inferred__0/i__carry__2_n_1 ,\r_counter0_inferred__0/i__carry__2_n_2 ,\r_counter0_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI(r_counter[16:13]),
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
    .INIT(64'h88000800BB003B00)) 
    \r_counter[0]_i_1 
       (.I0(r_auto_reload[0]),
        .I1(finished__0),
        .I2(r_eg),
        .I3(p_0_in),
        .I4(p_0_in1_in),
        .I5(r_counter[0]),
        .O(p_1_in[0]));
  LUT6 #(
    .INIT(64'hAA80AAAAAA80AA80)) 
    \r_counter[10]_i_1 
       (.I0(p_0_in),
        .I1(r_counter0[10]),
        .I2(r_counter16_out__0),
        .I3(\r_counter[10]_i_2_n_0 ),
        .I4(\r_counter[31]_i_7_n_0 ),
        .I5(r_auto_reload[10]),
        .O(p_1_in[10]));
  LUT5 #(
    .INIT(32'h08880000)) 
    \r_counter[10]_i_2 
       (.I0(p_0_in),
        .I1(p_0_in1_in),
        .I2(\r_counter[31]_i_10_n_0 ),
        .I3(\r_counter[31]_i_11_n_0 ),
        .I4(\r_counter0_inferred__0/i__carry__1_n_6 ),
        .O(\r_counter[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAA80AAAAAA80AA80)) 
    \r_counter[11]_i_1 
       (.I0(p_0_in),
        .I1(r_counter0[11]),
        .I2(r_counter16_out__0),
        .I3(\r_counter[11]_i_2_n_0 ),
        .I4(\r_counter[31]_i_7_n_0 ),
        .I5(r_auto_reload[11]),
        .O(p_1_in[11]));
  LUT5 #(
    .INIT(32'h08880000)) 
    \r_counter[11]_i_2 
       (.I0(p_0_in),
        .I1(p_0_in1_in),
        .I2(\r_counter[31]_i_10_n_0 ),
        .I3(\r_counter[31]_i_11_n_0 ),
        .I4(\r_counter0_inferred__0/i__carry__1_n_5 ),
        .O(\r_counter[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAA80AAAAAA80AA80)) 
    \r_counter[12]_i_1 
       (.I0(p_0_in),
        .I1(r_counter0[12]),
        .I2(r_counter16_out__0),
        .I3(\r_counter[12]_i_3_n_0 ),
        .I4(\r_counter[31]_i_7_n_0 ),
        .I5(r_auto_reload[12]),
        .O(p_1_in[12]));
  LUT5 #(
    .INIT(32'h08880000)) 
    \r_counter[12]_i_3 
       (.I0(p_0_in),
        .I1(p_0_in1_in),
        .I2(\r_counter[31]_i_10_n_0 ),
        .I3(\r_counter[31]_i_11_n_0 ),
        .I4(\r_counter0_inferred__0/i__carry__1_n_4 ),
        .O(\r_counter[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAA80AAAAAA80AA80)) 
    \r_counter[13]_i_1 
       (.I0(p_0_in),
        .I1(r_counter0[13]),
        .I2(r_counter16_out__0),
        .I3(\r_counter[13]_i_2_n_0 ),
        .I4(\r_counter[31]_i_7_n_0 ),
        .I5(r_auto_reload[13]),
        .O(p_1_in[13]));
  LUT5 #(
    .INIT(32'h08880000)) 
    \r_counter[13]_i_2 
       (.I0(p_0_in),
        .I1(p_0_in1_in),
        .I2(\r_counter[31]_i_10_n_0 ),
        .I3(\r_counter[31]_i_11_n_0 ),
        .I4(\r_counter0_inferred__0/i__carry__2_n_7 ),
        .O(\r_counter[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAA80AAAAAA80AA80)) 
    \r_counter[14]_i_1 
       (.I0(p_0_in),
        .I1(r_counter0[14]),
        .I2(r_counter16_out__0),
        .I3(\r_counter[14]_i_2_n_0 ),
        .I4(\r_counter[31]_i_7_n_0 ),
        .I5(r_auto_reload[14]),
        .O(p_1_in[14]));
  LUT5 #(
    .INIT(32'h08880000)) 
    \r_counter[14]_i_2 
       (.I0(p_0_in),
        .I1(p_0_in1_in),
        .I2(\r_counter[31]_i_10_n_0 ),
        .I3(\r_counter[31]_i_11_n_0 ),
        .I4(\r_counter0_inferred__0/i__carry__2_n_6 ),
        .O(\r_counter[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAA80AAAAAA80AA80)) 
    \r_counter[15]_i_1 
       (.I0(p_0_in),
        .I1(r_counter0[15]),
        .I2(r_counter16_out__0),
        .I3(\r_counter[15]_i_2_n_0 ),
        .I4(\r_counter[31]_i_7_n_0 ),
        .I5(r_auto_reload[15]),
        .O(p_1_in[15]));
  LUT5 #(
    .INIT(32'h08880000)) 
    \r_counter[15]_i_2 
       (.I0(p_0_in),
        .I1(p_0_in1_in),
        .I2(\r_counter[31]_i_10_n_0 ),
        .I3(\r_counter[31]_i_11_n_0 ),
        .I4(\r_counter0_inferred__0/i__carry__2_n_5 ),
        .O(\r_counter[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAA80AAAAAA80AA80)) 
    \r_counter[16]_i_1 
       (.I0(p_0_in),
        .I1(r_counter0[16]),
        .I2(r_counter16_out__0),
        .I3(\r_counter[16]_i_3_n_0 ),
        .I4(\r_counter[31]_i_7_n_0 ),
        .I5(r_auto_reload[16]),
        .O(p_1_in[16]));
  LUT5 #(
    .INIT(32'h08880000)) 
    \r_counter[16]_i_3 
       (.I0(p_0_in),
        .I1(p_0_in1_in),
        .I2(\r_counter[31]_i_10_n_0 ),
        .I3(\r_counter[31]_i_11_n_0 ),
        .I4(\r_counter0_inferred__0/i__carry__2_n_4 ),
        .O(\r_counter[16]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAA80AAAAAA80AA80)) 
    \r_counter[17]_i_1 
       (.I0(p_0_in),
        .I1(r_counter0[17]),
        .I2(r_counter16_out__0),
        .I3(\r_counter[17]_i_2_n_0 ),
        .I4(\r_counter[31]_i_7_n_0 ),
        .I5(r_auto_reload[17]),
        .O(p_1_in[17]));
  LUT5 #(
    .INIT(32'h08880000)) 
    \r_counter[17]_i_2 
       (.I0(p_0_in),
        .I1(p_0_in1_in),
        .I2(\r_counter[31]_i_10_n_0 ),
        .I3(\r_counter[31]_i_11_n_0 ),
        .I4(\r_counter0_inferred__0/i__carry__3_n_7 ),
        .O(\r_counter[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAA80AAAAAA80AA80)) 
    \r_counter[18]_i_1 
       (.I0(p_0_in),
        .I1(r_counter0[18]),
        .I2(r_counter16_out__0),
        .I3(\r_counter[18]_i_2_n_0 ),
        .I4(\r_counter[31]_i_7_n_0 ),
        .I5(r_auto_reload[18]),
        .O(p_1_in[18]));
  LUT5 #(
    .INIT(32'h08880000)) 
    \r_counter[18]_i_2 
       (.I0(p_0_in),
        .I1(p_0_in1_in),
        .I2(\r_counter[31]_i_10_n_0 ),
        .I3(\r_counter[31]_i_11_n_0 ),
        .I4(\r_counter0_inferred__0/i__carry__3_n_6 ),
        .O(\r_counter[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAA80AAAAAA80AA80)) 
    \r_counter[19]_i_1 
       (.I0(p_0_in),
        .I1(r_counter0[19]),
        .I2(r_counter16_out__0),
        .I3(\r_counter[19]_i_2_n_0 ),
        .I4(\r_counter[31]_i_7_n_0 ),
        .I5(r_auto_reload[19]),
        .O(p_1_in[19]));
  LUT5 #(
    .INIT(32'h08880000)) 
    \r_counter[19]_i_2 
       (.I0(p_0_in),
        .I1(p_0_in1_in),
        .I2(\r_counter[31]_i_10_n_0 ),
        .I3(\r_counter[31]_i_11_n_0 ),
        .I4(\r_counter0_inferred__0/i__carry__3_n_5 ),
        .O(\r_counter[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAA80AAAAAA80AA80)) 
    \r_counter[1]_i_1 
       (.I0(p_0_in),
        .I1(r_counter0[1]),
        .I2(r_counter16_out__0),
        .I3(\r_counter[1]_i_2_n_0 ),
        .I4(\r_counter[31]_i_7_n_0 ),
        .I5(r_auto_reload[1]),
        .O(p_1_in[1]));
  LUT5 #(
    .INIT(32'h08880000)) 
    \r_counter[1]_i_2 
       (.I0(p_0_in),
        .I1(p_0_in1_in),
        .I2(\r_counter[31]_i_10_n_0 ),
        .I3(\r_counter[31]_i_11_n_0 ),
        .I4(\r_counter0_inferred__0/i__carry_n_7 ),
        .O(\r_counter[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAA80AAAAAA80AA80)) 
    \r_counter[20]_i_1 
       (.I0(p_0_in),
        .I1(r_counter0[20]),
        .I2(r_counter16_out__0),
        .I3(\r_counter[20]_i_3_n_0 ),
        .I4(\r_counter[31]_i_7_n_0 ),
        .I5(r_auto_reload[20]),
        .O(p_1_in[20]));
  LUT5 #(
    .INIT(32'h08880000)) 
    \r_counter[20]_i_3 
       (.I0(p_0_in),
        .I1(p_0_in1_in),
        .I2(\r_counter[31]_i_10_n_0 ),
        .I3(\r_counter[31]_i_11_n_0 ),
        .I4(\r_counter0_inferred__0/i__carry__3_n_4 ),
        .O(\r_counter[20]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAA80AAAAAA80AA80)) 
    \r_counter[21]_i_1 
       (.I0(p_0_in),
        .I1(r_counter0[21]),
        .I2(r_counter16_out__0),
        .I3(\r_counter[21]_i_2_n_0 ),
        .I4(\r_counter[31]_i_7_n_0 ),
        .I5(r_auto_reload[21]),
        .O(p_1_in[21]));
  LUT5 #(
    .INIT(32'h08880000)) 
    \r_counter[21]_i_2 
       (.I0(p_0_in),
        .I1(p_0_in1_in),
        .I2(\r_counter[31]_i_10_n_0 ),
        .I3(\r_counter[31]_i_11_n_0 ),
        .I4(\r_counter0_inferred__0/i__carry__4_n_7 ),
        .O(\r_counter[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAA80AAAAAA80AA80)) 
    \r_counter[22]_i_1 
       (.I0(p_0_in),
        .I1(r_counter0[22]),
        .I2(r_counter16_out__0),
        .I3(\r_counter[22]_i_2_n_0 ),
        .I4(\r_counter[31]_i_7_n_0 ),
        .I5(r_auto_reload[22]),
        .O(p_1_in[22]));
  LUT5 #(
    .INIT(32'h08880000)) 
    \r_counter[22]_i_2 
       (.I0(p_0_in),
        .I1(p_0_in1_in),
        .I2(\r_counter[31]_i_10_n_0 ),
        .I3(\r_counter[31]_i_11_n_0 ),
        .I4(\r_counter0_inferred__0/i__carry__4_n_6 ),
        .O(\r_counter[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAA80AAAAAA80AA80)) 
    \r_counter[23]_i_1 
       (.I0(p_0_in),
        .I1(r_counter0[23]),
        .I2(r_counter16_out__0),
        .I3(\r_counter[23]_i_2_n_0 ),
        .I4(\r_counter[31]_i_7_n_0 ),
        .I5(r_auto_reload[23]),
        .O(p_1_in[23]));
  LUT5 #(
    .INIT(32'h08880000)) 
    \r_counter[23]_i_2 
       (.I0(p_0_in),
        .I1(p_0_in1_in),
        .I2(\r_counter[31]_i_10_n_0 ),
        .I3(\r_counter[31]_i_11_n_0 ),
        .I4(\r_counter0_inferred__0/i__carry__4_n_5 ),
        .O(\r_counter[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAA80AAAAAA80AA80)) 
    \r_counter[24]_i_1 
       (.I0(p_0_in),
        .I1(r_counter0[24]),
        .I2(r_counter16_out__0),
        .I3(\r_counter[24]_i_3_n_0 ),
        .I4(\r_counter[31]_i_7_n_0 ),
        .I5(r_auto_reload[24]),
        .O(p_1_in[24]));
  LUT5 #(
    .INIT(32'h08880000)) 
    \r_counter[24]_i_3 
       (.I0(p_0_in),
        .I1(p_0_in1_in),
        .I2(\r_counter[31]_i_10_n_0 ),
        .I3(\r_counter[31]_i_11_n_0 ),
        .I4(\r_counter0_inferred__0/i__carry__4_n_4 ),
        .O(\r_counter[24]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAA80AAAAAA80AA80)) 
    \r_counter[25]_i_1 
       (.I0(p_0_in),
        .I1(r_counter0[25]),
        .I2(r_counter16_out__0),
        .I3(\r_counter[25]_i_2_n_0 ),
        .I4(\r_counter[31]_i_7_n_0 ),
        .I5(r_auto_reload[25]),
        .O(p_1_in[25]));
  LUT5 #(
    .INIT(32'h08880000)) 
    \r_counter[25]_i_2 
       (.I0(p_0_in),
        .I1(p_0_in1_in),
        .I2(\r_counter[31]_i_10_n_0 ),
        .I3(\r_counter[31]_i_11_n_0 ),
        .I4(\r_counter0_inferred__0/i__carry__5_n_7 ),
        .O(\r_counter[25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAA80AAAAAA80AA80)) 
    \r_counter[26]_i_1 
       (.I0(p_0_in),
        .I1(r_counter0[26]),
        .I2(r_counter16_out__0),
        .I3(\r_counter[26]_i_2_n_0 ),
        .I4(\r_counter[31]_i_7_n_0 ),
        .I5(r_auto_reload[26]),
        .O(p_1_in[26]));
  LUT5 #(
    .INIT(32'h08880000)) 
    \r_counter[26]_i_2 
       (.I0(p_0_in),
        .I1(p_0_in1_in),
        .I2(\r_counter[31]_i_10_n_0 ),
        .I3(\r_counter[31]_i_11_n_0 ),
        .I4(\r_counter0_inferred__0/i__carry__5_n_6 ),
        .O(\r_counter[26]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAA80AAAAAA80AA80)) 
    \r_counter[27]_i_1 
       (.I0(p_0_in),
        .I1(r_counter0[27]),
        .I2(r_counter16_out__0),
        .I3(\r_counter[27]_i_2_n_0 ),
        .I4(\r_counter[31]_i_7_n_0 ),
        .I5(r_auto_reload[27]),
        .O(p_1_in[27]));
  LUT5 #(
    .INIT(32'h08880000)) 
    \r_counter[27]_i_2 
       (.I0(p_0_in),
        .I1(p_0_in1_in),
        .I2(\r_counter[31]_i_10_n_0 ),
        .I3(\r_counter[31]_i_11_n_0 ),
        .I4(\r_counter0_inferred__0/i__carry__5_n_5 ),
        .O(\r_counter[27]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAA80AAAAAA80AA80)) 
    \r_counter[28]_i_1 
       (.I0(p_0_in),
        .I1(r_counter0[28]),
        .I2(r_counter16_out__0),
        .I3(\r_counter[28]_i_3_n_0 ),
        .I4(\r_counter[31]_i_7_n_0 ),
        .I5(r_auto_reload[28]),
        .O(p_1_in[28]));
  LUT5 #(
    .INIT(32'h08880000)) 
    \r_counter[28]_i_3 
       (.I0(p_0_in),
        .I1(p_0_in1_in),
        .I2(\r_counter[31]_i_10_n_0 ),
        .I3(\r_counter[31]_i_11_n_0 ),
        .I4(\r_counter0_inferred__0/i__carry__5_n_4 ),
        .O(\r_counter[28]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAA80AAAAAA80AA80)) 
    \r_counter[29]_i_1 
       (.I0(p_0_in),
        .I1(r_counter0[29]),
        .I2(r_counter16_out__0),
        .I3(\r_counter[29]_i_2_n_0 ),
        .I4(\r_counter[31]_i_7_n_0 ),
        .I5(r_auto_reload[29]),
        .O(p_1_in[29]));
  LUT5 #(
    .INIT(32'h08880000)) 
    \r_counter[29]_i_2 
       (.I0(p_0_in),
        .I1(p_0_in1_in),
        .I2(\r_counter[31]_i_10_n_0 ),
        .I3(\r_counter[31]_i_11_n_0 ),
        .I4(\r_counter0_inferred__0/i__carry__6_n_7 ),
        .O(\r_counter[29]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAA80AAAAAA80AA80)) 
    \r_counter[2]_i_1 
       (.I0(p_0_in),
        .I1(r_counter0[2]),
        .I2(r_counter16_out__0),
        .I3(\r_counter[2]_i_2_n_0 ),
        .I4(\r_counter[31]_i_7_n_0 ),
        .I5(r_auto_reload[2]),
        .O(p_1_in[2]));
  LUT5 #(
    .INIT(32'h08880000)) 
    \r_counter[2]_i_2 
       (.I0(p_0_in),
        .I1(p_0_in1_in),
        .I2(\r_counter[31]_i_10_n_0 ),
        .I3(\r_counter[31]_i_11_n_0 ),
        .I4(\r_counter0_inferred__0/i__carry_n_6 ),
        .O(\r_counter[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAA80AAAAAA80AA80)) 
    \r_counter[30]_i_1 
       (.I0(p_0_in),
        .I1(r_counter0[30]),
        .I2(r_counter16_out__0),
        .I3(\r_counter[30]_i_2_n_0 ),
        .I4(\r_counter[31]_i_7_n_0 ),
        .I5(r_auto_reload[30]),
        .O(p_1_in[30]));
  LUT5 #(
    .INIT(32'h08880000)) 
    \r_counter[30]_i_2 
       (.I0(p_0_in),
        .I1(p_0_in1_in),
        .I2(\r_counter[31]_i_10_n_0 ),
        .I3(\r_counter[31]_i_11_n_0 ),
        .I4(\r_counter0_inferred__0/i__carry__6_n_6 ),
        .O(\r_counter[30]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hDF)) 
    \r_counter[31]_i_1 
       (.I0(p_0_in),
        .I1(r_eg),
        .I2(finished__0),
        .O(\r_counter[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    \r_counter[31]_i_10 
       (.I0(r_counter[1]),
        .I1(r_counter[0]),
        .I2(p_0_in1_in),
        .I3(\r_counter[31]_i_14_n_0 ),
        .I4(\r_counter[31]_i_15_n_0 ),
        .I5(\r_counter[31]_i_16_n_0 ),
        .O(\r_counter[31]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \r_counter[31]_i_11 
       (.I0(\r_counter[31]_i_12_n_0 ),
        .I1(\r_counter[31]_i_17_n_0 ),
        .I2(\r_counter[31]_i_13_n_0 ),
        .I3(\r_counter[31]_i_18_n_0 ),
        .O(\r_counter[31]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \r_counter[31]_i_12 
       (.I0(r_counter[23]),
        .I1(r_counter[22]),
        .I2(r_counter[21]),
        .I3(r_counter[20]),
        .O(\r_counter[31]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \r_counter[31]_i_13 
       (.I0(r_counter[27]),
        .I1(r_counter[26]),
        .I2(r_counter[25]),
        .I3(r_counter[24]),
        .O(\r_counter[31]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \r_counter[31]_i_14 
       (.I0(r_counter[5]),
        .I1(r_counter[4]),
        .I2(r_counter[3]),
        .I3(r_counter[2]),
        .O(\r_counter[31]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \r_counter[31]_i_15 
       (.I0(r_counter[9]),
        .I1(r_counter[8]),
        .I2(r_counter[7]),
        .I3(r_counter[6]),
        .O(\r_counter[31]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \r_counter[31]_i_16 
       (.I0(r_counter[10]),
        .I1(r_counter[11]),
        .I2(r_counter[12]),
        .I3(r_counter[13]),
        .I4(r_counter[15]),
        .I5(r_counter[14]),
        .O(\r_counter[31]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \r_counter[31]_i_17 
       (.I0(r_counter[17]),
        .I1(r_counter[16]),
        .I2(r_counter[19]),
        .I3(r_counter[18]),
        .O(\r_counter[31]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \r_counter[31]_i_18 
       (.I0(r_counter[31]),
        .I1(r_counter[30]),
        .I2(r_counter[29]),
        .I3(r_counter[28]),
        .O(\r_counter[31]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAA80AAAAAA80AA80)) 
    \r_counter[31]_i_2 
       (.I0(p_0_in),
        .I1(r_counter0[31]),
        .I2(r_counter16_out__0),
        .I3(\r_counter[31]_i_6_n_0 ),
        .I4(\r_counter[31]_i_7_n_0 ),
        .I5(r_auto_reload[31]),
        .O(p_1_in[31]));
  LUT5 #(
    .INIT(32'h80FF8080)) 
    \r_counter[31]_i_3 
       (.I0(\r_counter[31]_i_8_n_0 ),
        .I1(\r_counter[31]_i_9_n_0 ),
        .I2(\r_counter[31]_i_10_n_0 ),
        .I3(p_0_in1_in),
        .I4(finished0_carry__2_n_0),
        .O(finished__0));
  LUT6 #(
    .INIT(64'h0002020202020202)) 
    \r_counter[31]_i_5 
       (.I0(p_0_in),
        .I1(finished0_carry__2_n_0),
        .I2(p_0_in1_in),
        .I3(\r_counter[31]_i_10_n_0 ),
        .I4(\r_counter[31]_i_9_n_0 ),
        .I5(\r_counter[31]_i_8_n_0 ),
        .O(r_counter16_out__0));
  LUT5 #(
    .INIT(32'h08880000)) 
    \r_counter[31]_i_6 
       (.I0(p_0_in),
        .I1(p_0_in1_in),
        .I2(\r_counter[31]_i_10_n_0 ),
        .I3(\r_counter[31]_i_11_n_0 ),
        .I4(\r_counter0_inferred__0/i__carry__6_n_5 ),
        .O(\r_counter[31]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h4040C8CCC8CCC8CC)) 
    \r_counter[31]_i_7 
       (.I0(p_0_in1_in),
        .I1(p_0_in),
        .I2(r_eg),
        .I3(finished0_carry__2_n_0),
        .I4(\r_counter[31]_i_10_n_0 ),
        .I5(\r_counter[31]_i_11_n_0 ),
        .O(\r_counter[31]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    \r_counter[31]_i_8 
       (.I0(r_counter[18]),
        .I1(r_counter[19]),
        .I2(r_counter[16]),
        .I3(r_counter[17]),
        .I4(\r_counter[31]_i_12_n_0 ),
        .O(\r_counter[31]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    \r_counter[31]_i_9 
       (.I0(r_counter[28]),
        .I1(r_counter[29]),
        .I2(r_counter[30]),
        .I3(r_counter[31]),
        .I4(\r_counter[31]_i_13_n_0 ),
        .O(\r_counter[31]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAA80AAAAAA80AA80)) 
    \r_counter[3]_i_1 
       (.I0(p_0_in),
        .I1(r_counter0[3]),
        .I2(r_counter16_out__0),
        .I3(\r_counter[3]_i_2_n_0 ),
        .I4(\r_counter[31]_i_7_n_0 ),
        .I5(r_auto_reload[3]),
        .O(p_1_in[3]));
  LUT5 #(
    .INIT(32'h08880000)) 
    \r_counter[3]_i_2 
       (.I0(p_0_in),
        .I1(p_0_in1_in),
        .I2(\r_counter[31]_i_10_n_0 ),
        .I3(\r_counter[31]_i_11_n_0 ),
        .I4(\r_counter0_inferred__0/i__carry_n_5 ),
        .O(\r_counter[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAA80AAAAAA80AA80)) 
    \r_counter[4]_i_1 
       (.I0(p_0_in),
        .I1(r_counter0[4]),
        .I2(r_counter16_out__0),
        .I3(\r_counter[4]_i_3_n_0 ),
        .I4(\r_counter[31]_i_7_n_0 ),
        .I5(r_auto_reload[4]),
        .O(p_1_in[4]));
  LUT5 #(
    .INIT(32'h08880000)) 
    \r_counter[4]_i_3 
       (.I0(p_0_in),
        .I1(p_0_in1_in),
        .I2(\r_counter[31]_i_10_n_0 ),
        .I3(\r_counter[31]_i_11_n_0 ),
        .I4(\r_counter0_inferred__0/i__carry_n_4 ),
        .O(\r_counter[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAA80AAAAAA80AA80)) 
    \r_counter[5]_i_1 
       (.I0(p_0_in),
        .I1(r_counter0[5]),
        .I2(r_counter16_out__0),
        .I3(\r_counter[5]_i_2_n_0 ),
        .I4(\r_counter[31]_i_7_n_0 ),
        .I5(r_auto_reload[5]),
        .O(p_1_in[5]));
  LUT5 #(
    .INIT(32'h08880000)) 
    \r_counter[5]_i_2 
       (.I0(p_0_in),
        .I1(p_0_in1_in),
        .I2(\r_counter[31]_i_10_n_0 ),
        .I3(\r_counter[31]_i_11_n_0 ),
        .I4(\r_counter0_inferred__0/i__carry__0_n_7 ),
        .O(\r_counter[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAA80AAAAAA80AA80)) 
    \r_counter[6]_i_1 
       (.I0(p_0_in),
        .I1(r_counter0[6]),
        .I2(r_counter16_out__0),
        .I3(\r_counter[6]_i_2_n_0 ),
        .I4(\r_counter[31]_i_7_n_0 ),
        .I5(r_auto_reload[6]),
        .O(p_1_in[6]));
  LUT5 #(
    .INIT(32'h08880000)) 
    \r_counter[6]_i_2 
       (.I0(p_0_in),
        .I1(p_0_in1_in),
        .I2(\r_counter[31]_i_10_n_0 ),
        .I3(\r_counter[31]_i_11_n_0 ),
        .I4(\r_counter0_inferred__0/i__carry__0_n_6 ),
        .O(\r_counter[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAA80AAAAAA80AA80)) 
    \r_counter[7]_i_1 
       (.I0(p_0_in),
        .I1(r_counter0[7]),
        .I2(r_counter16_out__0),
        .I3(\r_counter[7]_i_2_n_0 ),
        .I4(\r_counter[31]_i_7_n_0 ),
        .I5(r_auto_reload[7]),
        .O(p_1_in[7]));
  LUT5 #(
    .INIT(32'h08880000)) 
    \r_counter[7]_i_2 
       (.I0(p_0_in),
        .I1(p_0_in1_in),
        .I2(\r_counter[31]_i_10_n_0 ),
        .I3(\r_counter[31]_i_11_n_0 ),
        .I4(\r_counter0_inferred__0/i__carry__0_n_5 ),
        .O(\r_counter[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAA80AAAAAA80AA80)) 
    \r_counter[8]_i_1 
       (.I0(p_0_in),
        .I1(r_counter0[8]),
        .I2(r_counter16_out__0),
        .I3(\r_counter[8]_i_3_n_0 ),
        .I4(\r_counter[31]_i_7_n_0 ),
        .I5(r_auto_reload[8]),
        .O(p_1_in[8]));
  LUT5 #(
    .INIT(32'h08880000)) 
    \r_counter[8]_i_3 
       (.I0(p_0_in),
        .I1(p_0_in1_in),
        .I2(\r_counter[31]_i_10_n_0 ),
        .I3(\r_counter[31]_i_11_n_0 ),
        .I4(\r_counter0_inferred__0/i__carry__0_n_4 ),
        .O(\r_counter[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAA80AAAAAA80AA80)) 
    \r_counter[9]_i_1 
       (.I0(p_0_in),
        .I1(r_counter0[9]),
        .I2(r_counter16_out__0),
        .I3(\r_counter[9]_i_2_n_0 ),
        .I4(\r_counter[31]_i_7_n_0 ),
        .I5(r_auto_reload[9]),
        .O(p_1_in[9]));
  LUT5 #(
    .INIT(32'h08880000)) 
    \r_counter[9]_i_2 
       (.I0(p_0_in),
        .I1(p_0_in1_in),
        .I2(\r_counter[31]_i_10_n_0 ),
        .I3(\r_counter[31]_i_11_n_0 ),
        .I4(\r_counter0_inferred__0/i__carry__1_n_7 ),
        .O(\r_counter[9]_i_2_n_0 ));
  FDCE \r_counter_reg[0] 
       (.C(aclk),
        .CE(\r_counter[31]_i_1_n_0 ),
        .CLR(rd_done_reg_1),
        .D(p_1_in[0]),
        .Q(r_counter[0]));
  FDCE \r_counter_reg[10] 
       (.C(aclk),
        .CE(\r_counter[31]_i_1_n_0 ),
        .CLR(rd_done_reg_1),
        .D(p_1_in[10]),
        .Q(r_counter[10]));
  FDCE \r_counter_reg[11] 
       (.C(aclk),
        .CE(\r_counter[31]_i_1_n_0 ),
        .CLR(rd_done_reg_1),
        .D(p_1_in[11]),
        .Q(r_counter[11]));
  FDCE \r_counter_reg[12] 
       (.C(aclk),
        .CE(\r_counter[31]_i_1_n_0 ),
        .CLR(rd_done_reg_1),
        .D(p_1_in[12]),
        .Q(r_counter[12]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \r_counter_reg[12]_i_2 
       (.CI(\r_counter_reg[8]_i_2_n_0 ),
        .CO({\r_counter_reg[12]_i_2_n_0 ,\r_counter_reg[12]_i_2_n_1 ,\r_counter_reg[12]_i_2_n_2 ,\r_counter_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(r_counter0[12:9]),
        .S(r_counter[12:9]));
  FDCE \r_counter_reg[13] 
       (.C(aclk),
        .CE(\r_counter[31]_i_1_n_0 ),
        .CLR(rd_done_reg_1),
        .D(p_1_in[13]),
        .Q(r_counter[13]));
  FDCE \r_counter_reg[14] 
       (.C(aclk),
        .CE(\r_counter[31]_i_1_n_0 ),
        .CLR(rd_done_reg_1),
        .D(p_1_in[14]),
        .Q(r_counter[14]));
  FDCE \r_counter_reg[15] 
       (.C(aclk),
        .CE(\r_counter[31]_i_1_n_0 ),
        .CLR(rd_done_reg_1),
        .D(p_1_in[15]),
        .Q(r_counter[15]));
  FDCE \r_counter_reg[16] 
       (.C(aclk),
        .CE(\r_counter[31]_i_1_n_0 ),
        .CLR(rd_done_reg_1),
        .D(p_1_in[16]),
        .Q(r_counter[16]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \r_counter_reg[16]_i_2 
       (.CI(\r_counter_reg[12]_i_2_n_0 ),
        .CO({\r_counter_reg[16]_i_2_n_0 ,\r_counter_reg[16]_i_2_n_1 ,\r_counter_reg[16]_i_2_n_2 ,\r_counter_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(r_counter0[16:13]),
        .S(r_counter[16:13]));
  FDCE \r_counter_reg[17] 
       (.C(aclk),
        .CE(\r_counter[31]_i_1_n_0 ),
        .CLR(rd_done_reg_1),
        .D(p_1_in[17]),
        .Q(r_counter[17]));
  FDCE \r_counter_reg[18] 
       (.C(aclk),
        .CE(\r_counter[31]_i_1_n_0 ),
        .CLR(rd_done_reg_1),
        .D(p_1_in[18]),
        .Q(r_counter[18]));
  FDCE \r_counter_reg[19] 
       (.C(aclk),
        .CE(\r_counter[31]_i_1_n_0 ),
        .CLR(rd_done_reg_1),
        .D(p_1_in[19]),
        .Q(r_counter[19]));
  FDCE \r_counter_reg[1] 
       (.C(aclk),
        .CE(\r_counter[31]_i_1_n_0 ),
        .CLR(rd_done_reg_1),
        .D(p_1_in[1]),
        .Q(r_counter[1]));
  FDCE \r_counter_reg[20] 
       (.C(aclk),
        .CE(\r_counter[31]_i_1_n_0 ),
        .CLR(rd_done_reg_1),
        .D(p_1_in[20]),
        .Q(r_counter[20]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \r_counter_reg[20]_i_2 
       (.CI(\r_counter_reg[16]_i_2_n_0 ),
        .CO({\r_counter_reg[20]_i_2_n_0 ,\r_counter_reg[20]_i_2_n_1 ,\r_counter_reg[20]_i_2_n_2 ,\r_counter_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(r_counter0[20:17]),
        .S(r_counter[20:17]));
  FDCE \r_counter_reg[21] 
       (.C(aclk),
        .CE(\r_counter[31]_i_1_n_0 ),
        .CLR(rd_done_reg_1),
        .D(p_1_in[21]),
        .Q(r_counter[21]));
  FDCE \r_counter_reg[22] 
       (.C(aclk),
        .CE(\r_counter[31]_i_1_n_0 ),
        .CLR(rd_done_reg_1),
        .D(p_1_in[22]),
        .Q(r_counter[22]));
  FDCE \r_counter_reg[23] 
       (.C(aclk),
        .CE(\r_counter[31]_i_1_n_0 ),
        .CLR(rd_done_reg_1),
        .D(p_1_in[23]),
        .Q(r_counter[23]));
  FDCE \r_counter_reg[24] 
       (.C(aclk),
        .CE(\r_counter[31]_i_1_n_0 ),
        .CLR(rd_done_reg_1),
        .D(p_1_in[24]),
        .Q(r_counter[24]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \r_counter_reg[24]_i_2 
       (.CI(\r_counter_reg[20]_i_2_n_0 ),
        .CO({\r_counter_reg[24]_i_2_n_0 ,\r_counter_reg[24]_i_2_n_1 ,\r_counter_reg[24]_i_2_n_2 ,\r_counter_reg[24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(r_counter0[24:21]),
        .S(r_counter[24:21]));
  FDCE \r_counter_reg[25] 
       (.C(aclk),
        .CE(\r_counter[31]_i_1_n_0 ),
        .CLR(rd_done_reg_1),
        .D(p_1_in[25]),
        .Q(r_counter[25]));
  FDCE \r_counter_reg[26] 
       (.C(aclk),
        .CE(\r_counter[31]_i_1_n_0 ),
        .CLR(rd_done_reg_1),
        .D(p_1_in[26]),
        .Q(r_counter[26]));
  FDCE \r_counter_reg[27] 
       (.C(aclk),
        .CE(\r_counter[31]_i_1_n_0 ),
        .CLR(rd_done_reg_1),
        .D(p_1_in[27]),
        .Q(r_counter[27]));
  FDCE \r_counter_reg[28] 
       (.C(aclk),
        .CE(\r_counter[31]_i_1_n_0 ),
        .CLR(rd_done_reg_1),
        .D(p_1_in[28]),
        .Q(r_counter[28]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \r_counter_reg[28]_i_2 
       (.CI(\r_counter_reg[24]_i_2_n_0 ),
        .CO({\r_counter_reg[28]_i_2_n_0 ,\r_counter_reg[28]_i_2_n_1 ,\r_counter_reg[28]_i_2_n_2 ,\r_counter_reg[28]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(r_counter0[28:25]),
        .S(r_counter[28:25]));
  FDCE \r_counter_reg[29] 
       (.C(aclk),
        .CE(\r_counter[31]_i_1_n_0 ),
        .CLR(rd_done_reg_1),
        .D(p_1_in[29]),
        .Q(r_counter[29]));
  FDCE \r_counter_reg[2] 
       (.C(aclk),
        .CE(\r_counter[31]_i_1_n_0 ),
        .CLR(rd_done_reg_1),
        .D(p_1_in[2]),
        .Q(r_counter[2]));
  FDCE \r_counter_reg[30] 
       (.C(aclk),
        .CE(\r_counter[31]_i_1_n_0 ),
        .CLR(rd_done_reg_1),
        .D(p_1_in[30]),
        .Q(r_counter[30]));
  FDCE \r_counter_reg[31] 
       (.C(aclk),
        .CE(\r_counter[31]_i_1_n_0 ),
        .CLR(rd_done_reg_1),
        .D(p_1_in[31]),
        .Q(r_counter[31]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \r_counter_reg[31]_i_4 
       (.CI(\r_counter_reg[28]_i_2_n_0 ),
        .CO({\NLW_r_counter_reg[31]_i_4_CO_UNCONNECTED [3:2],\r_counter_reg[31]_i_4_n_2 ,\r_counter_reg[31]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_r_counter_reg[31]_i_4_O_UNCONNECTED [3],r_counter0[31:29]}),
        .S({1'b0,r_counter[31:29]}));
  FDCE \r_counter_reg[3] 
       (.C(aclk),
        .CE(\r_counter[31]_i_1_n_0 ),
        .CLR(rd_done_reg_1),
        .D(p_1_in[3]),
        .Q(r_counter[3]));
  FDCE \r_counter_reg[4] 
       (.C(aclk),
        .CE(\r_counter[31]_i_1_n_0 ),
        .CLR(rd_done_reg_1),
        .D(p_1_in[4]),
        .Q(r_counter[4]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \r_counter_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\r_counter_reg[4]_i_2_n_0 ,\r_counter_reg[4]_i_2_n_1 ,\r_counter_reg[4]_i_2_n_2 ,\r_counter_reg[4]_i_2_n_3 }),
        .CYINIT(r_counter[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(r_counter0[4:1]),
        .S(r_counter[4:1]));
  FDCE \r_counter_reg[5] 
       (.C(aclk),
        .CE(\r_counter[31]_i_1_n_0 ),
        .CLR(rd_done_reg_1),
        .D(p_1_in[5]),
        .Q(r_counter[5]));
  FDCE \r_counter_reg[6] 
       (.C(aclk),
        .CE(\r_counter[31]_i_1_n_0 ),
        .CLR(rd_done_reg_1),
        .D(p_1_in[6]),
        .Q(r_counter[6]));
  FDCE \r_counter_reg[7] 
       (.C(aclk),
        .CE(\r_counter[31]_i_1_n_0 ),
        .CLR(rd_done_reg_1),
        .D(p_1_in[7]),
        .Q(r_counter[7]));
  FDCE \r_counter_reg[8] 
       (.C(aclk),
        .CE(\r_counter[31]_i_1_n_0 ),
        .CLR(rd_done_reg_1),
        .D(p_1_in[8]),
        .Q(r_counter[8]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \r_counter_reg[8]_i_2 
       (.CI(\r_counter_reg[4]_i_2_n_0 ),
        .CO({\r_counter_reg[8]_i_2_n_0 ,\r_counter_reg[8]_i_2_n_1 ,\r_counter_reg[8]_i_2_n_2 ,\r_counter_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(r_counter0[8:5]),
        .S(r_counter[8:5]));
  FDCE \r_counter_reg[9] 
       (.C(aclk),
        .CE(\r_counter[31]_i_1_n_0 ),
        .CLR(rd_done_reg_1),
        .D(p_1_in[9]),
        .Q(r_counter[9]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    r_eg_i_1
       (.I0(D[0]),
        .I1(r_eg_reg_0[0]),
        .I2(S_AXI_wvalid),
        .I3(r_eg_reg_1),
        .I4(r_eg_i_3_n_0),
        .I5(r_eg),
        .O(r_eg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    r_eg_i_3
       (.I0(Q[0]),
        .I1(r_eg_reg_0[2]),
        .O(r_eg_i_3_n_0));
  FDCE r_eg_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(rd_done_reg_1),
        .D(r_eg_i_1_n_0),
        .Q(r_eg));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    \r_status[4]_i_1 
       (.I0(Q[0]),
        .I1(\FSM_onehot_r_state_reg_n_0_[0] ),
        .I2(Q[1]),
        .I3(w_en__0),
        .O(w_status));
  FDCE \r_status_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(rd_done_reg_1),
        .D(w_status),
        .Q(slot_idle));
  FDCE \rd_data_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(rd_done_reg_1),
        .D(w_rd_data[0]),
        .Q(\rd_data_reg[31]_0 [0]));
  FDCE \rd_data_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(rd_done_reg_1),
        .D(w_rd_data[10]),
        .Q(\rd_data_reg[31]_0 [10]));
  FDCE \rd_data_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(rd_done_reg_1),
        .D(w_rd_data[11]),
        .Q(\rd_data_reg[31]_0 [11]));
  FDCE \rd_data_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(rd_done_reg_1),
        .D(w_rd_data[12]),
        .Q(\rd_data_reg[31]_0 [12]));
  FDCE \rd_data_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(rd_done_reg_1),
        .D(w_rd_data[13]),
        .Q(\rd_data_reg[31]_0 [13]));
  FDCE \rd_data_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(rd_done_reg_1),
        .D(w_rd_data[14]),
        .Q(\rd_data_reg[31]_0 [14]));
  FDCE \rd_data_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(rd_done_reg_1),
        .D(w_rd_data[15]),
        .Q(\rd_data_reg[31]_0 [15]));
  FDCE \rd_data_reg[16] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(rd_done_reg_1),
        .D(w_rd_data[16]),
        .Q(\rd_data_reg[31]_0 [16]));
  FDCE \rd_data_reg[17] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(rd_done_reg_1),
        .D(w_rd_data[17]),
        .Q(\rd_data_reg[31]_0 [17]));
  FDCE \rd_data_reg[18] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(rd_done_reg_1),
        .D(w_rd_data[18]),
        .Q(\rd_data_reg[31]_0 [18]));
  FDCE \rd_data_reg[19] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(rd_done_reg_1),
        .D(w_rd_data[19]),
        .Q(\rd_data_reg[31]_0 [19]));
  FDCE \rd_data_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(rd_done_reg_1),
        .D(w_rd_data[1]),
        .Q(\rd_data_reg[31]_0 [1]));
  FDCE \rd_data_reg[20] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(rd_done_reg_1),
        .D(w_rd_data[20]),
        .Q(\rd_data_reg[31]_0 [20]));
  FDCE \rd_data_reg[21] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(rd_done_reg_1),
        .D(w_rd_data[21]),
        .Q(\rd_data_reg[31]_0 [21]));
  FDCE \rd_data_reg[22] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(rd_done_reg_1),
        .D(w_rd_data[22]),
        .Q(\rd_data_reg[31]_0 [22]));
  FDCE \rd_data_reg[23] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(rd_done_reg_1),
        .D(w_rd_data[23]),
        .Q(\rd_data_reg[31]_0 [23]));
  FDCE \rd_data_reg[24] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(rd_done_reg_1),
        .D(w_rd_data[24]),
        .Q(\rd_data_reg[31]_0 [24]));
  FDCE \rd_data_reg[25] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(rd_done_reg_1),
        .D(w_rd_data[25]),
        .Q(\rd_data_reg[31]_0 [25]));
  FDCE \rd_data_reg[26] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(rd_done_reg_1),
        .D(w_rd_data[26]),
        .Q(\rd_data_reg[31]_0 [26]));
  FDCE \rd_data_reg[27] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(rd_done_reg_1),
        .D(w_rd_data[27]),
        .Q(\rd_data_reg[31]_0 [27]));
  FDCE \rd_data_reg[28] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(rd_done_reg_1),
        .D(w_rd_data[28]),
        .Q(\rd_data_reg[31]_0 [28]));
  FDCE \rd_data_reg[29] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(rd_done_reg_1),
        .D(w_rd_data[29]),
        .Q(\rd_data_reg[31]_0 [29]));
  FDCE \rd_data_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(rd_done_reg_1),
        .D(w_rd_data[2]),
        .Q(\rd_data_reg[31]_0 [2]));
  FDCE \rd_data_reg[30] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(rd_done_reg_1),
        .D(w_rd_data[30]),
        .Q(\rd_data_reg[31]_0 [30]));
  FDCE \rd_data_reg[31] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(rd_done_reg_1),
        .D(w_rd_data[31]),
        .Q(\rd_data_reg[31]_0 [31]));
  FDCE \rd_data_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(rd_done_reg_1),
        .D(w_rd_data[3]),
        .Q(\rd_data_reg[31]_0 [3]));
  FDCE \rd_data_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(rd_done_reg_1),
        .D(w_rd_data[4]),
        .Q(\rd_data_reg[31]_0 [4]));
  FDCE \rd_data_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(rd_done_reg_1),
        .D(w_rd_data[5]),
        .Q(\rd_data_reg[31]_0 [5]));
  FDCE \rd_data_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(rd_done_reg_1),
        .D(w_rd_data[6]),
        .Q(\rd_data_reg[31]_0 [6]));
  FDCE \rd_data_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(rd_done_reg_1),
        .D(w_rd_data[7]),
        .Q(\rd_data_reg[31]_0 [7]));
  FDCE \rd_data_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(rd_done_reg_1),
        .D(w_rd_data[8]),
        .Q(\rd_data_reg[31]_0 [8]));
  FDCE \rd_data_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(rd_done_reg_1),
        .D(w_rd_data[9]),
        .Q(\rd_data_reg[31]_0 [9]));
  FDCE rd_done_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(rd_done_reg_1),
        .D(w_rd_done),
        .Q(slot_rd_done));
  FDPE slave_error_reg
       (.C(aclk),
        .CE(1'b1),
        .D(w_slave_error),
        .PRE(rd_done_reg_1),
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
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    w_decode_error_reg_i_1
       (.I0(slot_decode_error),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(w_decode_error_reg_i_1_n_0));
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
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \w_rd_data_reg[0]_i_1 
       (.I0(r_auto_reload[0]),
        .I1(r_eg),
        .I2(r_eg_reg_0[1]),
        .I3(r_eg_reg_0[0]),
        .I4(r_counter[0]),
        .I5(p_0_in),
        .O(\w_rd_data_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \w_rd_data_reg[10] 
       (.CLR(1'b0),
        .D(\w_rd_data_reg[10]_i_1_n_0 ),
        .G(E),
        .GE(1'b1),
        .Q(w_rd_data[10]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \w_rd_data_reg[10]_i_1 
       (.I0(r_auto_reload[10]),
        .I1(r_counter[10]),
        .I2(r_eg_reg_0[0]),
        .I3(r_eg_reg_0[1]),
        .O(\w_rd_data_reg[10]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \w_rd_data_reg[11] 
       (.CLR(1'b0),
        .D(\w_rd_data_reg[11]_i_1_n_0 ),
        .G(E),
        .GE(1'b1),
        .Q(w_rd_data[11]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \w_rd_data_reg[11]_i_1 
       (.I0(r_auto_reload[11]),
        .I1(r_counter[11]),
        .I2(r_eg_reg_0[0]),
        .I3(r_eg_reg_0[1]),
        .O(\w_rd_data_reg[11]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \w_rd_data_reg[12] 
       (.CLR(1'b0),
        .D(\w_rd_data_reg[12]_i_1_n_0 ),
        .G(E),
        .GE(1'b1),
        .Q(w_rd_data[12]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \w_rd_data_reg[12]_i_1 
       (.I0(r_auto_reload[12]),
        .I1(r_counter[12]),
        .I2(r_eg_reg_0[0]),
        .I3(r_eg_reg_0[1]),
        .O(\w_rd_data_reg[12]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \w_rd_data_reg[13] 
       (.CLR(1'b0),
        .D(\w_rd_data_reg[13]_i_1_n_0 ),
        .G(E),
        .GE(1'b1),
        .Q(w_rd_data[13]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \w_rd_data_reg[13]_i_1 
       (.I0(r_auto_reload[13]),
        .I1(r_counter[13]),
        .I2(r_eg_reg_0[0]),
        .I3(r_eg_reg_0[1]),
        .O(\w_rd_data_reg[13]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \w_rd_data_reg[14] 
       (.CLR(1'b0),
        .D(\w_rd_data_reg[14]_i_1_n_0 ),
        .G(E),
        .GE(1'b1),
        .Q(w_rd_data[14]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \w_rd_data_reg[14]_i_1 
       (.I0(r_auto_reload[14]),
        .I1(r_counter[14]),
        .I2(r_eg_reg_0[0]),
        .I3(r_eg_reg_0[1]),
        .O(\w_rd_data_reg[14]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \w_rd_data_reg[15] 
       (.CLR(1'b0),
        .D(\w_rd_data_reg[15]_i_1_n_0 ),
        .G(E),
        .GE(1'b1),
        .Q(w_rd_data[15]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \w_rd_data_reg[15]_i_1 
       (.I0(r_auto_reload[15]),
        .I1(r_counter[15]),
        .I2(r_eg_reg_0[0]),
        .I3(r_eg_reg_0[1]),
        .O(\w_rd_data_reg[15]_i_1_n_0 ));
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
    .INIT(16'h00AC)) 
    \w_rd_data_reg[16]_i_1 
       (.I0(r_auto_reload[16]),
        .I1(r_counter[16]),
        .I2(r_eg_reg_0[0]),
        .I3(r_eg_reg_0[1]),
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
    .INIT(16'h00AC)) 
    \w_rd_data_reg[17]_i_1 
       (.I0(r_auto_reload[17]),
        .I1(r_counter[17]),
        .I2(r_eg_reg_0[0]),
        .I3(r_eg_reg_0[1]),
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
    .INIT(16'h00AC)) 
    \w_rd_data_reg[18]_i_1 
       (.I0(r_auto_reload[18]),
        .I1(r_counter[18]),
        .I2(r_eg_reg_0[0]),
        .I3(r_eg_reg_0[1]),
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
    .INIT(16'h00AC)) 
    \w_rd_data_reg[19]_i_1 
       (.I0(r_auto_reload[19]),
        .I1(r_counter[19]),
        .I2(r_eg_reg_0[0]),
        .I3(r_eg_reg_0[1]),
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
    .INIT(32'h00CCF0AA)) 
    \w_rd_data_reg[1]_i_1 
       (.I0(r_counter[1]),
        .I1(p_0_in1_in),
        .I2(r_auto_reload[1]),
        .I3(r_eg_reg_0[0]),
        .I4(r_eg_reg_0[1]),
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
    .INIT(16'h00AC)) 
    \w_rd_data_reg[20]_i_1 
       (.I0(r_auto_reload[20]),
        .I1(r_counter[20]),
        .I2(r_eg_reg_0[0]),
        .I3(r_eg_reg_0[1]),
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
    .INIT(16'h00AC)) 
    \w_rd_data_reg[21]_i_1 
       (.I0(r_auto_reload[21]),
        .I1(r_counter[21]),
        .I2(r_eg_reg_0[0]),
        .I3(r_eg_reg_0[1]),
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
    .INIT(16'h00AC)) 
    \w_rd_data_reg[22]_i_1 
       (.I0(r_auto_reload[22]),
        .I1(r_counter[22]),
        .I2(r_eg_reg_0[0]),
        .I3(r_eg_reg_0[1]),
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
    .INIT(16'h00AC)) 
    \w_rd_data_reg[23]_i_1 
       (.I0(r_auto_reload[23]),
        .I1(r_counter[23]),
        .I2(r_eg_reg_0[0]),
        .I3(r_eg_reg_0[1]),
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
    .INIT(16'h00AC)) 
    \w_rd_data_reg[24]_i_1 
       (.I0(r_auto_reload[24]),
        .I1(r_counter[24]),
        .I2(r_eg_reg_0[0]),
        .I3(r_eg_reg_0[1]),
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
    .INIT(16'h00AC)) 
    \w_rd_data_reg[25]_i_1 
       (.I0(r_auto_reload[25]),
        .I1(r_counter[25]),
        .I2(r_eg_reg_0[0]),
        .I3(r_eg_reg_0[1]),
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
    .INIT(16'h00AC)) 
    \w_rd_data_reg[26]_i_1 
       (.I0(r_auto_reload[26]),
        .I1(r_counter[26]),
        .I2(r_eg_reg_0[0]),
        .I3(r_eg_reg_0[1]),
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
    .INIT(16'h00AC)) 
    \w_rd_data_reg[27]_i_1 
       (.I0(r_auto_reload[27]),
        .I1(r_counter[27]),
        .I2(r_eg_reg_0[0]),
        .I3(r_eg_reg_0[1]),
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
    .INIT(16'h00AC)) 
    \w_rd_data_reg[28]_i_1 
       (.I0(r_auto_reload[28]),
        .I1(r_counter[28]),
        .I2(r_eg_reg_0[0]),
        .I3(r_eg_reg_0[1]),
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
    .INIT(16'h00AC)) 
    \w_rd_data_reg[29]_i_1 
       (.I0(r_auto_reload[29]),
        .I1(r_counter[29]),
        .I2(r_eg_reg_0[0]),
        .I3(r_eg_reg_0[1]),
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
    .INIT(16'h00AC)) 
    \w_rd_data_reg[2]_i_1 
       (.I0(r_auto_reload[2]),
        .I1(r_counter[2]),
        .I2(r_eg_reg_0[0]),
        .I3(r_eg_reg_0[1]),
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
    .INIT(16'h00AC)) 
    \w_rd_data_reg[30]_i_1 
       (.I0(r_auto_reload[30]),
        .I1(r_counter[30]),
        .I2(r_eg_reg_0[0]),
        .I3(r_eg_reg_0[1]),
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
    .INIT(16'h00AC)) 
    \w_rd_data_reg[31]_i_1 
       (.I0(r_auto_reload[31]),
        .I1(r_counter[31]),
        .I2(r_eg_reg_0[0]),
        .I3(r_eg_reg_0[1]),
        .O(\w_rd_data_reg[31]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \w_rd_data_reg[3] 
       (.CLR(1'b0),
        .D(\w_rd_data_reg[3]_i_1_n_0 ),
        .G(E),
        .GE(1'b1),
        .Q(w_rd_data[3]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \w_rd_data_reg[3]_i_1 
       (.I0(r_auto_reload[3]),
        .I1(r_counter[3]),
        .I2(r_eg_reg_0[0]),
        .I3(r_eg_reg_0[1]),
        .O(\w_rd_data_reg[3]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \w_rd_data_reg[4] 
       (.CLR(1'b0),
        .D(\w_rd_data_reg[4]_i_1_n_0 ),
        .G(E),
        .GE(1'b1),
        .Q(w_rd_data[4]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \w_rd_data_reg[4]_i_1 
       (.I0(r_auto_reload[4]),
        .I1(r_counter[4]),
        .I2(r_eg_reg_0[0]),
        .I3(r_eg_reg_0[1]),
        .O(\w_rd_data_reg[4]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \w_rd_data_reg[5] 
       (.CLR(1'b0),
        .D(\w_rd_data_reg[5]_i_1_n_0 ),
        .G(E),
        .GE(1'b1),
        .Q(w_rd_data[5]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \w_rd_data_reg[5]_i_1 
       (.I0(r_auto_reload[5]),
        .I1(r_counter[5]),
        .I2(r_eg_reg_0[0]),
        .I3(r_eg_reg_0[1]),
        .O(\w_rd_data_reg[5]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \w_rd_data_reg[6] 
       (.CLR(1'b0),
        .D(\w_rd_data_reg[6]_i_1_n_0 ),
        .G(E),
        .GE(1'b1),
        .Q(w_rd_data[6]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \w_rd_data_reg[6]_i_1 
       (.I0(r_auto_reload[6]),
        .I1(r_counter[6]),
        .I2(r_eg_reg_0[0]),
        .I3(r_eg_reg_0[1]),
        .O(\w_rd_data_reg[6]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \w_rd_data_reg[7] 
       (.CLR(1'b0),
        .D(\w_rd_data_reg[7]_i_1_n_0 ),
        .G(E),
        .GE(1'b1),
        .Q(w_rd_data[7]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \w_rd_data_reg[7]_i_1 
       (.I0(r_auto_reload[7]),
        .I1(r_counter[7]),
        .I2(r_eg_reg_0[0]),
        .I3(r_eg_reg_0[1]),
        .O(\w_rd_data_reg[7]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \w_rd_data_reg[8] 
       (.CLR(1'b0),
        .D(\w_rd_data_reg[8]_i_1_n_0 ),
        .G(E),
        .GE(1'b1),
        .Q(w_rd_data[8]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \w_rd_data_reg[8]_i_1 
       (.I0(r_auto_reload[8]),
        .I1(r_counter[8]),
        .I2(r_eg_reg_0[0]),
        .I3(r_eg_reg_0[1]),
        .O(\w_rd_data_reg[8]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \w_rd_data_reg[9] 
       (.CLR(1'b0),
        .D(\w_rd_data_reg[9]_i_1_n_0 ),
        .G(E),
        .GE(1'b1),
        .Q(w_rd_data[9]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \w_rd_data_reg[9]_i_1 
       (.I0(r_auto_reload[9]),
        .I1(r_counter[9]),
        .I2(r_eg_reg_0[0]),
        .I3(r_eg_reg_0[1]),
        .O(\w_rd_data_reg[9]_i_1_n_0 ));
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
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    w_slave_error_reg_i_1
       (.I0(\FSM_onehot_r_state_reg_n_0_[0] ),
        .I1(Q[1]),
        .I2(slot_slave_error),
        .I3(S_AXI_wvalid),
        .I4(Q[0]),
        .O(w_slave_error_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    wr_done_i_1__1
       (.I0(Q[0]),
        .I1(S_AXI_wvalid),
        .O(w_wr_done));
  FDCE wr_done_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(rd_done_reg_1),
        .D(w_wr_done),
        .Q(slot_wr_done));
endmodule

(* CHECK_LICENSE_TYPE = "top_mmio_subsystem_0_2,mmio_subsystem,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "mmio_subsystem,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
    tx);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET arst_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_clk_out1, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 arst_n RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME arst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input arst_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 16, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [15:0]S_AXI_awaddr;
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [15:0]S_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *) input [2:0]S_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input S_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output S_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]S_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]S_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output S_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input S_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO TRI_I" *) (* X_INTERFACE_MODE = "master" *) input [8:0]in_ports;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO TRI_O" *) output [3:0]out_ports;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 UART RxD" *) (* X_INTERFACE_MODE = "master" *) input rx;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 UART TxD" *) output tx;

  wire [15:0]S_AXI_araddr;
  wire S_AXI_arready;
  wire S_AXI_arvalid;
  wire [15:0]S_AXI_awaddr;
  wire S_AXI_awready;
  wire S_AXI_awvalid;
  wire S_AXI_bready;
  wire [1:0]S_AXI_bresp;
  wire S_AXI_bvalid;
  wire [31:0]S_AXI_rdata;
  wire S_AXI_rready;
  wire [1:0]S_AXI_rresp;
  wire S_AXI_rvalid;
  wire [31:0]S_AXI_wdata;
  wire S_AXI_wready;
  wire S_AXI_wvalid;
  wire aclk;
  wire arst_n;
  wire [8:0]in_ports;
  wire [3:0]out_ports;
  wire rx;
  wire tx;
  wire [2:0]NLW_inst_debug_r_state_UNCONNECTED;
  wire [2:0]NLW_inst_debug_w_next_state_UNCONNECTED;

  (* NUM_INPUT = "9" *) 
  (* NUM_OUTPUT = "4" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mmio_subsystem inst
       (.S_AXI_araddr(S_AXI_araddr),
        .S_AXI_arprot({1'b0,1'b0,1'b0}),
        .S_AXI_arready(S_AXI_arready),
        .S_AXI_arvalid(S_AXI_arvalid),
        .S_AXI_awaddr(S_AXI_awaddr),
        .S_AXI_awprot({1'b0,1'b0,1'b0}),
        .S_AXI_awready(S_AXI_awready),
        .S_AXI_awvalid(S_AXI_awvalid),
        .S_AXI_bready(S_AXI_bready),
        .S_AXI_bresp(S_AXI_bresp),
        .S_AXI_bvalid(S_AXI_bvalid),
        .S_AXI_rdata(S_AXI_rdata),
        .S_AXI_rready(S_AXI_rready),
        .S_AXI_rresp(S_AXI_rresp),
        .S_AXI_rvalid(S_AXI_rvalid),
        .S_AXI_wdata(S_AXI_wdata),
        .S_AXI_wready(S_AXI_wready),
        .S_AXI_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_wvalid(S_AXI_wvalid),
        .aclk(aclk),
        .arst_n(arst_n),
        .debug_r_state(NLW_inst_debug_r_state_UNCONNECTED[2:0]),
        .debug_w_next_state(NLW_inst_debug_w_next_state_UNCONNECTED[2:0]),
        .in_ports({1'b0,in_ports[7:4],1'b0,1'b0,1'b0,1'b0}),
        .out_ports(out_ports),
        .rx(rx),
        .tx(tx));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tx
   (\FSM_sequential_r_state_reg[1]_0 ,
    E,
    tx,
    \FSM_sequential_r_state_reg[0]_0 ,
    w_en_wr,
    \r_wr_logic_reg[0] ,
    Q,
    \r_rd_logic_reg[0] ,
    tick,
    r_reg_array__0,
    aclk,
    \r_in_shift_reg[7]_0 );
  output [0:0]\FSM_sequential_r_state_reg[1]_0 ;
  output [0:0]E;
  output tx;
  output \FSM_sequential_r_state_reg[0]_0 ;
  input w_en_wr;
  input \r_wr_logic_reg[0] ;
  input [0:0]Q;
  input \r_rd_logic_reg[0] ;
  input tick;
  input [7:0]r_reg_array__0;
  input aclk;
  input \r_in_shift_reg[7]_0 ;

  wire [0:0]E;
  wire \FSM_sequential_r_state[0]_i_2_n_0 ;
  wire \FSM_sequential_r_state[0]_i_3_n_0 ;
  wire \FSM_sequential_r_state[0]_i_4_n_0 ;
  wire \FSM_sequential_r_state_reg[0]_0 ;
  wire [0:0]\FSM_sequential_r_state_reg[1]_0 ;
  wire [0:0]Q;
  wire aclk;
  wire [2:0]r_data_bits_sent;
  wire \r_in_shift[7]_i_1_n_0 ;
  wire \r_in_shift_reg[7]_0 ;
  wire \r_in_shift_reg_n_0_[0] ;
  wire \r_in_shift_reg_n_0_[1] ;
  wire \r_in_shift_reg_n_0_[2] ;
  wire \r_in_shift_reg_n_0_[3] ;
  wire \r_in_shift_reg_n_0_[4] ;
  wire \r_in_shift_reg_n_0_[5] ;
  wire \r_in_shift_reg_n_0_[6] ;
  wire \r_in_shift_reg_n_0_[7] ;
  wire \r_rd_logic_reg[0] ;
  wire [7:0]r_reg_array__0;
  wire \r_sampling_ticks[3]_i_2_n_0 ;
  wire \r_sampling_ticks_reg_n_0_[0] ;
  wire \r_sampling_ticks_reg_n_0_[1] ;
  wire \r_sampling_ticks_reg_n_0_[2] ;
  wire \r_sampling_ticks_reg_n_0_[3] ;
  wire [1:0]r_state;
  wire \r_wr_logic_reg[0] ;
  wire tick;
  wire tx;
  wire w_en_wr;
  wire [7:0]w_in_shift;
  wire [2:0]w_next_data_bits_sent;
  wire [3:0]w_next_sampling_ticks;
  wire [1:0]w_next_state;

  LUT6 #(
    .INIT(64'hAAAAA002AA02AA02)) 
    \FSM_sequential_r_state[0]_i_1__0 
       (.I0(\FSM_sequential_r_state[0]_i_2_n_0 ),
        .I1(\r_rd_logic_reg[0] ),
        .I2(r_state[1]),
        .I3(r_state[0]),
        .I4(\FSM_sequential_r_state[0]_i_3_n_0 ),
        .I5(\FSM_sequential_r_state[0]_i_4_n_0 ),
        .O(w_next_state[0]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \FSM_sequential_r_state[0]_i_2 
       (.I0(\r_sampling_ticks_reg_n_0_[3] ),
        .I1(\r_sampling_ticks_reg_n_0_[2] ),
        .I2(\r_sampling_ticks_reg_n_0_[1] ),
        .I3(\r_sampling_ticks_reg_n_0_[0] ),
        .I4(r_state[0]),
        .I5(r_state[1]),
        .O(\FSM_sequential_r_state[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \FSM_sequential_r_state[0]_i_3 
       (.I0(r_data_bits_sent[1]),
        .I1(r_data_bits_sent[0]),
        .I2(r_state[1]),
        .I3(r_data_bits_sent[2]),
        .O(\FSM_sequential_r_state[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \FSM_sequential_r_state[0]_i_4 
       (.I0(\r_sampling_ticks_reg_n_0_[1] ),
        .I1(\r_sampling_ticks_reg_n_0_[0] ),
        .I2(\r_sampling_ticks_reg_n_0_[3] ),
        .I3(\r_sampling_ticks_reg_n_0_[2] ),
        .O(\FSM_sequential_r_state[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \FSM_sequential_r_state[1]_i_1__0 
       (.I0(r_state[1]),
        .I1(\r_sampling_ticks_reg_n_0_[3] ),
        .I2(\r_sampling_ticks_reg_n_0_[2] ),
        .I3(\r_sampling_ticks_reg_n_0_[1] ),
        .I4(\r_sampling_ticks_reg_n_0_[0] ),
        .I5(r_state[0]),
        .O(w_next_state[1]));
  (* FSM_ENCODED_STATES = "START:01,DATA:10,STOP:11,IDLE:00" *) 
  FDCE \FSM_sequential_r_state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r_in_shift_reg[7]_0 ),
        .D(w_next_state[0]),
        .Q(r_state[0]));
  (* FSM_ENCODED_STATES = "START:01,DATA:10,STOP:11,IDLE:00" *) 
  FDCE \FSM_sequential_r_state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r_in_shift_reg[7]_0 ),
        .D(w_next_state[1]),
        .Q(r_state[1]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'hE)) 
    empty_i_3__0
       (.I0(r_state[0]),
        .I1(r_state[1]),
        .O(\FSM_sequential_r_state_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r_data_bits_sent[0]_i_1 
       (.I0(r_state[1]),
        .I1(r_data_bits_sent[0]),
        .O(w_next_data_bits_sent[0]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'h48)) 
    \r_data_bits_sent[1]_i_1 
       (.I0(r_data_bits_sent[0]),
        .I1(r_state[1]),
        .I2(r_data_bits_sent[1]),
        .O(w_next_data_bits_sent[1]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    \r_data_bits_sent[2]_i_1 
       (.I0(r_data_bits_sent[1]),
        .I1(r_data_bits_sent[0]),
        .I2(r_state[1]),
        .I3(r_data_bits_sent[2]),
        .O(w_next_data_bits_sent[2]));
  FDCE \r_data_bits_sent_reg[0] 
       (.C(aclk),
        .CE(\r_in_shift[7]_i_1_n_0 ),
        .CLR(\r_in_shift_reg[7]_0 ),
        .D(w_next_data_bits_sent[0]),
        .Q(r_data_bits_sent[0]));
  FDCE \r_data_bits_sent_reg[1] 
       (.C(aclk),
        .CE(\r_in_shift[7]_i_1_n_0 ),
        .CLR(\r_in_shift_reg[7]_0 ),
        .D(w_next_data_bits_sent[1]),
        .Q(r_data_bits_sent[1]));
  FDCE \r_data_bits_sent_reg[2] 
       (.C(aclk),
        .CE(\r_in_shift[7]_i_1_n_0 ),
        .CLR(\r_in_shift_reg[7]_0 ),
        .D(w_next_data_bits_sent[2]),
        .Q(r_data_bits_sent[2]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \r_in_shift[0]_i_1 
       (.I0(\r_in_shift_reg_n_0_[1] ),
        .I1(r_reg_array__0[0]),
        .I2(r_state[1]),
        .O(w_in_shift[0]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \r_in_shift[1]_i_1 
       (.I0(\r_in_shift_reg_n_0_[2] ),
        .I1(r_reg_array__0[1]),
        .I2(r_state[1]),
        .O(w_in_shift[1]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \r_in_shift[2]_i_1 
       (.I0(\r_in_shift_reg_n_0_[3] ),
        .I1(r_reg_array__0[2]),
        .I2(r_state[1]),
        .O(w_in_shift[2]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \r_in_shift[3]_i_1 
       (.I0(\r_in_shift_reg_n_0_[4] ),
        .I1(r_reg_array__0[3]),
        .I2(r_state[1]),
        .O(w_in_shift[3]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \r_in_shift[4]_i_1 
       (.I0(\r_in_shift_reg_n_0_[5] ),
        .I1(r_reg_array__0[4]),
        .I2(r_state[1]),
        .O(w_in_shift[4]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \r_in_shift[5]_i_1 
       (.I0(\r_in_shift_reg_n_0_[6] ),
        .I1(r_reg_array__0[5]),
        .I2(r_state[1]),
        .O(w_in_shift[5]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \r_in_shift[6]_i_1 
       (.I0(\r_in_shift_reg_n_0_[7] ),
        .I1(r_reg_array__0[6]),
        .I2(r_state[1]),
        .O(w_in_shift[6]));
  LUT6 #(
    .INIT(64'h000000008000FFFF)) 
    \r_in_shift[7]_i_1 
       (.I0(\r_sampling_ticks_reg_n_0_[1] ),
        .I1(\r_sampling_ticks_reg_n_0_[0] ),
        .I2(\r_sampling_ticks_reg_n_0_[3] ),
        .I3(\r_sampling_ticks_reg_n_0_[2] ),
        .I4(r_state[1]),
        .I5(r_state[0]),
        .O(\r_in_shift[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \r_in_shift[7]_i_2 
       (.I0(r_state[1]),
        .I1(r_reg_array__0[7]),
        .O(w_in_shift[7]));
  FDCE \r_in_shift_reg[0] 
       (.C(aclk),
        .CE(\r_in_shift[7]_i_1_n_0 ),
        .CLR(\r_in_shift_reg[7]_0 ),
        .D(w_in_shift[0]),
        .Q(\r_in_shift_reg_n_0_[0] ));
  FDCE \r_in_shift_reg[1] 
       (.C(aclk),
        .CE(\r_in_shift[7]_i_1_n_0 ),
        .CLR(\r_in_shift_reg[7]_0 ),
        .D(w_in_shift[1]),
        .Q(\r_in_shift_reg_n_0_[1] ));
  FDCE \r_in_shift_reg[2] 
       (.C(aclk),
        .CE(\r_in_shift[7]_i_1_n_0 ),
        .CLR(\r_in_shift_reg[7]_0 ),
        .D(w_in_shift[2]),
        .Q(\r_in_shift_reg_n_0_[2] ));
  FDCE \r_in_shift_reg[3] 
       (.C(aclk),
        .CE(\r_in_shift[7]_i_1_n_0 ),
        .CLR(\r_in_shift_reg[7]_0 ),
        .D(w_in_shift[3]),
        .Q(\r_in_shift_reg_n_0_[3] ));
  FDCE \r_in_shift_reg[4] 
       (.C(aclk),
        .CE(\r_in_shift[7]_i_1_n_0 ),
        .CLR(\r_in_shift_reg[7]_0 ),
        .D(w_in_shift[4]),
        .Q(\r_in_shift_reg_n_0_[4] ));
  FDCE \r_in_shift_reg[5] 
       (.C(aclk),
        .CE(\r_in_shift[7]_i_1_n_0 ),
        .CLR(\r_in_shift_reg[7]_0 ),
        .D(w_in_shift[5]),
        .Q(\r_in_shift_reg_n_0_[5] ));
  FDCE \r_in_shift_reg[6] 
       (.C(aclk),
        .CE(\r_in_shift[7]_i_1_n_0 ),
        .CLR(\r_in_shift_reg[7]_0 ),
        .D(w_in_shift[6]),
        .Q(\r_in_shift_reg_n_0_[6] ));
  FDCE \r_in_shift_reg[7] 
       (.C(aclk),
        .CE(\r_in_shift[7]_i_1_n_0 ),
        .CLR(\r_in_shift_reg[7]_0 ),
        .D(w_in_shift[7]),
        .Q(\r_in_shift_reg_n_0_[7] ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'hFF01)) 
    \r_rd_logic[3]_i_1__0 
       (.I0(\r_rd_logic_reg[0] ),
        .I1(r_state[0]),
        .I2(r_state[1]),
        .I3(Q),
        .O(E));
  LUT5 #(
    .INIT(32'h008E8E00)) 
    \r_sampling_ticks[0]_i_1__0 
       (.I0(r_state[0]),
        .I1(r_state[1]),
        .I2(\FSM_sequential_r_state[0]_i_4_n_0 ),
        .I3(tick),
        .I4(\r_sampling_ticks_reg_n_0_[0] ),
        .O(w_next_sampling_ticks[0]));
  LUT6 #(
    .INIT(64'h008E8E008E008E00)) 
    \r_sampling_ticks[1]_i_1__0 
       (.I0(r_state[0]),
        .I1(r_state[1]),
        .I2(\FSM_sequential_r_state[0]_i_4_n_0 ),
        .I3(\r_sampling_ticks_reg_n_0_[1] ),
        .I4(tick),
        .I5(\r_sampling_ticks_reg_n_0_[0] ),
        .O(w_next_sampling_ticks[1]));
  LUT5 #(
    .INIT(32'h28888888)) 
    \r_sampling_ticks[2]_i_1__0 
       (.I0(\r_sampling_ticks[3]_i_2_n_0 ),
        .I1(\r_sampling_ticks_reg_n_0_[2] ),
        .I2(\r_sampling_ticks_reg_n_0_[1] ),
        .I3(\r_sampling_ticks_reg_n_0_[0] ),
        .I4(tick),
        .O(w_next_sampling_ticks[2]));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \r_sampling_ticks[3]_i_1__0 
       (.I0(\r_sampling_ticks[3]_i_2_n_0 ),
        .I1(\r_sampling_ticks_reg_n_0_[3] ),
        .I2(\r_sampling_ticks_reg_n_0_[2] ),
        .I3(tick),
        .I4(\r_sampling_ticks_reg_n_0_[0] ),
        .I5(\r_sampling_ticks_reg_n_0_[1] ),
        .O(w_next_sampling_ticks[3]));
  LUT6 #(
    .INIT(64'hFFFF7FFF7FFF0000)) 
    \r_sampling_ticks[3]_i_2 
       (.I0(\r_sampling_ticks_reg_n_0_[1] ),
        .I1(\r_sampling_ticks_reg_n_0_[0] ),
        .I2(\r_sampling_ticks_reg_n_0_[3] ),
        .I3(\r_sampling_ticks_reg_n_0_[2] ),
        .I4(r_state[1]),
        .I5(r_state[0]),
        .O(\r_sampling_ticks[3]_i_2_n_0 ));
  FDCE \r_sampling_ticks_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r_in_shift_reg[7]_0 ),
        .D(w_next_sampling_ticks[0]),
        .Q(\r_sampling_ticks_reg_n_0_[0] ));
  FDCE \r_sampling_ticks_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r_in_shift_reg[7]_0 ),
        .D(w_next_sampling_ticks[1]),
        .Q(\r_sampling_ticks_reg_n_0_[1] ));
  FDCE \r_sampling_ticks_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r_in_shift_reg[7]_0 ),
        .D(w_next_sampling_ticks[2]),
        .Q(\r_sampling_ticks_reg_n_0_[2] ));
  FDCE \r_sampling_ticks_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r_in_shift_reg[7]_0 ),
        .D(w_next_sampling_ticks[3]),
        .Q(\r_sampling_ticks_reg_n_0_[3] ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT5 #(
    .INIT(32'hFFFF02AA)) 
    \r_wr_logic[3]_i_1 
       (.I0(w_en_wr),
        .I1(r_state[1]),
        .I2(r_state[0]),
        .I3(\r_wr_logic_reg[0] ),
        .I4(Q),
        .O(\FSM_sequential_r_state_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hD9)) 
    tx_INST_0
       (.I0(r_state[0]),
        .I1(r_state[1]),
        .I2(\r_in_shift_reg_n_0_[0] ),
        .O(tx));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart
   (slot_wr_done,
    arst_n_0,
    slot_rd_done,
    Q,
    tx_full,
    rx_empty,
    \r_control_reg[1]_0 ,
    S_AXI_rready_0,
    \FSM_onehot_r_state_reg[1]_0 ,
    tx,
    S_AXI_rready_1,
    \r_dvsr_reg[9]_0 ,
    \r_rd_logic_reg[3] ,
    \r_rd_logic_reg[3]_0 ,
    \r_rd_logic_reg[3]_1 ,
    \r_rd_logic_reg[3]_2 ,
    \r_rd_logic_reg[3]_3 ,
    \r_rd_logic_reg[3]_4 ,
    \r_rd_logic_reg[3]_5 ,
    \r_rd_logic_reg[3]_6 ,
    slot_decode_error,
    slot_slave_error,
    \rd_data_reg[9]_0 ,
    w_wr_done,
    aclk,
    w_rd_done,
    arst_n,
    S_AXI_bready,
    S_AXI_rready,
    w_en__0,
    S_AXI_wvalid,
    \r_rd_logic_reg[0] ,
    w_en_wr,
    w_en_rd,
    \r_rd_logic_reg[0]_0 ,
    rx,
    D,
    slave_error_reg_0,
    E,
    \r_dvsr_reg[9]_1 ,
    \r_control_reg[1]_1 ,
    \r_reg_array_reg[0][7] ,
    \rd_data_reg[9]_1 ,
    \rd_data_reg[9]_2 );
  output [0:0]slot_wr_done;
  output arst_n_0;
  output [0:0]slot_rd_done;
  output [1:0]Q;
  output tx_full;
  output rx_empty;
  output [1:0]\r_control_reg[1]_0 ;
  output S_AXI_rready_0;
  output \FSM_onehot_r_state_reg[1]_0 ;
  output tx;
  output S_AXI_rready_1;
  output [9:0]\r_dvsr_reg[9]_0 ;
  output \r_rd_logic_reg[3] ;
  output \r_rd_logic_reg[3]_0 ;
  output \r_rd_logic_reg[3]_1 ;
  output \r_rd_logic_reg[3]_2 ;
  output \r_rd_logic_reg[3]_3 ;
  output \r_rd_logic_reg[3]_4 ;
  output \r_rd_logic_reg[3]_5 ;
  output \r_rd_logic_reg[3]_6 ;
  output [0:0]slot_decode_error;
  output [0:0]slot_slave_error;
  output [9:0]\rd_data_reg[9]_0 ;
  input w_wr_done;
  input aclk;
  input w_rd_done;
  input arst_n;
  input S_AXI_bready;
  input S_AXI_rready;
  input w_en__0;
  input S_AXI_wvalid;
  input [4:0]\r_rd_logic_reg[0] ;
  input w_en_wr;
  input w_en_rd;
  input \r_rd_logic_reg[0]_0 ;
  input rx;
  input [0:0]D;
  input slave_error_reg_0;
  input [0:0]E;
  input [9:0]\r_dvsr_reg[9]_1 ;
  input [1:0]\r_control_reg[1]_1 ;
  input [7:0]\r_reg_array_reg[0][7] ;
  input [0:0]\rd_data_reg[9]_1 ;
  input [9:0]\rd_data_reg[9]_2 ;

  wire [0:0]D;
  wire [0:0]E;
  wire \FSM_onehot_r_state_reg[1]_0 ;
  wire \FSM_onehot_r_state_reg_n_0_[2] ;
  wire \FSM_onehot_w_next_state_reg[0]_i_1_n_0 ;
  wire \FSM_onehot_w_next_state_reg[2]_i_1_n_0 ;
  wire \FSM_onehot_w_next_state_reg_n_0_[0] ;
  wire \FSM_onehot_w_next_state_reg_n_0_[1] ;
  wire \FSM_onehot_w_next_state_reg_n_0_[2] ;
  wire [1:0]Q;
  wire S_AXI_bready;
  wire S_AXI_rready;
  wire S_AXI_rready_0;
  wire S_AXI_rready_1;
  wire S_AXI_wvalid;
  wire aclk;
  wire arst_n;
  wire arst_n_0;
  wire core_n_1;
  wire decode_error_i_1_n_0;
  wire [1:0]\r_control_reg[1]_0 ;
  wire [1:0]\r_control_reg[1]_1 ;
  wire [9:0]\r_dvsr_reg[9]_0 ;
  wire [9:0]\r_dvsr_reg[9]_1 ;
  wire [4:0]\r_rd_logic_reg[0] ;
  wire \r_rd_logic_reg[0]_0 ;
  wire \r_rd_logic_reg[3] ;
  wire \r_rd_logic_reg[3]_0 ;
  wire \r_rd_logic_reg[3]_1 ;
  wire \r_rd_logic_reg[3]_2 ;
  wire \r_rd_logic_reg[3]_3 ;
  wire \r_rd_logic_reg[3]_4 ;
  wire \r_rd_logic_reg[3]_5 ;
  wire \r_rd_logic_reg[3]_6 ;
  wire [7:0]\r_reg_array_reg[0][7] ;
  wire [9:0]\rd_data_reg[9]_0 ;
  wire [0:0]\rd_data_reg[9]_1 ;
  wire [9:0]\rd_data_reg[9]_2 ;
  wire rx;
  wire rx_empty;
  wire slave_error_i_1_n_0;
  wire slave_error_i_4_n_0;
  wire slave_error_reg_0;
  wire [0:0]slot_decode_error;
  wire [0:0]slot_rd_done;
  wire [0:0]slot_slave_error;
  wire [0:0]slot_wr_done;
  wire tx;
  wire tx_full;
  wire w_en__0;
  wire w_en_rd;
  wire w_en_wr;
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
        .Q(\FSM_onehot_r_state_reg_n_0_[2] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b1)) 
    \FSM_onehot_w_next_state_reg[0] 
       (.CLR(1'b0),
        .D(\FSM_onehot_w_next_state_reg[0]_i_1_n_0 ),
        .G(w_next_state),
        .GE(1'b1),
        .Q(\FSM_onehot_w_next_state_reg_n_0_[0] ));
  LUT5 #(
    .INIT(32'hE0FFE0E0)) 
    \FSM_onehot_w_next_state_reg[0]_i_1 
       (.I0(S_AXI_bready),
        .I1(S_AXI_rready),
        .I2(\FSM_onehot_r_state_reg_n_0_[2] ),
        .I3(w_en__0),
        .I4(Q[0]),
        .O(\FSM_onehot_w_next_state_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_w_next_state_reg[1] 
       (.CLR(1'b0),
        .D(D),
        .G(w_next_state),
        .GE(1'b1),
        .Q(\FSM_onehot_w_next_state_reg_n_0_[1] ));
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
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'hFF10)) 
    \FSM_onehot_w_next_state_reg[2]_i_1 
       (.I0(S_AXI_bready),
        .I1(S_AXI_rready),
        .I2(\FSM_onehot_r_state_reg_n_0_[2] ),
        .I3(Q[1]),
        .O(\FSM_onehot_w_next_state_reg[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_onehot_w_next_state_reg[2]_i_2__0 
       (.I0(Q[0]),
        .I1(\FSM_onehot_r_state_reg_n_0_[2] ),
        .I2(Q[1]),
        .O(w_next_state));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_core core
       (.Q(\r_control_reg[1]_0 ),
        .S_AXI_rready(S_AXI_rready),
        .S_AXI_rready_0(S_AXI_rready_1),
        .S_AXI_wvalid(S_AXI_wvalid),
        .aclk(aclk),
        .arst_n(arst_n),
        .arst_n_0(arst_n_0),
        .empty_reg(rx_empty),
        .full_reg(core_n_1),
        .full_reg_0(tx_full),
        .\r_rd_logic_reg[0] ({\r_rd_logic_reg[0] [4],\r_rd_logic_reg[0] [2]}),
        .\r_rd_logic_reg[0]_0 (\r_rd_logic_reg[0]_0 ),
        .\r_rd_logic_reg[0]_1 (Q[1]),
        .\r_rd_logic_reg[3] (\r_rd_logic_reg[3] ),
        .\r_rd_logic_reg[3]_0 (\r_rd_logic_reg[3]_0 ),
        .\r_rd_logic_reg[3]_1 (\r_rd_logic_reg[3]_1 ),
        .\r_rd_logic_reg[3]_2 (\r_rd_logic_reg[3]_2 ),
        .\r_rd_logic_reg[3]_3 (\r_rd_logic_reg[3]_3 ),
        .\r_rd_logic_reg[3]_4 (\r_rd_logic_reg[3]_4 ),
        .\r_rd_logic_reg[3]_5 (\r_rd_logic_reg[3]_5 ),
        .\r_rd_logic_reg[3]_6 (\r_rd_logic_reg[3]_6 ),
        .\r_reg_array_reg[0][7] (\r_reg_array_reg[0][7] ),
        .rx(rx),
        .tx(tx),
        .w_en_rd(w_en_rd),
        .w_en_wr(w_en_wr),
        .w_next_cnt1_carry(\r_dvsr_reg[9]_0 ));
  LUT6 #(
    .INIT(64'hFEFE00FFFEFE0000)) 
    decode_error_i_1
       (.I0(\r_rd_logic_reg[0] [1]),
        .I1(\r_rd_logic_reg[0] [0]),
        .I2(\r_rd_logic_reg[0] [4]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(slot_decode_error),
        .O(decode_error_i_1_n_0));
  FDPE decode_error_reg
       (.C(aclk),
        .CE(1'b1),
        .D(decode_error_i_1_n_0),
        .PRE(arst_n_0),
        .Q(slot_decode_error));
  FDCE \r_control_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(arst_n_0),
        .D(\r_control_reg[1]_1 [0]),
        .Q(\r_control_reg[1]_0 [0]));
  FDCE \r_control_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(arst_n_0),
        .D(\r_control_reg[1]_1 [1]),
        .Q(\r_control_reg[1]_0 [1]));
  FDCE \r_dvsr_reg[0] 
       (.C(aclk),
        .CE(E),
        .CLR(arst_n_0),
        .D(\r_dvsr_reg[9]_1 [0]),
        .Q(\r_dvsr_reg[9]_0 [0]));
  FDCE \r_dvsr_reg[1] 
       (.C(aclk),
        .CE(E),
        .CLR(arst_n_0),
        .D(\r_dvsr_reg[9]_1 [1]),
        .Q(\r_dvsr_reg[9]_0 [1]));
  FDCE \r_dvsr_reg[2] 
       (.C(aclk),
        .CE(E),
        .CLR(arst_n_0),
        .D(\r_dvsr_reg[9]_1 [2]),
        .Q(\r_dvsr_reg[9]_0 [2]));
  FDCE \r_dvsr_reg[3] 
       (.C(aclk),
        .CE(E),
        .CLR(arst_n_0),
        .D(\r_dvsr_reg[9]_1 [3]),
        .Q(\r_dvsr_reg[9]_0 [3]));
  FDCE \r_dvsr_reg[4] 
       (.C(aclk),
        .CE(E),
        .CLR(arst_n_0),
        .D(\r_dvsr_reg[9]_1 [4]),
        .Q(\r_dvsr_reg[9]_0 [4]));
  FDCE \r_dvsr_reg[5] 
       (.C(aclk),
        .CE(E),
        .CLR(arst_n_0),
        .D(\r_dvsr_reg[9]_1 [5]),
        .Q(\r_dvsr_reg[9]_0 [5]));
  FDCE \r_dvsr_reg[6] 
       (.C(aclk),
        .CE(E),
        .CLR(arst_n_0),
        .D(\r_dvsr_reg[9]_1 [6]),
        .Q(\r_dvsr_reg[9]_0 [6]));
  FDCE \r_dvsr_reg[7] 
       (.C(aclk),
        .CE(E),
        .CLR(arst_n_0),
        .D(\r_dvsr_reg[9]_1 [7]),
        .Q(\r_dvsr_reg[9]_0 [7]));
  FDCE \r_dvsr_reg[8] 
       (.C(aclk),
        .CE(E),
        .CLR(arst_n_0),
        .D(\r_dvsr_reg[9]_1 [8]),
        .Q(\r_dvsr_reg[9]_0 [8]));
  FDCE \r_dvsr_reg[9] 
       (.C(aclk),
        .CE(E),
        .CLR(arst_n_0),
        .D(\r_dvsr_reg[9]_1 [9]),
        .Q(\r_dvsr_reg[9]_0 [9]));
  LUT2 #(
    .INIT(4'h2)) 
    \rd_data[9]_i_3 
       (.I0(S_AXI_rready),
        .I1(S_AXI_wvalid),
        .O(S_AXI_rready_0));
  FDCE \rd_data_reg[0] 
       (.C(aclk),
        .CE(\rd_data_reg[9]_1 ),
        .CLR(arst_n_0),
        .D(\rd_data_reg[9]_2 [0]),
        .Q(\rd_data_reg[9]_0 [0]));
  FDCE \rd_data_reg[1] 
       (.C(aclk),
        .CE(\rd_data_reg[9]_1 ),
        .CLR(arst_n_0),
        .D(\rd_data_reg[9]_2 [1]),
        .Q(\rd_data_reg[9]_0 [1]));
  FDCE \rd_data_reg[2] 
       (.C(aclk),
        .CE(\rd_data_reg[9]_1 ),
        .CLR(arst_n_0),
        .D(\rd_data_reg[9]_2 [2]),
        .Q(\rd_data_reg[9]_0 [2]));
  FDCE \rd_data_reg[3] 
       (.C(aclk),
        .CE(\rd_data_reg[9]_1 ),
        .CLR(arst_n_0),
        .D(\rd_data_reg[9]_2 [3]),
        .Q(\rd_data_reg[9]_0 [3]));
  FDCE \rd_data_reg[4] 
       (.C(aclk),
        .CE(\rd_data_reg[9]_1 ),
        .CLR(arst_n_0),
        .D(\rd_data_reg[9]_2 [4]),
        .Q(\rd_data_reg[9]_0 [4]));
  FDCE \rd_data_reg[5] 
       (.C(aclk),
        .CE(\rd_data_reg[9]_1 ),
        .CLR(arst_n_0),
        .D(\rd_data_reg[9]_2 [5]),
        .Q(\rd_data_reg[9]_0 [5]));
  FDCE \rd_data_reg[6] 
       (.C(aclk),
        .CE(\rd_data_reg[9]_1 ),
        .CLR(arst_n_0),
        .D(\rd_data_reg[9]_2 [6]),
        .Q(\rd_data_reg[9]_0 [6]));
  FDCE \rd_data_reg[7] 
       (.C(aclk),
        .CE(\rd_data_reg[9]_1 ),
        .CLR(arst_n_0),
        .D(\rd_data_reg[9]_2 [7]),
        .Q(\rd_data_reg[9]_0 [7]));
  FDCE \rd_data_reg[8] 
       (.C(aclk),
        .CE(\rd_data_reg[9]_1 ),
        .CLR(arst_n_0),
        .D(\rd_data_reg[9]_2 [8]),
        .Q(\rd_data_reg[9]_0 [8]));
  FDCE \rd_data_reg[9] 
       (.C(aclk),
        .CE(\rd_data_reg[9]_1 ),
        .CLR(arst_n_0),
        .D(\rd_data_reg[9]_2 [9]),
        .Q(\rd_data_reg[9]_0 [9]));
  FDCE rd_done_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(arst_n_0),
        .D(w_rd_done),
        .Q(slot_rd_done));
  LUT6 #(
    .INIT(64'h0200FFFF02000000)) 
    slave_error_i_1
       (.I0(\FSM_onehot_r_state_reg[1]_0 ),
        .I1(slave_error_reg_0),
        .I2(\r_rd_logic_reg[0] [3]),
        .I3(core_n_1),
        .I4(slave_error_i_4_n_0),
        .I5(slot_slave_error),
        .O(slave_error_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h2)) 
    slave_error_i_2
       (.I0(Q[1]),
        .I1(\r_rd_logic_reg[0] [4]),
        .O(\FSM_onehot_r_state_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'hE)) 
    slave_error_i_4
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(slave_error_i_4_n_0));
  FDPE slave_error_reg
       (.C(aclk),
        .CE(1'b1),
        .D(slave_error_i_1_n_0),
        .PRE(arst_n_0),
        .Q(slot_slave_error));
  FDCE wr_done_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(arst_n_0),
        .D(w_wr_done),
        .Q(slot_wr_done));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_core
   (arst_n_0,
    full_reg,
    full_reg_0,
    empty_reg,
    tx,
    S_AXI_rready_0,
    \r_rd_logic_reg[3] ,
    \r_rd_logic_reg[3]_0 ,
    \r_rd_logic_reg[3]_1 ,
    \r_rd_logic_reg[3]_2 ,
    \r_rd_logic_reg[3]_3 ,
    \r_rd_logic_reg[3]_4 ,
    \r_rd_logic_reg[3]_5 ,
    \r_rd_logic_reg[3]_6 ,
    arst_n,
    S_AXI_rready,
    S_AXI_wvalid,
    \r_rd_logic_reg[0] ,
    w_en_wr,
    Q,
    w_en_rd,
    \r_rd_logic_reg[0]_0 ,
    \r_rd_logic_reg[0]_1 ,
    rx,
    w_next_cnt1_carry,
    aclk,
    \r_reg_array_reg[0][7] );
  output arst_n_0;
  output full_reg;
  output full_reg_0;
  output empty_reg;
  output tx;
  output S_AXI_rready_0;
  output \r_rd_logic_reg[3] ;
  output \r_rd_logic_reg[3]_0 ;
  output \r_rd_logic_reg[3]_1 ;
  output \r_rd_logic_reg[3]_2 ;
  output \r_rd_logic_reg[3]_3 ;
  output \r_rd_logic_reg[3]_4 ;
  output \r_rd_logic_reg[3]_5 ;
  output \r_rd_logic_reg[3]_6 ;
  input arst_n;
  input S_AXI_rready;
  input S_AXI_wvalid;
  input [1:0]\r_rd_logic_reg[0] ;
  input w_en_wr;
  input [1:0]Q;
  input w_en_rd;
  input \r_rd_logic_reg[0]_0 ;
  input [0:0]\r_rd_logic_reg[0]_1 ;
  input rx;
  input [9:0]w_next_cnt1_carry;
  input aclk;
  input [7:0]\r_reg_array_reg[0][7] ;

  wire [1:0]Q;
  wire S_AXI_rready;
  wire S_AXI_rready_0;
  wire S_AXI_wvalid;
  wire aclk;
  wire arst_n;
  wire arst_n_0;
  wire empty_reg;
  wire full_reg;
  wire full_reg_0;
  wire [1:0]\r_rd_logic_reg[0] ;
  wire \r_rd_logic_reg[0]_0 ;
  wire [0:0]\r_rd_logic_reg[0]_1 ;
  wire \r_rd_logic_reg[3] ;
  wire \r_rd_logic_reg[3]_0 ;
  wire \r_rd_logic_reg[3]_1 ;
  wire \r_rd_logic_reg[3]_2 ;
  wire \r_rd_logic_reg[3]_3 ;
  wire \r_rd_logic_reg[3]_4 ;
  wire \r_rd_logic_reg[3]_5 ;
  wire \r_rd_logic_reg[3]_6 ;
  wire [7:0]\r_reg_array_reg[0][7] ;
  wire [7:0]\rf/r_reg_array__0 ;
  wire rx;
  wire rx_fifo_n_10;
  wire rx_inst_n_0;
  wire rx_inst_n_1;
  wire rx_inst_n_2;
  wire rx_inst_n_3;
  wire rx_inst_n_4;
  wire rx_inst_n_5;
  wire rx_inst_n_6;
  wire rx_inst_n_7;
  wire rx_inst_n_8;
  wire rx_inst_n_9;
  wire tick;
  wire tx;
  wire tx_fifo_n_11;
  wire tx_inst_n_0;
  wire tx_inst_n_1;
  wire tx_inst_n_3;
  wire w_en_rd;
  wire w_en_wr;
  wire [9:0]w_next_cnt1_carry;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_buad_generator buad_gen
       (.aclk(aclk),
        .\r_cnt_reg[0]_0 (arst_n_0),
        .tick(tick),
        .w_next_cnt1_carry_0(w_next_cnt1_carry));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo rx_fifo
       (.D({rx_inst_n_2,rx_inst_n_3,rx_inst_n_4,rx_inst_n_5,rx_inst_n_6,rx_inst_n_7,rx_inst_n_8,rx_inst_n_9}),
        .E(rx_inst_n_0),
        .Q(Q[0]),
        .S_AXI_rready(S_AXI_rready),
        .S_AXI_rready_0(S_AXI_rready_0),
        .aclk(aclk),
        .empty_reg(empty_reg),
        .full_reg(rx_fifo_n_10),
        .\r_rd_logic_reg[0] (\r_rd_logic_reg[0]_0 ),
        .\r_rd_logic_reg[0]_0 (\r_rd_logic_reg[0] [1]),
        .\r_rd_logic_reg[0]_1 (\r_rd_logic_reg[0]_1 ),
        .\r_rd_logic_reg[3] (\r_rd_logic_reg[3] ),
        .\r_rd_logic_reg[3]_0 (\r_rd_logic_reg[3]_0 ),
        .\r_rd_logic_reg[3]_1 (\r_rd_logic_reg[3]_1 ),
        .\r_rd_logic_reg[3]_2 (\r_rd_logic_reg[3]_2 ),
        .\r_rd_logic_reg[3]_3 (\r_rd_logic_reg[3]_3 ),
        .\r_rd_logic_reg[3]_4 (\r_rd_logic_reg[3]_4 ),
        .\r_rd_logic_reg[3]_5 (\r_rd_logic_reg[3]_5 ),
        .\r_rd_logic_reg[3]_6 (\r_rd_logic_reg[3]_6 ),
        .\r_reg_array_reg[0][0] (arst_n_0),
        .\r_reg_array_reg[15][7] (rx_inst_n_1),
        .w_en_rd(w_en_rd));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rx rx_inst
       (.D({rx_inst_n_2,rx_inst_n_3,rx_inst_n_4,rx_inst_n_5,rx_inst_n_6,rx_inst_n_7,rx_inst_n_8,rx_inst_n_9}),
        .E(rx_inst_n_0),
        .\FSM_sequential_r_state_reg[1]_0 (rx_inst_n_1),
        .Q(Q[0]),
        .aclk(aclk),
        .\r_data_bits_received_reg[3]_0 (arst_n_0),
        .\r_wr_logic_reg[0] (rx_fifo_n_10),
        .rx(rx),
        .tick(tick),
        .w_en_rd(w_en_rd));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_0 tx_fifo
       (.E(tx_inst_n_1),
        .Q(Q[1]),
        .S_AXI_rready(S_AXI_rready),
        .S_AXI_wvalid(S_AXI_wvalid),
        .aclk(aclk),
        .arst_n(arst_n),
        .arst_n_0(arst_n_0),
        .empty_reg(tx_fifo_n_11),
        .full_reg(full_reg),
        .full_reg_0(full_reg_0),
        .full_reg_1(tx_inst_n_3),
        .r_reg_array__0(\rf/r_reg_array__0 ),
        .\r_reg_array_reg[0][7] (\r_reg_array_reg[0][7] ),
        .\r_wr_logic_reg[0] (tx_inst_n_0),
        .slave_error_reg(\r_rd_logic_reg[0] [0]),
        .slave_error_reg_0(empty_reg),
        .w_en_wr(w_en_wr));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tx tx_inst
       (.E(tx_inst_n_1),
        .\FSM_sequential_r_state_reg[0]_0 (tx_inst_n_3),
        .\FSM_sequential_r_state_reg[1]_0 (tx_inst_n_0),
        .Q(Q[1]),
        .aclk(aclk),
        .\r_in_shift_reg[7]_0 (arst_n_0),
        .\r_rd_logic_reg[0] (tx_fifo_n_11),
        .r_reg_array__0(\rf/r_reg_array__0 ),
        .\r_wr_logic_reg[0] (full_reg_0),
        .tick(tick),
        .tx(tx),
        .w_en_wr(w_en_wr));
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
