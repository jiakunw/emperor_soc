// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Tue Aug 12 22:13:47 2025
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
   (D,
    w_en__0,
    \r_addr_reg[10]_0 ,
    w_en__0_0,
    \S_AXI_wdata[7] ,
    S_AXI_wvalid_0,
    \S_AXI_wdata[9] ,
    \FSM_onehot_r_state_reg[1] ,
    w_decode_error,
    w_decode_error__0,
    \r_addr_reg[7]_0 ,
    w_wr_done,
    w_en_wr,
    w_en_rd,
    w_wr_done_1,
    E,
    w_led_data,
    \r_addr_reg[3]_0 ,
    \r_addr_reg[1]_0 ,
    w_en__0_2,
    \r_state_reg[1]_0 ,
    \r_addr_reg[1]_1 ,
    \r_addr_reg[3]_1 ,
    S_AXI_awready,
    debug_w_next_state,
    S_AXI_wready,
    S_AXI_bresp,
    S_AXI_bvalid,
    \r_addr_reg[11]_0 ,
    \r_addr_reg[9]_0 ,
    Q,
    S_AXI_rready,
    S_AXI_wvalid,
    w_en0,
    S_AXI_wdata,
    \r_reg_array_reg[0][0] ,
    decode_error_reg,
    decode_error_reg_0,
    tx_full,
    rx_empty,
    \out_ports_reg[0] ,
    slot_decode_error,
    slave_error_reg,
    slave_error_reg_0,
    slot_slave_error,
    aclk,
    \r_state_reg[1]_1 ,
    S_AXI_awaddr,
    S_AXI_awvalid,
    S_AXI_arvalid,
    S_AXI_bready,
    slot_wr_done);
  output [0:0]D;
  output w_en__0;
  output [2:0]\r_addr_reg[10]_0 ;
  output w_en__0_0;
  output [7:0]\S_AXI_wdata[7] ;
  output [1:0]S_AXI_wvalid_0;
  output [9:0]\S_AXI_wdata[9] ;
  output \FSM_onehot_r_state_reg[1] ;
  output w_decode_error;
  output w_decode_error__0;
  output \r_addr_reg[7]_0 ;
  output w_wr_done;
  output w_en_wr;
  output w_en_rd;
  output w_wr_done_1;
  output [0:0]E;
  output [3:0]w_led_data;
  output \r_addr_reg[3]_0 ;
  output \r_addr_reg[1]_0 ;
  output w_en__0_2;
  output [1:0]\r_state_reg[1]_0 ;
  output \r_addr_reg[1]_1 ;
  output \r_addr_reg[3]_1 ;
  output S_AXI_awready;
  output [1:0]debug_w_next_state;
  output S_AXI_wready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output \r_addr_reg[11]_0 ;
  output \r_addr_reg[9]_0 ;
  input [1:0]Q;
  input S_AXI_rready;
  input S_AXI_wvalid;
  input w_en0;
  input [9:0]S_AXI_wdata;
  input [0:0]\r_reg_array_reg[0][0] ;
  input [0:0]decode_error_reg;
  input [1:0]decode_error_reg_0;
  input tx_full;
  input rx_empty;
  input \out_ports_reg[0] ;
  input [2:0]slot_decode_error;
  input slave_error_reg;
  input slave_error_reg_0;
  input [1:0]slot_slave_error;
  input aclk;
  input \r_state_reg[1]_1 ;
  input [15:0]S_AXI_awaddr;
  input S_AXI_awvalid;
  input S_AXI_arvalid;
  input S_AXI_bready;
  input [2:0]slot_wr_done;

  wire [0:0]D;
  wire [0:0]E;
  wire \FSM_onehot_r_state_reg[1] ;
  wire \FSM_onehot_w_next_state_reg[1]_i_2_n_0 ;
  wire \FSM_onehot_w_next_state_reg[1]_i_3__1_n_0 ;
  wire \FSM_onehot_w_next_state_reg[1]_i_4__0_n_0 ;
  wire \FSM_onehot_w_next_state_reg[1]_i_4_n_0 ;
  wire [1:0]Q;
  wire S_AXI_arvalid;
  wire [15:0]S_AXI_awaddr;
  wire S_AXI_awready;
  wire S_AXI_awvalid;
  wire S_AXI_bready;
  wire [1:0]S_AXI_bresp;
  wire \S_AXI_bresp[1]_INST_0_i_1_n_0 ;
  wire \S_AXI_bresp[1]_INST_0_i_2_n_0 ;
  wire S_AXI_bvalid;
  wire S_AXI_rready;
  wire [9:0]S_AXI_wdata;
  wire [7:0]\S_AXI_wdata[7] ;
  wire [9:0]\S_AXI_wdata[9] ;
  wire S_AXI_wready;
  wire S_AXI_wvalid;
  wire [1:0]S_AXI_wvalid_0;
  wire aclk;
  wire [1:0]debug_w_next_state;
  wire decode_error_i_2_n_0;
  wire decode_error_i_3_n_0;
  wire decode_error_i_4_n_0;
  wire [0:0]decode_error_reg;
  wire [1:0]decode_error_reg_0;
  wire \out_ports[3]_i_6_n_0 ;
  wire \out_ports_reg[0] ;
  wire [11:8]r_addr;
  wire [2:0]\r_addr_reg[10]_0 ;
  wire \r_addr_reg[11]_0 ;
  wire \r_addr_reg[1]_0 ;
  wire \r_addr_reg[1]_1 ;
  wire \r_addr_reg[3]_0 ;
  wire \r_addr_reg[3]_1 ;
  wire \r_addr_reg[7]_0 ;
  wire \r_addr_reg[9]_0 ;
  wire \r_control[1]_i_2_n_0 ;
  wire \r_dvsr[9]_i_3_n_0 ;
  wire \r_reg_array[15][7]_i_4_n_0 ;
  wire [0:0]\r_reg_array_reg[0][0] ;
  wire [1:0]\r_state_reg[1]_0 ;
  wire \r_state_reg[1]_1 ;
  wire [7:0]reg_addr;
  wire rx_empty;
  wire [7:4]sel0;
  wire slave_error_reg;
  wire slave_error_reg_0;
  wire [2:0]slot_decode_error;
  wire [1:0]slot_slave_error;
  wire [2:0]slot_wr_done;
  wire tx_full;
  wire w_decode_error;
  wire w_decode_error__0;
  wire w_en0;
  wire w_en__0;
  wire w_en__0_0;
  wire w_en__0_2;
  wire w_en_addr;
  wire w_en_rd;
  wire w_en_wr;
  wire [3:0]w_led_data;
  wire [1:0]w_next_state;
  wire \w_next_state_reg[1]_i_2_n_0 ;
  wire \w_next_state_reg[1]_i_3_n_0 ;
  wire w_wr_done;
  wire w_wr_done_1;
  wire wr_done_i_2_n_0;

  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00040000)) 
    \FSM_onehot_w_next_state_reg[0]_i_2 
       (.I0(\FSM_onehot_w_next_state_reg[1]_i_4_n_0 ),
        .I1(\r_state_reg[1]_0 [0]),
        .I2(\r_state_reg[1]_0 [1]),
        .I3(\FSM_onehot_w_next_state_reg[1]_i_2_n_0 ),
        .I4(S_AXI_wvalid),
        .O(w_en__0_2));
  LUT6 #(
    .INIT(64'h00000000000000A8)) 
    \FSM_onehot_w_next_state_reg[1]_i_1 
       (.I0(Q[0]),
        .I1(S_AXI_rready),
        .I2(S_AXI_wvalid),
        .I3(\FSM_onehot_w_next_state_reg[1]_i_2_n_0 ),
        .I4(\FSM_onehot_w_next_state_reg[1]_i_3__1_n_0 ),
        .I5(\FSM_onehot_w_next_state_reg[1]_i_4_n_0 ),
        .O(D));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_onehot_w_next_state_reg[1]_i_2 
       (.I0(\r_addr_reg[10]_0 [2]),
        .I1(r_addr[11]),
        .I2(sel0[4]),
        .I3(sel0[7]),
        .I4(sel0[6]),
        .I5(sel0[5]),
        .O(\FSM_onehot_w_next_state_reg[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \FSM_onehot_w_next_state_reg[1]_i_2__0 
       (.I0(w_en0),
        .I1(r_addr[8]),
        .I2(r_addr[9]),
        .I3(\r_addr_reg[10]_0 [2]),
        .I4(\FSM_onehot_w_next_state_reg[1]_i_4__0_n_0 ),
        .I5(\FSM_onehot_w_next_state_reg[1]_i_3__1_n_0 ),
        .O(w_en__0_0));
  LUT6 #(
    .INIT(64'h00000000000E0000)) 
    \FSM_onehot_w_next_state_reg[1]_i_3 
       (.I0(S_AXI_wvalid),
        .I1(S_AXI_rready),
        .I2(\FSM_onehot_w_next_state_reg[1]_i_3__1_n_0 ),
        .I3(r_addr[9]),
        .I4(r_addr[8]),
        .I5(\FSM_onehot_w_next_state_reg[1]_i_2_n_0 ),
        .O(w_en__0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hBF)) 
    \FSM_onehot_w_next_state_reg[1]_i_3__1 
       (.I0(\r_state_reg[1]_0 [1]),
        .I1(\r_state_reg[1]_0 [0]),
        .I2(S_AXI_wvalid),
        .O(\FSM_onehot_w_next_state_reg[1]_i_3__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_onehot_w_next_state_reg[1]_i_4 
       (.I0(r_addr[8]),
        .I1(r_addr[9]),
        .O(\FSM_onehot_w_next_state_reg[1]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_onehot_w_next_state_reg[1]_i_4__0 
       (.I0(sel0[5]),
        .I1(sel0[6]),
        .I2(sel0[7]),
        .I3(sel0[4]),
        .I4(r_addr[11]),
        .O(\FSM_onehot_w_next_state_reg[1]_i_4__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h1)) 
    S_AXI_arready_INST_0
       (.I0(\r_state_reg[1]_0 [0]),
        .I1(\r_state_reg[1]_0 [1]),
        .O(S_AXI_awready));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    \S_AXI_bresp[0]_INST_0 
       (.I0(\r_state_reg[1]_0 [0]),
        .I1(\r_state_reg[1]_0 [1]),
        .I2(\S_AXI_bresp[1]_INST_0_i_2_n_0 ),
        .I3(\S_AXI_bresp[1]_INST_0_i_1_n_0 ),
        .I4(r_addr[11]),
        .I5(\r_addr_reg[10]_0 [2]),
        .O(S_AXI_bresp[0]));
  LUT6 #(
    .INIT(64'h0000000000007000)) 
    \S_AXI_bresp[1]_INST_0 
       (.I0(\S_AXI_bresp[1]_INST_0_i_1_n_0 ),
        .I1(\S_AXI_bresp[1]_INST_0_i_2_n_0 ),
        .I2(\r_state_reg[1]_0 [1]),
        .I3(\r_state_reg[1]_0 [0]),
        .I4(\r_addr_reg[10]_0 [2]),
        .I5(r_addr[11]),
        .O(S_AXI_bresp[1]));
  LUT4 #(
    .INIT(16'hDCDF)) 
    \S_AXI_bresp[1]_INST_0_i_1 
       (.I0(slot_slave_error[1]),
        .I1(r_addr[8]),
        .I2(r_addr[9]),
        .I3(slot_slave_error[0]),
        .O(\S_AXI_bresp[1]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hCF44CF77)) 
    \S_AXI_bresp[1]_INST_0_i_2 
       (.I0(slot_decode_error[2]),
        .I1(r_addr[9]),
        .I2(slot_decode_error[1]),
        .I3(r_addr[8]),
        .I4(slot_decode_error[0]),
        .O(\S_AXI_bresp[1]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    S_AXI_bvalid_INST_0
       (.I0(\r_state_reg[1]_0 [1]),
        .I1(\r_state_reg[1]_0 [0]),
        .O(S_AXI_bvalid));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h08)) 
    S_AXI_wready_INST_0
       (.I0(S_AXI_wvalid),
        .I1(\r_state_reg[1]_0 [0]),
        .I2(\r_state_reg[1]_0 [1]),
        .O(S_AXI_wready));
  LUT5 #(
    .INIT(32'hF0008000)) 
    decode_error_i_1
       (.I0(S_AXI_rready),
        .I1(decode_error_i_2_n_0),
        .I2(decode_error_i_3_n_0),
        .I3(decode_error_reg),
        .I4(S_AXI_wvalid),
        .O(w_decode_error));
  LUT6 #(
    .INIT(64'hFEFE00FFFEFE0000)) 
    decode_error_i_1__0
       (.I0(reg_addr[1]),
        .I1(reg_addr[0]),
        .I2(\r_addr_reg[7]_0 ),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(slot_decode_error[2]),
        .O(\r_addr_reg[1]_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFE00F)) 
    decode_error_i_2
       (.I0(reg_addr[3]),
        .I1(\r_addr_reg[10]_0 [0]),
        .I2(\r_addr_reg[10]_0 [1]),
        .I3(reg_addr[5]),
        .I4(decode_error_i_4_n_0),
        .I5(\r_dvsr[9]_i_3_n_0 ),
        .O(decode_error_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEF)) 
    decode_error_i_3
       (.I0(\r_addr_reg[10]_0 [1]),
        .I1(reg_addr[5]),
        .I2(S_AXI_wvalid),
        .I3(\r_dvsr[9]_i_3_n_0 ),
        .I4(reg_addr[6]),
        .I5(reg_addr[7]),
        .O(decode_error_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    decode_error_i_4
       (.I0(reg_addr[7]),
        .I1(reg_addr[6]),
        .O(decode_error_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    empty_i_4
       (.I0(reg_addr[1]),
        .I1(reg_addr[0]),
        .I2(S_AXI_wvalid),
        .I3(tx_full),
        .I4(reg_addr[3]),
        .I5(\r_addr_reg[10]_0 [0]),
        .O(\r_addr_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h01000000)) 
    \out_ports[0]_i_2 
       (.I0(reg_addr[6]),
        .I1(reg_addr[7]),
        .I2(reg_addr[5]),
        .I3(\r_addr_reg[3]_0 ),
        .I4(\out_ports_reg[0] ),
        .O(w_led_data[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \out_ports[1]_i_2 
       (.I0(\out_ports[3]_i_6_n_0 ),
        .I1(reg_addr[3]),
        .I2(\r_addr_reg[10]_0 [0]),
        .I3(reg_addr[0]),
        .I4(\out_ports_reg[0] ),
        .O(w_led_data[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \out_ports[2]_i_2 
       (.I0(\out_ports[3]_i_6_n_0 ),
        .I1(\r_addr_reg[10]_0 [0]),
        .I2(reg_addr[3]),
        .I3(reg_addr[0]),
        .I4(\out_ports_reg[0] ),
        .O(w_led_data[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    \out_ports[3]_i_3 
       (.I0(r_addr[11]),
        .I1(sel0[4]),
        .I2(r_addr[8]),
        .I3(\r_state_reg[1]_0 [0]),
        .I4(\r_state_reg[1]_0 [1]),
        .O(\r_addr_reg[11]_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \out_ports[3]_i_4 
       (.I0(r_addr[9]),
        .I1(sel0[5]),
        .I2(sel0[6]),
        .I3(sel0[7]),
        .O(\r_addr_reg[9]_0 ));
  LUT5 #(
    .INIT(32'h00400000)) 
    \out_ports[3]_i_5 
       (.I0(\out_ports[3]_i_6_n_0 ),
        .I1(reg_addr[3]),
        .I2(\r_addr_reg[10]_0 [0]),
        .I3(reg_addr[0]),
        .I4(\out_ports_reg[0] ),
        .O(w_led_data[3]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \out_ports[3]_i_6 
       (.I0(reg_addr[1]),
        .I1(reg_addr[5]),
        .I2(reg_addr[6]),
        .I3(reg_addr[7]),
        .O(\out_ports[3]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h1110)) 
    \r_addr[15]_i_1 
       (.I0(\r_state_reg[1]_0 [1]),
        .I1(\r_state_reg[1]_0 [0]),
        .I2(S_AXI_awvalid),
        .I3(S_AXI_arvalid),
        .O(w_en_addr));
  FDCE \r_addr_reg[0] 
       (.C(aclk),
        .CE(w_en_addr),
        .CLR(\r_state_reg[1]_1 ),
        .D(S_AXI_awaddr[0]),
        .Q(reg_addr[0]));
  FDCE \r_addr_reg[10] 
       (.C(aclk),
        .CE(w_en_addr),
        .CLR(\r_state_reg[1]_1 ),
        .D(S_AXI_awaddr[10]),
        .Q(\r_addr_reg[10]_0 [2]));
  FDCE \r_addr_reg[11] 
       (.C(aclk),
        .CE(w_en_addr),
        .CLR(\r_state_reg[1]_1 ),
        .D(S_AXI_awaddr[11]),
        .Q(r_addr[11]));
  FDCE \r_addr_reg[12] 
       (.C(aclk),
        .CE(w_en_addr),
        .CLR(\r_state_reg[1]_1 ),
        .D(S_AXI_awaddr[12]),
        .Q(sel0[4]));
  FDCE \r_addr_reg[13] 
       (.C(aclk),
        .CE(w_en_addr),
        .CLR(\r_state_reg[1]_1 ),
        .D(S_AXI_awaddr[13]),
        .Q(sel0[5]));
  FDCE \r_addr_reg[14] 
       (.C(aclk),
        .CE(w_en_addr),
        .CLR(\r_state_reg[1]_1 ),
        .D(S_AXI_awaddr[14]),
        .Q(sel0[6]));
  FDCE \r_addr_reg[15] 
       (.C(aclk),
        .CE(w_en_addr),
        .CLR(\r_state_reg[1]_1 ),
        .D(S_AXI_awaddr[15]),
        .Q(sel0[7]));
  FDCE \r_addr_reg[1] 
       (.C(aclk),
        .CE(w_en_addr),
        .CLR(\r_state_reg[1]_1 ),
        .D(S_AXI_awaddr[1]),
        .Q(reg_addr[1]));
  FDCE \r_addr_reg[2] 
       (.C(aclk),
        .CE(w_en_addr),
        .CLR(\r_state_reg[1]_1 ),
        .D(S_AXI_awaddr[2]),
        .Q(\r_addr_reg[10]_0 [0]));
  FDCE \r_addr_reg[3] 
       (.C(aclk),
        .CE(w_en_addr),
        .CLR(\r_state_reg[1]_1 ),
        .D(S_AXI_awaddr[3]),
        .Q(reg_addr[3]));
  FDCE \r_addr_reg[4] 
       (.C(aclk),
        .CE(w_en_addr),
        .CLR(\r_state_reg[1]_1 ),
        .D(S_AXI_awaddr[4]),
        .Q(\r_addr_reg[10]_0 [1]));
  FDCE \r_addr_reg[5] 
       (.C(aclk),
        .CE(w_en_addr),
        .CLR(\r_state_reg[1]_1 ),
        .D(S_AXI_awaddr[5]),
        .Q(reg_addr[5]));
  FDCE \r_addr_reg[6] 
       (.C(aclk),
        .CE(w_en_addr),
        .CLR(\r_state_reg[1]_1 ),
        .D(S_AXI_awaddr[6]),
        .Q(reg_addr[6]));
  FDCE \r_addr_reg[7] 
       (.C(aclk),
        .CE(w_en_addr),
        .CLR(\r_state_reg[1]_1 ),
        .D(S_AXI_awaddr[7]),
        .Q(reg_addr[7]));
  FDCE \r_addr_reg[8] 
       (.C(aclk),
        .CE(w_en_addr),
        .CLR(\r_state_reg[1]_1 ),
        .D(S_AXI_awaddr[8]),
        .Q(r_addr[8]));
  FDCE \r_addr_reg[9] 
       (.C(aclk),
        .CE(w_en_addr),
        .CLR(\r_state_reg[1]_1 ),
        .D(S_AXI_awaddr[9]),
        .Q(r_addr[9]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \r_control[0]_i_1 
       (.I0(\r_control[1]_i_2_n_0 ),
        .I1(S_AXI_wvalid),
        .I2(\r_addr_reg[10]_0 [0]),
        .I3(\S_AXI_wdata[9] [0]),
        .I4(\FSM_onehot_r_state_reg[1] ),
        .O(S_AXI_wvalid_0[0]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \r_control[1]_i_1 
       (.I0(\r_control[1]_i_2_n_0 ),
        .I1(S_AXI_wvalid),
        .I2(\r_addr_reg[10]_0 [0]),
        .I3(\S_AXI_wdata[9] [1]),
        .I4(\FSM_onehot_r_state_reg[1] ),
        .O(S_AXI_wvalid_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \r_control[1]_i_2 
       (.I0(reg_addr[1]),
        .I1(reg_addr[3]),
        .I2(reg_addr[0]),
        .O(\r_control[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \r_control[1]_i_3 
       (.I0(Q[1]),
        .I1(reg_addr[5]),
        .I2(\r_addr_reg[10]_0 [1]),
        .I3(reg_addr[6]),
        .I4(reg_addr[7]),
        .O(\FSM_onehot_r_state_reg[1] ));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \r_dvsr[0]_i_1 
       (.I0(r_addr[8]),
        .I1(r_addr[9]),
        .I2(\r_state_reg[1]_0 [1]),
        .I3(\r_state_reg[1]_0 [0]),
        .I4(\FSM_onehot_w_next_state_reg[1]_i_2_n_0 ),
        .I5(S_AXI_wdata[0]),
        .O(\S_AXI_wdata[9] [0]));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \r_dvsr[1]_i_1 
       (.I0(r_addr[8]),
        .I1(r_addr[9]),
        .I2(\r_state_reg[1]_0 [1]),
        .I3(\r_state_reg[1]_0 [0]),
        .I4(\FSM_onehot_w_next_state_reg[1]_i_2_n_0 ),
        .I5(S_AXI_wdata[1]),
        .O(\S_AXI_wdata[9] [1]));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \r_dvsr[2]_i_1 
       (.I0(r_addr[8]),
        .I1(r_addr[9]),
        .I2(\r_state_reg[1]_0 [1]),
        .I3(\r_state_reg[1]_0 [0]),
        .I4(\FSM_onehot_w_next_state_reg[1]_i_2_n_0 ),
        .I5(S_AXI_wdata[2]),
        .O(\S_AXI_wdata[9] [2]));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \r_dvsr[3]_i_1 
       (.I0(r_addr[8]),
        .I1(r_addr[9]),
        .I2(\r_state_reg[1]_0 [1]),
        .I3(\r_state_reg[1]_0 [0]),
        .I4(\FSM_onehot_w_next_state_reg[1]_i_2_n_0 ),
        .I5(S_AXI_wdata[3]),
        .O(\S_AXI_wdata[9] [3]));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \r_dvsr[4]_i_1 
       (.I0(r_addr[8]),
        .I1(r_addr[9]),
        .I2(\r_state_reg[1]_0 [1]),
        .I3(\r_state_reg[1]_0 [0]),
        .I4(\FSM_onehot_w_next_state_reg[1]_i_2_n_0 ),
        .I5(S_AXI_wdata[4]),
        .O(\S_AXI_wdata[9] [4]));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \r_dvsr[5]_i_1 
       (.I0(r_addr[8]),
        .I1(r_addr[9]),
        .I2(\r_state_reg[1]_0 [1]),
        .I3(\r_state_reg[1]_0 [0]),
        .I4(\FSM_onehot_w_next_state_reg[1]_i_2_n_0 ),
        .I5(S_AXI_wdata[5]),
        .O(\S_AXI_wdata[9] [5]));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \r_dvsr[6]_i_1 
       (.I0(r_addr[8]),
        .I1(r_addr[9]),
        .I2(\r_state_reg[1]_0 [1]),
        .I3(\r_state_reg[1]_0 [0]),
        .I4(\FSM_onehot_w_next_state_reg[1]_i_2_n_0 ),
        .I5(S_AXI_wdata[6]),
        .O(\S_AXI_wdata[9] [6]));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \r_dvsr[7]_i_1 
       (.I0(r_addr[8]),
        .I1(r_addr[9]),
        .I2(\r_state_reg[1]_0 [1]),
        .I3(\r_state_reg[1]_0 [0]),
        .I4(\FSM_onehot_w_next_state_reg[1]_i_2_n_0 ),
        .I5(S_AXI_wdata[7]),
        .O(\S_AXI_wdata[9] [7]));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \r_dvsr[8]_i_1 
       (.I0(r_addr[8]),
        .I1(r_addr[9]),
        .I2(\r_state_reg[1]_0 [1]),
        .I3(\r_state_reg[1]_0 [0]),
        .I4(\FSM_onehot_w_next_state_reg[1]_i_2_n_0 ),
        .I5(S_AXI_wdata[8]),
        .O(\S_AXI_wdata[9] [8]));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \r_dvsr[9]_i_1 
       (.I0(Q[1]),
        .I1(\r_addr_reg[7]_0 ),
        .I2(S_AXI_wvalid),
        .I3(reg_addr[3]),
        .I4(\r_addr_reg[10]_0 [0]),
        .I5(\r_dvsr[9]_i_3_n_0 ),
        .O(E));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \r_dvsr[9]_i_2 
       (.I0(\FSM_onehot_w_next_state_reg[1]_i_2_n_0 ),
        .I1(S_AXI_wdata[9]),
        .I2(r_addr[8]),
        .I3(r_addr[9]),
        .I4(\r_state_reg[1]_0 [1]),
        .I5(\r_state_reg[1]_0 [0]),
        .O(\S_AXI_wdata[9] [9]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \r_dvsr[9]_i_3 
       (.I0(reg_addr[1]),
        .I1(reg_addr[0]),
        .O(\r_dvsr[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    \r_rd_logic[3]_i_3 
       (.I0(reg_addr[3]),
        .I1(\r_addr_reg[10]_0 [0]),
        .I2(\r_dvsr[9]_i_3_n_0 ),
        .I3(S_AXI_rready),
        .I4(rx_empty),
        .I5(\FSM_onehot_r_state_reg[1] ),
        .O(w_en_rd));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \r_reg_array[15][0]_i_1 
       (.I0(S_AXI_wdata[0]),
        .I1(\FSM_onehot_w_next_state_reg[1]_i_2_n_0 ),
        .I2(\r_reg_array[15][7]_i_4_n_0 ),
        .I3(\r_reg_array_reg[0][0] ),
        .O(\S_AXI_wdata[7] [0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \r_reg_array[15][1]_i_1 
       (.I0(S_AXI_wdata[1]),
        .I1(\FSM_onehot_w_next_state_reg[1]_i_2_n_0 ),
        .I2(\r_reg_array[15][7]_i_4_n_0 ),
        .I3(\r_reg_array_reg[0][0] ),
        .O(\S_AXI_wdata[7] [1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \r_reg_array[15][2]_i_1 
       (.I0(S_AXI_wdata[2]),
        .I1(\FSM_onehot_w_next_state_reg[1]_i_2_n_0 ),
        .I2(\r_reg_array[15][7]_i_4_n_0 ),
        .I3(\r_reg_array_reg[0][0] ),
        .O(\S_AXI_wdata[7] [2]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \r_reg_array[15][3]_i_1 
       (.I0(S_AXI_wdata[3]),
        .I1(\FSM_onehot_w_next_state_reg[1]_i_2_n_0 ),
        .I2(\r_reg_array[15][7]_i_4_n_0 ),
        .I3(\r_reg_array_reg[0][0] ),
        .O(\S_AXI_wdata[7] [3]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \r_reg_array[15][4]_i_1 
       (.I0(S_AXI_wdata[4]),
        .I1(\FSM_onehot_w_next_state_reg[1]_i_2_n_0 ),
        .I2(\r_reg_array[15][7]_i_4_n_0 ),
        .I3(\r_reg_array_reg[0][0] ),
        .O(\S_AXI_wdata[7] [4]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \r_reg_array[15][5]_i_1 
       (.I0(S_AXI_wdata[5]),
        .I1(\FSM_onehot_w_next_state_reg[1]_i_2_n_0 ),
        .I2(\r_reg_array[15][7]_i_4_n_0 ),
        .I3(\r_reg_array_reg[0][0] ),
        .O(\S_AXI_wdata[7] [5]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \r_reg_array[15][6]_i_1 
       (.I0(S_AXI_wdata[6]),
        .I1(\FSM_onehot_w_next_state_reg[1]_i_2_n_0 ),
        .I2(\r_reg_array[15][7]_i_4_n_0 ),
        .I3(\r_reg_array_reg[0][0] ),
        .O(\S_AXI_wdata[7] [6]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \r_reg_array[15][7]_i_2 
       (.I0(S_AXI_wdata[7]),
        .I1(\FSM_onehot_w_next_state_reg[1]_i_2_n_0 ),
        .I2(\r_reg_array[15][7]_i_4_n_0 ),
        .I3(\r_reg_array_reg[0][0] ),
        .O(\S_AXI_wdata[7] [7]));
  LUT6 #(
    .INIT(64'h0000020000000000)) 
    \r_reg_array[15][7]_i_3 
       (.I0(\r_addr_reg[10]_0 [0]),
        .I1(reg_addr[3]),
        .I2(tx_full),
        .I3(S_AXI_wvalid),
        .I4(\r_dvsr[9]_i_3_n_0 ),
        .I5(\FSM_onehot_r_state_reg[1] ),
        .O(w_en_wr));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \r_reg_array[15][7]_i_4 
       (.I0(\r_state_reg[1]_0 [0]),
        .I1(\r_state_reg[1]_0 [1]),
        .I2(r_addr[9]),
        .I3(r_addr[8]),
        .O(\r_reg_array[15][7]_i_4_n_0 ));
  FDCE \r_state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r_state_reg[1]_1 ),
        .D(debug_w_next_state[0]),
        .Q(\r_state_reg[1]_0 [0]));
  FDCE \r_state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r_state_reg[1]_1 ),
        .D(debug_w_next_state[1]),
        .Q(\r_state_reg[1]_0 [1]));
  LUT6 #(
    .INIT(64'h0200FFFF02000000)) 
    slave_error_i_1
       (.I0(\FSM_onehot_r_state_reg[1] ),
        .I1(\r_dvsr[9]_i_3_n_0 ),
        .I2(reg_addr[3]),
        .I3(slave_error_reg),
        .I4(slave_error_reg_0),
        .I5(slot_slave_error[1]),
        .O(\r_addr_reg[3]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFFE00)) 
    w_decode_error_reg_i_2
       (.I0(\r_addr_reg[7]_0 ),
        .I1(reg_addr[0]),
        .I2(reg_addr[1]),
        .I3(decode_error_reg_0[0]),
        .I4(decode_error_reg_0[1]),
        .O(w_decode_error__0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    w_decode_error_reg_i_3
       (.I0(reg_addr[7]),
        .I1(reg_addr[6]),
        .I2(\r_addr_reg[10]_0 [1]),
        .I3(reg_addr[5]),
        .O(\r_addr_reg[7]_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \w_next_state_reg[0] 
       (.CLR(1'b0),
        .D(w_next_state[0]),
        .G(\w_next_state_reg[1]_i_2_n_0 ),
        .GE(1'b1),
        .Q(debug_w_next_state[0]));
  LUT2 #(
    .INIT(4'h7)) 
    \w_next_state_reg[0]_i_1 
       (.I0(S_AXI_bready),
        .I1(\r_state_reg[1]_0 [1]),
        .O(w_next_state[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \w_next_state_reg[1] 
       (.CLR(1'b0),
        .D(w_next_state[1]),
        .G(\w_next_state_reg[1]_i_2_n_0 ),
        .GE(1'b1),
        .Q(debug_w_next_state[1]));
  LUT6 #(
    .INIT(64'h4444444444447444)) 
    \w_next_state_reg[1]_i_1 
       (.I0(S_AXI_bready),
        .I1(\r_state_reg[1]_0 [1]),
        .I2(\w_next_state_reg[1]_i_3_n_0 ),
        .I3(\r_state_reg[1]_0 [0]),
        .I4(r_addr[11]),
        .I5(\r_addr_reg[10]_0 [2]),
        .O(w_next_state[1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \w_next_state_reg[1]_i_2 
       (.I0(\r_state_reg[1]_0 [0]),
        .I1(\r_state_reg[1]_0 [1]),
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
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    w_slave_error_reg_i_3
       (.I0(reg_addr[3]),
        .I1(\r_addr_reg[10]_0 [0]),
        .I2(reg_addr[0]),
        .I3(reg_addr[1]),
        .O(\r_addr_reg[3]_0 ));
  LUT4 #(
    .INIT(16'hA0C0)) 
    wr_done_i_1
       (.I0(S_AXI_wvalid),
        .I1(wr_done_i_2_n_0),
        .I2(Q[1]),
        .I3(\r_addr_reg[7]_0 ),
        .O(w_wr_done));
  LUT5 #(
    .INIT(32'h00001000)) 
    wr_done_i_1__0
       (.I0(reg_addr[1]),
        .I1(reg_addr[0]),
        .I2(decode_error_reg),
        .I3(S_AXI_wvalid),
        .I4(\r_addr_reg[7]_0 ),
        .O(w_wr_done_1));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000000)) 
    wr_done_i_2
       (.I0(S_AXI_rready),
        .I1(reg_addr[3]),
        .I2(\r_addr_reg[10]_0 [0]),
        .I3(reg_addr[0]),
        .I4(reg_addr[1]),
        .I5(S_AXI_wvalid),
        .O(wr_done_i_2_n_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_buad_generator
   (\r_cnt_reg[1]_0 ,
    tick,
    w_next_cnt1_carry_0,
    Q,
    aclk,
    \r_cnt_reg[0]_0 );
  output \r_cnt_reg[1]_0 ;
  output tick;
  input [9:0]w_next_cnt1_carry_0;
  input [0:0]Q;
  input aclk;
  input \r_cnt_reg[0]_0 ;

  wire [0:0]Q;
  wire aclk;
  wire load;
  wire \r_cnt[5]_i_2_n_0 ;
  wire \r_cnt[9]_i_2_n_0 ;
  wire [9:0]r_cnt_reg;
  wire \r_cnt_reg[0]_0 ;
  wire \r_cnt_reg[1]_0 ;
  wire \r_sampling_ticks[4]_i_4_n_0 ;
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

  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \r_cnt[0]_i_1 
       (.I0(load),
        .I1(r_cnt_reg[0]),
        .O(w_next_cnt[0]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h14)) 
    \r_cnt[1]_i_1 
       (.I0(load),
        .I1(r_cnt_reg[0]),
        .I2(r_cnt_reg[1]),
        .O(w_next_cnt[1]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h0708)) 
    \r_cnt[2]_i_1 
       (.I0(r_cnt_reg[1]),
        .I1(r_cnt_reg[0]),
        .I2(load),
        .I3(r_cnt_reg[2]),
        .O(w_next_cnt[2]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h12)) 
    \r_cnt[6]_i_1 
       (.I0(\r_cnt[9]_i_2_n_0 ),
        .I1(load),
        .I2(r_cnt_reg[6]),
        .O(w_next_cnt[6]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h0708)) 
    \r_cnt[7]_i_1 
       (.I0(r_cnt_reg[6]),
        .I1(\r_cnt[9]_i_2_n_0 ),
        .I2(load),
        .I3(r_cnt_reg[7]),
        .O(w_next_cnt[7]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
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
       (.I0(\r_sampling_ticks[4]_i_4_n_0 ),
        .I1(r_cnt_reg[2]),
        .I2(r_cnt_reg[3]),
        .I3(r_cnt_reg[0]),
        .I4(r_cnt_reg[1]),
        .O(tick));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \r_sampling_ticks[4]_i_3 
       (.I0(r_cnt_reg[1]),
        .I1(r_cnt_reg[0]),
        .I2(r_cnt_reg[3]),
        .I3(r_cnt_reg[2]),
        .I4(\r_sampling_ticks[4]_i_4_n_0 ),
        .I5(Q),
        .O(\r_cnt_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \r_sampling_ticks[4]_i_4 
       (.I0(r_cnt_reg[4]),
        .I1(r_cnt_reg[5]),
        .I2(r_cnt_reg[6]),
        .I3(r_cnt_reg[7]),
        .I4(r_cnt_reg[9]),
        .I5(r_cnt_reg[8]),
        .O(\r_sampling_ticks[4]_i_4_n_0 ));
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
    full_reg,
    aclk,
    \r_wr_logic_reg[3] ,
    w_en_rd,
    Q,
    full_reg_0,
    full_reg_1,
    full_reg_2,
    E);
  output empty_reg;
  output full_reg;
  input aclk;
  input \r_wr_logic_reg[3] ;
  input w_en_rd;
  input [0:0]Q;
  input full_reg_0;
  input [1:0]full_reg_1;
  input full_reg_2;
  input [0:0]E;

  wire [0:0]E;
  wire [0:0]Q;
  wire aclk;
  wire empty_reg;
  wire full_reg;
  wire full_reg_0;
  wire [1:0]full_reg_1;
  wire full_reg_2;
  wire \r_wr_logic_reg[3] ;
  wire w_en_rd;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_controller_1 control
       (.E(E),
        .Q(Q),
        .aclk(aclk),
        .empty_reg_0(empty_reg),
        .full_reg_0(full_reg),
        .full_reg_1(full_reg_0),
        .full_reg_2(full_reg_1),
        .full_reg_3(full_reg_2),
        .\r_wr_logic_reg[3]_0 (\r_wr_logic_reg[3] ),
        .w_en_rd(w_en_rd));
endmodule

(* ORIG_REF_NAME = "fifo" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_0
   (empty_reg,
    arst_n_0,
    full_reg,
    full_reg_0,
    r_reg_array__0,
    aclk,
    arst_n,
    empty_reg_0,
    empty_reg_1,
    w_en_wr,
    Q,
    S_AXI_rready,
    S_AXI_wvalid,
    slave_error_reg,
    slave_error_reg_0,
    full_reg_1,
    \r_reg_array_reg[0][7] ,
    E,
    \r_wr_logic_reg[0] );
  output empty_reg;
  output arst_n_0;
  output full_reg;
  output full_reg_0;
  output [7:0]r_reg_array__0;
  input aclk;
  input arst_n;
  input empty_reg_0;
  input empty_reg_1;
  input w_en_wr;
  input [0:0]Q;
  input S_AXI_rready;
  input S_AXI_wvalid;
  input [0:0]slave_error_reg;
  input slave_error_reg_0;
  input full_reg_1;
  input [7:0]\r_reg_array_reg[0][7] ;
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
  wire control_n_2;
  wire control_n_3;
  wire control_n_4;
  wire control_n_5;
  wire control_n_6;
  wire control_n_7;
  wire control_n_8;
  wire control_n_9;
  wire empty_reg;
  wire empty_reg_0;
  wire empty_reg_1;
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
       (.E(control_n_2),
        .Q(Q),
        .S_AXI_rready(S_AXI_rready),
        .S_AXI_wvalid(S_AXI_wvalid),
        .aclk(aclk),
        .empty_reg_0(empty_reg),
        .empty_reg_1(empty_reg_0),
        .empty_reg_2(empty_reg_1),
        .full_reg_0(full_reg),
        .full_reg_1(full_reg_0),
        .full_reg_2(full_reg_1),
        .\r_rd_logic_reg[0]_0 (E),
        .\r_rd_logic_reg[3]_0 (r_rd_logic_reg),
        .\r_wr_logic_reg[0]_0 (control_n_3),
        .\r_wr_logic_reg[0]_1 (control_n_7),
        .\r_wr_logic_reg[0]_2 (control_n_11),
        .\r_wr_logic_reg[0]_3 (control_n_15),
        .\r_wr_logic_reg[0]_4 (\r_wr_logic_reg[0] ),
        .\r_wr_logic_reg[1]_0 (control_n_4),
        .\r_wr_logic_reg[1]_1 (control_n_5),
        .\r_wr_logic_reg[1]_10 (control_n_17),
        .\r_wr_logic_reg[1]_2 (control_n_6),
        .\r_wr_logic_reg[1]_3 (control_n_8),
        .\r_wr_logic_reg[1]_4 (control_n_9),
        .\r_wr_logic_reg[1]_5 (control_n_10),
        .\r_wr_logic_reg[1]_6 (control_n_12),
        .\r_wr_logic_reg[1]_7 (control_n_13),
        .\r_wr_logic_reg[1]_8 (control_n_14),
        .\r_wr_logic_reg[1]_9 (control_n_16),
        .\r_wr_logic_reg[3]_0 (arst_n_0),
        .slave_error_reg(slave_error_reg),
        .slave_error_reg_0(slave_error_reg_0),
        .w_en_wr(w_en_wr));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_file rf
       (.E(control_n_17),
        .aclk(aclk),
        .arst_n(arst_n),
        .arst_n_0(arst_n_0),
        .\r_in_shift_reg[7] (r_rd_logic_reg),
        .r_reg_array__0(r_reg_array__0),
        .\r_reg_array_reg[0][7]_0 (\r_reg_array_reg[0][7] ),
        .\r_reg_array_reg[0][7]_1 (control_n_2),
        .\r_reg_array_reg[10][7]_0 (control_n_12),
        .\r_reg_array_reg[11][7]_0 (control_n_13),
        .\r_reg_array_reg[12][7]_0 (control_n_14),
        .\r_reg_array_reg[13][7]_0 (control_n_15),
        .\r_reg_array_reg[14][7]_0 (control_n_16),
        .\r_reg_array_reg[1][7]_0 (control_n_3),
        .\r_reg_array_reg[2][7]_0 (control_n_4),
        .\r_reg_array_reg[3][7]_0 (control_n_5),
        .\r_reg_array_reg[4][7]_0 (control_n_6),
        .\r_reg_array_reg[5][7]_0 (control_n_7),
        .\r_reg_array_reg[6][7]_0 (control_n_8),
        .\r_reg_array_reg[7][7]_0 (control_n_9),
        .\r_reg_array_reg[8][7]_0 (control_n_10),
        .\r_reg_array_reg[9][7]_0 (control_n_11));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_controller
   (empty_reg_0,
    full_reg_0,
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
    full_reg_1,
    \r_rd_logic_reg[3]_0 ,
    aclk,
    \r_wr_logic_reg[3]_0 ,
    empty_reg_1,
    empty_reg_2,
    w_en_wr,
    Q,
    S_AXI_rready,
    S_AXI_wvalid,
    slave_error_reg,
    slave_error_reg_0,
    full_reg_2,
    \r_rd_logic_reg[0]_0 ,
    \r_wr_logic_reg[0]_4 );
  output empty_reg_0;
  output full_reg_0;
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
  output full_reg_1;
  output [3:0]\r_rd_logic_reg[3]_0 ;
  input aclk;
  input \r_wr_logic_reg[3]_0 ;
  input empty_reg_1;
  input empty_reg_2;
  input w_en_wr;
  input [0:0]Q;
  input S_AXI_rready;
  input S_AXI_wvalid;
  input [0:0]slave_error_reg;
  input slave_error_reg_0;
  input full_reg_2;
  input [0:0]\r_rd_logic_reg[0]_0 ;
  input [0:0]\r_wr_logic_reg[0]_4 ;

  wire [0:0]E;
  wire [0:0]Q;
  wire S_AXI_rready;
  wire S_AXI_wvalid;
  wire aclk;
  wire empty_i_1_n_0;
  wire empty_i_2_n_0;
  wire empty_i_5_n_0;
  wire empty_i_6_n_0;
  wire empty_reg_0;
  wire empty_reg_1;
  wire empty_reg_2;
  wire full_i_1_n_0;
  wire full_i_2__0_n_0;
  wire full_i_3__0_n_0;
  wire full_reg_0;
  wire full_reg_1;
  wire full_reg_2;
  wire [3:0]p_0_in__0;
  wire [3:0]p_0_in__2;
  wire [0:0]\r_rd_logic_reg[0]_0 ;
  wire [3:0]\r_rd_logic_reg[3]_0 ;
  wire [3:0]r_wr_logic_reg;
  wire [0:0]\r_wr_logic_reg[0]_0 ;
  wire [0:0]\r_wr_logic_reg[0]_1 ;
  wire [0:0]\r_wr_logic_reg[0]_2 ;
  wire [0:0]\r_wr_logic_reg[0]_3 ;
  wire [0:0]\r_wr_logic_reg[0]_4 ;
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
        .I1(full_reg_0),
        .I2(Q),
        .I3(empty_reg_0),
        .I4(full_reg_2),
        .I5(w_en_wr),
        .O(empty_i_1_n_0));
  LUT5 #(
    .INIT(32'h70000070)) 
    empty_i_2
       (.I0(empty_reg_1),
        .I1(empty_reg_2),
        .I2(empty_i_5_n_0),
        .I3(r_wr_logic_reg[3]),
        .I4(empty_i_6_n_0),
        .O(empty_i_2_n_0));
  LUT6 #(
    .INIT(64'h0140802010040802)) 
    empty_i_5
       (.I0(r_wr_logic_reg[0]),
        .I1(r_wr_logic_reg[1]),
        .I2(r_wr_logic_reg[2]),
        .I3(\r_rd_logic_reg[3]_0 [1]),
        .I4(\r_rd_logic_reg[3]_0 [0]),
        .I5(\r_rd_logic_reg[3]_0 [2]),
        .O(empty_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    empty_i_6
       (.I0(\r_rd_logic_reg[3]_0 [0]),
        .I1(\r_rd_logic_reg[3]_0 [1]),
        .I2(\r_rd_logic_reg[3]_0 [2]),
        .I3(\r_rd_logic_reg[3]_0 [3]),
        .O(empty_i_6_n_0));
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
        .I1(full_reg_0),
        .I2(Q),
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
        .I5(\r_rd_logic_reg[3]_0 [3]),
        .O(full_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h0842100010000842)) 
    full_i_3__0
       (.I0(\r_rd_logic_reg[3]_0 [0]),
        .I1(\r_rd_logic_reg[3]_0 [1]),
        .I2(r_wr_logic_reg[0]),
        .I3(r_wr_logic_reg[1]),
        .I4(r_wr_logic_reg[2]),
        .I5(\r_rd_logic_reg[3]_0 [2]),
        .O(full_i_3__0_n_0));
  FDCE full_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r_wr_logic_reg[3]_0 ),
        .D(full_i_1_n_0),
        .Q(full_reg_0));
  LUT2 #(
    .INIT(4'h1)) 
    \r_rd_logic[0]_i_1__0 
       (.I0(Q),
        .I1(\r_rd_logic_reg[3]_0 [0]),
        .O(p_0_in__2[0]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \r_rd_logic[1]_i_1__0 
       (.I0(\r_rd_logic_reg[3]_0 [1]),
        .I1(\r_rd_logic_reg[3]_0 [0]),
        .I2(Q),
        .O(p_0_in__2[1]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h006A)) 
    \r_rd_logic[2]_i_1__0 
       (.I0(\r_rd_logic_reg[3]_0 [2]),
        .I1(\r_rd_logic_reg[3]_0 [0]),
        .I2(\r_rd_logic_reg[3]_0 [1]),
        .I3(Q),
        .O(p_0_in__2[2]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'h00006AAA)) 
    \r_rd_logic[3]_i_2__0 
       (.I0(\r_rd_logic_reg[3]_0 [3]),
        .I1(\r_rd_logic_reg[3]_0 [2]),
        .I2(\r_rd_logic_reg[3]_0 [1]),
        .I3(\r_rd_logic_reg[3]_0 [0]),
        .I4(Q),
        .O(p_0_in__2[3]));
  FDCE \r_rd_logic_reg[0] 
       (.C(aclk),
        .CE(\r_rd_logic_reg[0]_0 ),
        .CLR(\r_wr_logic_reg[3]_0 ),
        .D(p_0_in__2[0]),
        .Q(\r_rd_logic_reg[3]_0 [0]));
  FDCE \r_rd_logic_reg[1] 
       (.C(aclk),
        .CE(\r_rd_logic_reg[0]_0 ),
        .CLR(\r_wr_logic_reg[3]_0 ),
        .D(p_0_in__2[1]),
        .Q(\r_rd_logic_reg[3]_0 [1]));
  FDCE \r_rd_logic_reg[2] 
       (.C(aclk),
        .CE(\r_rd_logic_reg[0]_0 ),
        .CLR(\r_wr_logic_reg[3]_0 ),
        .D(p_0_in__2[2]),
        .Q(\r_rd_logic_reg[3]_0 [2]));
  FDCE \r_rd_logic_reg[3] 
       (.C(aclk),
        .CE(\r_rd_logic_reg[0]_0 ),
        .CLR(\r_wr_logic_reg[3]_0 ),
        .D(p_0_in__2[3]),
        .Q(\r_rd_logic_reg[3]_0 [3]));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000010)) 
    \r_reg_array[0][7]_i_1 
       (.I0(r_wr_logic_reg[2]),
        .I1(r_wr_logic_reg[3]),
        .I2(w_en_wr),
        .I3(r_wr_logic_reg[1]),
        .I4(r_wr_logic_reg[0]),
        .I5(Q),
        .O(E));
  LUT6 #(
    .INIT(64'hFFFFFFFF00002000)) 
    \r_reg_array[10][7]_i_1 
       (.I0(r_wr_logic_reg[1]),
        .I1(r_wr_logic_reg[0]),
        .I2(r_wr_logic_reg[3]),
        .I3(w_en_wr),
        .I4(r_wr_logic_reg[2]),
        .I5(Q),
        .O(\r_wr_logic_reg[1]_6 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00008000)) 
    \r_reg_array[11][7]_i_1 
       (.I0(r_wr_logic_reg[1]),
        .I1(r_wr_logic_reg[0]),
        .I2(r_wr_logic_reg[3]),
        .I3(w_en_wr),
        .I4(r_wr_logic_reg[2]),
        .I5(Q),
        .O(\r_wr_logic_reg[1]_7 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF10000000)) 
    \r_reg_array[12][7]_i_1 
       (.I0(r_wr_logic_reg[1]),
        .I1(r_wr_logic_reg[0]),
        .I2(r_wr_logic_reg[3]),
        .I3(w_en_wr),
        .I4(r_wr_logic_reg[2]),
        .I5(Q),
        .O(\r_wr_logic_reg[1]_8 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF20000000)) 
    \r_reg_array[13][7]_i_1 
       (.I0(r_wr_logic_reg[0]),
        .I1(r_wr_logic_reg[1]),
        .I2(r_wr_logic_reg[3]),
        .I3(w_en_wr),
        .I4(r_wr_logic_reg[2]),
        .I5(Q),
        .O(\r_wr_logic_reg[0]_3 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF20000000)) 
    \r_reg_array[14][7]_i_1 
       (.I0(r_wr_logic_reg[1]),
        .I1(r_wr_logic_reg[0]),
        .I2(r_wr_logic_reg[3]),
        .I3(w_en_wr),
        .I4(r_wr_logic_reg[2]),
        .I5(Q),
        .O(\r_wr_logic_reg[1]_9 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF80000000)) 
    \r_reg_array[15][7]_i_1 
       (.I0(r_wr_logic_reg[1]),
        .I1(r_wr_logic_reg[0]),
        .I2(r_wr_logic_reg[3]),
        .I3(w_en_wr),
        .I4(r_wr_logic_reg[2]),
        .I5(Q),
        .O(\r_wr_logic_reg[1]_10 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00020000)) 
    \r_reg_array[1][7]_i_1 
       (.I0(r_wr_logic_reg[0]),
        .I1(r_wr_logic_reg[1]),
        .I2(r_wr_logic_reg[2]),
        .I3(r_wr_logic_reg[3]),
        .I4(w_en_wr),
        .I5(Q),
        .O(\r_wr_logic_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00020000)) 
    \r_reg_array[2][7]_i_1 
       (.I0(r_wr_logic_reg[1]),
        .I1(r_wr_logic_reg[0]),
        .I2(r_wr_logic_reg[2]),
        .I3(r_wr_logic_reg[3]),
        .I4(w_en_wr),
        .I5(Q),
        .O(\r_wr_logic_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00080000)) 
    \r_reg_array[3][7]_i_1 
       (.I0(r_wr_logic_reg[1]),
        .I1(r_wr_logic_reg[0]),
        .I2(r_wr_logic_reg[2]),
        .I3(r_wr_logic_reg[3]),
        .I4(w_en_wr),
        .I5(Q),
        .O(\r_wr_logic_reg[1]_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF01000000)) 
    \r_reg_array[4][7]_i_1 
       (.I0(r_wr_logic_reg[1]),
        .I1(r_wr_logic_reg[0]),
        .I2(r_wr_logic_reg[3]),
        .I3(w_en_wr),
        .I4(r_wr_logic_reg[2]),
        .I5(Q),
        .O(\r_wr_logic_reg[1]_2 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF02000000)) 
    \r_reg_array[5][7]_i_1 
       (.I0(r_wr_logic_reg[0]),
        .I1(r_wr_logic_reg[1]),
        .I2(r_wr_logic_reg[3]),
        .I3(w_en_wr),
        .I4(r_wr_logic_reg[2]),
        .I5(Q),
        .O(\r_wr_logic_reg[0]_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF02000000)) 
    \r_reg_array[6][7]_i_1 
       (.I0(r_wr_logic_reg[1]),
        .I1(r_wr_logic_reg[0]),
        .I2(r_wr_logic_reg[3]),
        .I3(w_en_wr),
        .I4(r_wr_logic_reg[2]),
        .I5(Q),
        .O(\r_wr_logic_reg[1]_3 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF08000000)) 
    \r_reg_array[7][7]_i_1 
       (.I0(r_wr_logic_reg[1]),
        .I1(r_wr_logic_reg[0]),
        .I2(r_wr_logic_reg[3]),
        .I3(w_en_wr),
        .I4(r_wr_logic_reg[2]),
        .I5(Q),
        .O(\r_wr_logic_reg[1]_4 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00001000)) 
    \r_reg_array[8][7]_i_1 
       (.I0(r_wr_logic_reg[1]),
        .I1(r_wr_logic_reg[0]),
        .I2(r_wr_logic_reg[3]),
        .I3(w_en_wr),
        .I4(r_wr_logic_reg[2]),
        .I5(Q),
        .O(\r_wr_logic_reg[1]_5 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00002000)) 
    \r_reg_array[9][7]_i_1 
       (.I0(r_wr_logic_reg[0]),
        .I1(r_wr_logic_reg[1]),
        .I2(r_wr_logic_reg[3]),
        .I3(w_en_wr),
        .I4(r_wr_logic_reg[2]),
        .I5(Q),
        .O(\r_wr_logic_reg[0]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \r_wr_logic[0]_i_1__0 
       (.I0(r_wr_logic_reg[0]),
        .I1(Q),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \r_wr_logic[1]_i_1__0 
       (.I0(r_wr_logic_reg[0]),
        .I1(r_wr_logic_reg[1]),
        .I2(Q),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h006A)) 
    \r_wr_logic[2]_i_1__0 
       (.I0(r_wr_logic_reg[2]),
        .I1(r_wr_logic_reg[1]),
        .I2(r_wr_logic_reg[0]),
        .I3(Q),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h00006AAA)) 
    \r_wr_logic[3]_i_2__0 
       (.I0(r_wr_logic_reg[3]),
        .I1(r_wr_logic_reg[2]),
        .I2(r_wr_logic_reg[0]),
        .I3(r_wr_logic_reg[1]),
        .I4(Q),
        .O(p_0_in__0[3]));
  FDCE \r_wr_logic_reg[0] 
       (.C(aclk),
        .CE(\r_wr_logic_reg[0]_4 ),
        .CLR(\r_wr_logic_reg[3]_0 ),
        .D(p_0_in__0[0]),
        .Q(r_wr_logic_reg[0]));
  FDCE \r_wr_logic_reg[1] 
       (.C(aclk),
        .CE(\r_wr_logic_reg[0]_4 ),
        .CLR(\r_wr_logic_reg[3]_0 ),
        .D(p_0_in__0[1]),
        .Q(r_wr_logic_reg[1]));
  FDCE \r_wr_logic_reg[2] 
       (.C(aclk),
        .CE(\r_wr_logic_reg[0]_4 ),
        .CLR(\r_wr_logic_reg[3]_0 ),
        .D(p_0_in__0[2]),
        .Q(r_wr_logic_reg[2]));
  FDCE \r_wr_logic_reg[3] 
       (.C(aclk),
        .CE(\r_wr_logic_reg[0]_4 ),
        .CLR(\r_wr_logic_reg[3]_0 ),
        .D(p_0_in__0[3]),
        .Q(r_wr_logic_reg[3]));
  LUT5 #(
    .INIT(32'hACFCAC30)) 
    slave_error_i_2
       (.I0(full_reg_0),
        .I1(S_AXI_rready),
        .I2(S_AXI_wvalid),
        .I3(slave_error_reg),
        .I4(slave_error_reg_0),
        .O(full_reg_1));
endmodule

(* ORIG_REF_NAME = "fifo_controller" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_controller_1
   (empty_reg_0,
    full_reg_0,
    aclk,
    \r_wr_logic_reg[3]_0 ,
    w_en_rd,
    Q,
    full_reg_1,
    full_reg_2,
    full_reg_3,
    E);
  output empty_reg_0;
  output full_reg_0;
  input aclk;
  input \r_wr_logic_reg[3]_0 ;
  input w_en_rd;
  input [0:0]Q;
  input full_reg_1;
  input [1:0]full_reg_2;
  input full_reg_3;
  input [0:0]E;

  wire [0:0]E;
  wire [0:0]Q;
  wire aclk;
  wire empty_i_1__0_n_0;
  wire empty_i_2__0_n_0;
  wire empty_i_3__0_n_0;
  wire empty_i_4__0_n_0;
  wire empty_i_5__0_n_0;
  wire empty_reg_0;
  wire full_i_1__0_n_0;
  wire full_i_2_n_0;
  wire full_i_4_n_0;
  wire full_reg_0;
  wire full_reg_1;
  wire [1:0]full_reg_2;
  wire full_reg_3;
  wire [3:0]p_0_in;
  wire [3:0]p_0_in__1;
  wire \r_rd_logic[3]_i_1_n_0 ;
  wire [3:0]r_rd_logic_reg;
  wire [3:0]r_wr_logic_reg;
  wire \r_wr_logic_reg[3]_0 ;
  wire w_en_rd;
  wire [3:3]w_full_next1;

  LUT6 #(
    .INIT(64'hFAF0FFFAFEF2FFF0)) 
    empty_i_1__0
       (.I0(empty_i_2__0_n_0),
        .I1(full_reg_0),
        .I2(Q),
        .I3(empty_reg_0),
        .I4(full_reg_3),
        .I5(w_en_rd),
        .O(empty_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h0888888800000000)) 
    empty_i_2__0
       (.I0(empty_i_3__0_n_0),
        .I1(empty_i_4__0_n_0),
        .I2(full_reg_1),
        .I3(full_reg_2[0]),
        .I4(full_reg_2[1]),
        .I5(empty_i_5__0_n_0),
        .O(empty_i_2__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h6A95)) 
    empty_i_3__0
       (.I0(r_rd_logic_reg[2]),
        .I1(r_rd_logic_reg[0]),
        .I2(r_rd_logic_reg[1]),
        .I3(r_wr_logic_reg[2]),
        .O(empty_i_3__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h0690)) 
    empty_i_4__0
       (.I0(r_wr_logic_reg[1]),
        .I1(r_rd_logic_reg[1]),
        .I2(r_wr_logic_reg[0]),
        .I3(r_rd_logic_reg[0]),
        .O(empty_i_4__0_n_0));
  LUT5 #(
    .INIT(32'h6AAA9555)) 
    empty_i_5__0
       (.I0(r_rd_logic_reg[3]),
        .I1(r_rd_logic_reg[2]),
        .I2(r_rd_logic_reg[1]),
        .I3(r_rd_logic_reg[0]),
        .I4(r_wr_logic_reg[3]),
        .O(empty_i_5__0_n_0));
  FDPE empty_reg
       (.C(aclk),
        .CE(1'b1),
        .D(empty_i_1__0_n_0),
        .PRE(\r_wr_logic_reg[3]_0 ),
        .Q(empty_reg_0));
  LUT6 #(
    .INIT(64'h0A0C0C0A0E0E0C0C)) 
    full_i_1__0
       (.I0(full_i_2_n_0),
        .I1(full_reg_0),
        .I2(Q),
        .I3(empty_reg_0),
        .I4(full_reg_3),
        .I5(w_en_rd),
        .O(full_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h9000000000000000)) 
    full_i_2
       (.I0(r_rd_logic_reg[3]),
        .I1(w_full_next1),
        .I2(full_reg_2[1]),
        .I3(full_reg_2[0]),
        .I4(full_reg_1),
        .I5(full_i_4_n_0),
        .O(full_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    full_i_3
       (.I0(r_wr_logic_reg[0]),
        .I1(r_wr_logic_reg[1]),
        .I2(r_wr_logic_reg[2]),
        .I3(r_wr_logic_reg[3]),
        .O(w_full_next1));
  LUT6 #(
    .INIT(64'h0140802010040802)) 
    full_i_4
       (.I0(r_rd_logic_reg[0]),
        .I1(r_rd_logic_reg[1]),
        .I2(r_wr_logic_reg[2]),
        .I3(r_wr_logic_reg[1]),
        .I4(r_wr_logic_reg[0]),
        .I5(r_rd_logic_reg[2]),
        .O(full_i_4_n_0));
  FDCE full_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r_wr_logic_reg[3]_0 ),
        .D(full_i_1__0_n_0),
        .Q(full_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \r_rd_logic[0]_i_1 
       (.I0(Q),
        .I1(r_rd_logic_reg[0]),
        .O(p_0_in__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \r_rd_logic[1]_i_1 
       (.I0(r_rd_logic_reg[1]),
        .I1(r_rd_logic_reg[0]),
        .I2(Q),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h006A)) 
    \r_rd_logic[2]_i_1 
       (.I0(r_rd_logic_reg[2]),
        .I1(r_rd_logic_reg[0]),
        .I2(r_rd_logic_reg[1]),
        .I3(Q),
        .O(p_0_in__1[2]));
  LUT3 #(
    .INIT(8'hF4)) 
    \r_rd_logic[3]_i_1 
       (.I0(empty_reg_0),
        .I1(w_en_rd),
        .I2(Q),
        .O(\r_rd_logic[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h00006AAA)) 
    \r_rd_logic[3]_i_2 
       (.I0(r_rd_logic_reg[3]),
        .I1(r_rd_logic_reg[2]),
        .I2(r_rd_logic_reg[1]),
        .I3(r_rd_logic_reg[0]),
        .I4(Q),
        .O(p_0_in__1[3]));
  FDCE \r_rd_logic_reg[0] 
       (.C(aclk),
        .CE(\r_rd_logic[3]_i_1_n_0 ),
        .CLR(\r_wr_logic_reg[3]_0 ),
        .D(p_0_in__1[0]),
        .Q(r_rd_logic_reg[0]));
  FDCE \r_rd_logic_reg[1] 
       (.C(aclk),
        .CE(\r_rd_logic[3]_i_1_n_0 ),
        .CLR(\r_wr_logic_reg[3]_0 ),
        .D(p_0_in__1[1]),
        .Q(r_rd_logic_reg[1]));
  FDCE \r_rd_logic_reg[2] 
       (.C(aclk),
        .CE(\r_rd_logic[3]_i_1_n_0 ),
        .CLR(\r_wr_logic_reg[3]_0 ),
        .D(p_0_in__1[2]),
        .Q(r_rd_logic_reg[2]));
  FDCE \r_rd_logic_reg[3] 
       (.C(aclk),
        .CE(\r_rd_logic[3]_i_1_n_0 ),
        .CLR(\r_wr_logic_reg[3]_0 ),
        .D(p_0_in__1[3]),
        .Q(r_rd_logic_reg[3]));
  LUT2 #(
    .INIT(4'h1)) 
    \r_wr_logic[0]_i_1 
       (.I0(r_wr_logic_reg[0]),
        .I1(Q),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \r_wr_logic[1]_i_1 
       (.I0(r_wr_logic_reg[1]),
        .I1(r_wr_logic_reg[0]),
        .I2(Q),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h0078)) 
    \r_wr_logic[2]_i_1 
       (.I0(r_wr_logic_reg[0]),
        .I1(r_wr_logic_reg[1]),
        .I2(r_wr_logic_reg[2]),
        .I3(Q),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
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
        .CE(E),
        .CLR(\r_wr_logic_reg[3]_0 ),
        .D(p_0_in[0]),
        .Q(r_wr_logic_reg[0]));
  FDCE \r_wr_logic_reg[1] 
       (.C(aclk),
        .CE(E),
        .CLR(\r_wr_logic_reg[3]_0 ),
        .D(p_0_in[1]),
        .Q(r_wr_logic_reg[1]));
  FDCE \r_wr_logic_reg[2] 
       (.C(aclk),
        .CE(E),
        .CLR(\r_wr_logic_reg[3]_0 ),
        .D(p_0_in[2]),
        .Q(r_wr_logic_reg[2]));
  FDCE \r_wr_logic_reg[3] 
       (.C(aclk),
        .CE(E),
        .CLR(\r_wr_logic_reg[3]_0 ),
        .D(p_0_in[3]),
        .Q(r_wr_logic_reg[3]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gpio
   (slot_decode_error,
    slot_wr_done,
    S_AXI_wvalid_0,
    Q,
    out_ports,
    w_decode_error,
    aclk,
    wr_done_reg_0,
    w_wr_done,
    w_en__0,
    S_AXI_wvalid,
    \out_ports_reg[0]_0 ,
    \out_ports_reg[0]_1 ,
    S_AXI_wdata,
    \out_ports_reg[0]_2 ,
    w_led_data);
  output [0:0]slot_decode_error;
  output [0:0]slot_wr_done;
  output S_AXI_wvalid_0;
  output [0:0]Q;
  output [3:0]out_ports;
  input w_decode_error;
  input aclk;
  input wr_done_reg_0;
  input w_wr_done;
  input w_en__0;
  input S_AXI_wvalid;
  input [1:0]\out_ports_reg[0]_0 ;
  input \out_ports_reg[0]_1 ;
  input [3:0]S_AXI_wdata;
  input \out_ports_reg[0]_2 ;
  input [3:0]w_led_data;

  wire \FSM_onehot_r_state_reg_n_0_[0] ;
  wire \FSM_onehot_w_next_state_reg[0]_i_1__0_n_0 ;
  wire \FSM_onehot_w_next_state_reg[1]_i_1__0_n_0 ;
  wire \FSM_onehot_w_next_state_reg_n_0_[0] ;
  wire \FSM_onehot_w_next_state_reg_n_0_[1] ;
  wire [0:0]Q;
  wire [3:0]S_AXI_wdata;
  wire S_AXI_wvalid;
  wire S_AXI_wvalid_0;
  wire aclk;
  wire [3:0]out_ports;
  wire \out_ports[0]_i_1_n_0 ;
  wire \out_ports[1]_i_1_n_0 ;
  wire \out_ports[2]_i_1_n_0 ;
  wire \out_ports[3]_i_1_n_0 ;
  wire [1:0]\out_ports_reg[0]_0 ;
  wire \out_ports_reg[0]_1 ;
  wire \out_ports_reg[0]_2 ;
  wire [0:0]slot_decode_error;
  wire [0:0]slot_wr_done;
  wire w_decode_error;
  wire w_en__0;
  wire [3:0]w_led_data;
  wire w_next_state;
  wire w_wr_done;
  wire wr_done_reg_0;

  (* FSM_ENCODED_STATES = "iSTATE:100,IDLE:001,ACTIVE:010" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_r_state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\FSM_onehot_w_next_state_reg_n_0_[0] ),
        .PRE(wr_done_reg_0),
        .Q(\FSM_onehot_r_state_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "iSTATE:100,IDLE:001,ACTIVE:010" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_r_state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(wr_done_reg_0),
        .D(\FSM_onehot_w_next_state_reg_n_0_[1] ),
        .Q(Q));
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
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
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
        .D(\FSM_onehot_w_next_state_reg[1]_i_1__0_n_0 ),
        .G(w_next_state),
        .GE(1'b1),
        .Q(\FSM_onehot_w_next_state_reg_n_0_[1] ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_w_next_state_reg[1]_i_1__0 
       (.I0(\FSM_onehot_r_state_reg_n_0_[0] ),
        .I1(w_en__0),
        .O(\FSM_onehot_w_next_state_reg[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_w_next_state_reg[1]_i_2__1 
       (.I0(\FSM_onehot_r_state_reg_n_0_[0] ),
        .I1(Q),
        .O(w_next_state));
  FDCE decode_error_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(wr_done_reg_0),
        .D(w_decode_error),
        .Q(slot_decode_error));
  LUT6 #(
    .INIT(64'h0020FFFF00200000)) 
    \out_ports[0]_i_1 
       (.I0(\out_ports_reg[0]_1 ),
        .I1(\out_ports_reg[0]_0 [1]),
        .I2(S_AXI_wdata[0]),
        .I3(\out_ports_reg[0]_2 ),
        .I4(w_led_data[0]),
        .I5(out_ports[0]),
        .O(\out_ports[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0020FFFF00200000)) 
    \out_ports[1]_i_1 
       (.I0(\out_ports_reg[0]_1 ),
        .I1(\out_ports_reg[0]_0 [1]),
        .I2(S_AXI_wdata[1]),
        .I3(\out_ports_reg[0]_2 ),
        .I4(w_led_data[1]),
        .I5(out_ports[1]),
        .O(\out_ports[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0020FFFF00200000)) 
    \out_ports[2]_i_1 
       (.I0(\out_ports_reg[0]_1 ),
        .I1(\out_ports_reg[0]_0 [1]),
        .I2(S_AXI_wdata[2]),
        .I3(\out_ports_reg[0]_2 ),
        .I4(w_led_data[2]),
        .I5(out_ports[2]),
        .O(\out_ports[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0200FFFF02000000)) 
    \out_ports[3]_i_1 
       (.I0(\out_ports_reg[0]_1 ),
        .I1(\out_ports_reg[0]_2 ),
        .I2(\out_ports_reg[0]_0 [1]),
        .I3(S_AXI_wdata[3]),
        .I4(w_led_data[3]),
        .I5(out_ports[3]),
        .O(\out_ports[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \out_ports[3]_i_7 
       (.I0(S_AXI_wvalid),
        .I1(Q),
        .I2(\out_ports_reg[0]_0 [0]),
        .O(S_AXI_wvalid_0));
  FDCE \out_ports_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(wr_done_reg_0),
        .D(\out_ports[0]_i_1_n_0 ),
        .Q(out_ports[0]));
  FDCE \out_ports_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(wr_done_reg_0),
        .D(\out_ports[1]_i_1_n_0 ),
        .Q(out_ports[1]));
  FDCE \out_ports_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(wr_done_reg_0),
        .D(\out_ports[2]_i_1_n_0 ),
        .Q(out_ports[2]));
  FDCE \out_ports_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(wr_done_reg_0),
        .D(\out_ports[3]_i_1_n_0 ),
        .Q(out_ports[3]));
  FDCE wr_done_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(wr_done_reg_0),
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
  input [31:0]S_AXI_awaddr;
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
  input [31:0]S_AXI_araddr;
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
  wire S_AXI_arvalid;
  wire [31:0]S_AXI_awaddr;
  wire S_AXI_awready;
  wire S_AXI_awvalid;
  wire S_AXI_bready;
  wire [1:0]S_AXI_bresp;
  wire S_AXI_bvalid;
  wire S_AXI_rready;
  wire [31:0]S_AXI_wdata;
  wire S_AXI_wready;
  wire S_AXI_wvalid;
  wire aclk;
  wire arst_n;
  wire control_n_0;
  wire control_n_10;
  wire control_n_11;
  wire control_n_12;
  wire control_n_13;
  wire control_n_26;
  wire control_n_29;
  wire control_n_39;
  wire control_n_40;
  wire control_n_44;
  wire control_n_45;
  wire control_n_53;
  wire control_n_54;
  wire control_n_6;
  wire control_n_7;
  wire control_n_8;
  wire control_n_9;
  wire [1:0]\^debug_r_state ;
  wire [1:0]\^debug_w_next_state ;
  wire emperor_gpio_n_2;
  wire emperor_gpio_n_3;
  wire emperor_timer_n_3;
  wire emperor_timer_n_4;
  wire emperor_uart_n_1;
  wire emperor_uart_n_11;
  wire emperor_uart_n_6;
  wire emperor_uart_n_7;
  wire emperor_uart_n_9;
  wire [3:0]out_ports;
  wire [10:10]r_addr;
  wire [1:1]r_control;
  wire [4:2]reg_addr;
  wire rx;
  wire rx_empty;
  wire [2:0]slot_decode_error;
  wire [2:0]slot_slave_error;
  wire [9:0]\slot_wr_data[2] ;
  wire [2:0]slot_wr_done;
  wire tx;
  wire tx_full;
  wire [1:0]w_control;
  wire w_decode_error;
  wire w_decode_error__0;
  wire w_en0;
  wire w_en__0;
  wire w_en__0_1;
  wire w_en__0_2;
  wire w_en_dvsr;
  wire w_en_rd;
  wire w_en_wr;
  wire [3:0]w_led_data;
  wire w_wr_done;
  wire w_wr_done_0;

  assign S_AXI_arready = S_AXI_awready;
  assign S_AXI_rdata[31] = \<const0> ;
  assign S_AXI_rdata[30] = \<const0> ;
  assign S_AXI_rdata[29] = \<const0> ;
  assign S_AXI_rdata[28] = \<const0> ;
  assign S_AXI_rdata[27] = \<const0> ;
  assign S_AXI_rdata[26] = \<const0> ;
  assign S_AXI_rdata[25] = \<const0> ;
  assign S_AXI_rdata[24] = \<const0> ;
  assign S_AXI_rdata[23] = \<const0> ;
  assign S_AXI_rdata[22] = \<const0> ;
  assign S_AXI_rdata[21] = \<const0> ;
  assign S_AXI_rdata[20] = \<const0> ;
  assign S_AXI_rdata[19] = \<const0> ;
  assign S_AXI_rdata[18] = \<const0> ;
  assign S_AXI_rdata[17] = \<const0> ;
  assign S_AXI_rdata[16] = \<const0> ;
  assign S_AXI_rdata[15] = \<const0> ;
  assign S_AXI_rdata[14] = \<const0> ;
  assign S_AXI_rdata[13] = \<const0> ;
  assign S_AXI_rdata[12] = \<const0> ;
  assign S_AXI_rdata[11] = \<const0> ;
  assign S_AXI_rdata[10] = \<const0> ;
  assign S_AXI_rdata[9] = \<const0> ;
  assign S_AXI_rdata[8] = \<const0> ;
  assign S_AXI_rdata[7] = \<const0> ;
  assign S_AXI_rdata[6] = \<const0> ;
  assign S_AXI_rdata[5] = \<const0> ;
  assign S_AXI_rdata[4] = \<const0> ;
  assign S_AXI_rdata[3] = \<const0> ;
  assign S_AXI_rdata[2] = \<const0> ;
  assign S_AXI_rdata[1] = \<const0> ;
  assign S_AXI_rdata[0] = \<const0> ;
  assign S_AXI_rresp[1] = \<const0> ;
  assign S_AXI_rresp[0] = \<const0> ;
  assign S_AXI_rvalid = \<const0> ;
  assign debug_r_state[2] = \<const0> ;
  assign debug_r_state[1:0] = \^debug_r_state [1:0];
  assign debug_w_next_state[2] = \<const0> ;
  assign debug_w_next_state[1:0] = \^debug_w_next_state [1:0];
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mmio_controller control
       (.D(control_n_0),
        .E(w_en_dvsr),
        .\FSM_onehot_r_state_reg[1] (control_n_26),
        .Q({emperor_uart_n_6,emperor_uart_n_7}),
        .S_AXI_arvalid(S_AXI_arvalid),
        .S_AXI_awaddr(S_AXI_awaddr[15:0]),
        .S_AXI_awready(S_AXI_awready),
        .S_AXI_awvalid(S_AXI_awvalid),
        .S_AXI_bready(S_AXI_bready),
        .S_AXI_bresp(S_AXI_bresp),
        .S_AXI_bvalid(S_AXI_bvalid),
        .S_AXI_rready(S_AXI_rready),
        .S_AXI_wdata(S_AXI_wdata[9:0]),
        .\S_AXI_wdata[7] ({control_n_6,control_n_7,control_n_8,control_n_9,control_n_10,control_n_11,control_n_12,control_n_13}),
        .\S_AXI_wdata[9] (\slot_wr_data[2] ),
        .S_AXI_wready(S_AXI_wready),
        .S_AXI_wvalid(S_AXI_wvalid),
        .S_AXI_wvalid_0(w_control),
        .aclk(aclk),
        .debug_w_next_state(\^debug_w_next_state ),
        .decode_error_reg(emperor_gpio_n_3),
        .decode_error_reg_0({emperor_timer_n_3,emperor_timer_n_4}),
        .\out_ports_reg[0] (emperor_gpio_n_2),
        .\r_addr_reg[10]_0 ({r_addr,reg_addr[4],reg_addr[2]}),
        .\r_addr_reg[11]_0 (control_n_53),
        .\r_addr_reg[1]_0 (control_n_40),
        .\r_addr_reg[1]_1 (control_n_44),
        .\r_addr_reg[3]_0 (control_n_39),
        .\r_addr_reg[3]_1 (control_n_45),
        .\r_addr_reg[7]_0 (control_n_29),
        .\r_addr_reg[9]_0 (control_n_54),
        .\r_reg_array_reg[0][0] (r_control),
        .\r_state_reg[1]_0 (\^debug_r_state ),
        .\r_state_reg[1]_1 (emperor_uart_n_1),
        .rx_empty(rx_empty),
        .slave_error_reg(emperor_uart_n_9),
        .slave_error_reg_0(emperor_uart_n_11),
        .slot_decode_error(slot_decode_error),
        .slot_slave_error({slot_slave_error[2],slot_slave_error[0]}),
        .slot_wr_done(slot_wr_done),
        .tx_full(tx_full),
        .w_decode_error(w_decode_error),
        .w_decode_error__0(w_decode_error__0),
        .w_en0(w_en0),
        .w_en__0(w_en__0_2),
        .w_en__0_0(w_en__0_1),
        .w_en__0_2(w_en__0),
        .w_en_rd(w_en_rd),
        .w_en_wr(w_en_wr),
        .w_led_data(w_led_data),
        .w_wr_done(w_wr_done_0),
        .w_wr_done_1(w_wr_done));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gpio emperor_gpio
       (.Q(emperor_gpio_n_3),
        .S_AXI_wdata(S_AXI_wdata[3:0]),
        .S_AXI_wvalid(S_AXI_wvalid),
        .S_AXI_wvalid_0(emperor_gpio_n_2),
        .aclk(aclk),
        .out_ports(out_ports),
        .\out_ports_reg[0]_0 ({r_addr,reg_addr[4]}),
        .\out_ports_reg[0]_1 (control_n_53),
        .\out_ports_reg[0]_2 (control_n_54),
        .slot_decode_error(slot_decode_error[1]),
        .slot_wr_done(slot_wr_done[1]),
        .w_decode_error(w_decode_error),
        .w_en__0(w_en__0_2),
        .w_led_data(w_led_data),
        .w_wr_done(w_wr_done),
        .wr_done_reg_0(emperor_uart_n_1));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_timer emperor_timer
       (.Q({emperor_timer_n_3,emperor_timer_n_4}),
        .S_AXI_rready(S_AXI_rready),
        .S_AXI_wvalid(S_AXI_wvalid),
        .aclk(aclk),
        .slave_error_reg_0(emperor_uart_n_1),
        .slave_error_reg_1(control_n_29),
        .slave_error_reg_2(control_n_39),
        .slot_decode_error(slot_decode_error[0]),
        .slot_slave_error(slot_slave_error[0]),
        .slot_wr_done(slot_wr_done[0]),
        .w_decode_error__0(w_decode_error__0),
        .w_en0(w_en0),
        .w_en__0(w_en__0_1));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart emperor_uart
       (.D(control_n_0),
        .E(w_en_dvsr),
        .\FSM_onehot_r_state_reg[0]_0 (emperor_uart_n_11),
        .Q({emperor_uart_n_6,emperor_uart_n_7}),
        .S_AXI_bready(S_AXI_bready),
        .S_AXI_rready(S_AXI_rready),
        .S_AXI_wvalid(S_AXI_wvalid),
        .aclk(aclk),
        .arst_n(arst_n),
        .arst_n_0(emperor_uart_n_1),
        .decode_error_reg_0(control_n_44),
        .empty_reg(control_n_40),
        .empty_reg_0(control_n_26),
        .full_reg(emperor_uart_n_9),
        .\r_control_reg[1]_0 (r_control),
        .\r_control_reg[1]_1 (w_control),
        .\r_dvsr_reg[9]_0 (\slot_wr_data[2] ),
        .\r_reg_array_reg[0][7] ({control_n_6,control_n_7,control_n_8,control_n_9,control_n_10,control_n_11,control_n_12,control_n_13}),
        .rx(rx),
        .rx_empty(rx_empty),
        .slave_error_reg_0(control_n_45),
        .slave_error_reg_1(reg_addr[2]),
        .slot_decode_error(slot_decode_error[2]),
        .slot_slave_error(slot_slave_error[2]),
        .slot_wr_done(slot_wr_done[2]),
        .tx(tx),
        .tx_full(tx_full),
        .w_en__0(w_en__0),
        .w_en_rd(w_en_rd),
        .w_en_wr(w_en_wr),
        .w_wr_done(w_wr_done_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_file
   (arst_n_0,
    r_reg_array__0,
    arst_n,
    \r_in_shift_reg[7] ,
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
  input [3:0]\r_in_shift_reg[7] ;
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
  wire [3:0]\r_in_shift_reg[7] ;
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
        .I2(\r_in_shift_reg[7] [3]),
        .I3(\r_in_shift_reg[7] [2]),
        .I4(\r_in_shift[0]_i_5_n_0 ),
        .I5(\r_in_shift[0]_i_6_n_0 ),
        .O(r_reg_array__0[0]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \r_in_shift[0]_i_3 
       (.I0(\r_reg_array_reg_n_0_[5][0] ),
        .I1(\r_reg_array_reg_n_0_[7][0] ),
        .I2(\r_in_shift_reg[7] [1]),
        .I3(\r_in_shift_reg[7] [0]),
        .I4(\r_reg_array_reg_n_0_[4][0] ),
        .I5(\r_reg_array_reg_n_0_[6][0] ),
        .O(\r_in_shift[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \r_in_shift[0]_i_4 
       (.I0(\r_reg_array_reg_n_0_[13][0] ),
        .I1(\r_reg_array_reg_n_0_[15][0] ),
        .I2(\r_in_shift_reg[7] [1]),
        .I3(\r_in_shift_reg[7] [0]),
        .I4(\r_reg_array_reg_n_0_[12][0] ),
        .I5(\r_reg_array_reg_n_0_[14][0] ),
        .O(\r_in_shift[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \r_in_shift[0]_i_5 
       (.I0(\r_reg_array_reg_n_0_[1][0] ),
        .I1(\r_reg_array_reg_n_0_[3][0] ),
        .I2(\r_in_shift_reg[7] [1]),
        .I3(\r_in_shift_reg[7] [0]),
        .I4(\r_reg_array_reg_n_0_[0][0] ),
        .I5(\r_reg_array_reg_n_0_[2][0] ),
        .O(\r_in_shift[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \r_in_shift[0]_i_6 
       (.I0(\r_reg_array_reg_n_0_[9][0] ),
        .I1(\r_reg_array_reg_n_0_[11][0] ),
        .I2(\r_in_shift_reg[7] [1]),
        .I3(\r_in_shift_reg[7] [0]),
        .I4(\r_reg_array_reg_n_0_[8][0] ),
        .I5(\r_reg_array_reg_n_0_[10][0] ),
        .O(\r_in_shift[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \r_in_shift[1]_i_2 
       (.I0(\r_in_shift[1]_i_3_n_0 ),
        .I1(\r_in_shift[1]_i_4_n_0 ),
        .I2(\r_in_shift_reg[7] [3]),
        .I3(\r_in_shift_reg[7] [2]),
        .I4(\r_in_shift[1]_i_5_n_0 ),
        .I5(\r_in_shift[1]_i_6_n_0 ),
        .O(r_reg_array__0[1]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \r_in_shift[1]_i_3 
       (.I0(\r_reg_array_reg_n_0_[5][1] ),
        .I1(\r_reg_array_reg_n_0_[7][1] ),
        .I2(\r_in_shift_reg[7] [1]),
        .I3(\r_in_shift_reg[7] [0]),
        .I4(\r_reg_array_reg_n_0_[4][1] ),
        .I5(\r_reg_array_reg_n_0_[6][1] ),
        .O(\r_in_shift[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \r_in_shift[1]_i_4 
       (.I0(\r_reg_array_reg_n_0_[13][1] ),
        .I1(\r_reg_array_reg_n_0_[15][1] ),
        .I2(\r_in_shift_reg[7] [1]),
        .I3(\r_in_shift_reg[7] [0]),
        .I4(\r_reg_array_reg_n_0_[12][1] ),
        .I5(\r_reg_array_reg_n_0_[14][1] ),
        .O(\r_in_shift[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \r_in_shift[1]_i_5 
       (.I0(\r_reg_array_reg_n_0_[1][1] ),
        .I1(\r_reg_array_reg_n_0_[3][1] ),
        .I2(\r_in_shift_reg[7] [1]),
        .I3(\r_in_shift_reg[7] [0]),
        .I4(\r_reg_array_reg_n_0_[0][1] ),
        .I5(\r_reg_array_reg_n_0_[2][1] ),
        .O(\r_in_shift[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \r_in_shift[1]_i_6 
       (.I0(\r_reg_array_reg_n_0_[9][1] ),
        .I1(\r_reg_array_reg_n_0_[11][1] ),
        .I2(\r_in_shift_reg[7] [1]),
        .I3(\r_in_shift_reg[7] [0]),
        .I4(\r_reg_array_reg_n_0_[8][1] ),
        .I5(\r_reg_array_reg_n_0_[10][1] ),
        .O(\r_in_shift[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \r_in_shift[2]_i_2 
       (.I0(\r_in_shift[2]_i_3_n_0 ),
        .I1(\r_in_shift[2]_i_4_n_0 ),
        .I2(\r_in_shift_reg[7] [3]),
        .I3(\r_in_shift_reg[7] [2]),
        .I4(\r_in_shift[2]_i_5_n_0 ),
        .I5(\r_in_shift[2]_i_6_n_0 ),
        .O(r_reg_array__0[2]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \r_in_shift[2]_i_3 
       (.I0(\r_reg_array_reg_n_0_[5][2] ),
        .I1(\r_reg_array_reg_n_0_[7][2] ),
        .I2(\r_in_shift_reg[7] [1]),
        .I3(\r_in_shift_reg[7] [0]),
        .I4(\r_reg_array_reg_n_0_[4][2] ),
        .I5(\r_reg_array_reg_n_0_[6][2] ),
        .O(\r_in_shift[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \r_in_shift[2]_i_4 
       (.I0(\r_reg_array_reg_n_0_[13][2] ),
        .I1(\r_reg_array_reg_n_0_[15][2] ),
        .I2(\r_in_shift_reg[7] [1]),
        .I3(\r_in_shift_reg[7] [0]),
        .I4(\r_reg_array_reg_n_0_[12][2] ),
        .I5(\r_reg_array_reg_n_0_[14][2] ),
        .O(\r_in_shift[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \r_in_shift[2]_i_5 
       (.I0(\r_reg_array_reg_n_0_[1][2] ),
        .I1(\r_reg_array_reg_n_0_[3][2] ),
        .I2(\r_in_shift_reg[7] [1]),
        .I3(\r_in_shift_reg[7] [0]),
        .I4(\r_reg_array_reg_n_0_[0][2] ),
        .I5(\r_reg_array_reg_n_0_[2][2] ),
        .O(\r_in_shift[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \r_in_shift[2]_i_6 
       (.I0(\r_reg_array_reg_n_0_[9][2] ),
        .I1(\r_reg_array_reg_n_0_[11][2] ),
        .I2(\r_in_shift_reg[7] [1]),
        .I3(\r_in_shift_reg[7] [0]),
        .I4(\r_reg_array_reg_n_0_[8][2] ),
        .I5(\r_reg_array_reg_n_0_[10][2] ),
        .O(\r_in_shift[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \r_in_shift[3]_i_2 
       (.I0(\r_in_shift[3]_i_3_n_0 ),
        .I1(\r_in_shift[3]_i_4_n_0 ),
        .I2(\r_in_shift_reg[7] [3]),
        .I3(\r_in_shift_reg[7] [2]),
        .I4(\r_in_shift[3]_i_5_n_0 ),
        .I5(\r_in_shift[3]_i_6_n_0 ),
        .O(r_reg_array__0[3]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \r_in_shift[3]_i_3 
       (.I0(\r_reg_array_reg_n_0_[5][3] ),
        .I1(\r_reg_array_reg_n_0_[7][3] ),
        .I2(\r_in_shift_reg[7] [1]),
        .I3(\r_in_shift_reg[7] [0]),
        .I4(\r_reg_array_reg_n_0_[4][3] ),
        .I5(\r_reg_array_reg_n_0_[6][3] ),
        .O(\r_in_shift[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \r_in_shift[3]_i_4 
       (.I0(\r_reg_array_reg_n_0_[13][3] ),
        .I1(\r_reg_array_reg_n_0_[15][3] ),
        .I2(\r_in_shift_reg[7] [1]),
        .I3(\r_in_shift_reg[7] [0]),
        .I4(\r_reg_array_reg_n_0_[12][3] ),
        .I5(\r_reg_array_reg_n_0_[14][3] ),
        .O(\r_in_shift[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \r_in_shift[3]_i_5 
       (.I0(\r_reg_array_reg_n_0_[1][3] ),
        .I1(\r_reg_array_reg_n_0_[3][3] ),
        .I2(\r_in_shift_reg[7] [1]),
        .I3(\r_in_shift_reg[7] [0]),
        .I4(\r_reg_array_reg_n_0_[0][3] ),
        .I5(\r_reg_array_reg_n_0_[2][3] ),
        .O(\r_in_shift[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \r_in_shift[3]_i_6 
       (.I0(\r_reg_array_reg_n_0_[9][3] ),
        .I1(\r_reg_array_reg_n_0_[11][3] ),
        .I2(\r_in_shift_reg[7] [1]),
        .I3(\r_in_shift_reg[7] [0]),
        .I4(\r_reg_array_reg_n_0_[8][3] ),
        .I5(\r_reg_array_reg_n_0_[10][3] ),
        .O(\r_in_shift[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \r_in_shift[4]_i_2 
       (.I0(\r_in_shift[4]_i_3_n_0 ),
        .I1(\r_in_shift[4]_i_4_n_0 ),
        .I2(\r_in_shift_reg[7] [3]),
        .I3(\r_in_shift_reg[7] [2]),
        .I4(\r_in_shift[4]_i_5_n_0 ),
        .I5(\r_in_shift[4]_i_6_n_0 ),
        .O(r_reg_array__0[4]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \r_in_shift[4]_i_3 
       (.I0(\r_reg_array_reg_n_0_[5][4] ),
        .I1(\r_reg_array_reg_n_0_[7][4] ),
        .I2(\r_in_shift_reg[7] [1]),
        .I3(\r_in_shift_reg[7] [0]),
        .I4(\r_reg_array_reg_n_0_[4][4] ),
        .I5(\r_reg_array_reg_n_0_[6][4] ),
        .O(\r_in_shift[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \r_in_shift[4]_i_4 
       (.I0(\r_reg_array_reg_n_0_[13][4] ),
        .I1(\r_reg_array_reg_n_0_[15][4] ),
        .I2(\r_in_shift_reg[7] [1]),
        .I3(\r_in_shift_reg[7] [0]),
        .I4(\r_reg_array_reg_n_0_[12][4] ),
        .I5(\r_reg_array_reg_n_0_[14][4] ),
        .O(\r_in_shift[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \r_in_shift[4]_i_5 
       (.I0(\r_reg_array_reg_n_0_[1][4] ),
        .I1(\r_reg_array_reg_n_0_[3][4] ),
        .I2(\r_in_shift_reg[7] [1]),
        .I3(\r_in_shift_reg[7] [0]),
        .I4(\r_reg_array_reg_n_0_[0][4] ),
        .I5(\r_reg_array_reg_n_0_[2][4] ),
        .O(\r_in_shift[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \r_in_shift[4]_i_6 
       (.I0(\r_reg_array_reg_n_0_[9][4] ),
        .I1(\r_reg_array_reg_n_0_[11][4] ),
        .I2(\r_in_shift_reg[7] [1]),
        .I3(\r_in_shift_reg[7] [0]),
        .I4(\r_reg_array_reg_n_0_[8][4] ),
        .I5(\r_reg_array_reg_n_0_[10][4] ),
        .O(\r_in_shift[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \r_in_shift[5]_i_2 
       (.I0(\r_in_shift[5]_i_3_n_0 ),
        .I1(\r_in_shift[5]_i_4_n_0 ),
        .I2(\r_in_shift_reg[7] [3]),
        .I3(\r_in_shift_reg[7] [2]),
        .I4(\r_in_shift[5]_i_5_n_0 ),
        .I5(\r_in_shift[5]_i_6_n_0 ),
        .O(r_reg_array__0[5]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \r_in_shift[5]_i_3 
       (.I0(\r_reg_array_reg_n_0_[5][5] ),
        .I1(\r_reg_array_reg_n_0_[7][5] ),
        .I2(\r_in_shift_reg[7] [1]),
        .I3(\r_in_shift_reg[7] [0]),
        .I4(\r_reg_array_reg_n_0_[4][5] ),
        .I5(\r_reg_array_reg_n_0_[6][5] ),
        .O(\r_in_shift[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \r_in_shift[5]_i_4 
       (.I0(\r_reg_array_reg_n_0_[13][5] ),
        .I1(\r_reg_array_reg_n_0_[15][5] ),
        .I2(\r_in_shift_reg[7] [1]),
        .I3(\r_in_shift_reg[7] [0]),
        .I4(\r_reg_array_reg_n_0_[12][5] ),
        .I5(\r_reg_array_reg_n_0_[14][5] ),
        .O(\r_in_shift[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \r_in_shift[5]_i_5 
       (.I0(\r_reg_array_reg_n_0_[1][5] ),
        .I1(\r_reg_array_reg_n_0_[3][5] ),
        .I2(\r_in_shift_reg[7] [1]),
        .I3(\r_in_shift_reg[7] [0]),
        .I4(\r_reg_array_reg_n_0_[0][5] ),
        .I5(\r_reg_array_reg_n_0_[2][5] ),
        .O(\r_in_shift[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \r_in_shift[5]_i_6 
       (.I0(\r_reg_array_reg_n_0_[9][5] ),
        .I1(\r_reg_array_reg_n_0_[11][5] ),
        .I2(\r_in_shift_reg[7] [1]),
        .I3(\r_in_shift_reg[7] [0]),
        .I4(\r_reg_array_reg_n_0_[8][5] ),
        .I5(\r_reg_array_reg_n_0_[10][5] ),
        .O(\r_in_shift[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \r_in_shift[6]_i_2 
       (.I0(\r_in_shift[6]_i_3_n_0 ),
        .I1(\r_in_shift[6]_i_4_n_0 ),
        .I2(\r_in_shift_reg[7] [3]),
        .I3(\r_in_shift_reg[7] [2]),
        .I4(\r_in_shift[6]_i_5_n_0 ),
        .I5(\r_in_shift[6]_i_6_n_0 ),
        .O(r_reg_array__0[6]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \r_in_shift[6]_i_3 
       (.I0(\r_reg_array_reg_n_0_[5][6] ),
        .I1(\r_reg_array_reg_n_0_[7][6] ),
        .I2(\r_in_shift_reg[7] [1]),
        .I3(\r_in_shift_reg[7] [0]),
        .I4(\r_reg_array_reg_n_0_[4][6] ),
        .I5(\r_reg_array_reg_n_0_[6][6] ),
        .O(\r_in_shift[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \r_in_shift[6]_i_4 
       (.I0(\r_reg_array_reg_n_0_[13][6] ),
        .I1(\r_reg_array_reg_n_0_[15][6] ),
        .I2(\r_in_shift_reg[7] [1]),
        .I3(\r_in_shift_reg[7] [0]),
        .I4(\r_reg_array_reg_n_0_[12][6] ),
        .I5(\r_reg_array_reg_n_0_[14][6] ),
        .O(\r_in_shift[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \r_in_shift[6]_i_5 
       (.I0(\r_reg_array_reg_n_0_[1][6] ),
        .I1(\r_reg_array_reg_n_0_[3][6] ),
        .I2(\r_in_shift_reg[7] [1]),
        .I3(\r_in_shift_reg[7] [0]),
        .I4(\r_reg_array_reg_n_0_[0][6] ),
        .I5(\r_reg_array_reg_n_0_[2][6] ),
        .O(\r_in_shift[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \r_in_shift[6]_i_6 
       (.I0(\r_reg_array_reg_n_0_[9][6] ),
        .I1(\r_reg_array_reg_n_0_[11][6] ),
        .I2(\r_in_shift_reg[7] [1]),
        .I3(\r_in_shift_reg[7] [0]),
        .I4(\r_reg_array_reg_n_0_[8][6] ),
        .I5(\r_reg_array_reg_n_0_[10][6] ),
        .O(\r_in_shift[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \r_in_shift[7]_i_3 
       (.I0(\r_in_shift[7]_i_4_n_0 ),
        .I1(\r_in_shift[7]_i_5_n_0 ),
        .I2(\r_in_shift_reg[7] [3]),
        .I3(\r_in_shift_reg[7] [2]),
        .I4(\r_in_shift[7]_i_6_n_0 ),
        .I5(\r_in_shift[7]_i_7_n_0 ),
        .O(r_reg_array__0[7]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \r_in_shift[7]_i_4 
       (.I0(\r_reg_array_reg_n_0_[5][7] ),
        .I1(\r_reg_array_reg_n_0_[7][7] ),
        .I2(\r_in_shift_reg[7] [1]),
        .I3(\r_in_shift_reg[7] [0]),
        .I4(\r_reg_array_reg_n_0_[4][7] ),
        .I5(\r_reg_array_reg_n_0_[6][7] ),
        .O(\r_in_shift[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \r_in_shift[7]_i_5 
       (.I0(\r_reg_array_reg_n_0_[13][7] ),
        .I1(\r_reg_array_reg_n_0_[15][7] ),
        .I2(\r_in_shift_reg[7] [1]),
        .I3(\r_in_shift_reg[7] [0]),
        .I4(\r_reg_array_reg_n_0_[12][7] ),
        .I5(\r_reg_array_reg_n_0_[14][7] ),
        .O(\r_in_shift[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \r_in_shift[7]_i_6 
       (.I0(\r_reg_array_reg_n_0_[1][7] ),
        .I1(\r_reg_array_reg_n_0_[3][7] ),
        .I2(\r_in_shift_reg[7] [1]),
        .I3(\r_in_shift_reg[7] [0]),
        .I4(\r_reg_array_reg_n_0_[0][7] ),
        .I5(\r_reg_array_reg_n_0_[2][7] ),
        .O(\r_in_shift[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \r_in_shift[7]_i_7 
       (.I0(\r_reg_array_reg_n_0_[9][7] ),
        .I1(\r_reg_array_reg_n_0_[11][7] ),
        .I2(\r_in_shift_reg[7] [1]),
        .I3(\r_in_shift_reg[7] [0]),
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rx
   (E,
    \FSM_sequential_r_state_reg[1]_0 ,
    \FSM_sequential_r_state_reg[1]_1 ,
    \r_sampling_ticks_reg[0]_0 ,
    \r_sampling_ticks_reg[4]_0 ,
    w_en_rd,
    \r_wr_logic_reg[0] ,
    Q,
    rx,
    tick,
    \r_sampling_ticks_reg[4]_1 ,
    aclk,
    \r_data_bits_received_reg[3]_0 );
  output [0:0]E;
  output \FSM_sequential_r_state_reg[1]_0 ;
  output [1:0]\FSM_sequential_r_state_reg[1]_1 ;
  output [0:0]\r_sampling_ticks_reg[0]_0 ;
  output \r_sampling_ticks_reg[4]_0 ;
  input w_en_rd;
  input \r_wr_logic_reg[0] ;
  input [0:0]Q;
  input rx;
  input tick;
  input \r_sampling_ticks_reg[4]_1 ;
  input aclk;
  input \r_data_bits_received_reg[3]_0 ;

  wire [0:0]E;
  wire \FSM_sequential_r_state[0]_i_2__0_n_0 ;
  wire \FSM_sequential_r_state[1]_i_2_n_0 ;
  wire \FSM_sequential_r_state[1]_i_3_n_0 ;
  wire \FSM_sequential_r_state_reg[1]_0 ;
  wire [1:0]\FSM_sequential_r_state_reg[1]_1 ;
  wire [0:0]Q;
  wire aclk;
  wire [3:0]r_data_bits_received;
  wire \r_data_bits_received[3]_i_1_n_0 ;
  wire \r_data_bits_received_reg[3]_0 ;
  wire [4:1]r_sampling_ticks;
  wire \r_sampling_ticks[4]_i_2_n_0 ;
  wire [0:0]\r_sampling_ticks_reg[0]_0 ;
  wire \r_sampling_ticks_reg[4]_0 ;
  wire \r_sampling_ticks_reg[4]_1 ;
  wire \r_wr_logic_reg[0] ;
  wire rx;
  wire tick;
  wire w_en_rd;
  wire [3:0]w_next_data_bits_received;
  wire [4:0]w_next_sampling_ticks;
  wire [1:0]w_next_state;

  LUT6 #(
    .INIT(64'hFFCCCCCCDDDDCFCF)) 
    \FSM_sequential_r_state[0]_i_1 
       (.I0(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .I1(\FSM_sequential_r_state[0]_i_2__0_n_0 ),
        .I2(rx),
        .I3(\FSM_sequential_r_state[1]_i_3_n_0 ),
        .I4(\FSM_sequential_r_state_reg[1]_1 [0]),
        .I5(\FSM_sequential_r_state_reg[1]_1 [1]),
        .O(w_next_state[0]));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    \FSM_sequential_r_state[0]_i_2__0 
       (.I0(r_data_bits_received[0]),
        .I1(r_data_bits_received[1]),
        .I2(\FSM_sequential_r_state_reg[1]_1 [1]),
        .I3(\FSM_sequential_r_state_reg[1]_1 [0]),
        .I4(r_data_bits_received[2]),
        .I5(r_data_bits_received[3]),
        .O(\FSM_sequential_r_state[0]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hF588)) 
    \FSM_sequential_r_state[1]_i_1 
       (.I0(\FSM_sequential_r_state_reg[1]_1 [0]),
        .I1(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .I2(\FSM_sequential_r_state[1]_i_3_n_0 ),
        .I3(\FSM_sequential_r_state_reg[1]_1 [1]),
        .O(w_next_state[1]));
  LUT5 #(
    .INIT(32'h00000100)) 
    \FSM_sequential_r_state[1]_i_2 
       (.I0(r_sampling_ticks[4]),
        .I1(r_sampling_ticks[2]),
        .I2(\r_sampling_ticks_reg[0]_0 ),
        .I3(r_sampling_ticks[3]),
        .I4(r_sampling_ticks[1]),
        .O(\FSM_sequential_r_state[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'hFF7FFFFF)) 
    \FSM_sequential_r_state[1]_i_3 
       (.I0(r_sampling_ticks[1]),
        .I1(\r_sampling_ticks_reg[0]_0 ),
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
        .Q(\FSM_sequential_r_state_reg[1]_1 [0]));
  (* FSM_ENCODED_STATES = "START:01,DATA:10,STOP:11,IDLE:00" *) 
  FDCE \FSM_sequential_r_state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r_data_bits_received_reg[3]_0 ),
        .D(w_next_state[1]),
        .Q(\FSM_sequential_r_state_reg[1]_1 [1]));
  LUT2 #(
    .INIT(4'h2)) 
    \r_data_bits_received[0]_i_1 
       (.I0(\FSM_sequential_r_state_reg[1]_1 [1]),
        .I1(r_data_bits_received[0]),
        .O(w_next_data_bits_received[0]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h48)) 
    \r_data_bits_received[1]_i_1 
       (.I0(r_data_bits_received[0]),
        .I1(\FSM_sequential_r_state_reg[1]_1 [1]),
        .I2(r_data_bits_received[1]),
        .O(w_next_data_bits_received[1]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    \r_data_bits_received[2]_i_1 
       (.I0(r_data_bits_received[1]),
        .I1(r_data_bits_received[0]),
        .I2(\FSM_sequential_r_state_reg[1]_1 [1]),
        .I3(r_data_bits_received[2]),
        .O(w_next_data_bits_received[2]));
  LUT3 #(
    .INIT(8'h0B)) 
    \r_data_bits_received[3]_i_1 
       (.I0(\r_sampling_ticks_reg[4]_0 ),
        .I1(\FSM_sequential_r_state_reg[1]_1 [1]),
        .I2(\FSM_sequential_r_state_reg[1]_1 [0]),
        .O(\r_data_bits_received[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h7F008000)) 
    \r_data_bits_received[3]_i_2 
       (.I0(r_data_bits_received[2]),
        .I1(r_data_bits_received[0]),
        .I2(r_data_bits_received[1]),
        .I3(\FSM_sequential_r_state_reg[1]_1 [1]),
        .I4(r_data_bits_received[3]),
        .O(w_next_data_bits_received[3]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \r_data_bits_received[3]_i_3 
       (.I0(r_sampling_ticks[4]),
        .I1(r_sampling_ticks[3]),
        .I2(r_sampling_ticks[2]),
        .I3(\r_sampling_ticks_reg[0]_0 ),
        .I4(r_sampling_ticks[1]),
        .O(\r_sampling_ticks_reg[4]_0 ));
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
  LUT3 #(
    .INIT(8'h28)) 
    \r_sampling_ticks[0]_i_1 
       (.I0(\r_sampling_ticks[4]_i_2_n_0 ),
        .I1(tick),
        .I2(\r_sampling_ticks_reg[0]_0 ),
        .O(w_next_sampling_ticks[0]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \r_sampling_ticks[1]_i_1 
       (.I0(\r_sampling_ticks[4]_i_2_n_0 ),
        .I1(r_sampling_ticks[1]),
        .I2(tick),
        .I3(\r_sampling_ticks_reg[0]_0 ),
        .O(w_next_sampling_ticks[1]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h28888888)) 
    \r_sampling_ticks[2]_i_1 
       (.I0(\r_sampling_ticks[4]_i_2_n_0 ),
        .I1(r_sampling_ticks[2]),
        .I2(r_sampling_ticks[1]),
        .I3(\r_sampling_ticks_reg[0]_0 ),
        .I4(tick),
        .O(w_next_sampling_ticks[2]));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \r_sampling_ticks[3]_i_1 
       (.I0(\r_sampling_ticks[4]_i_2_n_0 ),
        .I1(r_sampling_ticks[3]),
        .I2(r_sampling_ticks[2]),
        .I3(tick),
        .I4(\r_sampling_ticks_reg[0]_0 ),
        .I5(r_sampling_ticks[1]),
        .O(w_next_sampling_ticks[3]));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \r_sampling_ticks[4]_i_1 
       (.I0(\r_sampling_ticks[4]_i_2_n_0 ),
        .I1(r_sampling_ticks[4]),
        .I2(r_sampling_ticks[3]),
        .I3(r_sampling_ticks[1]),
        .I4(\r_sampling_ticks_reg[4]_1 ),
        .I5(r_sampling_ticks[2]),
        .O(w_next_sampling_ticks[4]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hA2F2)) 
    \r_sampling_ticks[4]_i_2 
       (.I0(\FSM_sequential_r_state_reg[1]_1 [0]),
        .I1(\FSM_sequential_r_state[1]_i_2_n_0 ),
        .I2(\FSM_sequential_r_state_reg[1]_1 [1]),
        .I3(\r_sampling_ticks_reg[4]_0 ),
        .O(\r_sampling_ticks[4]_i_2_n_0 ));
  FDCE \r_sampling_ticks_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r_data_bits_received_reg[3]_0 ),
        .D(w_next_sampling_ticks[0]),
        .Q(\r_sampling_ticks_reg[0]_0 ));
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
  LUT4 #(
    .INIT(16'hFF8A)) 
    \r_wr_logic[3]_i_1__0 
       (.I0(\FSM_sequential_r_state_reg[1]_0 ),
        .I1(w_en_rd),
        .I2(\r_wr_logic_reg[0] ),
        .I3(Q),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \r_wr_logic[3]_i_3 
       (.I0(\FSM_sequential_r_state_reg[1]_1 [1]),
        .I1(\FSM_sequential_r_state_reg[1]_1 [0]),
        .I2(\r_sampling_ticks_reg[4]_0 ),
        .O(\FSM_sequential_r_state_reg[1]_0 ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_timer
   (slot_decode_error,
    slot_slave_error,
    slot_wr_done,
    Q,
    w_en0,
    w_decode_error__0,
    aclk,
    slave_error_reg_0,
    w_en__0,
    slave_error_reg_1,
    slave_error_reg_2,
    S_AXI_wvalid,
    S_AXI_rready);
  output [0:0]slot_decode_error;
  output [0:0]slot_slave_error;
  output [0:0]slot_wr_done;
  output [1:0]Q;
  output w_en0;
  input w_decode_error__0;
  input aclk;
  input slave_error_reg_0;
  input w_en__0;
  input slave_error_reg_1;
  input slave_error_reg_2;
  input S_AXI_wvalid;
  input S_AXI_rready;

  wire \FSM_onehot_r_state_reg_n_0_[0] ;
  wire \FSM_onehot_w_next_state_reg[0]_i_1__1_n_0 ;
  wire \FSM_onehot_w_next_state_reg[1]_i_1__1_n_0 ;
  wire \FSM_onehot_w_next_state_reg[2]_i_1__0_n_0 ;
  wire \FSM_onehot_w_next_state_reg_n_0_[0] ;
  wire \FSM_onehot_w_next_state_reg_n_0_[1] ;
  wire \FSM_onehot_w_next_state_reg_n_0_[2] ;
  wire [1:0]Q;
  wire S_AXI_rready;
  wire S_AXI_wvalid;
  wire aclk;
  wire slave_error_reg_0;
  wire slave_error_reg_1;
  wire slave_error_reg_2;
  wire [0:0]slot_decode_error;
  wire [0:0]slot_slave_error;
  wire [0:0]slot_wr_done;
  wire w_decode_error;
  wire w_decode_error__0;
  wire w_decode_error_reg_i_1_n_0;
  wire w_en0;
  wire w_en__0;
  wire w_next_state;
  wire w_slave_error;
  wire w_slave_error__0;
  wire w_slave_error_reg_i_1_n_0;
  wire w_wr_done;

  (* FSM_ENCODED_STATES = "ACTIVE:010,DONE:100,IDLE:001" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_r_state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\FSM_onehot_w_next_state_reg_n_0_[0] ),
        .PRE(slave_error_reg_0),
        .Q(\FSM_onehot_r_state_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "ACTIVE:010,DONE:100,IDLE:001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_r_state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(slave_error_reg_0),
        .D(\FSM_onehot_w_next_state_reg_n_0_[1] ),
        .Q(Q[0]));
  (* FSM_ENCODED_STATES = "ACTIVE:010,DONE:100,IDLE:001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_r_state_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(slave_error_reg_0),
        .D(\FSM_onehot_w_next_state_reg_n_0_[2] ),
        .Q(Q[1]));
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
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
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
        .D(\FSM_onehot_w_next_state_reg[1]_i_1__1_n_0 ),
        .G(w_next_state),
        .GE(1'b1),
        .Q(\FSM_onehot_w_next_state_reg_n_0_[1] ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_w_next_state_reg[1]_i_1__1 
       (.I0(\FSM_onehot_r_state_reg_n_0_[0] ),
        .I1(w_en__0),
        .O(\FSM_onehot_w_next_state_reg[1]_i_1__1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_w_next_state_reg[1]_i_3__0 
       (.I0(S_AXI_rready),
        .I1(S_AXI_wvalid),
        .O(w_en0));
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
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_w_next_state_reg[2]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\FSM_onehot_w_next_state_reg[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_onehot_w_next_state_reg[2]_i_2 
       (.I0(\FSM_onehot_r_state_reg_n_0_[0] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(w_next_state));
  FDPE decode_error_reg
       (.C(aclk),
        .CE(1'b1),
        .D(w_decode_error),
        .PRE(slave_error_reg_0),
        .Q(slot_decode_error));
  FDPE slave_error_reg
       (.C(aclk),
        .CE(1'b1),
        .D(w_slave_error),
        .PRE(slave_error_reg_0),
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
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
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
    w_slave_error_reg
       (.CLR(1'b0),
        .D(w_slave_error_reg_i_1_n_0),
        .G(w_slave_error__0),
        .GE(1'b1),
        .Q(w_slave_error));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    w_slave_error_reg_i_1
       (.I0(\FSM_onehot_r_state_reg_n_0_[0] ),
        .I1(Q[1]),
        .I2(slot_slave_error),
        .I3(S_AXI_wvalid),
        .I4(Q[0]),
        .O(w_slave_error_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hFFFF2000)) 
    w_slave_error_reg_i_2
       (.I0(Q[0]),
        .I1(slave_error_reg_1),
        .I2(slave_error_reg_2),
        .I3(S_AXI_wvalid),
        .I4(Q[1]),
        .O(w_slave_error__0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    wr_done_i_1__1
       (.I0(Q[0]),
        .I1(S_AXI_wvalid),
        .O(w_wr_done));
  FDCE wr_done_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(slave_error_reg_0),
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
    tx,
    debug_r_state,
    debug_w_next_state);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET arst_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_clk_out1, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 arst_n RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME arst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input arst_n;
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO TRI_I" *) (* X_INTERFACE_MODE = "master" *) input [8:0]in_ports;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO TRI_O" *) output [3:0]out_ports;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 UART RxD" *) (* X_INTERFACE_MODE = "master" *) input rx;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 UART TxD" *) output tx;
  output [2:0]debug_r_state;
  output [2:0]debug_w_next_state;

  wire \<const0> ;
  wire S_AXI_arready;
  wire S_AXI_arvalid;
  wire [31:0]S_AXI_awaddr;
  wire S_AXI_awready;
  wire S_AXI_awvalid;
  wire S_AXI_bready;
  wire [1:0]S_AXI_bresp;
  wire S_AXI_bvalid;
  wire S_AXI_rready;
  wire [31:0]S_AXI_wdata;
  wire S_AXI_wready;
  wire S_AXI_wvalid;
  wire aclk;
  wire arst_n;
  wire [1:0]\^debug_r_state ;
  wire [1:0]\^debug_w_next_state ;
  wire [3:0]out_ports;
  wire rx;
  wire tx;
  wire NLW_inst_S_AXI_rvalid_UNCONNECTED;
  wire [31:0]NLW_inst_S_AXI_rdata_UNCONNECTED;
  wire [1:0]NLW_inst_S_AXI_rresp_UNCONNECTED;
  wire [2:2]NLW_inst_debug_r_state_UNCONNECTED;
  wire [2:2]NLW_inst_debug_w_next_state_UNCONNECTED;

  assign S_AXI_rdata[31] = \<const0> ;
  assign S_AXI_rdata[30] = \<const0> ;
  assign S_AXI_rdata[29] = \<const0> ;
  assign S_AXI_rdata[28] = \<const0> ;
  assign S_AXI_rdata[27] = \<const0> ;
  assign S_AXI_rdata[26] = \<const0> ;
  assign S_AXI_rdata[25] = \<const0> ;
  assign S_AXI_rdata[24] = \<const0> ;
  assign S_AXI_rdata[23] = \<const0> ;
  assign S_AXI_rdata[22] = \<const0> ;
  assign S_AXI_rdata[21] = \<const0> ;
  assign S_AXI_rdata[20] = \<const0> ;
  assign S_AXI_rdata[19] = \<const0> ;
  assign S_AXI_rdata[18] = \<const0> ;
  assign S_AXI_rdata[17] = \<const0> ;
  assign S_AXI_rdata[16] = \<const0> ;
  assign S_AXI_rdata[15] = \<const0> ;
  assign S_AXI_rdata[14] = \<const0> ;
  assign S_AXI_rdata[13] = \<const0> ;
  assign S_AXI_rdata[12] = \<const0> ;
  assign S_AXI_rdata[11] = \<const0> ;
  assign S_AXI_rdata[10] = \<const0> ;
  assign S_AXI_rdata[9] = \<const0> ;
  assign S_AXI_rdata[8] = \<const0> ;
  assign S_AXI_rdata[7] = \<const0> ;
  assign S_AXI_rdata[6] = \<const0> ;
  assign S_AXI_rdata[5] = \<const0> ;
  assign S_AXI_rdata[4] = \<const0> ;
  assign S_AXI_rdata[3] = \<const0> ;
  assign S_AXI_rdata[2] = \<const0> ;
  assign S_AXI_rdata[1] = \<const0> ;
  assign S_AXI_rdata[0] = \<const0> ;
  assign S_AXI_rresp[1] = \<const0> ;
  assign S_AXI_rresp[0] = \<const0> ;
  assign S_AXI_rvalid = \<const0> ;
  assign debug_r_state[2] = \<const0> ;
  assign debug_r_state[1:0] = \^debug_r_state [1:0];
  assign debug_w_next_state[2] = \<const0> ;
  assign debug_w_next_state[1:0] = \^debug_w_next_state [1:0];
  GND GND
       (.G(\<const0> ));
  (* NUM_INPUT = "9" *) 
  (* NUM_OUTPUT = "4" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mmio_subsystem inst
       (.S_AXI_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_arprot({1'b0,1'b0,1'b0}),
        .S_AXI_arready(S_AXI_arready),
        .S_AXI_arvalid(S_AXI_arvalid),
        .S_AXI_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,S_AXI_awaddr[15:0]}),
        .S_AXI_awprot({1'b0,1'b0,1'b0}),
        .S_AXI_awready(S_AXI_awready),
        .S_AXI_awvalid(S_AXI_awvalid),
        .S_AXI_bready(S_AXI_bready),
        .S_AXI_bresp(S_AXI_bresp),
        .S_AXI_bvalid(S_AXI_bvalid),
        .S_AXI_rdata(NLW_inst_S_AXI_rdata_UNCONNECTED[31:0]),
        .S_AXI_rready(S_AXI_rready),
        .S_AXI_rresp(NLW_inst_S_AXI_rresp_UNCONNECTED[1:0]),
        .S_AXI_rvalid(NLW_inst_S_AXI_rvalid_UNCONNECTED),
        .S_AXI_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,S_AXI_wdata[9:0]}),
        .S_AXI_wready(S_AXI_wready),
        .S_AXI_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_wvalid(S_AXI_wvalid),
        .aclk(aclk),
        .arst_n(arst_n),
        .debug_r_state({NLW_inst_debug_r_state_UNCONNECTED[2],\^debug_r_state }),
        .debug_w_next_state({NLW_inst_debug_w_next_state_UNCONNECTED[2],\^debug_w_next_state }),
        .in_ports({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'hE)) 
    empty_i_3
       (.I0(r_state[0]),
        .I1(r_state[1]),
        .O(\FSM_sequential_r_state_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r_data_bits_sent[0]_i_1 
       (.I0(r_state[1]),
        .I1(r_data_bits_sent[0]),
        .O(w_next_data_bits_sent[0]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h48)) 
    \r_data_bits_sent[1]_i_1 
       (.I0(r_data_bits_sent[0]),
        .I1(r_state[1]),
        .I2(r_data_bits_sent[1]),
        .O(w_next_data_bits_sent[1]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \r_in_shift[0]_i_1 
       (.I0(\r_in_shift_reg_n_0_[1] ),
        .I1(r_reg_array__0[0]),
        .I2(r_state[1]),
        .O(w_in_shift[0]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \r_in_shift[1]_i_1 
       (.I0(\r_in_shift_reg_n_0_[2] ),
        .I1(r_reg_array__0[1]),
        .I2(r_state[1]),
        .O(w_in_shift[1]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \r_in_shift[2]_i_1 
       (.I0(\r_in_shift_reg_n_0_[3] ),
        .I1(r_reg_array__0[2]),
        .I2(r_state[1]),
        .O(w_in_shift[2]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \r_in_shift[3]_i_1 
       (.I0(\r_in_shift_reg_n_0_[4] ),
        .I1(r_reg_array__0[3]),
        .I2(r_state[1]),
        .O(w_in_shift[3]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \r_in_shift[4]_i_1 
       (.I0(\r_in_shift_reg_n_0_[5] ),
        .I1(r_reg_array__0[4]),
        .I2(r_state[1]),
        .O(w_in_shift[4]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \r_in_shift[5]_i_1 
       (.I0(\r_in_shift_reg_n_0_[6] ),
        .I1(r_reg_array__0[5]),
        .I2(r_state[1]),
        .O(w_in_shift[5]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'hFFFF02AA)) 
    \r_wr_logic[3]_i_1 
       (.I0(w_en_wr),
        .I1(r_state[1]),
        .I2(r_state[0]),
        .I3(\r_wr_logic_reg[0] ),
        .I4(Q),
        .O(\FSM_sequential_r_state_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
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
    slot_decode_error,
    slot_slave_error,
    rx_empty,
    tx_full,
    Q,
    \r_control_reg[1]_0 ,
    full_reg,
    tx,
    \FSM_onehot_r_state_reg[0]_0 ,
    w_wr_done,
    aclk,
    decode_error_reg_0,
    slave_error_reg_0,
    arst_n,
    S_AXI_bready,
    S_AXI_rready,
    w_en__0,
    empty_reg,
    empty_reg_0,
    w_en_wr,
    w_en_rd,
    S_AXI_wvalid,
    slave_error_reg_1,
    rx,
    D,
    E,
    \r_dvsr_reg[9]_0 ,
    \r_control_reg[1]_1 ,
    \r_reg_array_reg[0][7] );
  output [0:0]slot_wr_done;
  output arst_n_0;
  output [0:0]slot_decode_error;
  output [0:0]slot_slave_error;
  output rx_empty;
  output tx_full;
  output [1:0]Q;
  output [0:0]\r_control_reg[1]_0 ;
  output full_reg;
  output tx;
  output \FSM_onehot_r_state_reg[0]_0 ;
  input w_wr_done;
  input aclk;
  input decode_error_reg_0;
  input slave_error_reg_0;
  input arst_n;
  input S_AXI_bready;
  input S_AXI_rready;
  input w_en__0;
  input empty_reg;
  input empty_reg_0;
  input w_en_wr;
  input w_en_rd;
  input S_AXI_wvalid;
  input [0:0]slave_error_reg_1;
  input rx;
  input [0:0]D;
  input [0:0]E;
  input [9:0]\r_dvsr_reg[9]_0 ;
  input [1:0]\r_control_reg[1]_1 ;
  input [7:0]\r_reg_array_reg[0][7] ;

  wire [0:0]D;
  wire [0:0]E;
  wire \FSM_onehot_r_state_reg[0]_0 ;
  wire \FSM_onehot_r_state_reg_n_0_[2] ;
  wire \FSM_onehot_w_next_state_reg[0]_i_1_n_0 ;
  wire \FSM_onehot_w_next_state_reg[2]_i_1_n_0 ;
  wire \FSM_onehot_w_next_state_reg_n_0_[0] ;
  wire \FSM_onehot_w_next_state_reg_n_0_[1] ;
  wire \FSM_onehot_w_next_state_reg_n_0_[2] ;
  wire [1:0]Q;
  wire S_AXI_bready;
  wire S_AXI_rready;
  wire S_AXI_wvalid;
  wire aclk;
  wire arst_n;
  wire arst_n_0;
  wire decode_error_reg_0;
  wire empty_reg;
  wire empty_reg_0;
  wire full_reg;
  wire [0:0]r_control;
  wire [0:0]\r_control_reg[1]_0 ;
  wire [1:0]\r_control_reg[1]_1 ;
  wire [9:0]r_dvsr;
  wire [9:0]\r_dvsr_reg[9]_0 ;
  wire [7:0]\r_reg_array_reg[0][7] ;
  wire rx;
  wire rx_empty;
  wire slave_error_reg_0;
  wire [0:0]slave_error_reg_1;
  wire [0:0]slot_decode_error;
  wire [0:0]slot_slave_error;
  wire [0:0]slot_wr_done;
  wire tx;
  wire tx_full;
  wire w_en__0;
  wire w_en_rd;
  wire w_en_wr;
  wire w_next_state;
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
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'hFF10)) 
    \FSM_onehot_w_next_state_reg[2]_i_1 
       (.I0(S_AXI_bready),
        .I1(S_AXI_rready),
        .I2(\FSM_onehot_r_state_reg_n_0_[2] ),
        .I3(Q[1]),
        .O(\FSM_onehot_w_next_state_reg[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_onehot_w_next_state_reg[2]_i_2__0 
       (.I0(Q[0]),
        .I1(\FSM_onehot_r_state_reg_n_0_[2] ),
        .I2(Q[1]),
        .O(w_next_state));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_core core
       (.Q({\r_control_reg[1]_0 ,r_control}),
        .S_AXI_rready(S_AXI_rready),
        .S_AXI_wvalid(S_AXI_wvalid),
        .aclk(aclk),
        .arst_n(arst_n),
        .arst_n_0(arst_n_0),
        .empty_reg(rx_empty),
        .empty_reg_0(empty_reg),
        .empty_reg_1(empty_reg_0),
        .full_reg(tx_full),
        .full_reg_0(full_reg),
        .\r_reg_array_reg[0][7] (\r_reg_array_reg[0][7] ),
        .rx(rx),
        .slave_error_reg(slave_error_reg_1),
        .tx(tx),
        .w_en_rd(w_en_rd),
        .w_en_wr(w_en_wr),
        .w_next_cnt1_carry(r_dvsr));
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
        .D(\r_control_reg[1]_1 [0]),
        .Q(r_control));
  FDCE \r_control_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(arst_n_0),
        .D(\r_control_reg[1]_1 [1]),
        .Q(\r_control_reg[1]_0 ));
  FDCE \r_dvsr_reg[0] 
       (.C(aclk),
        .CE(E),
        .CLR(arst_n_0),
        .D(\r_dvsr_reg[9]_0 [0]),
        .Q(r_dvsr[0]));
  FDCE \r_dvsr_reg[1] 
       (.C(aclk),
        .CE(E),
        .CLR(arst_n_0),
        .D(\r_dvsr_reg[9]_0 [1]),
        .Q(r_dvsr[1]));
  FDCE \r_dvsr_reg[2] 
       (.C(aclk),
        .CE(E),
        .CLR(arst_n_0),
        .D(\r_dvsr_reg[9]_0 [2]),
        .Q(r_dvsr[2]));
  FDCE \r_dvsr_reg[3] 
       (.C(aclk),
        .CE(E),
        .CLR(arst_n_0),
        .D(\r_dvsr_reg[9]_0 [3]),
        .Q(r_dvsr[3]));
  FDCE \r_dvsr_reg[4] 
       (.C(aclk),
        .CE(E),
        .CLR(arst_n_0),
        .D(\r_dvsr_reg[9]_0 [4]),
        .Q(r_dvsr[4]));
  FDCE \r_dvsr_reg[5] 
       (.C(aclk),
        .CE(E),
        .CLR(arst_n_0),
        .D(\r_dvsr_reg[9]_0 [5]),
        .Q(r_dvsr[5]));
  FDCE \r_dvsr_reg[6] 
       (.C(aclk),
        .CE(E),
        .CLR(arst_n_0),
        .D(\r_dvsr_reg[9]_0 [6]),
        .Q(r_dvsr[6]));
  FDCE \r_dvsr_reg[7] 
       (.C(aclk),
        .CE(E),
        .CLR(arst_n_0),
        .D(\r_dvsr_reg[9]_0 [7]),
        .Q(r_dvsr[7]));
  FDCE \r_dvsr_reg[8] 
       (.C(aclk),
        .CE(E),
        .CLR(arst_n_0),
        .D(\r_dvsr_reg[9]_0 [8]),
        .Q(r_dvsr[8]));
  FDCE \r_dvsr_reg[9] 
       (.C(aclk),
        .CE(E),
        .CLR(arst_n_0),
        .D(\r_dvsr_reg[9]_0 [9]),
        .Q(r_dvsr[9]));
  LUT2 #(
    .INIT(4'hE)) 
    slave_error_i_3
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\FSM_onehot_r_state_reg[0]_0 ));
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
        .Q(slot_wr_done));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_core
   (empty_reg,
    arst_n_0,
    full_reg,
    full_reg_0,
    tx,
    aclk,
    arst_n,
    empty_reg_0,
    empty_reg_1,
    w_en_wr,
    Q,
    w_en_rd,
    S_AXI_rready,
    S_AXI_wvalid,
    slave_error_reg,
    rx,
    w_next_cnt1_carry,
    \r_reg_array_reg[0][7] );
  output empty_reg;
  output arst_n_0;
  output full_reg;
  output full_reg_0;
  output tx;
  input aclk;
  input arst_n;
  input empty_reg_0;
  input empty_reg_1;
  input w_en_wr;
  input [1:0]Q;
  input w_en_rd;
  input S_AXI_rready;
  input S_AXI_wvalid;
  input [0:0]slave_error_reg;
  input rx;
  input [9:0]w_next_cnt1_carry;
  input [7:0]\r_reg_array_reg[0][7] ;

  wire [1:0]Q;
  wire S_AXI_rready;
  wire S_AXI_wvalid;
  wire aclk;
  wire arst_n;
  wire arst_n_0;
  wire buad_gen_n_0;
  wire empty_reg;
  wire empty_reg_0;
  wire empty_reg_1;
  wire full_reg;
  wire full_reg_0;
  wire [7:0]\r_reg_array_reg[0][7] ;
  wire [0:0]r_sampling_ticks;
  wire [1:0]r_state;
  wire [7:0]\rf/r_reg_array__0 ;
  wire rx;
  wire rx_fifo_n_1;
  wire rx_inst_n_0;
  wire rx_inst_n_1;
  wire rx_inst_n_5;
  wire [0:0]slave_error_reg;
  wire tick;
  wire tx;
  wire tx_fifo_n_0;
  wire tx_inst_n_0;
  wire tx_inst_n_1;
  wire tx_inst_n_3;
  wire w_en_rd;
  wire w_en_wr;
  wire [9:0]w_next_cnt1_carry;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_buad_generator buad_gen
       (.Q(r_sampling_ticks),
        .aclk(aclk),
        .\r_cnt_reg[0]_0 (arst_n_0),
        .\r_cnt_reg[1]_0 (buad_gen_n_0),
        .tick(tick),
        .w_next_cnt1_carry_0(w_next_cnt1_carry));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo rx_fifo
       (.E(rx_inst_n_0),
        .Q(Q[0]),
        .aclk(aclk),
        .empty_reg(empty_reg),
        .full_reg(rx_fifo_n_1),
        .full_reg_0(rx_inst_n_5),
        .full_reg_1(r_state),
        .full_reg_2(rx_inst_n_1),
        .\r_wr_logic_reg[3] (arst_n_0),
        .w_en_rd(w_en_rd));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rx rx_inst
       (.E(rx_inst_n_0),
        .\FSM_sequential_r_state_reg[1]_0 (rx_inst_n_1),
        .\FSM_sequential_r_state_reg[1]_1 (r_state),
        .Q(Q[0]),
        .aclk(aclk),
        .\r_data_bits_received_reg[3]_0 (arst_n_0),
        .\r_sampling_ticks_reg[0]_0 (r_sampling_ticks),
        .\r_sampling_ticks_reg[4]_0 (rx_inst_n_5),
        .\r_sampling_ticks_reg[4]_1 (buad_gen_n_0),
        .\r_wr_logic_reg[0] (rx_fifo_n_1),
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
        .empty_reg(tx_fifo_n_0),
        .empty_reg_0(empty_reg_0),
        .empty_reg_1(empty_reg_1),
        .full_reg(full_reg),
        .full_reg_0(full_reg_0),
        .full_reg_1(tx_inst_n_3),
        .r_reg_array__0(\rf/r_reg_array__0 ),
        .\r_reg_array_reg[0][7] (\r_reg_array_reg[0][7] ),
        .\r_wr_logic_reg[0] (tx_inst_n_0),
        .slave_error_reg(slave_error_reg),
        .slave_error_reg_0(empty_reg),
        .w_en_wr(w_en_wr));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tx tx_inst
       (.E(tx_inst_n_1),
        .\FSM_sequential_r_state_reg[0]_0 (tx_inst_n_3),
        .\FSM_sequential_r_state_reg[1]_0 (tx_inst_n_0),
        .Q(Q[1]),
        .aclk(aclk),
        .\r_in_shift_reg[7]_0 (arst_n_0),
        .\r_rd_logic_reg[0] (tx_fifo_n_0),
        .r_reg_array__0(\rf/r_reg_array__0 ),
        .\r_wr_logic_reg[0] (full_reg),
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
