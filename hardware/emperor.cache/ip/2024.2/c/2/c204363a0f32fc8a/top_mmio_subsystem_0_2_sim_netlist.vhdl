-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
-- Date        : Tue Aug 12 14:22:08 2025
-- Host        : wangjiakun-Inspiron-14-Plus-7430 running 64-bit Ubuntu 24.04.1 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ top_mmio_subsystem_0_2_sim_netlist.vhdl
-- Design      : top_mmio_subsystem_0_2
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a200tfbg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mmio_controller is
  port (
    S_AXI_awready : out STD_LOGIC;
    \r_state_reg[2]_0\ : out STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \r_addr_reg[10]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \r_addr_reg[11]_0\ : out STD_LOGIC;
    \S_AXI_wdata[31]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \r_state_reg[0]_0\ : out STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    \r_addr_reg[9]_0\ : out STD_LOGIC;
    \w_en__0\ : out STD_LOGIC;
    \w_en__0_0\ : out STD_LOGIC;
    \FSM_onehot_r_state_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \w_en__0_1\ : out STD_LOGIC;
    \S_AXI_wdata[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_wvalid_0 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \r_addr_reg[1]_0\ : out STD_LOGIC;
    \w_slave_error__0\ : out STD_LOGIC;
    \r_addr_reg[1]_1\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \w_rd_done__0\ : out STD_LOGIC;
    \r_addr_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    w_wr_done : out STD_LOGIC;
    w_rd_done : out STD_LOGIC;
    w_decode_error : out STD_LOGIC;
    \FSM_onehot_r_state_reg[1]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \r_addr_reg[1]_2\ : out STD_LOGIC;
    \w_decode_error__0\ : out STD_LOGIC;
    \r_addr_reg[3]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    w_rd_done_2 : out STD_LOGIC;
    \r_addr_reg[1]_3\ : out STD_LOGIC;
    w_en_wr : out STD_LOGIC;
    w_led_data : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \r_addr_reg[2]_0\ : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \r_addr_reg[3]_1\ : out STD_LOGIC;
    w_en_rd : out STD_LOGIC;
    w_wr_done_3 : out STD_LOGIC;
    w_rd_data : out STD_LOGIC;
    S_AXI_awready_0 : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_arready : in STD_LOGIC;
    S_AXI_wvalid : in STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    \S_AXI_rdata[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \slot_rd_data[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \S_AXI_rdata[9]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    slot_slave_error : in STD_LOGIC_VECTOR ( 1 downto 0 );
    slot_decode_error : in STD_LOGIC_VECTOR ( 2 downto 0 );
    slot_rd_done : in STD_LOGIC_VECTOR ( 2 downto 0 );
    slot_wr_done : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \r_control_reg[0]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \r_reg_array_reg[0][0]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    slave_error_reg : in STD_LOGIC_VECTOR ( 1 downto 0 );
    decode_error_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    \rd_data_reg[9]\ : in STD_LOGIC;
    \rd_data_reg[9]_0\ : in STD_LOGIC;
    \rd_data_reg[9]_1\ : in STD_LOGIC;
    tx_full : in STD_LOGIC;
    \rd_data_reg[0]\ : in STD_LOGIC;
    \rd_data_reg[9]_2\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \rd_data_reg[1]\ : in STD_LOGIC;
    \rd_data_reg[2]\ : in STD_LOGIC;
    \rd_data_reg[3]\ : in STD_LOGIC;
    \rd_data_reg[4]\ : in STD_LOGIC;
    \rd_data_reg[5]\ : in STD_LOGIC;
    \rd_data_reg[6]\ : in STD_LOGIC;
    \rd_data_reg[7]\ : in STD_LOGIC;
    rx_empty : in STD_LOGIC;
    \rd_data_reg[0]_0\ : in STD_LOGIC;
    aclk : in STD_LOGIC;
    \r_state_reg[2]_1\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mmio_controller;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mmio_controller is
  signal \^d\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \FSM_onehot_w_next_state_reg[1]_i_3__0_n_0\ : STD_LOGIC;
  signal \FSM_onehot_w_next_state_reg[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_w_next_state_reg[1]_i_4_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \S_AXI_bresp[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_bresp[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \S_AXI_bresp[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_rdata[31]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_rdata[9]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_rresp[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \out_ports[3]_i_6_n_0\ : STD_LOGIC;
  signal r_addr : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal \r_addr[15]_i_3_n_0\ : STD_LOGIC;
  signal \^r_addr_reg[10]_0\ : STD_LOGIC;
  signal \^r_addr_reg[1]_0\ : STD_LOGIC;
  signal \^r_addr_reg[1]_1\ : STD_LOGIC;
  signal \^r_addr_reg[3]_1\ : STD_LOGIC;
  signal \r_auto_reload[31]_i_3_n_0\ : STD_LOGIC;
  signal \r_auto_reload[31]_i_4_n_0\ : STD_LOGIC;
  signal \r_auto_reload[9]_i_2_n_0\ : STD_LOGIC;
  signal \r_dvsr[9]_i_3_n_0\ : STD_LOGIC;
  signal \r_reg_array[15][7]_i_4_n_0\ : STD_LOGIC;
  signal \^r_state_reg[2]_0\ : STD_LOGIC;
  signal \r_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \r_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \r_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \rd_data[0]_i_2_n_0\ : STD_LOGIC;
  signal \rd_data[7]_i_3_n_0\ : STD_LOGIC;
  signal rd_done_i_2_n_0 : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal w_addr : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal w_en_addr : STD_LOGIC;
  signal w_next_state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \w_next_state_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \w_next_state_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \w_next_state_reg[1]_i_3_n_0\ : STD_LOGIC;
  signal \w_next_state_reg[1]_i_4_n_0\ : STD_LOGIC;
  signal \w_next_state_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \w_next_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \w_next_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \w_next_state_reg_n_0_[2]\ : STD_LOGIC;
  signal w_rd_done_reg_i_3_n_0 : STD_LOGIC;
  signal w_rd_done_reg_i_4_n_0 : STD_LOGIC;
  signal w_slave_error_reg_i_4_n_0 : STD_LOGIC;
  signal wr_done_i_2_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_w_next_state_reg[1]_i_3\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \FSM_onehot_w_next_state_reg[1]_i_4\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of S_AXI_arready_INST_0 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of S_AXI_awready_INST_0 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \S_AXI_bresp[0]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \S_AXI_bresp[0]_INST_0_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of S_AXI_bvalid_INST_0 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \S_AXI_rdata[1]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \S_AXI_rdata[9]_INST_0_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \S_AXI_rresp[0]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of S_AXI_rvalid_INST_0 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of S_AXI_wready_INST_0 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \out_ports[3]_i_6\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \r_addr[15]_i_3\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \r_auto_reload[31]_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \r_auto_reload[31]_i_4\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \r_auto_reload[9]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \r_control[1]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \r_dvsr[9]_i_3\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of r_eg_i_2 : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \r_rd_logic[3]_i_3\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \r_reg_array[15][0]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \r_reg_array[15][1]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \r_reg_array[15][2]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \r_reg_array[15][3]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \r_reg_array[15][4]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \r_reg_array[15][5]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \r_reg_array[15][6]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \r_reg_array[15][7]_i_2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \r_reg_array[15][7]_i_4\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \rd_data[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \rd_data[3]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \rd_data[4]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \rd_data[5]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \rd_data[8]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of w_decode_error_reg_i_2 : label is "soft_lutpair4";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \w_next_state_reg[0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \w_next_state_reg[0]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \w_next_state_reg[0]_i_2\ : label is "soft_lutpair12";
  attribute XILINX_LEGACY_PRIM of \w_next_state_reg[1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \w_next_state_reg[1]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \w_next_state_reg[2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \w_next_state_reg[2]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of w_rd_done_reg_i_1 : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of w_rd_done_reg_i_3 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of w_rd_done_reg_i_4 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of w_slave_error_reg_i_3 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of w_slave_error_reg_i_4 : label is "soft_lutpair7";
begin
  D(9 downto 0) <= \^d\(9 downto 0);
  Q(5 downto 0) <= \^q\(5 downto 0);
  \r_addr_reg[10]_0\ <= \^r_addr_reg[10]_0\;
  \r_addr_reg[1]_0\ <= \^r_addr_reg[1]_0\;
  \r_addr_reg[1]_1\ <= \^r_addr_reg[1]_1\;
  \r_addr_reg[3]_1\ <= \^r_addr_reg[3]_1\;
  \r_state_reg[2]_0\ <= \^r_state_reg[2]_0\;
\FSM_onehot_w_next_state_reg[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000200020000"
    )
        port map (
      I0 => r_addr(9),
      I1 => r_addr(8),
      I2 => \FSM_onehot_w_next_state_reg[1]_i_3_n_0\,
      I3 => \^r_addr_reg[10]_0\,
      I4 => S_AXI_wvalid,
      I5 => S_AXI_rready,
      O => \w_en__0_1\
    );
\FSM_onehot_w_next_state_reg[1]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000A8"
    )
        port map (
      I0 => \r_control_reg[0]\(0),
      I1 => S_AXI_rready,
      I2 => S_AXI_wvalid,
      I3 => \^r_addr_reg[10]_0\,
      I4 => \FSM_onehot_w_next_state_reg[1]_i_3_n_0\,
      I5 => \FSM_onehot_w_next_state_reg[1]_i_4_n_0\,
      O => \FSM_onehot_r_state_reg[0]\(0)
    );
\FSM_onehot_w_next_state_reg[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \^q\(5),
      I1 => r_addr(11),
      I2 => sel0(4),
      I3 => sel0(7),
      I4 => sel0(6),
      I5 => sel0(5),
      O => \^r_addr_reg[10]_0\
    );
\FSM_onehot_w_next_state_reg[1]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000000E"
    )
        port map (
      I0 => S_AXI_wvalid,
      I1 => S_AXI_rready,
      I2 => \S_AXI_rdata[31]_INST_0_i_1_n_0\,
      I3 => \FSM_onehot_w_next_state_reg[1]_i_3__0_n_0\,
      I4 => \FSM_onehot_w_next_state_reg[1]_i_3_n_0\,
      O => \w_en__0\
    );
\FSM_onehot_w_next_state_reg[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFC7"
    )
        port map (
      I0 => S_AXI_wvalid,
      I1 => \r_state_reg_n_0_[0]\,
      I2 => \r_state_reg_n_0_[2]\,
      I3 => \r_state_reg_n_0_[1]\,
      O => \FSM_onehot_w_next_state_reg[1]_i_3_n_0\
    );
\FSM_onehot_w_next_state_reg[1]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => sel0(5),
      I1 => sel0(6),
      I2 => sel0(7),
      I3 => sel0(4),
      I4 => r_addr(11),
      O => \FSM_onehot_w_next_state_reg[1]_i_3__0_n_0\
    );
\FSM_onehot_w_next_state_reg[1]_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000E0000"
    )
        port map (
      I0 => S_AXI_wvalid,
      I1 => S_AXI_rready,
      I2 => \FSM_onehot_w_next_state_reg[1]_i_3_n_0\,
      I3 => r_addr(9),
      I4 => r_addr(8),
      I5 => \^r_addr_reg[10]_0\,
      O => \w_en__0_0\
    );
\FSM_onehot_w_next_state_reg[1]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => r_addr(8),
      I1 => r_addr(9),
      O => \FSM_onehot_w_next_state_reg[1]_i_4_n_0\
    );
S_AXI_arready_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \r_state_reg_n_0_[2]\,
      I1 => \r_state_reg_n_0_[1]\,
      I2 => \r_state_reg_n_0_[0]\,
      I3 => S_AXI_arready,
      O => \^r_state_reg[2]_0\
    );
S_AXI_awready_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \r_state_reg_n_0_[0]\,
      I1 => \r_state_reg_n_0_[1]\,
      I2 => \r_state_reg_n_0_[2]\,
      I3 => S_AXI_awready_0,
      O => S_AXI_awready
    );
\S_AXI_bresp[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \r_state_reg_n_0_[2]\,
      I1 => \r_state_reg_n_0_[0]\,
      I2 => \r_state_reg_n_0_[1]\,
      I3 => \S_AXI_bresp[0]_INST_0_i_1_n_0\,
      O => S_AXI_bresp(0)
    );
\S_AXI_bresp[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000051505155"
    )
        port map (
      I0 => \S_AXI_bresp[0]_INST_0_i_2_n_0\,
      I1 => slot_slave_error(1),
      I2 => r_addr(8),
      I3 => r_addr(9),
      I4 => slot_slave_error(0),
      I5 => \S_AXI_rresp[1]_INST_0_i_1_n_0\,
      O => \S_AXI_bresp[0]_INST_0_i_1_n_0\
    );
\S_AXI_bresp[0]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(5),
      I1 => r_addr(11),
      O => \S_AXI_bresp[0]_INST_0_i_2_n_0\
    );
\S_AXI_bresp[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000080"
    )
        port map (
      I0 => \S_AXI_bresp[1]_INST_0_i_1_n_0\,
      I1 => \r_state_reg_n_0_[1]\,
      I2 => \r_state_reg_n_0_[0]\,
      I3 => \r_state_reg_n_0_[2]\,
      I4 => \^q\(5),
      I5 => r_addr(11),
      O => S_AXI_bresp(1)
    );
\S_AXI_bresp[1]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0E02FFFF"
    )
        port map (
      I0 => slot_slave_error(0),
      I1 => r_addr(9),
      I2 => r_addr(8),
      I3 => slot_slave_error(1),
      I4 => \S_AXI_rresp[1]_INST_0_i_1_n_0\,
      O => \S_AXI_bresp[1]_INST_0_i_1_n_0\
    );
S_AXI_bvalid_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \r_state_reg_n_0_[1]\,
      I1 => \r_state_reg_n_0_[0]\,
      I2 => \r_state_reg_n_0_[2]\,
      O => S_AXI_bvalid
    );
\S_AXI_rdata[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A0AA8080000A808"
    )
        port map (
      I0 => \S_AXI_rdata[9]_INST_0_i_1_n_0\,
      I1 => \S_AXI_rdata[31]\(0),
      I2 => r_addr(8),
      I3 => \slot_rd_data[1]\(0),
      I4 => r_addr(9),
      I5 => \S_AXI_rdata[9]\(0),
      O => S_AXI_rdata(0)
    );
\S_AXI_rdata[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000200000"
    )
        port map (
      I0 => \r_state_reg_n_0_[2]\,
      I1 => \r_state_reg_n_0_[0]\,
      I2 => \r_state_reg_n_0_[1]\,
      I3 => r_addr(11),
      I4 => \S_AXI_rdata[31]\(10),
      I5 => \S_AXI_rdata[31]_INST_0_i_1_n_0\,
      O => S_AXI_rdata(10)
    );
\S_AXI_rdata[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000200000"
    )
        port map (
      I0 => \r_state_reg_n_0_[2]\,
      I1 => \r_state_reg_n_0_[0]\,
      I2 => \r_state_reg_n_0_[1]\,
      I3 => r_addr(11),
      I4 => \S_AXI_rdata[31]\(11),
      I5 => \S_AXI_rdata[31]_INST_0_i_1_n_0\,
      O => S_AXI_rdata(11)
    );
\S_AXI_rdata[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000200000"
    )
        port map (
      I0 => \r_state_reg_n_0_[2]\,
      I1 => \r_state_reg_n_0_[0]\,
      I2 => \r_state_reg_n_0_[1]\,
      I3 => r_addr(11),
      I4 => \S_AXI_rdata[31]\(12),
      I5 => \S_AXI_rdata[31]_INST_0_i_1_n_0\,
      O => S_AXI_rdata(12)
    );
\S_AXI_rdata[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000200000"
    )
        port map (
      I0 => \r_state_reg_n_0_[2]\,
      I1 => \r_state_reg_n_0_[0]\,
      I2 => \r_state_reg_n_0_[1]\,
      I3 => r_addr(11),
      I4 => \S_AXI_rdata[31]\(13),
      I5 => \S_AXI_rdata[31]_INST_0_i_1_n_0\,
      O => S_AXI_rdata(13)
    );
\S_AXI_rdata[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000200000"
    )
        port map (
      I0 => \r_state_reg_n_0_[2]\,
      I1 => \r_state_reg_n_0_[0]\,
      I2 => \r_state_reg_n_0_[1]\,
      I3 => r_addr(11),
      I4 => \S_AXI_rdata[31]\(14),
      I5 => \S_AXI_rdata[31]_INST_0_i_1_n_0\,
      O => S_AXI_rdata(14)
    );
\S_AXI_rdata[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000200000"
    )
        port map (
      I0 => \r_state_reg_n_0_[2]\,
      I1 => \r_state_reg_n_0_[0]\,
      I2 => \r_state_reg_n_0_[1]\,
      I3 => r_addr(11),
      I4 => \S_AXI_rdata[31]\(15),
      I5 => \S_AXI_rdata[31]_INST_0_i_1_n_0\,
      O => S_AXI_rdata(15)
    );
\S_AXI_rdata[16]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000200000"
    )
        port map (
      I0 => \r_state_reg_n_0_[2]\,
      I1 => \r_state_reg_n_0_[0]\,
      I2 => \r_state_reg_n_0_[1]\,
      I3 => r_addr(11),
      I4 => \S_AXI_rdata[31]\(16),
      I5 => \S_AXI_rdata[31]_INST_0_i_1_n_0\,
      O => S_AXI_rdata(16)
    );
\S_AXI_rdata[17]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000200000"
    )
        port map (
      I0 => \r_state_reg_n_0_[2]\,
      I1 => \r_state_reg_n_0_[0]\,
      I2 => \r_state_reg_n_0_[1]\,
      I3 => r_addr(11),
      I4 => \S_AXI_rdata[31]\(17),
      I5 => \S_AXI_rdata[31]_INST_0_i_1_n_0\,
      O => S_AXI_rdata(17)
    );
\S_AXI_rdata[18]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000200000"
    )
        port map (
      I0 => \r_state_reg_n_0_[2]\,
      I1 => \r_state_reg_n_0_[0]\,
      I2 => \r_state_reg_n_0_[1]\,
      I3 => r_addr(11),
      I4 => \S_AXI_rdata[31]\(18),
      I5 => \S_AXI_rdata[31]_INST_0_i_1_n_0\,
      O => S_AXI_rdata(18)
    );
\S_AXI_rdata[19]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000200000"
    )
        port map (
      I0 => \r_state_reg_n_0_[2]\,
      I1 => \r_state_reg_n_0_[0]\,
      I2 => \r_state_reg_n_0_[1]\,
      I3 => r_addr(11),
      I4 => \S_AXI_rdata[31]\(19),
      I5 => \S_AXI_rdata[31]_INST_0_i_1_n_0\,
      O => S_AXI_rdata(19)
    );
\S_AXI_rdata[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00A80008"
    )
        port map (
      I0 => \S_AXI_rdata[9]_INST_0_i_1_n_0\,
      I1 => \S_AXI_rdata[31]\(1),
      I2 => r_addr(9),
      I3 => r_addr(8),
      I4 => \S_AXI_rdata[9]\(1),
      O => S_AXI_rdata(1)
    );
\S_AXI_rdata[20]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000200000"
    )
        port map (
      I0 => \r_state_reg_n_0_[2]\,
      I1 => \r_state_reg_n_0_[0]\,
      I2 => \r_state_reg_n_0_[1]\,
      I3 => r_addr(11),
      I4 => \S_AXI_rdata[31]\(20),
      I5 => \S_AXI_rdata[31]_INST_0_i_1_n_0\,
      O => S_AXI_rdata(20)
    );
\S_AXI_rdata[21]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000200000"
    )
        port map (
      I0 => \r_state_reg_n_0_[2]\,
      I1 => \r_state_reg_n_0_[0]\,
      I2 => \r_state_reg_n_0_[1]\,
      I3 => r_addr(11),
      I4 => \S_AXI_rdata[31]\(21),
      I5 => \S_AXI_rdata[31]_INST_0_i_1_n_0\,
      O => S_AXI_rdata(21)
    );
\S_AXI_rdata[22]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000200000"
    )
        port map (
      I0 => \r_state_reg_n_0_[2]\,
      I1 => \r_state_reg_n_0_[0]\,
      I2 => \r_state_reg_n_0_[1]\,
      I3 => r_addr(11),
      I4 => \S_AXI_rdata[31]\(22),
      I5 => \S_AXI_rdata[31]_INST_0_i_1_n_0\,
      O => S_AXI_rdata(22)
    );
\S_AXI_rdata[23]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000200000"
    )
        port map (
      I0 => \r_state_reg_n_0_[2]\,
      I1 => \r_state_reg_n_0_[0]\,
      I2 => \r_state_reg_n_0_[1]\,
      I3 => r_addr(11),
      I4 => \S_AXI_rdata[31]\(23),
      I5 => \S_AXI_rdata[31]_INST_0_i_1_n_0\,
      O => S_AXI_rdata(23)
    );
\S_AXI_rdata[24]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000200000"
    )
        port map (
      I0 => \r_state_reg_n_0_[2]\,
      I1 => \r_state_reg_n_0_[0]\,
      I2 => \r_state_reg_n_0_[1]\,
      I3 => r_addr(11),
      I4 => \S_AXI_rdata[31]\(24),
      I5 => \S_AXI_rdata[31]_INST_0_i_1_n_0\,
      O => S_AXI_rdata(24)
    );
\S_AXI_rdata[25]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000200000"
    )
        port map (
      I0 => \r_state_reg_n_0_[2]\,
      I1 => \r_state_reg_n_0_[0]\,
      I2 => \r_state_reg_n_0_[1]\,
      I3 => r_addr(11),
      I4 => \S_AXI_rdata[31]\(25),
      I5 => \S_AXI_rdata[31]_INST_0_i_1_n_0\,
      O => S_AXI_rdata(25)
    );
\S_AXI_rdata[26]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000200000"
    )
        port map (
      I0 => \r_state_reg_n_0_[2]\,
      I1 => \r_state_reg_n_0_[0]\,
      I2 => \r_state_reg_n_0_[1]\,
      I3 => r_addr(11),
      I4 => \S_AXI_rdata[31]\(26),
      I5 => \S_AXI_rdata[31]_INST_0_i_1_n_0\,
      O => S_AXI_rdata(26)
    );
\S_AXI_rdata[27]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000200000"
    )
        port map (
      I0 => \r_state_reg_n_0_[2]\,
      I1 => \r_state_reg_n_0_[0]\,
      I2 => \r_state_reg_n_0_[1]\,
      I3 => r_addr(11),
      I4 => \S_AXI_rdata[31]\(27),
      I5 => \S_AXI_rdata[31]_INST_0_i_1_n_0\,
      O => S_AXI_rdata(27)
    );
\S_AXI_rdata[28]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000200000"
    )
        port map (
      I0 => \r_state_reg_n_0_[2]\,
      I1 => \r_state_reg_n_0_[0]\,
      I2 => \r_state_reg_n_0_[1]\,
      I3 => r_addr(11),
      I4 => \S_AXI_rdata[31]\(28),
      I5 => \S_AXI_rdata[31]_INST_0_i_1_n_0\,
      O => S_AXI_rdata(28)
    );
\S_AXI_rdata[29]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000200000"
    )
        port map (
      I0 => \r_state_reg_n_0_[2]\,
      I1 => \r_state_reg_n_0_[0]\,
      I2 => \r_state_reg_n_0_[1]\,
      I3 => r_addr(11),
      I4 => \S_AXI_rdata[31]\(29),
      I5 => \S_AXI_rdata[31]_INST_0_i_1_n_0\,
      O => S_AXI_rdata(29)
    );
\S_AXI_rdata[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00A80008"
    )
        port map (
      I0 => \S_AXI_rdata[9]_INST_0_i_1_n_0\,
      I1 => \S_AXI_rdata[31]\(2),
      I2 => r_addr(9),
      I3 => r_addr(8),
      I4 => \S_AXI_rdata[9]\(2),
      O => S_AXI_rdata(2)
    );
\S_AXI_rdata[30]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000200000"
    )
        port map (
      I0 => \r_state_reg_n_0_[2]\,
      I1 => \r_state_reg_n_0_[0]\,
      I2 => \r_state_reg_n_0_[1]\,
      I3 => r_addr(11),
      I4 => \S_AXI_rdata[31]\(30),
      I5 => \S_AXI_rdata[31]_INST_0_i_1_n_0\,
      O => S_AXI_rdata(30)
    );
\S_AXI_rdata[31]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000200000"
    )
        port map (
      I0 => \r_state_reg_n_0_[2]\,
      I1 => \r_state_reg_n_0_[0]\,
      I2 => \r_state_reg_n_0_[1]\,
      I3 => r_addr(11),
      I4 => \S_AXI_rdata[31]\(31),
      I5 => \S_AXI_rdata[31]_INST_0_i_1_n_0\,
      O => S_AXI_rdata(31)
    );
\S_AXI_rdata[31]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \^q\(5),
      I1 => r_addr(9),
      I2 => r_addr(8),
      O => \S_AXI_rdata[31]_INST_0_i_1_n_0\
    );
\S_AXI_rdata[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00A80008"
    )
        port map (
      I0 => \S_AXI_rdata[9]_INST_0_i_1_n_0\,
      I1 => \S_AXI_rdata[31]\(3),
      I2 => r_addr(9),
      I3 => r_addr(8),
      I4 => \S_AXI_rdata[9]\(3),
      O => S_AXI_rdata(3)
    );
\S_AXI_rdata[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00A80008"
    )
        port map (
      I0 => \S_AXI_rdata[9]_INST_0_i_1_n_0\,
      I1 => \S_AXI_rdata[31]\(4),
      I2 => r_addr(9),
      I3 => r_addr(8),
      I4 => \S_AXI_rdata[9]\(4),
      O => S_AXI_rdata(4)
    );
\S_AXI_rdata[5]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00A80008"
    )
        port map (
      I0 => \S_AXI_rdata[9]_INST_0_i_1_n_0\,
      I1 => \S_AXI_rdata[31]\(5),
      I2 => r_addr(9),
      I3 => r_addr(8),
      I4 => \S_AXI_rdata[9]\(5),
      O => S_AXI_rdata(5)
    );
\S_AXI_rdata[6]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00A80008"
    )
        port map (
      I0 => \S_AXI_rdata[9]_INST_0_i_1_n_0\,
      I1 => \S_AXI_rdata[31]\(6),
      I2 => r_addr(9),
      I3 => r_addr(8),
      I4 => \S_AXI_rdata[9]\(6),
      O => S_AXI_rdata(6)
    );
\S_AXI_rdata[7]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00A80008"
    )
        port map (
      I0 => \S_AXI_rdata[9]_INST_0_i_1_n_0\,
      I1 => \S_AXI_rdata[31]\(7),
      I2 => r_addr(9),
      I3 => r_addr(8),
      I4 => \S_AXI_rdata[9]\(7),
      O => S_AXI_rdata(7)
    );
\S_AXI_rdata[8]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00A80008"
    )
        port map (
      I0 => \S_AXI_rdata[9]_INST_0_i_1_n_0\,
      I1 => \S_AXI_rdata[31]\(8),
      I2 => r_addr(9),
      I3 => r_addr(8),
      I4 => \S_AXI_rdata[9]\(8),
      O => S_AXI_rdata(8)
    );
\S_AXI_rdata[9]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00A80008"
    )
        port map (
      I0 => \S_AXI_rdata[9]_INST_0_i_1_n_0\,
      I1 => \S_AXI_rdata[31]\(9),
      I2 => r_addr(9),
      I3 => r_addr(8),
      I4 => \S_AXI_rdata[9]\(9),
      O => S_AXI_rdata(9)
    );
\S_AXI_rdata[9]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => r_addr(11),
      I1 => \^q\(5),
      I2 => \r_state_reg_n_0_[1]\,
      I3 => \r_state_reg_n_0_[0]\,
      I4 => \r_state_reg_n_0_[2]\,
      O => \S_AXI_rdata[9]_INST_0_i_1_n_0\
    );
\S_AXI_rresp[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \S_AXI_bresp[0]_INST_0_i_1_n_0\,
      I1 => \r_state_reg_n_0_[1]\,
      I2 => \r_state_reg_n_0_[0]\,
      I3 => \r_state_reg_n_0_[2]\,
      O => S_AXI_rresp(0)
    );
\S_AXI_rresp[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5D5F5D5500000000"
    )
        port map (
      I0 => \S_AXI_rresp[1]_INST_0_i_1_n_0\,
      I1 => slot_slave_error(1),
      I2 => r_addr(8),
      I3 => r_addr(9),
      I4 => slot_slave_error(0),
      I5 => \S_AXI_rdata[9]_INST_0_i_1_n_0\,
      O => S_AXI_rresp(1)
    );
\S_AXI_rresp[1]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CF44CF77"
    )
        port map (
      I0 => slot_decode_error(2),
      I1 => r_addr(9),
      I2 => slot_decode_error(1),
      I3 => r_addr(8),
      I4 => slot_decode_error(0),
      O => \S_AXI_rresp[1]_INST_0_i_1_n_0\
    );
S_AXI_rvalid_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \r_state_reg_n_0_[1]\,
      I1 => \r_state_reg_n_0_[0]\,
      I2 => \r_state_reg_n_0_[2]\,
      O => S_AXI_rvalid
    );
S_AXI_wready_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => S_AXI_wvalid,
      I1 => \r_state_reg_n_0_[0]\,
      I2 => \r_state_reg_n_0_[2]\,
      I3 => \r_state_reg_n_0_[1]\,
      O => S_AXI_wready
    );
decode_error_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFAFAC200000000"
    )
        port map (
      I0 => S_AXI_rready,
      I1 => \^q\(4),
      I2 => S_AXI_wvalid,
      I3 => \^q\(1),
      I4 => \^q\(0),
      I5 => decode_error_reg(0),
      O => w_decode_error
    );
empty_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => w_slave_error_reg_i_4_n_0,
      I1 => \^r_addr_reg[1]_1\,
      I2 => S_AXI_rready,
      I3 => rx_empty,
      I4 => \^q\(4),
      I5 => \r_control_reg[0]\(1),
      O => w_en_rd
    );
\out_ports[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000000000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => w_slave_error_reg_i_4_n_0,
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => S_AXI_wvalid,
      I5 => decode_error_reg(0),
      O => w_led_data(0)
    );
\out_ports[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010000000000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(1),
      I2 => \r_auto_reload[31]_i_3_n_0\,
      I3 => \^q\(0),
      I4 => S_AXI_wvalid,
      I5 => decode_error_reg(0),
      O => w_led_data(1)
    );
\out_ports[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010000000000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(1),
      I2 => \r_dvsr[9]_i_3_n_0\,
      I3 => \^q\(0),
      I4 => S_AXI_wvalid,
      I5 => decode_error_reg(0),
      O => w_led_data(2)
    );
\out_ports[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => r_addr(11),
      I1 => sel0(4),
      I2 => r_addr(8),
      I3 => \r_state_reg_n_0_[0]\,
      I4 => \r_state_reg_n_0_[2]\,
      I5 => \r_state_reg_n_0_[1]\,
      O => \r_addr_reg[11]_0\
    );
\out_ports[3]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => r_addr(9),
      I1 => sel0(5),
      I2 => sel0(6),
      I3 => sel0(7),
      O => \r_addr_reg[9]_0\
    );
\out_ports[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010000000000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(1),
      I2 => \out_ports[3]_i_6_n_0\,
      I3 => \^q\(0),
      I4 => S_AXI_wvalid,
      I5 => decode_error_reg(0),
      O => w_led_data(3)
    );
\out_ports[3]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      O => \out_ports[3]_i_6_n_0\
    );
\r_addr[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4444444"
    )
        port map (
      I0 => \r_addr[15]_i_3_n_0\,
      I1 => S_AXI_awaddr(0),
      I2 => S_AXI_araddr(0),
      I3 => S_AXI_awready_0,
      I4 => \^r_state_reg[2]_0\,
      O => w_addr(0)
    );
\r_addr[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4444444"
    )
        port map (
      I0 => \r_addr[15]_i_3_n_0\,
      I1 => S_AXI_awaddr(7),
      I2 => S_AXI_araddr(7),
      I3 => S_AXI_awready_0,
      I4 => \^r_state_reg[2]_0\,
      O => w_addr(10)
    );
\r_addr[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4444444"
    )
        port map (
      I0 => \r_addr[15]_i_3_n_0\,
      I1 => S_AXI_awaddr(8),
      I2 => S_AXI_araddr(8),
      I3 => S_AXI_awready_0,
      I4 => \^r_state_reg[2]_0\,
      O => w_addr(11)
    );
\r_addr[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4444444"
    )
        port map (
      I0 => \r_addr[15]_i_3_n_0\,
      I1 => S_AXI_awaddr(9),
      I2 => S_AXI_araddr(9),
      I3 => S_AXI_awready_0,
      I4 => \^r_state_reg[2]_0\,
      O => w_addr(12)
    );
\r_addr[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4444444"
    )
        port map (
      I0 => \r_addr[15]_i_3_n_0\,
      I1 => S_AXI_awaddr(10),
      I2 => S_AXI_araddr(10),
      I3 => S_AXI_awready_0,
      I4 => \^r_state_reg[2]_0\,
      O => w_addr(13)
    );
\r_addr[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4444444"
    )
        port map (
      I0 => \r_addr[15]_i_3_n_0\,
      I1 => S_AXI_awaddr(11),
      I2 => S_AXI_araddr(11),
      I3 => S_AXI_awready_0,
      I4 => \^r_state_reg[2]_0\,
      O => w_addr(14)
    );
\r_addr[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01010100"
    )
        port map (
      I0 => \r_state_reg_n_0_[2]\,
      I1 => \r_state_reg_n_0_[1]\,
      I2 => \r_state_reg_n_0_[0]\,
      I3 => S_AXI_arvalid,
      I4 => S_AXI_awvalid,
      O => w_en_addr
    );
\r_addr[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4444444"
    )
        port map (
      I0 => \r_addr[15]_i_3_n_0\,
      I1 => S_AXI_awaddr(12),
      I2 => S_AXI_araddr(12),
      I3 => S_AXI_awready_0,
      I4 => \^r_state_reg[2]_0\,
      O => w_addr(15)
    );
\r_addr[15]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => S_AXI_awready_0,
      I1 => \r_state_reg_n_0_[2]\,
      I2 => \r_state_reg_n_0_[1]\,
      I3 => \r_state_reg_n_0_[0]\,
      O => \r_addr[15]_i_3_n_0\
    );
\r_addr[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4444444"
    )
        port map (
      I0 => \r_addr[15]_i_3_n_0\,
      I1 => S_AXI_awaddr(1),
      I2 => S_AXI_araddr(1),
      I3 => S_AXI_awready_0,
      I4 => \^r_state_reg[2]_0\,
      O => w_addr(1)
    );
\r_addr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4444444"
    )
        port map (
      I0 => \r_addr[15]_i_3_n_0\,
      I1 => S_AXI_awaddr(2),
      I2 => S_AXI_araddr(2),
      I3 => S_AXI_awready_0,
      I4 => \^r_state_reg[2]_0\,
      O => w_addr(2)
    );
\r_addr[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4444444"
    )
        port map (
      I0 => \r_addr[15]_i_3_n_0\,
      I1 => S_AXI_awaddr(3),
      I2 => S_AXI_araddr(3),
      I3 => S_AXI_awready_0,
      I4 => \^r_state_reg[2]_0\,
      O => w_addr(3)
    );
\r_addr[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4444444"
    )
        port map (
      I0 => \r_addr[15]_i_3_n_0\,
      I1 => S_AXI_awaddr(4),
      I2 => S_AXI_araddr(4),
      I3 => S_AXI_awready_0,
      I4 => \^r_state_reg[2]_0\,
      O => w_addr(5)
    );
\r_addr[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4444444"
    )
        port map (
      I0 => \r_addr[15]_i_3_n_0\,
      I1 => S_AXI_awaddr(5),
      I2 => S_AXI_araddr(5),
      I3 => S_AXI_awready_0,
      I4 => \^r_state_reg[2]_0\,
      O => w_addr(8)
    );
\r_addr[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4444444"
    )
        port map (
      I0 => \r_addr[15]_i_3_n_0\,
      I1 => S_AXI_awaddr(6),
      I2 => S_AXI_araddr(6),
      I3 => S_AXI_awready_0,
      I4 => \^r_state_reg[2]_0\,
      O => w_addr(9)
    );
\r_addr_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => w_en_addr,
      CLR => \r_state_reg[2]_1\,
      D => w_addr(0),
      Q => \^q\(0)
    );
\r_addr_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => w_en_addr,
      CLR => \r_state_reg[2]_1\,
      D => w_addr(10),
      Q => \^q\(5)
    );
\r_addr_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => w_en_addr,
      CLR => \r_state_reg[2]_1\,
      D => w_addr(11),
      Q => r_addr(11)
    );
\r_addr_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => w_en_addr,
      CLR => \r_state_reg[2]_1\,
      D => w_addr(12),
      Q => sel0(4)
    );
\r_addr_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => w_en_addr,
      CLR => \r_state_reg[2]_1\,
      D => w_addr(13),
      Q => sel0(5)
    );
\r_addr_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => w_en_addr,
      CLR => \r_state_reg[2]_1\,
      D => w_addr(14),
      Q => sel0(6)
    );
\r_addr_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => w_en_addr,
      CLR => \r_state_reg[2]_1\,
      D => w_addr(15),
      Q => sel0(7)
    );
\r_addr_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => w_en_addr,
      CLR => \r_state_reg[2]_1\,
      D => w_addr(1),
      Q => \^q\(1)
    );
\r_addr_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => w_en_addr,
      CLR => \r_state_reg[2]_1\,
      D => w_addr(2),
      Q => \^q\(2)
    );
\r_addr_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => w_en_addr,
      CLR => \r_state_reg[2]_1\,
      D => w_addr(3),
      Q => \^q\(3)
    );
\r_addr_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => w_en_addr,
      CLR => \r_state_reg[2]_1\,
      D => w_addr(5),
      Q => \^q\(4)
    );
\r_addr_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => w_en_addr,
      CLR => \r_state_reg[2]_1\,
      D => w_addr(8),
      Q => r_addr(8)
    );
\r_addr_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => w_en_addr,
      CLR => \r_state_reg[2]_1\,
      D => w_addr(9),
      Q => r_addr(9)
    );
\r_auto_reload[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000400000000"
    )
        port map (
      I0 => \^r_addr_reg[10]_0\,
      I1 => S_AXI_wdata(0),
      I2 => \r_auto_reload[9]_i_2_n_0\,
      I3 => \r_state_reg_n_0_[1]\,
      I4 => \r_state_reg_n_0_[2]\,
      I5 => \r_state_reg_n_0_[0]\,
      O => \S_AXI_wdata[31]\(0)
    );
\r_auto_reload[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
        port map (
      I0 => \r_auto_reload[31]_i_4_n_0\,
      I1 => S_AXI_wdata(10),
      I2 => \^q\(5),
      I3 => \r_state_reg_n_0_[0]\,
      I4 => r_addr(9),
      O => \S_AXI_wdata[31]\(10)
    );
\r_auto_reload[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
        port map (
      I0 => \r_auto_reload[31]_i_4_n_0\,
      I1 => S_AXI_wdata(11),
      I2 => \^q\(5),
      I3 => \r_state_reg_n_0_[0]\,
      I4 => r_addr(9),
      O => \S_AXI_wdata[31]\(11)
    );
\r_auto_reload[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
        port map (
      I0 => \r_auto_reload[31]_i_4_n_0\,
      I1 => S_AXI_wdata(12),
      I2 => \^q\(5),
      I3 => \r_state_reg_n_0_[0]\,
      I4 => r_addr(9),
      O => \S_AXI_wdata[31]\(12)
    );
\r_auto_reload[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
        port map (
      I0 => \r_auto_reload[31]_i_4_n_0\,
      I1 => S_AXI_wdata(13),
      I2 => \^q\(5),
      I3 => \r_state_reg_n_0_[0]\,
      I4 => r_addr(9),
      O => \S_AXI_wdata[31]\(13)
    );
\r_auto_reload[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
        port map (
      I0 => \r_auto_reload[31]_i_4_n_0\,
      I1 => S_AXI_wdata(14),
      I2 => \^q\(5),
      I3 => \r_state_reg_n_0_[0]\,
      I4 => r_addr(9),
      O => \S_AXI_wdata[31]\(14)
    );
\r_auto_reload[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
        port map (
      I0 => \r_auto_reload[31]_i_4_n_0\,
      I1 => S_AXI_wdata(15),
      I2 => \^q\(5),
      I3 => \r_state_reg_n_0_[0]\,
      I4 => r_addr(9),
      O => \S_AXI_wdata[31]\(15)
    );
\r_auto_reload[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
        port map (
      I0 => \r_auto_reload[31]_i_4_n_0\,
      I1 => S_AXI_wdata(16),
      I2 => \^q\(5),
      I3 => \r_state_reg_n_0_[0]\,
      I4 => r_addr(9),
      O => \S_AXI_wdata[31]\(16)
    );
\r_auto_reload[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
        port map (
      I0 => \r_auto_reload[31]_i_4_n_0\,
      I1 => S_AXI_wdata(17),
      I2 => \^q\(5),
      I3 => \r_state_reg_n_0_[0]\,
      I4 => r_addr(9),
      O => \S_AXI_wdata[31]\(17)
    );
\r_auto_reload[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
        port map (
      I0 => \r_auto_reload[31]_i_4_n_0\,
      I1 => S_AXI_wdata(18),
      I2 => \^q\(5),
      I3 => \r_state_reg_n_0_[0]\,
      I4 => r_addr(9),
      O => \S_AXI_wdata[31]\(18)
    );
\r_auto_reload[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
        port map (
      I0 => \r_auto_reload[31]_i_4_n_0\,
      I1 => S_AXI_wdata(19),
      I2 => \^q\(5),
      I3 => \r_state_reg_n_0_[0]\,
      I4 => r_addr(9),
      O => \S_AXI_wdata[31]\(19)
    );
\r_auto_reload[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000400000000"
    )
        port map (
      I0 => \^r_addr_reg[10]_0\,
      I1 => S_AXI_wdata(1),
      I2 => \r_auto_reload[9]_i_2_n_0\,
      I3 => \r_state_reg_n_0_[1]\,
      I4 => \r_state_reg_n_0_[2]\,
      I5 => \r_state_reg_n_0_[0]\,
      O => \S_AXI_wdata[31]\(1)
    );
\r_auto_reload[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
        port map (
      I0 => \r_auto_reload[31]_i_4_n_0\,
      I1 => S_AXI_wdata(20),
      I2 => \^q\(5),
      I3 => \r_state_reg_n_0_[0]\,
      I4 => r_addr(9),
      O => \S_AXI_wdata[31]\(20)
    );
\r_auto_reload[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
        port map (
      I0 => \r_auto_reload[31]_i_4_n_0\,
      I1 => S_AXI_wdata(21),
      I2 => \^q\(5),
      I3 => \r_state_reg_n_0_[0]\,
      I4 => r_addr(9),
      O => \S_AXI_wdata[31]\(21)
    );
\r_auto_reload[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
        port map (
      I0 => \r_auto_reload[31]_i_4_n_0\,
      I1 => S_AXI_wdata(22),
      I2 => \^q\(5),
      I3 => \r_state_reg_n_0_[0]\,
      I4 => r_addr(9),
      O => \S_AXI_wdata[31]\(22)
    );
\r_auto_reload[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
        port map (
      I0 => \r_auto_reload[31]_i_4_n_0\,
      I1 => S_AXI_wdata(23),
      I2 => \^q\(5),
      I3 => \r_state_reg_n_0_[0]\,
      I4 => r_addr(9),
      O => \S_AXI_wdata[31]\(23)
    );
\r_auto_reload[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
        port map (
      I0 => \r_auto_reload[31]_i_4_n_0\,
      I1 => S_AXI_wdata(24),
      I2 => \^q\(5),
      I3 => \r_state_reg_n_0_[0]\,
      I4 => r_addr(9),
      O => \S_AXI_wdata[31]\(24)
    );
\r_auto_reload[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
        port map (
      I0 => \r_auto_reload[31]_i_4_n_0\,
      I1 => S_AXI_wdata(25),
      I2 => \^q\(5),
      I3 => \r_state_reg_n_0_[0]\,
      I4 => r_addr(9),
      O => \S_AXI_wdata[31]\(25)
    );
\r_auto_reload[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
        port map (
      I0 => \r_auto_reload[31]_i_4_n_0\,
      I1 => S_AXI_wdata(26),
      I2 => \^q\(5),
      I3 => \r_state_reg_n_0_[0]\,
      I4 => r_addr(9),
      O => \S_AXI_wdata[31]\(26)
    );
\r_auto_reload[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
        port map (
      I0 => \r_auto_reload[31]_i_4_n_0\,
      I1 => S_AXI_wdata(27),
      I2 => \^q\(5),
      I3 => \r_state_reg_n_0_[0]\,
      I4 => r_addr(9),
      O => \S_AXI_wdata[31]\(27)
    );
\r_auto_reload[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
        port map (
      I0 => \r_auto_reload[31]_i_4_n_0\,
      I1 => S_AXI_wdata(28),
      I2 => \^q\(5),
      I3 => \r_state_reg_n_0_[0]\,
      I4 => r_addr(9),
      O => \S_AXI_wdata[31]\(28)
    );
\r_auto_reload[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
        port map (
      I0 => \r_auto_reload[31]_i_4_n_0\,
      I1 => S_AXI_wdata(29),
      I2 => \^q\(5),
      I3 => \r_state_reg_n_0_[0]\,
      I4 => r_addr(9),
      O => \S_AXI_wdata[31]\(29)
    );
\r_auto_reload[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000400000000"
    )
        port map (
      I0 => \^r_addr_reg[10]_0\,
      I1 => S_AXI_wdata(2),
      I2 => \r_auto_reload[9]_i_2_n_0\,
      I3 => \r_state_reg_n_0_[1]\,
      I4 => \r_state_reg_n_0_[2]\,
      I5 => \r_state_reg_n_0_[0]\,
      O => \S_AXI_wdata[31]\(2)
    );
\r_auto_reload[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
        port map (
      I0 => \r_auto_reload[31]_i_4_n_0\,
      I1 => S_AXI_wdata(30),
      I2 => \^q\(5),
      I3 => \r_state_reg_n_0_[0]\,
      I4 => r_addr(9),
      O => \S_AXI_wdata[31]\(30)
    );
\r_auto_reload[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => S_AXI_wvalid,
      I3 => \r_auto_reload[31]_i_3_n_0\,
      I4 => \^q\(4),
      I5 => slave_error_reg(0),
      O => \r_addr_reg[0]_0\(0)
    );
\r_auto_reload[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
        port map (
      I0 => \r_auto_reload[31]_i_4_n_0\,
      I1 => S_AXI_wdata(31),
      I2 => \^q\(5),
      I3 => \r_state_reg_n_0_[0]\,
      I4 => r_addr(9),
      O => \S_AXI_wdata[31]\(31)
    );
\r_auto_reload[31]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      O => \r_auto_reload[31]_i_3_n_0\
    );
\r_auto_reload[31]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000051"
    )
        port map (
      I0 => \^r_addr_reg[10]_0\,
      I1 => r_addr(8),
      I2 => r_addr(9),
      I3 => \r_state_reg_n_0_[2]\,
      I4 => \r_state_reg_n_0_[1]\,
      O => \r_auto_reload[31]_i_4_n_0\
    );
\r_auto_reload[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000400000000"
    )
        port map (
      I0 => \^r_addr_reg[10]_0\,
      I1 => S_AXI_wdata(3),
      I2 => \r_auto_reload[9]_i_2_n_0\,
      I3 => \r_state_reg_n_0_[1]\,
      I4 => \r_state_reg_n_0_[2]\,
      I5 => \r_state_reg_n_0_[0]\,
      O => \S_AXI_wdata[31]\(3)
    );
\r_auto_reload[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000400000000"
    )
        port map (
      I0 => \^r_addr_reg[10]_0\,
      I1 => S_AXI_wdata(4),
      I2 => \r_auto_reload[9]_i_2_n_0\,
      I3 => \r_state_reg_n_0_[1]\,
      I4 => \r_state_reg_n_0_[2]\,
      I5 => \r_state_reg_n_0_[0]\,
      O => \S_AXI_wdata[31]\(4)
    );
\r_auto_reload[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000400000000"
    )
        port map (
      I0 => \^r_addr_reg[10]_0\,
      I1 => S_AXI_wdata(5),
      I2 => \r_auto_reload[9]_i_2_n_0\,
      I3 => \r_state_reg_n_0_[1]\,
      I4 => \r_state_reg_n_0_[2]\,
      I5 => \r_state_reg_n_0_[0]\,
      O => \S_AXI_wdata[31]\(5)
    );
\r_auto_reload[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000400000000"
    )
        port map (
      I0 => \^r_addr_reg[10]_0\,
      I1 => S_AXI_wdata(6),
      I2 => \r_auto_reload[9]_i_2_n_0\,
      I3 => \r_state_reg_n_0_[1]\,
      I4 => \r_state_reg_n_0_[2]\,
      I5 => \r_state_reg_n_0_[0]\,
      O => \S_AXI_wdata[31]\(6)
    );
\r_auto_reload[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000400000000"
    )
        port map (
      I0 => \^r_addr_reg[10]_0\,
      I1 => S_AXI_wdata(7),
      I2 => \r_auto_reload[9]_i_2_n_0\,
      I3 => \r_state_reg_n_0_[1]\,
      I4 => \r_state_reg_n_0_[2]\,
      I5 => \r_state_reg_n_0_[0]\,
      O => \S_AXI_wdata[31]\(7)
    );
\r_auto_reload[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000400000000"
    )
        port map (
      I0 => \^r_addr_reg[10]_0\,
      I1 => S_AXI_wdata(8),
      I2 => \r_auto_reload[9]_i_2_n_0\,
      I3 => \r_state_reg_n_0_[1]\,
      I4 => \r_state_reg_n_0_[2]\,
      I5 => \r_state_reg_n_0_[0]\,
      O => \S_AXI_wdata[31]\(8)
    );
\r_auto_reload[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000400000000"
    )
        port map (
      I0 => \^r_addr_reg[10]_0\,
      I1 => S_AXI_wdata(9),
      I2 => \r_auto_reload[9]_i_2_n_0\,
      I3 => \r_state_reg_n_0_[1]\,
      I4 => \r_state_reg_n_0_[2]\,
      I5 => \r_state_reg_n_0_[0]\,
      O => \S_AXI_wdata[31]\(9)
    );
\r_auto_reload[9]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => r_addr(8),
      I1 => r_addr(9),
      O => \r_auto_reload[9]_i_2_n_0\
    );
\r_control[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800000000000"
    )
        port map (
      I0 => \^r_addr_reg[1]_0\,
      I1 => S_AXI_wvalid,
      I2 => \^q\(2),
      I3 => \^d\(0),
      I4 => \^q\(4),
      I5 => \r_control_reg[0]\(1),
      O => S_AXI_wvalid_0(0)
    );
\r_control[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800000000000"
    )
        port map (
      I0 => \^r_addr_reg[1]_0\,
      I1 => S_AXI_wvalid,
      I2 => \^q\(2),
      I3 => \^d\(1),
      I4 => \^q\(4),
      I5 => \r_control_reg[0]\(1),
      O => S_AXI_wvalid_0(1)
    );
\r_control[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFD"
    )
        port map (
      I0 => \r_state_reg_n_0_[0]\,
      I1 => \r_state_reg_n_0_[2]\,
      I2 => \r_state_reg_n_0_[1]\,
      I3 => r_addr(9),
      I4 => r_addr(8),
      O => \r_state_reg[0]_0\
    );
\r_control[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      I4 => S_AXI_wvalid,
      I5 => \^q\(4),
      O => \r_addr_reg[1]_2\
    );
\r_dvsr[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000010000000000"
    )
        port map (
      I0 => \FSM_onehot_w_next_state_reg[1]_i_4_n_0\,
      I1 => \r_state_reg_n_0_[1]\,
      I2 => \r_state_reg_n_0_[2]\,
      I3 => \r_state_reg_n_0_[0]\,
      I4 => \^r_addr_reg[10]_0\,
      I5 => S_AXI_wdata(0),
      O => \^d\(0)
    );
\r_dvsr[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000010000000000"
    )
        port map (
      I0 => \FSM_onehot_w_next_state_reg[1]_i_4_n_0\,
      I1 => \r_state_reg_n_0_[1]\,
      I2 => \r_state_reg_n_0_[2]\,
      I3 => \r_state_reg_n_0_[0]\,
      I4 => \^r_addr_reg[10]_0\,
      I5 => S_AXI_wdata(1),
      O => \^d\(1)
    );
\r_dvsr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000010000000000"
    )
        port map (
      I0 => \FSM_onehot_w_next_state_reg[1]_i_4_n_0\,
      I1 => \r_state_reg_n_0_[1]\,
      I2 => \r_state_reg_n_0_[2]\,
      I3 => \r_state_reg_n_0_[0]\,
      I4 => \^r_addr_reg[10]_0\,
      I5 => S_AXI_wdata(2),
      O => \^d\(2)
    );
\r_dvsr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000010000000000"
    )
        port map (
      I0 => \FSM_onehot_w_next_state_reg[1]_i_4_n_0\,
      I1 => \r_state_reg_n_0_[1]\,
      I2 => \r_state_reg_n_0_[2]\,
      I3 => \r_state_reg_n_0_[0]\,
      I4 => \^r_addr_reg[10]_0\,
      I5 => S_AXI_wdata(3),
      O => \^d\(3)
    );
\r_dvsr[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000010000000000"
    )
        port map (
      I0 => \FSM_onehot_w_next_state_reg[1]_i_4_n_0\,
      I1 => \r_state_reg_n_0_[1]\,
      I2 => \r_state_reg_n_0_[2]\,
      I3 => \r_state_reg_n_0_[0]\,
      I4 => \^r_addr_reg[10]_0\,
      I5 => S_AXI_wdata(4),
      O => \^d\(4)
    );
\r_dvsr[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000010000000000"
    )
        port map (
      I0 => \FSM_onehot_w_next_state_reg[1]_i_4_n_0\,
      I1 => \r_state_reg_n_0_[1]\,
      I2 => \r_state_reg_n_0_[2]\,
      I3 => \r_state_reg_n_0_[0]\,
      I4 => \^r_addr_reg[10]_0\,
      I5 => S_AXI_wdata(5),
      O => \^d\(5)
    );
\r_dvsr[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000010000000000"
    )
        port map (
      I0 => \FSM_onehot_w_next_state_reg[1]_i_4_n_0\,
      I1 => \r_state_reg_n_0_[1]\,
      I2 => \r_state_reg_n_0_[2]\,
      I3 => \r_state_reg_n_0_[0]\,
      I4 => \^r_addr_reg[10]_0\,
      I5 => S_AXI_wdata(6),
      O => \^d\(6)
    );
\r_dvsr[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000010000000000"
    )
        port map (
      I0 => \FSM_onehot_w_next_state_reg[1]_i_4_n_0\,
      I1 => \r_state_reg_n_0_[1]\,
      I2 => \r_state_reg_n_0_[2]\,
      I3 => \r_state_reg_n_0_[0]\,
      I4 => \^r_addr_reg[10]_0\,
      I5 => S_AXI_wdata(7),
      O => \^d\(7)
    );
\r_dvsr[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000010000000000"
    )
        port map (
      I0 => \FSM_onehot_w_next_state_reg[1]_i_4_n_0\,
      I1 => \r_state_reg_n_0_[1]\,
      I2 => \r_state_reg_n_0_[2]\,
      I3 => \r_state_reg_n_0_[0]\,
      I4 => \^r_addr_reg[10]_0\,
      I5 => S_AXI_wdata(8),
      O => \^d\(8)
    );
\r_dvsr[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002000"
    )
        port map (
      I0 => \r_control_reg[0]\(1),
      I1 => \^q\(4),
      I2 => S_AXI_wvalid,
      I3 => \r_dvsr[9]_i_3_n_0\,
      I4 => \^q\(0),
      I5 => \^q\(1),
      O => \FSM_onehot_r_state_reg[1]\(0)
    );
\r_dvsr[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000400000000"
    )
        port map (
      I0 => \^r_addr_reg[10]_0\,
      I1 => S_AXI_wdata(9),
      I2 => \FSM_onehot_w_next_state_reg[1]_i_4_n_0\,
      I3 => \r_state_reg_n_0_[1]\,
      I4 => \r_state_reg_n_0_[2]\,
      I5 => \r_state_reg_n_0_[0]\,
      O => \^d\(9)
    );
\r_dvsr[9]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      O => \r_dvsr[9]_i_3_n_0\
    );
r_eg_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(3),
      I2 => \^q\(0),
      O => \^r_addr_reg[1]_0\
    );
\r_rd_logic[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^q\(1),
      O => \^r_addr_reg[3]_1\
    );
\r_reg_array[15][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => S_AXI_wdata(0),
      I1 => \^r_addr_reg[10]_0\,
      I2 => \r_reg_array[15][7]_i_4_n_0\,
      I3 => \r_reg_array_reg[0][0]\(1),
      O => \S_AXI_wdata[7]\(0)
    );
\r_reg_array[15][1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => S_AXI_wdata(1),
      I1 => \^r_addr_reg[10]_0\,
      I2 => \r_reg_array[15][7]_i_4_n_0\,
      I3 => \r_reg_array_reg[0][0]\(1),
      O => \S_AXI_wdata[7]\(1)
    );
\r_reg_array[15][2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => S_AXI_wdata(2),
      I1 => \^r_addr_reg[10]_0\,
      I2 => \r_reg_array[15][7]_i_4_n_0\,
      I3 => \r_reg_array_reg[0][0]\(1),
      O => \S_AXI_wdata[7]\(2)
    );
\r_reg_array[15][3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => S_AXI_wdata(3),
      I1 => \^r_addr_reg[10]_0\,
      I2 => \r_reg_array[15][7]_i_4_n_0\,
      I3 => \r_reg_array_reg[0][0]\(1),
      O => \S_AXI_wdata[7]\(3)
    );
\r_reg_array[15][4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => S_AXI_wdata(4),
      I1 => \^r_addr_reg[10]_0\,
      I2 => \r_reg_array[15][7]_i_4_n_0\,
      I3 => \r_reg_array_reg[0][0]\(1),
      O => \S_AXI_wdata[7]\(4)
    );
\r_reg_array[15][5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => S_AXI_wdata(5),
      I1 => \^r_addr_reg[10]_0\,
      I2 => \r_reg_array[15][7]_i_4_n_0\,
      I3 => \r_reg_array_reg[0][0]\(1),
      O => \S_AXI_wdata[7]\(5)
    );
\r_reg_array[15][6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => S_AXI_wdata(6),
      I1 => \^r_addr_reg[10]_0\,
      I2 => \r_reg_array[15][7]_i_4_n_0\,
      I3 => \r_reg_array_reg[0][0]\(1),
      O => \S_AXI_wdata[7]\(6)
    );
\r_reg_array[15][7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => S_AXI_wdata(7),
      I1 => \^r_addr_reg[10]_0\,
      I2 => \r_reg_array[15][7]_i_4_n_0\,
      I3 => \r_reg_array_reg[0][0]\(1),
      O => \S_AXI_wdata[7]\(7)
    );
\r_reg_array[15][7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => \r_auto_reload[31]_i_3_n_0\,
      I1 => tx_full,
      I2 => S_AXI_wvalid,
      I3 => \^r_addr_reg[1]_1\,
      I4 => \^q\(4),
      I5 => \r_control_reg[0]\(1),
      O => w_en_wr
    );
\r_reg_array[15][7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000200"
    )
        port map (
      I0 => \r_state_reg_n_0_[0]\,
      I1 => \r_state_reg_n_0_[2]\,
      I2 => \r_state_reg_n_0_[1]\,
      I3 => r_addr(9),
      I4 => r_addr(8),
      O => \r_reg_array[15][7]_i_4_n_0\
    );
\r_state_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \r_state_reg[2]_1\,
      D => \w_next_state_reg_n_0_[0]\,
      Q => \r_state_reg_n_0_[0]\
    );
\r_state_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \r_state_reg[2]_1\,
      D => \w_next_state_reg_n_0_[1]\,
      Q => \r_state_reg_n_0_[1]\
    );
\r_state_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \r_state_reg[2]_1\,
      D => \w_next_state_reg_n_0_[2]\,
      Q => \r_state_reg_n_0_[2]\
    );
\rd_data[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF22F2F222222222"
    )
        port map (
      I0 => \rd_data[7]_i_3_n_0\,
      I1 => \rd_data_reg[0]\,
      I2 => \rd_data_reg[9]_2\(0),
      I3 => \r_reg_array_reg[0][0]\(0),
      I4 => \^q\(2),
      I5 => \^q\(3),
      O => \r_addr_reg[2]_0\(0)
    );
\rd_data[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \rd_data[0]_i_2_n_0\,
      I1 => \^q\(0),
      I2 => \^q\(4),
      I3 => \rd_data_reg[0]_0\,
      O => w_rd_data
    );
\rd_data[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => \^q\(1),
      I1 => decode_error_reg(0),
      I2 => S_AXI_wvalid,
      I3 => S_AXI_rready,
      O => \rd_data[0]_i_2_n_0\
    );
\rd_data[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF22F2F222222222"
    )
        port map (
      I0 => \rd_data[7]_i_3_n_0\,
      I1 => \rd_data_reg[1]\,
      I2 => \rd_data_reg[9]_2\(1),
      I3 => \r_reg_array_reg[0][0]\(1),
      I4 => \^q\(2),
      I5 => \^q\(3),
      O => \r_addr_reg[2]_0\(1)
    );
\rd_data[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08FF0808"
    )
        port map (
      I0 => \rd_data_reg[9]_2\(2),
      I1 => \^q\(3),
      I2 => \^q\(2),
      I3 => \rd_data_reg[2]\,
      I4 => \rd_data[7]_i_3_n_0\,
      O => \r_addr_reg[2]_0\(2)
    );
\rd_data[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08FF0808"
    )
        port map (
      I0 => \rd_data_reg[9]_2\(3),
      I1 => \^q\(3),
      I2 => \^q\(2),
      I3 => \rd_data_reg[3]\,
      I4 => \rd_data[7]_i_3_n_0\,
      O => \r_addr_reg[2]_0\(3)
    );
\rd_data[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08FF0808"
    )
        port map (
      I0 => \rd_data_reg[9]_2\(4),
      I1 => \^q\(3),
      I2 => \^q\(2),
      I3 => \rd_data_reg[4]\,
      I4 => \rd_data[7]_i_3_n_0\,
      O => \r_addr_reg[2]_0\(4)
    );
\rd_data[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08FF0808"
    )
        port map (
      I0 => \rd_data_reg[9]_2\(5),
      I1 => \^q\(3),
      I2 => \^q\(2),
      I3 => \rd_data_reg[5]\,
      I4 => \rd_data[7]_i_3_n_0\,
      O => \r_addr_reg[2]_0\(5)
    );
\rd_data[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08FF0808"
    )
        port map (
      I0 => \rd_data_reg[9]_2\(6),
      I1 => \^q\(3),
      I2 => \^q\(2),
      I3 => \rd_data_reg[6]\,
      I4 => \rd_data[7]_i_3_n_0\,
      O => \r_addr_reg[2]_0\(6)
    );
\rd_data[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08FF0808"
    )
        port map (
      I0 => \rd_data_reg[9]_2\(7),
      I1 => \^q\(3),
      I2 => \^q\(2),
      I3 => \rd_data_reg[7]\,
      I4 => \rd_data[7]_i_3_n_0\,
      O => \r_addr_reg[2]_0\(7)
    );
\rd_data[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000002000000"
    )
        port map (
      I0 => \r_control_reg[0]\(1),
      I1 => \^q\(4),
      I2 => rx_empty,
      I3 => S_AXI_rready,
      I4 => \^r_addr_reg[3]_1\,
      I5 => \^q\(3),
      O => \rd_data[7]_i_3_n_0\
    );
\rd_data[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      I2 => \rd_data_reg[9]_2\(8),
      O => \r_addr_reg[2]_0\(8)
    );
\rd_data[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000400040444000"
    )
        port map (
      I0 => \^r_addr_reg[1]_1\,
      I1 => \rd_data_reg[9]\,
      I2 => \rd_data_reg[9]_0\,
      I3 => \^q\(3),
      I4 => \rd_data_reg[9]_1\,
      I5 => \^q\(2),
      O => \r_addr_reg[3]_0\(0)
    );
\rd_data[9]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      I2 => \rd_data_reg[9]_2\(9),
      O => \r_addr_reg[2]_0\(9)
    );
rd_done_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0C0"
    )
        port map (
      I0 => S_AXI_rready,
      I1 => rd_done_i_2_n_0,
      I2 => \r_control_reg[0]\(1),
      I3 => \^q\(4),
      O => w_rd_done
    );
\rd_done_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100000000000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => S_AXI_wvalid,
      I3 => S_AXI_rready,
      I4 => decode_error_reg(0),
      I5 => \^q\(4),
      O => w_rd_done_2
    );
rd_done_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF1FFFF00000000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => S_AXI_wvalid,
      I5 => S_AXI_rready,
      O => rd_done_i_2_n_0
    );
w_decode_error_reg_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFE00"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => slave_error_reg(0),
      I4 => slave_error_reg(1),
      O => \w_decode_error__0\
    );
\w_next_state_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => w_next_state(0),
      G => \w_next_state_reg[2]_i_2_n_0\,
      GE => '1',
      Q => \w_next_state_reg_n_0_[0]\
    );
\w_next_state_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0055F0F300550000"
    )
        port map (
      I0 => S_AXI_bready,
      I1 => S_AXI_awready_0,
      I2 => \r_state_reg_n_0_[0]\,
      I3 => \r_state_reg_n_0_[2]\,
      I4 => \r_state_reg_n_0_[1]\,
      I5 => \w_next_state_reg[0]_i_2_n_0\,
      O => w_next_state(0)
    );
\w_next_state_reg[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FDFF"
    )
        port map (
      I0 => \r_state_reg_n_0_[2]\,
      I1 => \^q\(5),
      I2 => r_addr(11),
      I3 => \w_next_state_reg[1]_i_4_n_0\,
      O => \w_next_state_reg[0]_i_2_n_0\
    );
\w_next_state_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => w_next_state(1),
      G => \w_next_state_reg[2]_i_2_n_0\,
      GE => '1',
      Q => \w_next_state_reg_n_0_[1]\
    );
\w_next_state_reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"47FF4700"
    )
        port map (
      I0 => S_AXI_rready,
      I1 => \r_state_reg_n_0_[2]\,
      I2 => S_AXI_bready,
      I3 => \r_state_reg_n_0_[1]\,
      I4 => \w_next_state_reg[1]_i_2_n_0\,
      O => w_next_state(1)
    );
\w_next_state_reg[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000F000000088"
    )
        port map (
      I0 => \w_next_state_reg[1]_i_3_n_0\,
      I1 => \r_state_reg_n_0_[0]\,
      I2 => \w_next_state_reg[1]_i_4_n_0\,
      I3 => r_addr(11),
      I4 => \^q\(5),
      I5 => \r_state_reg_n_0_[2]\,
      O => \w_next_state_reg[1]_i_2_n_0\
    );
\w_next_state_reg[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => slot_wr_done(2),
      I1 => r_addr(9),
      I2 => slot_wr_done(1),
      I3 => r_addr(8),
      I4 => slot_wr_done(0),
      O => \w_next_state_reg[1]_i_3_n_0\
    );
\w_next_state_reg[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => slot_rd_done(2),
      I1 => r_addr(9),
      I2 => slot_rd_done(1),
      I3 => r_addr(8),
      I4 => slot_rd_done(0),
      O => \w_next_state_reg[1]_i_4_n_0\
    );
\w_next_state_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => w_next_state(2),
      G => \w_next_state_reg[2]_i_2_n_0\,
      GE => '1',
      Q => \w_next_state_reg_n_0_[2]\
    );
\w_next_state_reg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F00FF000F00FF22"
    )
        port map (
      I0 => S_AXI_awready_0,
      I1 => S_AXI_arready,
      I2 => S_AXI_rready,
      I3 => \r_state_reg_n_0_[2]\,
      I4 => \r_state_reg_n_0_[1]\,
      I5 => \r_state_reg_n_0_[0]\,
      O => w_next_state(2)
    );
\w_next_state_reg[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6F"
    )
        port map (
      I0 => \r_state_reg_n_0_[2]\,
      I1 => \r_state_reg_n_0_[0]\,
      I2 => \r_state_reg_n_0_[1]\,
      O => \w_next_state_reg[2]_i_2_n_0\
    );
\w_rd_data_reg[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001000000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => S_AXI_rready,
      I3 => S_AXI_wvalid,
      I4 => \^q\(4),
      I5 => slave_error_reg(0),
      O => E(0)
    );
w_rd_done_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => S_AXI_rready,
      I3 => \^q\(4),
      O => \r_addr_reg[1]_3\
    );
w_rd_done_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3333000022230000"
    )
        port map (
      I0 => S_AXI_rready,
      I1 => S_AXI_wvalid,
      I2 => w_rd_done_reg_i_3_n_0,
      I3 => w_rd_done_reg_i_4_n_0,
      I4 => slave_error_reg(0),
      I5 => \^q\(4),
      O => \w_rd_done__0\
    );
w_rd_done_reg_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1001"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => w_rd_done_reg_i_3_n_0
    );
w_rd_done_reg_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0110"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => w_rd_done_reg_i_4_n_0
    );
w_slave_error_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF02000000"
    )
        port map (
      I0 => slave_error_reg(0),
      I1 => \^q\(4),
      I2 => \^r_addr_reg[1]_1\,
      I3 => w_slave_error_reg_i_4_n_0,
      I4 => S_AXI_wvalid,
      I5 => slave_error_reg(1),
      O => \w_slave_error__0\
    );
w_slave_error_reg_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      O => \^r_addr_reg[1]_1\
    );
w_slave_error_reg_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      O => w_slave_error_reg_i_4_n_0
    );
wr_done_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0C0"
    )
        port map (
      I0 => S_AXI_wvalid,
      I1 => wr_done_i_2_n_0,
      I2 => \r_control_reg[0]\(1),
      I3 => \^q\(4),
      O => w_wr_done
    );
\wr_done_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => decode_error_reg(0),
      I3 => S_AXI_wvalid,
      I4 => \^q\(4),
      O => w_wr_done_3
    );
wr_done_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000000"
    )
        port map (
      I0 => S_AXI_rready,
      I1 => \^q\(3),
      I2 => \^q\(2),
      I3 => \^q\(0),
      I4 => \^q\(1),
      I5 => S_AXI_wvalid,
      O => wr_done_i_2_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_buad_generator is
  port (
    tick : out STD_LOGIC;
    w_next_cnt1_carry_0 : in STD_LOGIC_VECTOR ( 9 downto 0 );
    aclk : in STD_LOGIC;
    \r_cnt_reg[0]_0\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_buad_generator;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_buad_generator is
  signal load : STD_LOGIC;
  signal \r_cnt[5]_i_2_n_0\ : STD_LOGIC;
  signal \r_cnt[9]_i_2_n_0\ : STD_LOGIC;
  signal r_cnt_reg : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \r_sampling_ticks[3]_i_3_n_0\ : STD_LOGIC;
  signal w_next_cnt : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal w_next_cnt1_carry_i_1_n_0 : STD_LOGIC;
  signal w_next_cnt1_carry_i_2_n_0 : STD_LOGIC;
  signal w_next_cnt1_carry_i_3_n_0 : STD_LOGIC;
  signal w_next_cnt1_carry_i_4_n_0 : STD_LOGIC;
  signal w_next_cnt1_carry_n_1 : STD_LOGIC;
  signal w_next_cnt1_carry_n_2 : STD_LOGIC;
  signal w_next_cnt1_carry_n_3 : STD_LOGIC;
  signal NLW_w_next_cnt1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \r_cnt[0]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \r_cnt[1]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \r_cnt[2]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \r_cnt[3]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \r_cnt[5]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \r_cnt[6]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \r_cnt[7]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \r_cnt[8]_i_1\ : label is "soft_lutpair29";
begin
\r_cnt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => load,
      I1 => r_cnt_reg(0),
      O => w_next_cnt(0)
    );
\r_cnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"14"
    )
        port map (
      I0 => load,
      I1 => r_cnt_reg(0),
      I2 => r_cnt_reg(1),
      O => w_next_cnt(1)
    );
\r_cnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0708"
    )
        port map (
      I0 => r_cnt_reg(1),
      I1 => r_cnt_reg(0),
      I2 => load,
      I3 => r_cnt_reg(2),
      O => w_next_cnt(2)
    );
\r_cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"007F0080"
    )
        port map (
      I0 => r_cnt_reg(2),
      I1 => r_cnt_reg(0),
      I2 => r_cnt_reg(1),
      I3 => load,
      I4 => r_cnt_reg(3),
      O => w_next_cnt(3)
    );
\r_cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00007FFF00008000"
    )
        port map (
      I0 => r_cnt_reg(3),
      I1 => r_cnt_reg(1),
      I2 => r_cnt_reg(0),
      I3 => r_cnt_reg(2),
      I4 => load,
      I5 => r_cnt_reg(4),
      O => w_next_cnt(4)
    );
\r_cnt[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => \r_cnt[5]_i_2_n_0\,
      I1 => load,
      I2 => r_cnt_reg(5),
      O => w_next_cnt(5)
    );
\r_cnt[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => r_cnt_reg(4),
      I1 => r_cnt_reg(2),
      I2 => r_cnt_reg(0),
      I3 => r_cnt_reg(1),
      I4 => r_cnt_reg(3),
      O => \r_cnt[5]_i_2_n_0\
    );
\r_cnt[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => \r_cnt[9]_i_2_n_0\,
      I1 => load,
      I2 => r_cnt_reg(6),
      O => w_next_cnt(6)
    );
\r_cnt[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0708"
    )
        port map (
      I0 => r_cnt_reg(6),
      I1 => \r_cnt[9]_i_2_n_0\,
      I2 => load,
      I3 => r_cnt_reg(7),
      O => w_next_cnt(7)
    );
\r_cnt[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"007F0080"
    )
        port map (
      I0 => r_cnt_reg(7),
      I1 => \r_cnt[9]_i_2_n_0\,
      I2 => r_cnt_reg(6),
      I3 => load,
      I4 => r_cnt_reg(8),
      O => w_next_cnt(8)
    );
\r_cnt[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00007FFF00008000"
    )
        port map (
      I0 => r_cnt_reg(8),
      I1 => r_cnt_reg(6),
      I2 => \r_cnt[9]_i_2_n_0\,
      I3 => r_cnt_reg(7),
      I4 => load,
      I5 => r_cnt_reg(9),
      O => w_next_cnt(9)
    );
\r_cnt[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => r_cnt_reg(5),
      I1 => r_cnt_reg(3),
      I2 => r_cnt_reg(1),
      I3 => r_cnt_reg(0),
      I4 => r_cnt_reg(2),
      I5 => r_cnt_reg(4),
      O => \r_cnt[9]_i_2_n_0\
    );
\r_cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \r_cnt_reg[0]_0\,
      D => w_next_cnt(0),
      Q => r_cnt_reg(0)
    );
\r_cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \r_cnt_reg[0]_0\,
      D => w_next_cnt(1),
      Q => r_cnt_reg(1)
    );
\r_cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \r_cnt_reg[0]_0\,
      D => w_next_cnt(2),
      Q => r_cnt_reg(2)
    );
\r_cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \r_cnt_reg[0]_0\,
      D => w_next_cnt(3),
      Q => r_cnt_reg(3)
    );
\r_cnt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \r_cnt_reg[0]_0\,
      D => w_next_cnt(4),
      Q => r_cnt_reg(4)
    );
\r_cnt_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \r_cnt_reg[0]_0\,
      D => w_next_cnt(5),
      Q => r_cnt_reg(5)
    );
\r_cnt_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \r_cnt_reg[0]_0\,
      D => w_next_cnt(6),
      Q => r_cnt_reg(6)
    );
\r_cnt_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \r_cnt_reg[0]_0\,
      D => w_next_cnt(7),
      Q => r_cnt_reg(7)
    );
\r_cnt_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \r_cnt_reg[0]_0\,
      D => w_next_cnt(8),
      Q => r_cnt_reg(8)
    );
\r_cnt_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \r_cnt_reg[0]_0\,
      D => w_next_cnt(9),
      Q => r_cnt_reg(9)
    );
\r_sampling_ticks[3]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \r_sampling_ticks[3]_i_3_n_0\,
      I1 => r_cnt_reg(2),
      I2 => r_cnt_reg(3),
      I3 => r_cnt_reg(0),
      I4 => r_cnt_reg(1),
      O => tick
    );
\r_sampling_ticks[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => r_cnt_reg(4),
      I1 => r_cnt_reg(5),
      I2 => r_cnt_reg(6),
      I3 => r_cnt_reg(7),
      I4 => r_cnt_reg(9),
      I5 => r_cnt_reg(8),
      O => \r_sampling_ticks[3]_i_3_n_0\
    );
w_next_cnt1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => load,
      CO(2) => w_next_cnt1_carry_n_1,
      CO(1) => w_next_cnt1_carry_n_2,
      CO(0) => w_next_cnt1_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_w_next_cnt1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => w_next_cnt1_carry_i_1_n_0,
      S(2) => w_next_cnt1_carry_i_2_n_0,
      S(1) => w_next_cnt1_carry_i_3_n_0,
      S(0) => w_next_cnt1_carry_i_4_n_0
    );
w_next_cnt1_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => w_next_cnt1_carry_0(9),
      I1 => r_cnt_reg(9),
      O => w_next_cnt1_carry_i_1_n_0
    );
w_next_cnt1_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => r_cnt_reg(7),
      I1 => w_next_cnt1_carry_0(7),
      I2 => r_cnt_reg(6),
      I3 => w_next_cnt1_carry_0(6),
      I4 => w_next_cnt1_carry_0(8),
      I5 => r_cnt_reg(8),
      O => w_next_cnt1_carry_i_2_n_0
    );
w_next_cnt1_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => r_cnt_reg(4),
      I1 => w_next_cnt1_carry_0(4),
      I2 => r_cnt_reg(3),
      I3 => w_next_cnt1_carry_0(3),
      I4 => w_next_cnt1_carry_0(5),
      I5 => r_cnt_reg(5),
      O => w_next_cnt1_carry_i_3_n_0
    );
w_next_cnt1_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => r_cnt_reg(1),
      I1 => w_next_cnt1_carry_0(1),
      I2 => r_cnt_reg(0),
      I3 => w_next_cnt1_carry_0(0),
      I4 => w_next_cnt1_carry_0(2),
      I5 => r_cnt_reg(2),
      O => w_next_cnt1_carry_i_4_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_controller is
  port (
    full_reg_0 : out STD_LOGIC;
    full_reg_1 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \r_wr_logic_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \r_wr_logic_reg[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \r_wr_logic_reg[1]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \r_wr_logic_reg[1]_2\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \r_wr_logic_reg[0]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \r_wr_logic_reg[1]_3\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \r_wr_logic_reg[1]_4\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \r_wr_logic_reg[1]_5\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \r_wr_logic_reg[0]_2\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \r_wr_logic_reg[1]_6\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \r_wr_logic_reg[1]_7\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \r_wr_logic_reg[1]_8\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \r_wr_logic_reg[0]_3\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \r_wr_logic_reg[1]_9\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \r_wr_logic_reg[1]_10\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    empty_reg_0 : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_wvalid : in STD_LOGIC;
    slave_error_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    slave_error_reg_0 : in STD_LOGIC;
    w_en_wr : in STD_LOGIC;
    \r_wr_logic_reg[0]_4\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    full_reg_2 : in STD_LOGIC;
    aclk : in STD_LOGIC;
    \r_wr_logic_reg[3]_0\ : in STD_LOGIC;
    \r_rd_logic_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \r_wr_logic_reg[0]_5\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_controller;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_controller is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal empty_i_1_n_0 : STD_LOGIC;
  signal empty_i_2_n_0 : STD_LOGIC;
  signal \empty_i_4__0_n_0\ : STD_LOGIC;
  signal \empty_i_5__0_n_0\ : STD_LOGIC;
  signal \^empty_reg_0\ : STD_LOGIC;
  signal full_i_1_n_0 : STD_LOGIC;
  signal \full_i_2__0_n_0\ : STD_LOGIC;
  signal \full_i_3__0_n_0\ : STD_LOGIC;
  signal \^full_reg_1\ : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \p_0_in__2\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal r_wr_logic_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \empty_i_5__0\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \r_rd_logic[1]_i_1__0\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \r_rd_logic[2]_i_1__0\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \r_rd_logic[3]_i_2__0\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \r_wr_logic[0]_i_1__0\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \r_wr_logic[1]_i_1__0\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \r_wr_logic[2]_i_1__0\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \r_wr_logic[3]_i_2__0\ : label is "soft_lutpair52";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
  empty_reg_0 <= \^empty_reg_0\;
  full_reg_1 <= \^full_reg_1\;
empty_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEF2FAF0FFF0FFFA"
    )
        port map (
      I0 => empty_i_2_n_0,
      I1 => \^full_reg_1\,
      I2 => \r_wr_logic_reg[0]_4\(0),
      I3 => \^empty_reg_0\,
      I4 => full_reg_2,
      I5 => w_en_wr,
      O => empty_i_1_n_0
    );
empty_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0440404040040404"
    )
        port map (
      I0 => w_en_wr,
      I1 => \empty_i_4__0_n_0\,
      I2 => r_wr_logic_reg(3),
      I3 => \empty_i_5__0_n_0\,
      I4 => \^q\(2),
      I5 => \^q\(3),
      O => empty_i_2_n_0
    );
\empty_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0140802010040802"
    )
        port map (
      I0 => r_wr_logic_reg(0),
      I1 => r_wr_logic_reg(1),
      I2 => r_wr_logic_reg(2),
      I3 => \^q\(1),
      I4 => \^q\(0),
      I5 => \^q\(2),
      O => \empty_i_4__0_n_0\
    );
\empty_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \empty_i_5__0_n_0\
    );
empty_reg: unisim.vcomponents.FDPE
     port map (
      C => aclk,
      CE => '1',
      D => empty_i_1_n_0,
      PRE => \r_wr_logic_reg[3]_0\,
      Q => \^empty_reg_0\
    );
full_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0E0E0A0C0C0C0C00"
    )
        port map (
      I0 => \full_i_2__0_n_0\,
      I1 => \^full_reg_1\,
      I2 => \r_wr_logic_reg[0]_4\(0),
      I3 => \^empty_reg_0\,
      I4 => full_reg_2,
      I5 => w_en_wr,
      O => full_i_1_n_0
    );
\full_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAA800080002AAA"
    )
        port map (
      I0 => \full_i_3__0_n_0\,
      I1 => r_wr_logic_reg(1),
      I2 => r_wr_logic_reg(0),
      I3 => r_wr_logic_reg(2),
      I4 => r_wr_logic_reg(3),
      I5 => \^q\(3),
      O => \full_i_2__0_n_0\
    );
\full_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0842100010000842"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => r_wr_logic_reg(0),
      I3 => r_wr_logic_reg(1),
      I4 => r_wr_logic_reg(2),
      I5 => \^q\(2),
      O => \full_i_3__0_n_0\
    );
full_reg: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \r_wr_logic_reg[3]_0\,
      D => full_i_1_n_0,
      Q => \^full_reg_1\
    );
\r_rd_logic[0]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_wr_logic_reg[0]_4\(0),
      I1 => \^q\(0),
      O => \p_0_in__2\(0)
    );
\r_rd_logic[1]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \r_wr_logic_reg[0]_4\(0),
      O => \p_0_in__2\(1)
    );
\r_rd_logic[2]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"006A"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \r_wr_logic_reg[0]_4\(0),
      O => \p_0_in__2\(2)
    );
\r_rd_logic[3]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00006AAA"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \r_wr_logic_reg[0]_4\(0),
      O => \p_0_in__2\(3)
    );
\r_rd_logic_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_rd_logic_reg[0]_0\(0),
      CLR => \r_wr_logic_reg[3]_0\,
      D => \p_0_in__2\(0),
      Q => \^q\(0)
    );
\r_rd_logic_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_rd_logic_reg[0]_0\(0),
      CLR => \r_wr_logic_reg[3]_0\,
      D => \p_0_in__2\(1),
      Q => \^q\(1)
    );
\r_rd_logic_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_rd_logic_reg[0]_0\(0),
      CLR => \r_wr_logic_reg[3]_0\,
      D => \p_0_in__2\(2),
      Q => \^q\(2)
    );
\r_rd_logic_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_rd_logic_reg[0]_0\(0),
      CLR => \r_wr_logic_reg[3]_0\,
      D => \p_0_in__2\(3),
      Q => \^q\(3)
    );
\r_reg_array[0][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00000010"
    )
        port map (
      I0 => r_wr_logic_reg(2),
      I1 => r_wr_logic_reg(3),
      I2 => w_en_wr,
      I3 => r_wr_logic_reg(1),
      I4 => r_wr_logic_reg(0),
      I5 => \r_wr_logic_reg[0]_4\(0),
      O => E(0)
    );
\r_reg_array[10][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00002000"
    )
        port map (
      I0 => r_wr_logic_reg(1),
      I1 => r_wr_logic_reg(0),
      I2 => r_wr_logic_reg(3),
      I3 => w_en_wr,
      I4 => r_wr_logic_reg(2),
      I5 => \r_wr_logic_reg[0]_4\(0),
      O => \r_wr_logic_reg[1]_6\(0)
    );
\r_reg_array[11][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00008000"
    )
        port map (
      I0 => r_wr_logic_reg(1),
      I1 => r_wr_logic_reg(0),
      I2 => r_wr_logic_reg(3),
      I3 => w_en_wr,
      I4 => r_wr_logic_reg(2),
      I5 => \r_wr_logic_reg[0]_4\(0),
      O => \r_wr_logic_reg[1]_7\(0)
    );
\r_reg_array[12][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF10000000"
    )
        port map (
      I0 => r_wr_logic_reg(1),
      I1 => r_wr_logic_reg(0),
      I2 => r_wr_logic_reg(3),
      I3 => w_en_wr,
      I4 => r_wr_logic_reg(2),
      I5 => \r_wr_logic_reg[0]_4\(0),
      O => \r_wr_logic_reg[1]_8\(0)
    );
\r_reg_array[13][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF20000000"
    )
        port map (
      I0 => r_wr_logic_reg(0),
      I1 => r_wr_logic_reg(1),
      I2 => r_wr_logic_reg(3),
      I3 => w_en_wr,
      I4 => r_wr_logic_reg(2),
      I5 => \r_wr_logic_reg[0]_4\(0),
      O => \r_wr_logic_reg[0]_3\(0)
    );
\r_reg_array[14][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF20000000"
    )
        port map (
      I0 => r_wr_logic_reg(1),
      I1 => r_wr_logic_reg(0),
      I2 => r_wr_logic_reg(3),
      I3 => w_en_wr,
      I4 => r_wr_logic_reg(2),
      I5 => \r_wr_logic_reg[0]_4\(0),
      O => \r_wr_logic_reg[1]_9\(0)
    );
\r_reg_array[15][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF80000000"
    )
        port map (
      I0 => r_wr_logic_reg(1),
      I1 => r_wr_logic_reg(0),
      I2 => r_wr_logic_reg(3),
      I3 => w_en_wr,
      I4 => r_wr_logic_reg(2),
      I5 => \r_wr_logic_reg[0]_4\(0),
      O => \r_wr_logic_reg[1]_10\(0)
    );
\r_reg_array[1][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00020000"
    )
        port map (
      I0 => r_wr_logic_reg(0),
      I1 => r_wr_logic_reg(1),
      I2 => r_wr_logic_reg(2),
      I3 => r_wr_logic_reg(3),
      I4 => w_en_wr,
      I5 => \r_wr_logic_reg[0]_4\(0),
      O => \r_wr_logic_reg[0]_0\(0)
    );
\r_reg_array[2][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00020000"
    )
        port map (
      I0 => r_wr_logic_reg(1),
      I1 => r_wr_logic_reg(0),
      I2 => r_wr_logic_reg(2),
      I3 => r_wr_logic_reg(3),
      I4 => w_en_wr,
      I5 => \r_wr_logic_reg[0]_4\(0),
      O => \r_wr_logic_reg[1]_0\(0)
    );
\r_reg_array[3][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00080000"
    )
        port map (
      I0 => r_wr_logic_reg(1),
      I1 => r_wr_logic_reg(0),
      I2 => r_wr_logic_reg(2),
      I3 => r_wr_logic_reg(3),
      I4 => w_en_wr,
      I5 => \r_wr_logic_reg[0]_4\(0),
      O => \r_wr_logic_reg[1]_1\(0)
    );
\r_reg_array[4][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF01000000"
    )
        port map (
      I0 => r_wr_logic_reg(1),
      I1 => r_wr_logic_reg(0),
      I2 => r_wr_logic_reg(3),
      I3 => w_en_wr,
      I4 => r_wr_logic_reg(2),
      I5 => \r_wr_logic_reg[0]_4\(0),
      O => \r_wr_logic_reg[1]_2\(0)
    );
\r_reg_array[5][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF02000000"
    )
        port map (
      I0 => r_wr_logic_reg(0),
      I1 => r_wr_logic_reg(1),
      I2 => r_wr_logic_reg(3),
      I3 => w_en_wr,
      I4 => r_wr_logic_reg(2),
      I5 => \r_wr_logic_reg[0]_4\(0),
      O => \r_wr_logic_reg[0]_1\(0)
    );
\r_reg_array[6][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF02000000"
    )
        port map (
      I0 => r_wr_logic_reg(1),
      I1 => r_wr_logic_reg(0),
      I2 => r_wr_logic_reg(3),
      I3 => w_en_wr,
      I4 => r_wr_logic_reg(2),
      I5 => \r_wr_logic_reg[0]_4\(0),
      O => \r_wr_logic_reg[1]_3\(0)
    );
\r_reg_array[7][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF08000000"
    )
        port map (
      I0 => r_wr_logic_reg(1),
      I1 => r_wr_logic_reg(0),
      I2 => r_wr_logic_reg(3),
      I3 => w_en_wr,
      I4 => r_wr_logic_reg(2),
      I5 => \r_wr_logic_reg[0]_4\(0),
      O => \r_wr_logic_reg[1]_4\(0)
    );
\r_reg_array[8][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00001000"
    )
        port map (
      I0 => r_wr_logic_reg(1),
      I1 => r_wr_logic_reg(0),
      I2 => r_wr_logic_reg(3),
      I3 => w_en_wr,
      I4 => r_wr_logic_reg(2),
      I5 => \r_wr_logic_reg[0]_4\(0),
      O => \r_wr_logic_reg[1]_5\(0)
    );
\r_reg_array[9][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00002000"
    )
        port map (
      I0 => r_wr_logic_reg(0),
      I1 => r_wr_logic_reg(1),
      I2 => r_wr_logic_reg(3),
      I3 => w_en_wr,
      I4 => r_wr_logic_reg(2),
      I5 => \r_wr_logic_reg[0]_4\(0),
      O => \r_wr_logic_reg[0]_2\(0)
    );
\r_wr_logic[0]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r_wr_logic_reg(0),
      I1 => \r_wr_logic_reg[0]_4\(0),
      O => \p_0_in__0\(0)
    );
\r_wr_logic[1]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => r_wr_logic_reg(0),
      I1 => r_wr_logic_reg(1),
      I2 => \r_wr_logic_reg[0]_4\(0),
      O => \p_0_in__0\(1)
    );
\r_wr_logic[2]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"006A"
    )
        port map (
      I0 => r_wr_logic_reg(2),
      I1 => r_wr_logic_reg(1),
      I2 => r_wr_logic_reg(0),
      I3 => \r_wr_logic_reg[0]_4\(0),
      O => \p_0_in__0\(2)
    );
\r_wr_logic[3]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00006AAA"
    )
        port map (
      I0 => r_wr_logic_reg(3),
      I1 => r_wr_logic_reg(2),
      I2 => r_wr_logic_reg(0),
      I3 => r_wr_logic_reg(1),
      I4 => \r_wr_logic_reg[0]_4\(0),
      O => \p_0_in__0\(3)
    );
\r_wr_logic_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_wr_logic_reg[0]_5\(0),
      CLR => \r_wr_logic_reg[3]_0\,
      D => \p_0_in__0\(0),
      Q => r_wr_logic_reg(0)
    );
\r_wr_logic_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_wr_logic_reg[0]_5\(0),
      CLR => \r_wr_logic_reg[3]_0\,
      D => \p_0_in__0\(1),
      Q => r_wr_logic_reg(1)
    );
\r_wr_logic_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_wr_logic_reg[0]_5\(0),
      CLR => \r_wr_logic_reg[3]_0\,
      D => \p_0_in__0\(2),
      Q => r_wr_logic_reg(2)
    );
\r_wr_logic_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_wr_logic_reg[0]_5\(0),
      CLR => \r_wr_logic_reg[3]_0\,
      D => \p_0_in__0\(3),
      Q => r_wr_logic_reg(3)
    );
slave_error_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACFCAC30"
    )
        port map (
      I0 => \^full_reg_1\,
      I1 => S_AXI_rready,
      I2 => S_AXI_wvalid,
      I3 => slave_error_reg(0),
      I4 => slave_error_reg_0,
      O => full_reg_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_controller_1 is
  port (
    empty_reg_0 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \r_wr_logic_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \r_wr_logic_reg[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \r_wr_logic_reg[0]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \r_wr_logic_reg[0]_2\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \r_wr_logic_reg[0]_3\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \r_wr_logic_reg[1]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \r_wr_logic_reg[0]_4\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \r_wr_logic_reg[0]_5\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \r_wr_logic_reg[0]_6\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \r_wr_logic_reg[1]_2\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \r_wr_logic_reg[0]_7\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \r_wr_logic_reg[0]_8\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \r_wr_logic_reg[0]_9\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \r_wr_logic_reg[1]_3\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \r_wr_logic_reg[0]_10\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \r_rd_logic_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_rready_0 : out STD_LOGIC;
    full_reg_0 : out STD_LOGIC;
    \r_rd_logic_reg[0]_0\ : in STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    \r_rd_logic_reg[0]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \r_rd_logic_reg[0]_2\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \r_reg_array_reg[15][7]\ : in STD_LOGIC;
    w_en_rd : in STD_LOGIC;
    aclk : in STD_LOGIC;
    \r_wr_logic_reg[3]_0\ : in STD_LOGIC;
    \r_wr_logic_reg[0]_11\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_controller_1 : entity is "fifo_controller";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_controller_1;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_controller_1 is
  signal empty_i_1_n_0 : STD_LOGIC;
  signal \empty_i_2__0_n_0\ : STD_LOGIC;
  signal empty_i_6_n_0 : STD_LOGIC;
  signal \^empty_reg_0\ : STD_LOGIC;
  signal full_i_1_n_0 : STD_LOGIC;
  signal full_i_2_n_0 : STD_LOGIC;
  signal full_i_3_n_0 : STD_LOGIC;
  signal full_i_4_n_0 : STD_LOGIC;
  signal \^full_reg_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \r_rd_logic[3]_i_1_n_0\ : STD_LOGIC;
  signal \^r_rd_logic_reg[3]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal r_wr_logic_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal w_empty_next1 : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of empty_i_5 : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of empty_i_6 : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of empty_i_7 : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of full_i_3 : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \r_rd_logic[0]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \r_rd_logic[1]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \r_rd_logic[2]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \r_rd_logic[3]_i_2\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \r_wr_logic[0]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \r_wr_logic[1]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \r_wr_logic[2]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \r_wr_logic[3]_i_2\ : label is "soft_lutpair32";
begin
  empty_reg_0 <= \^empty_reg_0\;
  full_reg_0 <= \^full_reg_0\;
  \r_rd_logic_reg[3]_0\(3 downto 0) <= \^r_rd_logic_reg[3]_0\(3 downto 0);
empty_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAF0FFFAFEF2FFF0"
    )
        port map (
      I0 => \empty_i_2__0_n_0\,
      I1 => \^full_reg_0\,
      I2 => Q(0),
      I3 => \^empty_reg_0\,
      I4 => \r_reg_array_reg[15][7]\,
      I5 => w_en_rd,
      O => empty_i_1_n_0
    );
\empty_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0090000000000090"
    )
        port map (
      I0 => w_empty_next1(2),
      I1 => r_wr_logic_reg(2),
      I2 => empty_i_6_n_0,
      I3 => \r_reg_array_reg[15][7]\,
      I4 => r_wr_logic_reg(3),
      I5 => w_empty_next1(3),
      O => \empty_i_2__0_n_0\
    );
empty_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^r_rd_logic_reg[3]_0\(1),
      I1 => \^r_rd_logic_reg[3]_0\(0),
      I2 => \^r_rd_logic_reg[3]_0\(2),
      O => w_empty_next1(2)
    );
empty_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0690"
    )
        port map (
      I0 => r_wr_logic_reg(1),
      I1 => \^r_rd_logic_reg[3]_0\(1),
      I2 => r_wr_logic_reg(0),
      I3 => \^r_rd_logic_reg[3]_0\(0),
      O => empty_i_6_n_0
    );
empty_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^r_rd_logic_reg[3]_0\(0),
      I1 => \^r_rd_logic_reg[3]_0\(1),
      I2 => \^r_rd_logic_reg[3]_0\(2),
      I3 => \^r_rd_logic_reg[3]_0\(3),
      O => w_empty_next1(3)
    );
empty_reg: unisim.vcomponents.FDPE
     port map (
      C => aclk,
      CE => '1',
      D => empty_i_1_n_0,
      PRE => \r_wr_logic_reg[3]_0\,
      Q => \^empty_reg_0\
    );
full_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A0C0C0A0E0E0C0C"
    )
        port map (
      I0 => full_i_2_n_0,
      I1 => \^full_reg_0\,
      I2 => Q(0),
      I3 => \^empty_reg_0\,
      I4 => \r_reg_array_reg[15][7]\,
      I5 => w_en_rd,
      O => full_i_1_n_0
    );
full_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9969000000000000"
    )
        port map (
      I0 => \^r_rd_logic_reg[3]_0\(3),
      I1 => r_wr_logic_reg(3),
      I2 => r_wr_logic_reg(2),
      I3 => full_i_3_n_0,
      I4 => \r_reg_array_reg[15][7]\,
      I5 => full_i_4_n_0,
      O => full_i_2_n_0
    );
full_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => r_wr_logic_reg(0),
      I1 => r_wr_logic_reg(1),
      O => full_i_3_n_0
    );
full_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0140802010040802"
    )
        port map (
      I0 => \^r_rd_logic_reg[3]_0\(0),
      I1 => \^r_rd_logic_reg[3]_0\(1),
      I2 => r_wr_logic_reg(2),
      I3 => r_wr_logic_reg(1),
      I4 => r_wr_logic_reg(0),
      I5 => \^r_rd_logic_reg[3]_0\(2),
      O => full_i_4_n_0
    );
full_reg: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \r_wr_logic_reg[3]_0\,
      D => full_i_1_n_0,
      Q => \^full_reg_0\
    );
\r_rd_logic[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(0),
      I1 => \^r_rd_logic_reg[3]_0\(0),
      O => \p_0_in__1\(0)
    );
\r_rd_logic[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \^r_rd_logic_reg[3]_0\(1),
      I1 => \^r_rd_logic_reg[3]_0\(0),
      I2 => Q(0),
      O => \p_0_in__1\(1)
    );
\r_rd_logic[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"006A"
    )
        port map (
      I0 => \^r_rd_logic_reg[3]_0\(2),
      I1 => \^r_rd_logic_reg[3]_0\(0),
      I2 => \^r_rd_logic_reg[3]_0\(1),
      I3 => Q(0),
      O => \p_0_in__1\(2)
    );
\r_rd_logic[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00400000"
    )
        port map (
      I0 => \^empty_reg_0\,
      I1 => \r_rd_logic_reg[0]_0\,
      I2 => S_AXI_rready,
      I3 => \r_rd_logic_reg[0]_1\(0),
      I4 => \r_rd_logic_reg[0]_2\(0),
      I5 => Q(0),
      O => \r_rd_logic[3]_i_1_n_0\
    );
\r_rd_logic[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00006AAA"
    )
        port map (
      I0 => \^r_rd_logic_reg[3]_0\(3),
      I1 => \^r_rd_logic_reg[3]_0\(2),
      I2 => \^r_rd_logic_reg[3]_0\(1),
      I3 => \^r_rd_logic_reg[3]_0\(0),
      I4 => Q(0),
      O => \p_0_in__1\(3)
    );
\r_rd_logic_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_rd_logic[3]_i_1_n_0\,
      CLR => \r_wr_logic_reg[3]_0\,
      D => \p_0_in__1\(0),
      Q => \^r_rd_logic_reg[3]_0\(0)
    );
\r_rd_logic_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_rd_logic[3]_i_1_n_0\,
      CLR => \r_wr_logic_reg[3]_0\,
      D => \p_0_in__1\(1),
      Q => \^r_rd_logic_reg[3]_0\(1)
    );
\r_rd_logic_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_rd_logic[3]_i_1_n_0\,
      CLR => \r_wr_logic_reg[3]_0\,
      D => \p_0_in__1\(2),
      Q => \^r_rd_logic_reg[3]_0\(2)
    );
\r_rd_logic_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_rd_logic[3]_i_1_n_0\,
      CLR => \r_wr_logic_reg[3]_0\,
      D => \p_0_in__1\(3),
      Q => \^r_rd_logic_reg[3]_0\(3)
    );
\r_reg_array[0][7]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00000010"
    )
        port map (
      I0 => r_wr_logic_reg(2),
      I1 => r_wr_logic_reg(3),
      I2 => \r_reg_array_reg[15][7]\,
      I3 => r_wr_logic_reg(0),
      I4 => r_wr_logic_reg(1),
      I5 => Q(0),
      O => E(0)
    );
\r_reg_array[10][7]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00002000"
    )
        port map (
      I0 => r_wr_logic_reg(1),
      I1 => r_wr_logic_reg(0),
      I2 => r_wr_logic_reg(3),
      I3 => \r_reg_array_reg[15][7]\,
      I4 => r_wr_logic_reg(2),
      I5 => Q(0),
      O => \r_wr_logic_reg[1]_2\(0)
    );
\r_reg_array[11][7]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00008000"
    )
        port map (
      I0 => r_wr_logic_reg(0),
      I1 => r_wr_logic_reg(1),
      I2 => r_wr_logic_reg(3),
      I3 => \r_reg_array_reg[15][7]\,
      I4 => r_wr_logic_reg(2),
      I5 => Q(0),
      O => \r_wr_logic_reg[0]_7\(0)
    );
\r_reg_array[12][7]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF10000000"
    )
        port map (
      I0 => r_wr_logic_reg(0),
      I1 => r_wr_logic_reg(1),
      I2 => r_wr_logic_reg(3),
      I3 => \r_reg_array_reg[15][7]\,
      I4 => r_wr_logic_reg(2),
      I5 => Q(0),
      O => \r_wr_logic_reg[0]_8\(0)
    );
\r_reg_array[13][7]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF20000000"
    )
        port map (
      I0 => r_wr_logic_reg(0),
      I1 => r_wr_logic_reg(1),
      I2 => r_wr_logic_reg(3),
      I3 => \r_reg_array_reg[15][7]\,
      I4 => r_wr_logic_reg(2),
      I5 => Q(0),
      O => \r_wr_logic_reg[0]_9\(0)
    );
\r_reg_array[14][7]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF20000000"
    )
        port map (
      I0 => r_wr_logic_reg(1),
      I1 => r_wr_logic_reg(0),
      I2 => r_wr_logic_reg(3),
      I3 => \r_reg_array_reg[15][7]\,
      I4 => r_wr_logic_reg(2),
      I5 => Q(0),
      O => \r_wr_logic_reg[1]_3\(0)
    );
\r_reg_array[15][7]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF80000000"
    )
        port map (
      I0 => r_wr_logic_reg(0),
      I1 => r_wr_logic_reg(1),
      I2 => r_wr_logic_reg(3),
      I3 => \r_reg_array_reg[15][7]\,
      I4 => r_wr_logic_reg(2),
      I5 => Q(0),
      O => \r_wr_logic_reg[0]_10\(0)
    );
\r_reg_array[1][7]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00020000"
    )
        port map (
      I0 => r_wr_logic_reg(0),
      I1 => r_wr_logic_reg(1),
      I2 => r_wr_logic_reg(2),
      I3 => r_wr_logic_reg(3),
      I4 => \r_reg_array_reg[15][7]\,
      I5 => Q(0),
      O => \r_wr_logic_reg[0]_0\(0)
    );
\r_reg_array[2][7]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00020000"
    )
        port map (
      I0 => r_wr_logic_reg(1),
      I1 => r_wr_logic_reg(0),
      I2 => r_wr_logic_reg(2),
      I3 => r_wr_logic_reg(3),
      I4 => \r_reg_array_reg[15][7]\,
      I5 => Q(0),
      O => \r_wr_logic_reg[1]_0\(0)
    );
\r_reg_array[3][7]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00080000"
    )
        port map (
      I0 => r_wr_logic_reg(0),
      I1 => r_wr_logic_reg(1),
      I2 => r_wr_logic_reg(2),
      I3 => r_wr_logic_reg(3),
      I4 => \r_reg_array_reg[15][7]\,
      I5 => Q(0),
      O => \r_wr_logic_reg[0]_1\(0)
    );
\r_reg_array[4][7]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF01000000"
    )
        port map (
      I0 => r_wr_logic_reg(0),
      I1 => r_wr_logic_reg(1),
      I2 => r_wr_logic_reg(3),
      I3 => \r_reg_array_reg[15][7]\,
      I4 => r_wr_logic_reg(2),
      I5 => Q(0),
      O => \r_wr_logic_reg[0]_2\(0)
    );
\r_reg_array[5][7]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF02000000"
    )
        port map (
      I0 => r_wr_logic_reg(0),
      I1 => r_wr_logic_reg(1),
      I2 => r_wr_logic_reg(3),
      I3 => \r_reg_array_reg[15][7]\,
      I4 => r_wr_logic_reg(2),
      I5 => Q(0),
      O => \r_wr_logic_reg[0]_3\(0)
    );
\r_reg_array[6][7]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF02000000"
    )
        port map (
      I0 => r_wr_logic_reg(1),
      I1 => r_wr_logic_reg(0),
      I2 => r_wr_logic_reg(3),
      I3 => \r_reg_array_reg[15][7]\,
      I4 => r_wr_logic_reg(2),
      I5 => Q(0),
      O => \r_wr_logic_reg[1]_1\(0)
    );
\r_reg_array[7][7]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF08000000"
    )
        port map (
      I0 => r_wr_logic_reg(0),
      I1 => r_wr_logic_reg(1),
      I2 => r_wr_logic_reg(3),
      I3 => \r_reg_array_reg[15][7]\,
      I4 => r_wr_logic_reg(2),
      I5 => Q(0),
      O => \r_wr_logic_reg[0]_4\(0)
    );
\r_reg_array[8][7]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00001000"
    )
        port map (
      I0 => r_wr_logic_reg(0),
      I1 => r_wr_logic_reg(1),
      I2 => r_wr_logic_reg(3),
      I3 => \r_reg_array_reg[15][7]\,
      I4 => r_wr_logic_reg(2),
      I5 => Q(0),
      O => \r_wr_logic_reg[0]_5\(0)
    );
\r_reg_array[9][7]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00002000"
    )
        port map (
      I0 => r_wr_logic_reg(0),
      I1 => r_wr_logic_reg(1),
      I2 => r_wr_logic_reg(3),
      I3 => \r_reg_array_reg[15][7]\,
      I4 => r_wr_logic_reg(2),
      I5 => Q(0),
      O => \r_wr_logic_reg[0]_6\(0)
    );
\r_wr_logic[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r_wr_logic_reg(0),
      I1 => Q(0),
      O => p_0_in(0)
    );
\r_wr_logic[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => r_wr_logic_reg(1),
      I1 => r_wr_logic_reg(0),
      I2 => Q(0),
      O => p_0_in(1)
    );
\r_wr_logic[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0078"
    )
        port map (
      I0 => r_wr_logic_reg(0),
      I1 => r_wr_logic_reg(1),
      I2 => r_wr_logic_reg(2),
      I3 => Q(0),
      O => p_0_in(2)
    );
\r_wr_logic[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00006AAA"
    )
        port map (
      I0 => r_wr_logic_reg(3),
      I1 => r_wr_logic_reg(2),
      I2 => r_wr_logic_reg(1),
      I3 => r_wr_logic_reg(0),
      I4 => Q(0),
      O => p_0_in(3)
    );
\r_wr_logic_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_wr_logic_reg[0]_11\(0),
      CLR => \r_wr_logic_reg[3]_0\,
      D => p_0_in(0),
      Q => r_wr_logic_reg(0)
    );
\r_wr_logic_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_wr_logic_reg[0]_11\(0),
      CLR => \r_wr_logic_reg[3]_0\,
      D => p_0_in(1),
      Q => r_wr_logic_reg(1)
    );
\r_wr_logic_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_wr_logic_reg[0]_11\(0),
      CLR => \r_wr_logic_reg[3]_0\,
      D => p_0_in(2),
      Q => r_wr_logic_reg(2)
    );
\r_wr_logic_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_wr_logic_reg[0]_11\(0),
      CLR => \r_wr_logic_reg[3]_0\,
      D => p_0_in(3),
      Q => r_wr_logic_reg(3)
    );
\rd_data[9]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => S_AXI_rready,
      I1 => \^empty_reg_0\,
      O => S_AXI_rready_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gpio is
  port (
    slot_decode_error : out STD_LOGIC_VECTOR ( 0 to 0 );
    slot_wr_done : out STD_LOGIC_VECTOR ( 0 to 0 );
    slot_rd_done : out STD_LOGIC_VECTOR ( 0 to 0 );
    \slot_rd_data[1]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \r_input_data_reg[5]_0\ : out STD_LOGIC;
    \FSM_onehot_r_state_reg[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    out_ports : out STD_LOGIC_VECTOR ( 3 downto 0 );
    w_decode_error : in STD_LOGIC;
    aclk : in STD_LOGIC;
    \rd_data_reg[0]_0\ : in STD_LOGIC;
    w_wr_done : in STD_LOGIC;
    w_rd_done : in STD_LOGIC;
    w_rd_data : in STD_LOGIC;
    \w_en__0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    in_ports : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \out_ports_reg[0]_0\ : in STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \out_ports_reg[0]_1\ : in STD_LOGIC;
    w_led_data : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gpio;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gpio is
  signal \^fsm_onehot_r_state_reg[1]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \FSM_onehot_r_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_w_next_state_reg[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_w_next_state_reg[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \FSM_onehot_w_next_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_w_next_state_reg_n_0_[1]\ : STD_LOGIC;
  signal data4 : STD_LOGIC;
  signal data5 : STD_LOGIC;
  signal data6 : STD_LOGIC;
  signal data7 : STD_LOGIC;
  signal \^out_ports\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \out_ports[0]_i_1_n_0\ : STD_LOGIC;
  signal \out_ports[1]_i_1_n_0\ : STD_LOGIC;
  signal \out_ports[2]_i_1_n_0\ : STD_LOGIC;
  signal \out_ports[3]_i_1_n_0\ : STD_LOGIC;
  signal r_input_data_sync : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal w_next_state : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_r_state_reg[0]\ : label is "iSTATE:100,IDLE:001,ACTIVE:010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_r_state_reg[1]\ : label is "iSTATE:100,IDLE:001,ACTIVE:010";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \FSM_onehot_w_next_state_reg[0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \FSM_onehot_w_next_state_reg[0]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_w_next_state_reg[0]_i_1__1\ : label is "soft_lutpair21";
  attribute XILINX_LEGACY_PRIM of \FSM_onehot_w_next_state_reg[1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \FSM_onehot_w_next_state_reg[1]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \FSM_onehot_w_next_state_reg[1]_i_1__0\ : label is "soft_lutpair21";
begin
  \FSM_onehot_r_state_reg[1]_0\(0) <= \^fsm_onehot_r_state_reg[1]_0\(0);
  out_ports(3 downto 0) <= \^out_ports\(3 downto 0);
\FSM_onehot_r_state_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \FSM_onehot_w_next_state_reg_n_0_[0]\,
      PRE => \rd_data_reg[0]_0\,
      Q => \FSM_onehot_r_state_reg_n_0_[0]\
    );
\FSM_onehot_r_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      CLR => \rd_data_reg[0]_0\,
      D => \FSM_onehot_w_next_state_reg_n_0_[1]\,
      Q => \^fsm_onehot_r_state_reg[1]_0\(0)
    );
\FSM_onehot_w_next_state_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '1'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_w_next_state_reg[0]_i_1__1_n_0\,
      G => w_next_state,
      GE => '1',
      Q => \FSM_onehot_w_next_state_reg_n_0_[0]\
    );
\FSM_onehot_w_next_state_reg[0]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_r_state_reg_n_0_[0]\,
      I1 => \w_en__0\,
      O => \FSM_onehot_w_next_state_reg[0]_i_1__1_n_0\
    );
\FSM_onehot_w_next_state_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_w_next_state_reg[1]_i_1__0_n_0\,
      G => w_next_state,
      GE => '1',
      Q => \FSM_onehot_w_next_state_reg_n_0_[1]\
    );
\FSM_onehot_w_next_state_reg[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_r_state_reg_n_0_[0]\,
      I1 => \w_en__0\,
      O => \FSM_onehot_w_next_state_reg[1]_i_1__0_n_0\
    );
\FSM_onehot_w_next_state_reg[1]_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_r_state_reg_n_0_[0]\,
      I1 => \^fsm_onehot_r_state_reg[1]_0\(0),
      O => w_next_state
    );
decode_error_reg: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \rd_data_reg[0]_0\,
      D => w_decode_error,
      Q => slot_decode_error(0)
    );
\out_ports[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020FFFF00200000"
    )
        port map (
      I0 => \out_ports_reg[0]_0\,
      I1 => Q(2),
      I2 => S_AXI_wdata(0),
      I3 => \out_ports_reg[0]_1\,
      I4 => w_led_data(0),
      I5 => \^out_ports\(0),
      O => \out_ports[0]_i_1_n_0\
    );
\out_ports[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020FFFF00200000"
    )
        port map (
      I0 => \out_ports_reg[0]_0\,
      I1 => Q(2),
      I2 => S_AXI_wdata(1),
      I3 => \out_ports_reg[0]_1\,
      I4 => w_led_data(1),
      I5 => \^out_ports\(1),
      O => \out_ports[1]_i_1_n_0\
    );
\out_ports[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020FFFF00200000"
    )
        port map (
      I0 => \out_ports_reg[0]_0\,
      I1 => Q(2),
      I2 => S_AXI_wdata(2),
      I3 => \out_ports_reg[0]_1\,
      I4 => w_led_data(2),
      I5 => \^out_ports\(2),
      O => \out_ports[2]_i_1_n_0\
    );
\out_ports[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0200FFFF02000000"
    )
        port map (
      I0 => \out_ports_reg[0]_0\,
      I1 => \out_ports_reg[0]_1\,
      I2 => Q(2),
      I3 => S_AXI_wdata(3),
      I4 => w_led_data(3),
      I5 => \^out_ports\(3),
      O => \out_ports[3]_i_1_n_0\
    );
\out_ports_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \rd_data_reg[0]_0\,
      D => \out_ports[0]_i_1_n_0\,
      Q => \^out_ports\(0)
    );
\out_ports_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \rd_data_reg[0]_0\,
      D => \out_ports[1]_i_1_n_0\,
      Q => \^out_ports\(1)
    );
\out_ports_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \rd_data_reg[0]_0\,
      D => \out_ports[2]_i_1_n_0\,
      Q => \^out_ports\(2)
    );
\out_ports_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \rd_data_reg[0]_0\,
      D => \out_ports[3]_i_1_n_0\,
      Q => \^out_ports\(3)
    );
\r_input_data_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \rd_data_reg[0]_0\,
      D => r_input_data_sync(4),
      Q => data4
    );
\r_input_data_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \rd_data_reg[0]_0\,
      D => r_input_data_sync(5),
      Q => data5
    );
\r_input_data_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \rd_data_reg[0]_0\,
      D => r_input_data_sync(6),
      Q => data6
    );
\r_input_data_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \rd_data_reg[0]_0\,
      D => r_input_data_sync(7),
      Q => data7
    );
\r_input_data_sync_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \rd_data_reg[0]_0\,
      D => in_ports(0),
      Q => r_input_data_sync(4)
    );
\r_input_data_sync_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \rd_data_reg[0]_0\,
      D => in_ports(1),
      Q => r_input_data_sync(5)
    );
\r_input_data_sync_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \rd_data_reg[0]_0\,
      D => in_ports(2),
      Q => r_input_data_sync(6)
    );
\r_input_data_sync_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \rd_data_reg[0]_0\,
      D => in_ports(3),
      Q => r_input_data_sync(7)
    );
\rd_data[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => data5,
      I1 => data7,
      I2 => Q(1),
      I3 => Q(0),
      I4 => data4,
      I5 => data6,
      O => \r_input_data_reg[5]_0\
    );
\rd_data_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \rd_data_reg[0]_0\,
      D => w_rd_data,
      Q => \slot_rd_data[1]\(0)
    );
rd_done_reg: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \rd_data_reg[0]_0\,
      D => w_rd_done,
      Q => slot_rd_done(0)
    );
wr_done_reg: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \rd_data_reg[0]_0\,
      D => w_wr_done,
      Q => slot_wr_done(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_file is
  port (
    arst_n_0 : out STD_LOGIC;
    \r_reg_array__0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    arst_n : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \r_reg_array_reg[0][7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    aclk : in STD_LOGIC;
    \r_reg_array_reg[14][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \r_reg_array_reg[13][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \r_reg_array_reg[12][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \r_reg_array_reg[11][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \r_reg_array_reg[10][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \r_reg_array_reg[9][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \r_reg_array_reg[8][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \r_reg_array_reg[7][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \r_reg_array_reg[6][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \r_reg_array_reg[5][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \r_reg_array_reg[4][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \r_reg_array_reg[3][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \r_reg_array_reg[2][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \r_reg_array_reg[1][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \r_reg_array_reg[0][7]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_file;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_file is
  signal \^arst_n_0\ : STD_LOGIC;
  signal \r_in_shift[0]_i_3_n_0\ : STD_LOGIC;
  signal \r_in_shift[0]_i_4_n_0\ : STD_LOGIC;
  signal \r_in_shift[0]_i_5_n_0\ : STD_LOGIC;
  signal \r_in_shift[0]_i_6_n_0\ : STD_LOGIC;
  signal \r_in_shift[1]_i_3_n_0\ : STD_LOGIC;
  signal \r_in_shift[1]_i_4_n_0\ : STD_LOGIC;
  signal \r_in_shift[1]_i_5_n_0\ : STD_LOGIC;
  signal \r_in_shift[1]_i_6_n_0\ : STD_LOGIC;
  signal \r_in_shift[2]_i_3_n_0\ : STD_LOGIC;
  signal \r_in_shift[2]_i_4_n_0\ : STD_LOGIC;
  signal \r_in_shift[2]_i_5_n_0\ : STD_LOGIC;
  signal \r_in_shift[2]_i_6_n_0\ : STD_LOGIC;
  signal \r_in_shift[3]_i_3_n_0\ : STD_LOGIC;
  signal \r_in_shift[3]_i_4_n_0\ : STD_LOGIC;
  signal \r_in_shift[3]_i_5_n_0\ : STD_LOGIC;
  signal \r_in_shift[3]_i_6_n_0\ : STD_LOGIC;
  signal \r_in_shift[4]_i_3_n_0\ : STD_LOGIC;
  signal \r_in_shift[4]_i_4_n_0\ : STD_LOGIC;
  signal \r_in_shift[4]_i_5_n_0\ : STD_LOGIC;
  signal \r_in_shift[4]_i_6_n_0\ : STD_LOGIC;
  signal \r_in_shift[5]_i_3_n_0\ : STD_LOGIC;
  signal \r_in_shift[5]_i_4_n_0\ : STD_LOGIC;
  signal \r_in_shift[5]_i_5_n_0\ : STD_LOGIC;
  signal \r_in_shift[5]_i_6_n_0\ : STD_LOGIC;
  signal \r_in_shift[6]_i_3_n_0\ : STD_LOGIC;
  signal \r_in_shift[6]_i_4_n_0\ : STD_LOGIC;
  signal \r_in_shift[6]_i_5_n_0\ : STD_LOGIC;
  signal \r_in_shift[6]_i_6_n_0\ : STD_LOGIC;
  signal \r_in_shift[7]_i_4_n_0\ : STD_LOGIC;
  signal \r_in_shift[7]_i_5_n_0\ : STD_LOGIC;
  signal \r_in_shift[7]_i_6_n_0\ : STD_LOGIC;
  signal \r_in_shift[7]_i_7_n_0\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[0][0]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[0][1]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[0][2]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[0][3]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[0][4]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[0][5]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[0][6]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[0][7]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[10][0]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[10][1]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[10][2]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[10][3]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[10][4]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[10][5]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[10][6]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[10][7]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[11][0]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[11][1]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[11][2]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[11][3]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[11][4]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[11][5]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[11][6]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[11][7]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[12][0]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[12][1]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[12][2]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[12][3]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[12][4]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[12][5]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[12][6]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[12][7]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[13][0]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[13][1]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[13][2]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[13][3]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[13][4]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[13][5]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[13][6]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[13][7]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[14][0]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[14][1]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[14][2]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[14][3]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[14][4]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[14][5]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[14][6]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[14][7]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[15][0]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[15][1]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[15][2]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[15][3]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[15][4]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[15][5]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[15][6]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[15][7]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[1][0]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[1][1]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[1][2]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[1][3]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[1][4]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[1][5]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[1][6]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[1][7]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[2][0]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[2][1]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[2][2]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[2][3]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[2][4]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[2][5]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[2][6]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[2][7]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[3][0]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[3][1]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[3][2]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[3][3]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[3][4]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[3][5]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[3][6]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[3][7]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[4][0]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[4][1]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[4][2]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[4][3]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[4][4]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[4][5]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[4][6]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[4][7]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[5][0]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[5][1]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[5][2]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[5][3]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[5][4]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[5][5]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[5][6]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[5][7]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[6][0]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[6][1]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[6][2]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[6][3]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[6][4]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[6][5]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[6][6]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[6][7]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[7][0]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[7][1]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[7][2]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[7][3]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[7][4]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[7][5]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[7][6]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[7][7]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[8][0]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[8][1]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[8][2]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[8][3]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[8][4]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[8][5]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[8][6]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[8][7]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[9][0]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[9][1]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[9][2]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[9][3]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[9][4]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[9][5]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[9][6]\ : STD_LOGIC;
  signal \r_reg_array_reg_n_0_[9][7]\ : STD_LOGIC;
begin
  arst_n_0 <= \^arst_n_0\;
\out_ports[3]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => arst_n,
      O => \^arst_n_0\
    );
\r_in_shift[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \r_in_shift[0]_i_3_n_0\,
      I1 => \r_in_shift[0]_i_4_n_0\,
      I2 => Q(3),
      I3 => Q(2),
      I4 => \r_in_shift[0]_i_5_n_0\,
      I5 => \r_in_shift[0]_i_6_n_0\,
      O => \r_reg_array__0\(0)
    );
\r_in_shift[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \r_reg_array_reg_n_0_[5][0]\,
      I1 => \r_reg_array_reg_n_0_[7][0]\,
      I2 => Q(1),
      I3 => Q(0),
      I4 => \r_reg_array_reg_n_0_[4][0]\,
      I5 => \r_reg_array_reg_n_0_[6][0]\,
      O => \r_in_shift[0]_i_3_n_0\
    );
\r_in_shift[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \r_reg_array_reg_n_0_[13][0]\,
      I1 => \r_reg_array_reg_n_0_[15][0]\,
      I2 => Q(1),
      I3 => Q(0),
      I4 => \r_reg_array_reg_n_0_[12][0]\,
      I5 => \r_reg_array_reg_n_0_[14][0]\,
      O => \r_in_shift[0]_i_4_n_0\
    );
\r_in_shift[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \r_reg_array_reg_n_0_[1][0]\,
      I1 => \r_reg_array_reg_n_0_[3][0]\,
      I2 => Q(1),
      I3 => Q(0),
      I4 => \r_reg_array_reg_n_0_[0][0]\,
      I5 => \r_reg_array_reg_n_0_[2][0]\,
      O => \r_in_shift[0]_i_5_n_0\
    );
\r_in_shift[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \r_reg_array_reg_n_0_[9][0]\,
      I1 => \r_reg_array_reg_n_0_[11][0]\,
      I2 => Q(1),
      I3 => Q(0),
      I4 => \r_reg_array_reg_n_0_[8][0]\,
      I5 => \r_reg_array_reg_n_0_[10][0]\,
      O => \r_in_shift[0]_i_6_n_0\
    );
\r_in_shift[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \r_in_shift[1]_i_3_n_0\,
      I1 => \r_in_shift[1]_i_4_n_0\,
      I2 => Q(3),
      I3 => Q(2),
      I4 => \r_in_shift[1]_i_5_n_0\,
      I5 => \r_in_shift[1]_i_6_n_0\,
      O => \r_reg_array__0\(1)
    );
\r_in_shift[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \r_reg_array_reg_n_0_[5][1]\,
      I1 => \r_reg_array_reg_n_0_[7][1]\,
      I2 => Q(1),
      I3 => Q(0),
      I4 => \r_reg_array_reg_n_0_[4][1]\,
      I5 => \r_reg_array_reg_n_0_[6][1]\,
      O => \r_in_shift[1]_i_3_n_0\
    );
\r_in_shift[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \r_reg_array_reg_n_0_[13][1]\,
      I1 => \r_reg_array_reg_n_0_[15][1]\,
      I2 => Q(1),
      I3 => Q(0),
      I4 => \r_reg_array_reg_n_0_[12][1]\,
      I5 => \r_reg_array_reg_n_0_[14][1]\,
      O => \r_in_shift[1]_i_4_n_0\
    );
\r_in_shift[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \r_reg_array_reg_n_0_[1][1]\,
      I1 => \r_reg_array_reg_n_0_[3][1]\,
      I2 => Q(1),
      I3 => Q(0),
      I4 => \r_reg_array_reg_n_0_[0][1]\,
      I5 => \r_reg_array_reg_n_0_[2][1]\,
      O => \r_in_shift[1]_i_5_n_0\
    );
\r_in_shift[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \r_reg_array_reg_n_0_[9][1]\,
      I1 => \r_reg_array_reg_n_0_[11][1]\,
      I2 => Q(1),
      I3 => Q(0),
      I4 => \r_reg_array_reg_n_0_[8][1]\,
      I5 => \r_reg_array_reg_n_0_[10][1]\,
      O => \r_in_shift[1]_i_6_n_0\
    );
\r_in_shift[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \r_in_shift[2]_i_3_n_0\,
      I1 => \r_in_shift[2]_i_4_n_0\,
      I2 => Q(3),
      I3 => Q(2),
      I4 => \r_in_shift[2]_i_5_n_0\,
      I5 => \r_in_shift[2]_i_6_n_0\,
      O => \r_reg_array__0\(2)
    );
\r_in_shift[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \r_reg_array_reg_n_0_[5][2]\,
      I1 => \r_reg_array_reg_n_0_[7][2]\,
      I2 => Q(1),
      I3 => Q(0),
      I4 => \r_reg_array_reg_n_0_[4][2]\,
      I5 => \r_reg_array_reg_n_0_[6][2]\,
      O => \r_in_shift[2]_i_3_n_0\
    );
\r_in_shift[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \r_reg_array_reg_n_0_[13][2]\,
      I1 => \r_reg_array_reg_n_0_[15][2]\,
      I2 => Q(1),
      I3 => Q(0),
      I4 => \r_reg_array_reg_n_0_[12][2]\,
      I5 => \r_reg_array_reg_n_0_[14][2]\,
      O => \r_in_shift[2]_i_4_n_0\
    );
\r_in_shift[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \r_reg_array_reg_n_0_[1][2]\,
      I1 => \r_reg_array_reg_n_0_[3][2]\,
      I2 => Q(1),
      I3 => Q(0),
      I4 => \r_reg_array_reg_n_0_[0][2]\,
      I5 => \r_reg_array_reg_n_0_[2][2]\,
      O => \r_in_shift[2]_i_5_n_0\
    );
\r_in_shift[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \r_reg_array_reg_n_0_[9][2]\,
      I1 => \r_reg_array_reg_n_0_[11][2]\,
      I2 => Q(1),
      I3 => Q(0),
      I4 => \r_reg_array_reg_n_0_[8][2]\,
      I5 => \r_reg_array_reg_n_0_[10][2]\,
      O => \r_in_shift[2]_i_6_n_0\
    );
\r_in_shift[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \r_in_shift[3]_i_3_n_0\,
      I1 => \r_in_shift[3]_i_4_n_0\,
      I2 => Q(3),
      I3 => Q(2),
      I4 => \r_in_shift[3]_i_5_n_0\,
      I5 => \r_in_shift[3]_i_6_n_0\,
      O => \r_reg_array__0\(3)
    );
\r_in_shift[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \r_reg_array_reg_n_0_[5][3]\,
      I1 => \r_reg_array_reg_n_0_[7][3]\,
      I2 => Q(1),
      I3 => Q(0),
      I4 => \r_reg_array_reg_n_0_[4][3]\,
      I5 => \r_reg_array_reg_n_0_[6][3]\,
      O => \r_in_shift[3]_i_3_n_0\
    );
\r_in_shift[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \r_reg_array_reg_n_0_[13][3]\,
      I1 => \r_reg_array_reg_n_0_[15][3]\,
      I2 => Q(1),
      I3 => Q(0),
      I4 => \r_reg_array_reg_n_0_[12][3]\,
      I5 => \r_reg_array_reg_n_0_[14][3]\,
      O => \r_in_shift[3]_i_4_n_0\
    );
\r_in_shift[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \r_reg_array_reg_n_0_[1][3]\,
      I1 => \r_reg_array_reg_n_0_[3][3]\,
      I2 => Q(1),
      I3 => Q(0),
      I4 => \r_reg_array_reg_n_0_[0][3]\,
      I5 => \r_reg_array_reg_n_0_[2][3]\,
      O => \r_in_shift[3]_i_5_n_0\
    );
\r_in_shift[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \r_reg_array_reg_n_0_[9][3]\,
      I1 => \r_reg_array_reg_n_0_[11][3]\,
      I2 => Q(1),
      I3 => Q(0),
      I4 => \r_reg_array_reg_n_0_[8][3]\,
      I5 => \r_reg_array_reg_n_0_[10][3]\,
      O => \r_in_shift[3]_i_6_n_0\
    );
\r_in_shift[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \r_in_shift[4]_i_3_n_0\,
      I1 => \r_in_shift[4]_i_4_n_0\,
      I2 => Q(3),
      I3 => Q(2),
      I4 => \r_in_shift[4]_i_5_n_0\,
      I5 => \r_in_shift[4]_i_6_n_0\,
      O => \r_reg_array__0\(4)
    );
\r_in_shift[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \r_reg_array_reg_n_0_[5][4]\,
      I1 => \r_reg_array_reg_n_0_[7][4]\,
      I2 => Q(1),
      I3 => Q(0),
      I4 => \r_reg_array_reg_n_0_[4][4]\,
      I5 => \r_reg_array_reg_n_0_[6][4]\,
      O => \r_in_shift[4]_i_3_n_0\
    );
\r_in_shift[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \r_reg_array_reg_n_0_[13][4]\,
      I1 => \r_reg_array_reg_n_0_[15][4]\,
      I2 => Q(1),
      I3 => Q(0),
      I4 => \r_reg_array_reg_n_0_[12][4]\,
      I5 => \r_reg_array_reg_n_0_[14][4]\,
      O => \r_in_shift[4]_i_4_n_0\
    );
\r_in_shift[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \r_reg_array_reg_n_0_[1][4]\,
      I1 => \r_reg_array_reg_n_0_[3][4]\,
      I2 => Q(1),
      I3 => Q(0),
      I4 => \r_reg_array_reg_n_0_[0][4]\,
      I5 => \r_reg_array_reg_n_0_[2][4]\,
      O => \r_in_shift[4]_i_5_n_0\
    );
\r_in_shift[4]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \r_reg_array_reg_n_0_[9][4]\,
      I1 => \r_reg_array_reg_n_0_[11][4]\,
      I2 => Q(1),
      I3 => Q(0),
      I4 => \r_reg_array_reg_n_0_[8][4]\,
      I5 => \r_reg_array_reg_n_0_[10][4]\,
      O => \r_in_shift[4]_i_6_n_0\
    );
\r_in_shift[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \r_in_shift[5]_i_3_n_0\,
      I1 => \r_in_shift[5]_i_4_n_0\,
      I2 => Q(3),
      I3 => Q(2),
      I4 => \r_in_shift[5]_i_5_n_0\,
      I5 => \r_in_shift[5]_i_6_n_0\,
      O => \r_reg_array__0\(5)
    );
\r_in_shift[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \r_reg_array_reg_n_0_[5][5]\,
      I1 => \r_reg_array_reg_n_0_[7][5]\,
      I2 => Q(1),
      I3 => Q(0),
      I4 => \r_reg_array_reg_n_0_[4][5]\,
      I5 => \r_reg_array_reg_n_0_[6][5]\,
      O => \r_in_shift[5]_i_3_n_0\
    );
\r_in_shift[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \r_reg_array_reg_n_0_[13][5]\,
      I1 => \r_reg_array_reg_n_0_[15][5]\,
      I2 => Q(1),
      I3 => Q(0),
      I4 => \r_reg_array_reg_n_0_[12][5]\,
      I5 => \r_reg_array_reg_n_0_[14][5]\,
      O => \r_in_shift[5]_i_4_n_0\
    );
\r_in_shift[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \r_reg_array_reg_n_0_[1][5]\,
      I1 => \r_reg_array_reg_n_0_[3][5]\,
      I2 => Q(1),
      I3 => Q(0),
      I4 => \r_reg_array_reg_n_0_[0][5]\,
      I5 => \r_reg_array_reg_n_0_[2][5]\,
      O => \r_in_shift[5]_i_5_n_0\
    );
\r_in_shift[5]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \r_reg_array_reg_n_0_[9][5]\,
      I1 => \r_reg_array_reg_n_0_[11][5]\,
      I2 => Q(1),
      I3 => Q(0),
      I4 => \r_reg_array_reg_n_0_[8][5]\,
      I5 => \r_reg_array_reg_n_0_[10][5]\,
      O => \r_in_shift[5]_i_6_n_0\
    );
\r_in_shift[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \r_in_shift[6]_i_3_n_0\,
      I1 => \r_in_shift[6]_i_4_n_0\,
      I2 => Q(3),
      I3 => Q(2),
      I4 => \r_in_shift[6]_i_5_n_0\,
      I5 => \r_in_shift[6]_i_6_n_0\,
      O => \r_reg_array__0\(6)
    );
\r_in_shift[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \r_reg_array_reg_n_0_[5][6]\,
      I1 => \r_reg_array_reg_n_0_[7][6]\,
      I2 => Q(1),
      I3 => Q(0),
      I4 => \r_reg_array_reg_n_0_[4][6]\,
      I5 => \r_reg_array_reg_n_0_[6][6]\,
      O => \r_in_shift[6]_i_3_n_0\
    );
\r_in_shift[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \r_reg_array_reg_n_0_[13][6]\,
      I1 => \r_reg_array_reg_n_0_[15][6]\,
      I2 => Q(1),
      I3 => Q(0),
      I4 => \r_reg_array_reg_n_0_[12][6]\,
      I5 => \r_reg_array_reg_n_0_[14][6]\,
      O => \r_in_shift[6]_i_4_n_0\
    );
\r_in_shift[6]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \r_reg_array_reg_n_0_[1][6]\,
      I1 => \r_reg_array_reg_n_0_[3][6]\,
      I2 => Q(1),
      I3 => Q(0),
      I4 => \r_reg_array_reg_n_0_[0][6]\,
      I5 => \r_reg_array_reg_n_0_[2][6]\,
      O => \r_in_shift[6]_i_5_n_0\
    );
\r_in_shift[6]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \r_reg_array_reg_n_0_[9][6]\,
      I1 => \r_reg_array_reg_n_0_[11][6]\,
      I2 => Q(1),
      I3 => Q(0),
      I4 => \r_reg_array_reg_n_0_[8][6]\,
      I5 => \r_reg_array_reg_n_0_[10][6]\,
      O => \r_in_shift[6]_i_6_n_0\
    );
\r_in_shift[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \r_in_shift[7]_i_4_n_0\,
      I1 => \r_in_shift[7]_i_5_n_0\,
      I2 => Q(3),
      I3 => Q(2),
      I4 => \r_in_shift[7]_i_6_n_0\,
      I5 => \r_in_shift[7]_i_7_n_0\,
      O => \r_reg_array__0\(7)
    );
\r_in_shift[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \r_reg_array_reg_n_0_[5][7]\,
      I1 => \r_reg_array_reg_n_0_[7][7]\,
      I2 => Q(1),
      I3 => Q(0),
      I4 => \r_reg_array_reg_n_0_[4][7]\,
      I5 => \r_reg_array_reg_n_0_[6][7]\,
      O => \r_in_shift[7]_i_4_n_0\
    );
\r_in_shift[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \r_reg_array_reg_n_0_[13][7]\,
      I1 => \r_reg_array_reg_n_0_[15][7]\,
      I2 => Q(1),
      I3 => Q(0),
      I4 => \r_reg_array_reg_n_0_[12][7]\,
      I5 => \r_reg_array_reg_n_0_[14][7]\,
      O => \r_in_shift[7]_i_5_n_0\
    );
\r_in_shift[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \r_reg_array_reg_n_0_[1][7]\,
      I1 => \r_reg_array_reg_n_0_[3][7]\,
      I2 => Q(1),
      I3 => Q(0),
      I4 => \r_reg_array_reg_n_0_[0][7]\,
      I5 => \r_reg_array_reg_n_0_[2][7]\,
      O => \r_in_shift[7]_i_6_n_0\
    );
\r_in_shift[7]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \r_reg_array_reg_n_0_[9][7]\,
      I1 => \r_reg_array_reg_n_0_[11][7]\,
      I2 => Q(1),
      I3 => Q(0),
      I4 => \r_reg_array_reg_n_0_[8][7]\,
      I5 => \r_reg_array_reg_n_0_[10][7]\,
      O => \r_in_shift[7]_i_7_n_0\
    );
\r_reg_array_reg[0][0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[0][7]_1\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(0),
      Q => \r_reg_array_reg_n_0_[0][0]\
    );
\r_reg_array_reg[0][1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[0][7]_1\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(1),
      Q => \r_reg_array_reg_n_0_[0][1]\
    );
\r_reg_array_reg[0][2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[0][7]_1\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(2),
      Q => \r_reg_array_reg_n_0_[0][2]\
    );
\r_reg_array_reg[0][3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[0][7]_1\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(3),
      Q => \r_reg_array_reg_n_0_[0][3]\
    );
\r_reg_array_reg[0][4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[0][7]_1\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(4),
      Q => \r_reg_array_reg_n_0_[0][4]\
    );
\r_reg_array_reg[0][5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[0][7]_1\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(5),
      Q => \r_reg_array_reg_n_0_[0][5]\
    );
\r_reg_array_reg[0][6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[0][7]_1\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(6),
      Q => \r_reg_array_reg_n_0_[0][6]\
    );
\r_reg_array_reg[0][7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[0][7]_1\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(7),
      Q => \r_reg_array_reg_n_0_[0][7]\
    );
\r_reg_array_reg[10][0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[10][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(0),
      Q => \r_reg_array_reg_n_0_[10][0]\
    );
\r_reg_array_reg[10][1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[10][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(1),
      Q => \r_reg_array_reg_n_0_[10][1]\
    );
\r_reg_array_reg[10][2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[10][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(2),
      Q => \r_reg_array_reg_n_0_[10][2]\
    );
\r_reg_array_reg[10][3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[10][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(3),
      Q => \r_reg_array_reg_n_0_[10][3]\
    );
\r_reg_array_reg[10][4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[10][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(4),
      Q => \r_reg_array_reg_n_0_[10][4]\
    );
\r_reg_array_reg[10][5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[10][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(5),
      Q => \r_reg_array_reg_n_0_[10][5]\
    );
\r_reg_array_reg[10][6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[10][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(6),
      Q => \r_reg_array_reg_n_0_[10][6]\
    );
\r_reg_array_reg[10][7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[10][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(7),
      Q => \r_reg_array_reg_n_0_[10][7]\
    );
\r_reg_array_reg[11][0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[11][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(0),
      Q => \r_reg_array_reg_n_0_[11][0]\
    );
\r_reg_array_reg[11][1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[11][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(1),
      Q => \r_reg_array_reg_n_0_[11][1]\
    );
\r_reg_array_reg[11][2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[11][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(2),
      Q => \r_reg_array_reg_n_0_[11][2]\
    );
\r_reg_array_reg[11][3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[11][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(3),
      Q => \r_reg_array_reg_n_0_[11][3]\
    );
\r_reg_array_reg[11][4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[11][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(4),
      Q => \r_reg_array_reg_n_0_[11][4]\
    );
\r_reg_array_reg[11][5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[11][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(5),
      Q => \r_reg_array_reg_n_0_[11][5]\
    );
\r_reg_array_reg[11][6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[11][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(6),
      Q => \r_reg_array_reg_n_0_[11][6]\
    );
\r_reg_array_reg[11][7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[11][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(7),
      Q => \r_reg_array_reg_n_0_[11][7]\
    );
\r_reg_array_reg[12][0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[12][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(0),
      Q => \r_reg_array_reg_n_0_[12][0]\
    );
\r_reg_array_reg[12][1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[12][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(1),
      Q => \r_reg_array_reg_n_0_[12][1]\
    );
\r_reg_array_reg[12][2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[12][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(2),
      Q => \r_reg_array_reg_n_0_[12][2]\
    );
\r_reg_array_reg[12][3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[12][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(3),
      Q => \r_reg_array_reg_n_0_[12][3]\
    );
\r_reg_array_reg[12][4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[12][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(4),
      Q => \r_reg_array_reg_n_0_[12][4]\
    );
\r_reg_array_reg[12][5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[12][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(5),
      Q => \r_reg_array_reg_n_0_[12][5]\
    );
\r_reg_array_reg[12][6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[12][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(6),
      Q => \r_reg_array_reg_n_0_[12][6]\
    );
\r_reg_array_reg[12][7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[12][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(7),
      Q => \r_reg_array_reg_n_0_[12][7]\
    );
\r_reg_array_reg[13][0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[13][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(0),
      Q => \r_reg_array_reg_n_0_[13][0]\
    );
\r_reg_array_reg[13][1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[13][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(1),
      Q => \r_reg_array_reg_n_0_[13][1]\
    );
\r_reg_array_reg[13][2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[13][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(2),
      Q => \r_reg_array_reg_n_0_[13][2]\
    );
\r_reg_array_reg[13][3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[13][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(3),
      Q => \r_reg_array_reg_n_0_[13][3]\
    );
\r_reg_array_reg[13][4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[13][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(4),
      Q => \r_reg_array_reg_n_0_[13][4]\
    );
\r_reg_array_reg[13][5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[13][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(5),
      Q => \r_reg_array_reg_n_0_[13][5]\
    );
\r_reg_array_reg[13][6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[13][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(6),
      Q => \r_reg_array_reg_n_0_[13][6]\
    );
\r_reg_array_reg[13][7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[13][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(7),
      Q => \r_reg_array_reg_n_0_[13][7]\
    );
\r_reg_array_reg[14][0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[14][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(0),
      Q => \r_reg_array_reg_n_0_[14][0]\
    );
\r_reg_array_reg[14][1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[14][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(1),
      Q => \r_reg_array_reg_n_0_[14][1]\
    );
\r_reg_array_reg[14][2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[14][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(2),
      Q => \r_reg_array_reg_n_0_[14][2]\
    );
\r_reg_array_reg[14][3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[14][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(3),
      Q => \r_reg_array_reg_n_0_[14][3]\
    );
\r_reg_array_reg[14][4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[14][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(4),
      Q => \r_reg_array_reg_n_0_[14][4]\
    );
\r_reg_array_reg[14][5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[14][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(5),
      Q => \r_reg_array_reg_n_0_[14][5]\
    );
\r_reg_array_reg[14][6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[14][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(6),
      Q => \r_reg_array_reg_n_0_[14][6]\
    );
\r_reg_array_reg[14][7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[14][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(7),
      Q => \r_reg_array_reg_n_0_[14][7]\
    );
\r_reg_array_reg[15][0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(0),
      Q => \r_reg_array_reg_n_0_[15][0]\
    );
\r_reg_array_reg[15][1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(1),
      Q => \r_reg_array_reg_n_0_[15][1]\
    );
\r_reg_array_reg[15][2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(2),
      Q => \r_reg_array_reg_n_0_[15][2]\
    );
\r_reg_array_reg[15][3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(3),
      Q => \r_reg_array_reg_n_0_[15][3]\
    );
\r_reg_array_reg[15][4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(4),
      Q => \r_reg_array_reg_n_0_[15][4]\
    );
\r_reg_array_reg[15][5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(5),
      Q => \r_reg_array_reg_n_0_[15][5]\
    );
\r_reg_array_reg[15][6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(6),
      Q => \r_reg_array_reg_n_0_[15][6]\
    );
\r_reg_array_reg[15][7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(7),
      Q => \r_reg_array_reg_n_0_[15][7]\
    );
\r_reg_array_reg[1][0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[1][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(0),
      Q => \r_reg_array_reg_n_0_[1][0]\
    );
\r_reg_array_reg[1][1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[1][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(1),
      Q => \r_reg_array_reg_n_0_[1][1]\
    );
\r_reg_array_reg[1][2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[1][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(2),
      Q => \r_reg_array_reg_n_0_[1][2]\
    );
\r_reg_array_reg[1][3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[1][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(3),
      Q => \r_reg_array_reg_n_0_[1][3]\
    );
\r_reg_array_reg[1][4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[1][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(4),
      Q => \r_reg_array_reg_n_0_[1][4]\
    );
\r_reg_array_reg[1][5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[1][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(5),
      Q => \r_reg_array_reg_n_0_[1][5]\
    );
\r_reg_array_reg[1][6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[1][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(6),
      Q => \r_reg_array_reg_n_0_[1][6]\
    );
\r_reg_array_reg[1][7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[1][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(7),
      Q => \r_reg_array_reg_n_0_[1][7]\
    );
\r_reg_array_reg[2][0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[2][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(0),
      Q => \r_reg_array_reg_n_0_[2][0]\
    );
\r_reg_array_reg[2][1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[2][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(1),
      Q => \r_reg_array_reg_n_0_[2][1]\
    );
\r_reg_array_reg[2][2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[2][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(2),
      Q => \r_reg_array_reg_n_0_[2][2]\
    );
\r_reg_array_reg[2][3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[2][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(3),
      Q => \r_reg_array_reg_n_0_[2][3]\
    );
\r_reg_array_reg[2][4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[2][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(4),
      Q => \r_reg_array_reg_n_0_[2][4]\
    );
\r_reg_array_reg[2][5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[2][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(5),
      Q => \r_reg_array_reg_n_0_[2][5]\
    );
\r_reg_array_reg[2][6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[2][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(6),
      Q => \r_reg_array_reg_n_0_[2][6]\
    );
\r_reg_array_reg[2][7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[2][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(7),
      Q => \r_reg_array_reg_n_0_[2][7]\
    );
\r_reg_array_reg[3][0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[3][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(0),
      Q => \r_reg_array_reg_n_0_[3][0]\
    );
\r_reg_array_reg[3][1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[3][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(1),
      Q => \r_reg_array_reg_n_0_[3][1]\
    );
\r_reg_array_reg[3][2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[3][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(2),
      Q => \r_reg_array_reg_n_0_[3][2]\
    );
\r_reg_array_reg[3][3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[3][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(3),
      Q => \r_reg_array_reg_n_0_[3][3]\
    );
\r_reg_array_reg[3][4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[3][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(4),
      Q => \r_reg_array_reg_n_0_[3][4]\
    );
\r_reg_array_reg[3][5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[3][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(5),
      Q => \r_reg_array_reg_n_0_[3][5]\
    );
\r_reg_array_reg[3][6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[3][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(6),
      Q => \r_reg_array_reg_n_0_[3][6]\
    );
\r_reg_array_reg[3][7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[3][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(7),
      Q => \r_reg_array_reg_n_0_[3][7]\
    );
\r_reg_array_reg[4][0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[4][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(0),
      Q => \r_reg_array_reg_n_0_[4][0]\
    );
\r_reg_array_reg[4][1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[4][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(1),
      Q => \r_reg_array_reg_n_0_[4][1]\
    );
\r_reg_array_reg[4][2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[4][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(2),
      Q => \r_reg_array_reg_n_0_[4][2]\
    );
\r_reg_array_reg[4][3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[4][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(3),
      Q => \r_reg_array_reg_n_0_[4][3]\
    );
\r_reg_array_reg[4][4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[4][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(4),
      Q => \r_reg_array_reg_n_0_[4][4]\
    );
\r_reg_array_reg[4][5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[4][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(5),
      Q => \r_reg_array_reg_n_0_[4][5]\
    );
\r_reg_array_reg[4][6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[4][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(6),
      Q => \r_reg_array_reg_n_0_[4][6]\
    );
\r_reg_array_reg[4][7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[4][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(7),
      Q => \r_reg_array_reg_n_0_[4][7]\
    );
\r_reg_array_reg[5][0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[5][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(0),
      Q => \r_reg_array_reg_n_0_[5][0]\
    );
\r_reg_array_reg[5][1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[5][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(1),
      Q => \r_reg_array_reg_n_0_[5][1]\
    );
\r_reg_array_reg[5][2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[5][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(2),
      Q => \r_reg_array_reg_n_0_[5][2]\
    );
\r_reg_array_reg[5][3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[5][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(3),
      Q => \r_reg_array_reg_n_0_[5][3]\
    );
\r_reg_array_reg[5][4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[5][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(4),
      Q => \r_reg_array_reg_n_0_[5][4]\
    );
\r_reg_array_reg[5][5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[5][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(5),
      Q => \r_reg_array_reg_n_0_[5][5]\
    );
\r_reg_array_reg[5][6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[5][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(6),
      Q => \r_reg_array_reg_n_0_[5][6]\
    );
\r_reg_array_reg[5][7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[5][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(7),
      Q => \r_reg_array_reg_n_0_[5][7]\
    );
\r_reg_array_reg[6][0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[6][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(0),
      Q => \r_reg_array_reg_n_0_[6][0]\
    );
\r_reg_array_reg[6][1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[6][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(1),
      Q => \r_reg_array_reg_n_0_[6][1]\
    );
\r_reg_array_reg[6][2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[6][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(2),
      Q => \r_reg_array_reg_n_0_[6][2]\
    );
\r_reg_array_reg[6][3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[6][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(3),
      Q => \r_reg_array_reg_n_0_[6][3]\
    );
\r_reg_array_reg[6][4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[6][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(4),
      Q => \r_reg_array_reg_n_0_[6][4]\
    );
\r_reg_array_reg[6][5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[6][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(5),
      Q => \r_reg_array_reg_n_0_[6][5]\
    );
\r_reg_array_reg[6][6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[6][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(6),
      Q => \r_reg_array_reg_n_0_[6][6]\
    );
\r_reg_array_reg[6][7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[6][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(7),
      Q => \r_reg_array_reg_n_0_[6][7]\
    );
\r_reg_array_reg[7][0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[7][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(0),
      Q => \r_reg_array_reg_n_0_[7][0]\
    );
\r_reg_array_reg[7][1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[7][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(1),
      Q => \r_reg_array_reg_n_0_[7][1]\
    );
\r_reg_array_reg[7][2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[7][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(2),
      Q => \r_reg_array_reg_n_0_[7][2]\
    );
\r_reg_array_reg[7][3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[7][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(3),
      Q => \r_reg_array_reg_n_0_[7][3]\
    );
\r_reg_array_reg[7][4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[7][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(4),
      Q => \r_reg_array_reg_n_0_[7][4]\
    );
\r_reg_array_reg[7][5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[7][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(5),
      Q => \r_reg_array_reg_n_0_[7][5]\
    );
\r_reg_array_reg[7][6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[7][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(6),
      Q => \r_reg_array_reg_n_0_[7][6]\
    );
\r_reg_array_reg[7][7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[7][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(7),
      Q => \r_reg_array_reg_n_0_[7][7]\
    );
\r_reg_array_reg[8][0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[8][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(0),
      Q => \r_reg_array_reg_n_0_[8][0]\
    );
\r_reg_array_reg[8][1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[8][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(1),
      Q => \r_reg_array_reg_n_0_[8][1]\
    );
\r_reg_array_reg[8][2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[8][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(2),
      Q => \r_reg_array_reg_n_0_[8][2]\
    );
\r_reg_array_reg[8][3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[8][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(3),
      Q => \r_reg_array_reg_n_0_[8][3]\
    );
\r_reg_array_reg[8][4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[8][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(4),
      Q => \r_reg_array_reg_n_0_[8][4]\
    );
\r_reg_array_reg[8][5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[8][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(5),
      Q => \r_reg_array_reg_n_0_[8][5]\
    );
\r_reg_array_reg[8][6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[8][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(6),
      Q => \r_reg_array_reg_n_0_[8][6]\
    );
\r_reg_array_reg[8][7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[8][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(7),
      Q => \r_reg_array_reg_n_0_[8][7]\
    );
\r_reg_array_reg[9][0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[9][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(0),
      Q => \r_reg_array_reg_n_0_[9][0]\
    );
\r_reg_array_reg[9][1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[9][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(1),
      Q => \r_reg_array_reg_n_0_[9][1]\
    );
\r_reg_array_reg[9][2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[9][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(2),
      Q => \r_reg_array_reg_n_0_[9][2]\
    );
\r_reg_array_reg[9][3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[9][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(3),
      Q => \r_reg_array_reg_n_0_[9][3]\
    );
\r_reg_array_reg[9][4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[9][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(4),
      Q => \r_reg_array_reg_n_0_[9][4]\
    );
\r_reg_array_reg[9][5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[9][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(5),
      Q => \r_reg_array_reg_n_0_[9][5]\
    );
\r_reg_array_reg[9][6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[9][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(6),
      Q => \r_reg_array_reg_n_0_[9][6]\
    );
\r_reg_array_reg[9][7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[9][7]_0\(0),
      CLR => \^arst_n_0\,
      D => \r_reg_array_reg[0][7]_0\(7),
      Q => \r_reg_array_reg_n_0_[9][7]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_file_2 is
  port (
    \r_rd_logic_reg[3]\ : out STD_LOGIC;
    \r_rd_logic_reg[3]_0\ : out STD_LOGIC;
    \r_rd_logic_reg[3]_1\ : out STD_LOGIC;
    \r_rd_logic_reg[3]_2\ : out STD_LOGIC;
    \r_rd_logic_reg[3]_3\ : out STD_LOGIC;
    \r_rd_logic_reg[3]_4\ : out STD_LOGIC;
    \r_rd_logic_reg[3]_5\ : out STD_LOGIC;
    \r_rd_logic_reg[3]_6\ : out STD_LOGIC;
    \rd_data_reg[7]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    aclk : in STD_LOGIC;
    \r_reg_array_reg[0][0]_0\ : in STD_LOGIC;
    \r_reg_array_reg[14][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \r_reg_array_reg[13][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \r_reg_array_reg[12][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \r_reg_array_reg[11][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \r_reg_array_reg[10][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \r_reg_array_reg[9][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \r_reg_array_reg[8][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \r_reg_array_reg[7][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \r_reg_array_reg[6][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \r_reg_array_reg[5][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \r_reg_array_reg[4][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \r_reg_array_reg[3][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \r_reg_array_reg[2][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \r_reg_array_reg[1][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \r_reg_array_reg[0][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_file_2 : entity is "register_file";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_file_2;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_file_2 is
  signal \r_reg_array_reg[0]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \r_reg_array_reg[10]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \r_reg_array_reg[11]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \r_reg_array_reg[12]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \r_reg_array_reg[13]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \r_reg_array_reg[14]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \r_reg_array_reg[15]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \r_reg_array_reg[1]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \r_reg_array_reg[2]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \r_reg_array_reg[3]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \r_reg_array_reg[4]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \r_reg_array_reg[5]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \r_reg_array_reg[6]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \r_reg_array_reg[7]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \r_reg_array_reg[8]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \r_reg_array_reg[9]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \rd_data[0]_i_3__0_n_0\ : STD_LOGIC;
  signal \rd_data[0]_i_4_n_0\ : STD_LOGIC;
  signal \rd_data[0]_i_5_n_0\ : STD_LOGIC;
  signal \rd_data[0]_i_6_n_0\ : STD_LOGIC;
  signal \rd_data[1]_i_3_n_0\ : STD_LOGIC;
  signal \rd_data[1]_i_4_n_0\ : STD_LOGIC;
  signal \rd_data[1]_i_5_n_0\ : STD_LOGIC;
  signal \rd_data[1]_i_6_n_0\ : STD_LOGIC;
  signal \rd_data[2]_i_3_n_0\ : STD_LOGIC;
  signal \rd_data[2]_i_4_n_0\ : STD_LOGIC;
  signal \rd_data[2]_i_5_n_0\ : STD_LOGIC;
  signal \rd_data[2]_i_6_n_0\ : STD_LOGIC;
  signal \rd_data[3]_i_3_n_0\ : STD_LOGIC;
  signal \rd_data[3]_i_4_n_0\ : STD_LOGIC;
  signal \rd_data[3]_i_5_n_0\ : STD_LOGIC;
  signal \rd_data[3]_i_6_n_0\ : STD_LOGIC;
  signal \rd_data[4]_i_3_n_0\ : STD_LOGIC;
  signal \rd_data[4]_i_4_n_0\ : STD_LOGIC;
  signal \rd_data[4]_i_5_n_0\ : STD_LOGIC;
  signal \rd_data[4]_i_6_n_0\ : STD_LOGIC;
  signal \rd_data[5]_i_3_n_0\ : STD_LOGIC;
  signal \rd_data[5]_i_4_n_0\ : STD_LOGIC;
  signal \rd_data[5]_i_5_n_0\ : STD_LOGIC;
  signal \rd_data[5]_i_6_n_0\ : STD_LOGIC;
  signal \rd_data[6]_i_3_n_0\ : STD_LOGIC;
  signal \rd_data[6]_i_4_n_0\ : STD_LOGIC;
  signal \rd_data[6]_i_5_n_0\ : STD_LOGIC;
  signal \rd_data[6]_i_6_n_0\ : STD_LOGIC;
  signal \rd_data[7]_i_4_n_0\ : STD_LOGIC;
  signal \rd_data[7]_i_5_n_0\ : STD_LOGIC;
  signal \rd_data[7]_i_6_n_0\ : STD_LOGIC;
  signal \rd_data[7]_i_7_n_0\ : STD_LOGIC;
begin
\r_reg_array_reg[0][0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[0][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(0),
      Q => \r_reg_array_reg[0]\(0)
    );
\r_reg_array_reg[0][1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[0][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(1),
      Q => \r_reg_array_reg[0]\(1)
    );
\r_reg_array_reg[0][2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[0][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(2),
      Q => \r_reg_array_reg[0]\(2)
    );
\r_reg_array_reg[0][3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[0][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(3),
      Q => \r_reg_array_reg[0]\(3)
    );
\r_reg_array_reg[0][4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[0][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(4),
      Q => \r_reg_array_reg[0]\(4)
    );
\r_reg_array_reg[0][5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[0][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(5),
      Q => \r_reg_array_reg[0]\(5)
    );
\r_reg_array_reg[0][6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[0][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(6),
      Q => \r_reg_array_reg[0]\(6)
    );
\r_reg_array_reg[0][7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[0][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(7),
      Q => \r_reg_array_reg[0]\(7)
    );
\r_reg_array_reg[10][0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[10][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(0),
      Q => \r_reg_array_reg[10]\(0)
    );
\r_reg_array_reg[10][1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[10][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(1),
      Q => \r_reg_array_reg[10]\(1)
    );
\r_reg_array_reg[10][2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[10][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(2),
      Q => \r_reg_array_reg[10]\(2)
    );
\r_reg_array_reg[10][3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[10][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(3),
      Q => \r_reg_array_reg[10]\(3)
    );
\r_reg_array_reg[10][4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[10][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(4),
      Q => \r_reg_array_reg[10]\(4)
    );
\r_reg_array_reg[10][5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[10][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(5),
      Q => \r_reg_array_reg[10]\(5)
    );
\r_reg_array_reg[10][6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[10][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(6),
      Q => \r_reg_array_reg[10]\(6)
    );
\r_reg_array_reg[10][7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[10][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(7),
      Q => \r_reg_array_reg[10]\(7)
    );
\r_reg_array_reg[11][0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[11][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(0),
      Q => \r_reg_array_reg[11]\(0)
    );
\r_reg_array_reg[11][1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[11][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(1),
      Q => \r_reg_array_reg[11]\(1)
    );
\r_reg_array_reg[11][2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[11][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(2),
      Q => \r_reg_array_reg[11]\(2)
    );
\r_reg_array_reg[11][3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[11][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(3),
      Q => \r_reg_array_reg[11]\(3)
    );
\r_reg_array_reg[11][4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[11][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(4),
      Q => \r_reg_array_reg[11]\(4)
    );
\r_reg_array_reg[11][5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[11][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(5),
      Q => \r_reg_array_reg[11]\(5)
    );
\r_reg_array_reg[11][6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[11][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(6),
      Q => \r_reg_array_reg[11]\(6)
    );
\r_reg_array_reg[11][7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[11][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(7),
      Q => \r_reg_array_reg[11]\(7)
    );
\r_reg_array_reg[12][0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[12][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(0),
      Q => \r_reg_array_reg[12]\(0)
    );
\r_reg_array_reg[12][1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[12][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(1),
      Q => \r_reg_array_reg[12]\(1)
    );
\r_reg_array_reg[12][2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[12][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(2),
      Q => \r_reg_array_reg[12]\(2)
    );
\r_reg_array_reg[12][3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[12][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(3),
      Q => \r_reg_array_reg[12]\(3)
    );
\r_reg_array_reg[12][4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[12][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(4),
      Q => \r_reg_array_reg[12]\(4)
    );
\r_reg_array_reg[12][5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[12][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(5),
      Q => \r_reg_array_reg[12]\(5)
    );
\r_reg_array_reg[12][6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[12][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(6),
      Q => \r_reg_array_reg[12]\(6)
    );
\r_reg_array_reg[12][7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[12][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(7),
      Q => \r_reg_array_reg[12]\(7)
    );
\r_reg_array_reg[13][0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[13][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(0),
      Q => \r_reg_array_reg[13]\(0)
    );
\r_reg_array_reg[13][1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[13][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(1),
      Q => \r_reg_array_reg[13]\(1)
    );
\r_reg_array_reg[13][2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[13][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(2),
      Q => \r_reg_array_reg[13]\(2)
    );
\r_reg_array_reg[13][3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[13][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(3),
      Q => \r_reg_array_reg[13]\(3)
    );
\r_reg_array_reg[13][4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[13][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(4),
      Q => \r_reg_array_reg[13]\(4)
    );
\r_reg_array_reg[13][5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[13][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(5),
      Q => \r_reg_array_reg[13]\(5)
    );
\r_reg_array_reg[13][6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[13][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(6),
      Q => \r_reg_array_reg[13]\(6)
    );
\r_reg_array_reg[13][7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[13][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(7),
      Q => \r_reg_array_reg[13]\(7)
    );
\r_reg_array_reg[14][0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[14][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(0),
      Q => \r_reg_array_reg[14]\(0)
    );
\r_reg_array_reg[14][1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[14][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(1),
      Q => \r_reg_array_reg[14]\(1)
    );
\r_reg_array_reg[14][2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[14][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(2),
      Q => \r_reg_array_reg[14]\(2)
    );
\r_reg_array_reg[14][3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[14][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(3),
      Q => \r_reg_array_reg[14]\(3)
    );
\r_reg_array_reg[14][4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[14][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(4),
      Q => \r_reg_array_reg[14]\(4)
    );
\r_reg_array_reg[14][5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[14][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(5),
      Q => \r_reg_array_reg[14]\(5)
    );
\r_reg_array_reg[14][6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[14][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(6),
      Q => \r_reg_array_reg[14]\(6)
    );
\r_reg_array_reg[14][7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[14][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(7),
      Q => \r_reg_array_reg[14]\(7)
    );
\r_reg_array_reg[15][0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(0),
      Q => \r_reg_array_reg[15]\(0)
    );
\r_reg_array_reg[15][1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(1),
      Q => \r_reg_array_reg[15]\(1)
    );
\r_reg_array_reg[15][2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(2),
      Q => \r_reg_array_reg[15]\(2)
    );
\r_reg_array_reg[15][3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(3),
      Q => \r_reg_array_reg[15]\(3)
    );
\r_reg_array_reg[15][4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(4),
      Q => \r_reg_array_reg[15]\(4)
    );
\r_reg_array_reg[15][5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(5),
      Q => \r_reg_array_reg[15]\(5)
    );
\r_reg_array_reg[15][6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(6),
      Q => \r_reg_array_reg[15]\(6)
    );
\r_reg_array_reg[15][7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(7),
      Q => \r_reg_array_reg[15]\(7)
    );
\r_reg_array_reg[1][0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[1][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(0),
      Q => \r_reg_array_reg[1]\(0)
    );
\r_reg_array_reg[1][1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[1][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(1),
      Q => \r_reg_array_reg[1]\(1)
    );
\r_reg_array_reg[1][2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[1][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(2),
      Q => \r_reg_array_reg[1]\(2)
    );
\r_reg_array_reg[1][3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[1][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(3),
      Q => \r_reg_array_reg[1]\(3)
    );
\r_reg_array_reg[1][4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[1][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(4),
      Q => \r_reg_array_reg[1]\(4)
    );
\r_reg_array_reg[1][5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[1][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(5),
      Q => \r_reg_array_reg[1]\(5)
    );
\r_reg_array_reg[1][6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[1][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(6),
      Q => \r_reg_array_reg[1]\(6)
    );
\r_reg_array_reg[1][7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[1][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(7),
      Q => \r_reg_array_reg[1]\(7)
    );
\r_reg_array_reg[2][0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[2][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(0),
      Q => \r_reg_array_reg[2]\(0)
    );
\r_reg_array_reg[2][1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[2][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(1),
      Q => \r_reg_array_reg[2]\(1)
    );
\r_reg_array_reg[2][2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[2][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(2),
      Q => \r_reg_array_reg[2]\(2)
    );
\r_reg_array_reg[2][3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[2][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(3),
      Q => \r_reg_array_reg[2]\(3)
    );
\r_reg_array_reg[2][4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[2][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(4),
      Q => \r_reg_array_reg[2]\(4)
    );
\r_reg_array_reg[2][5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[2][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(5),
      Q => \r_reg_array_reg[2]\(5)
    );
\r_reg_array_reg[2][6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[2][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(6),
      Q => \r_reg_array_reg[2]\(6)
    );
\r_reg_array_reg[2][7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[2][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(7),
      Q => \r_reg_array_reg[2]\(7)
    );
\r_reg_array_reg[3][0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[3][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(0),
      Q => \r_reg_array_reg[3]\(0)
    );
\r_reg_array_reg[3][1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[3][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(1),
      Q => \r_reg_array_reg[3]\(1)
    );
\r_reg_array_reg[3][2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[3][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(2),
      Q => \r_reg_array_reg[3]\(2)
    );
\r_reg_array_reg[3][3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[3][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(3),
      Q => \r_reg_array_reg[3]\(3)
    );
\r_reg_array_reg[3][4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[3][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(4),
      Q => \r_reg_array_reg[3]\(4)
    );
\r_reg_array_reg[3][5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[3][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(5),
      Q => \r_reg_array_reg[3]\(5)
    );
\r_reg_array_reg[3][6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[3][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(6),
      Q => \r_reg_array_reg[3]\(6)
    );
\r_reg_array_reg[3][7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[3][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(7),
      Q => \r_reg_array_reg[3]\(7)
    );
\r_reg_array_reg[4][0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[4][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(0),
      Q => \r_reg_array_reg[4]\(0)
    );
\r_reg_array_reg[4][1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[4][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(1),
      Q => \r_reg_array_reg[4]\(1)
    );
\r_reg_array_reg[4][2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[4][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(2),
      Q => \r_reg_array_reg[4]\(2)
    );
\r_reg_array_reg[4][3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[4][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(3),
      Q => \r_reg_array_reg[4]\(3)
    );
\r_reg_array_reg[4][4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[4][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(4),
      Q => \r_reg_array_reg[4]\(4)
    );
\r_reg_array_reg[4][5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[4][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(5),
      Q => \r_reg_array_reg[4]\(5)
    );
\r_reg_array_reg[4][6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[4][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(6),
      Q => \r_reg_array_reg[4]\(6)
    );
\r_reg_array_reg[4][7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[4][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(7),
      Q => \r_reg_array_reg[4]\(7)
    );
\r_reg_array_reg[5][0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[5][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(0),
      Q => \r_reg_array_reg[5]\(0)
    );
\r_reg_array_reg[5][1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[5][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(1),
      Q => \r_reg_array_reg[5]\(1)
    );
\r_reg_array_reg[5][2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[5][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(2),
      Q => \r_reg_array_reg[5]\(2)
    );
\r_reg_array_reg[5][3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[5][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(3),
      Q => \r_reg_array_reg[5]\(3)
    );
\r_reg_array_reg[5][4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[5][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(4),
      Q => \r_reg_array_reg[5]\(4)
    );
\r_reg_array_reg[5][5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[5][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(5),
      Q => \r_reg_array_reg[5]\(5)
    );
\r_reg_array_reg[5][6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[5][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(6),
      Q => \r_reg_array_reg[5]\(6)
    );
\r_reg_array_reg[5][7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[5][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(7),
      Q => \r_reg_array_reg[5]\(7)
    );
\r_reg_array_reg[6][0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[6][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(0),
      Q => \r_reg_array_reg[6]\(0)
    );
\r_reg_array_reg[6][1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[6][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(1),
      Q => \r_reg_array_reg[6]\(1)
    );
\r_reg_array_reg[6][2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[6][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(2),
      Q => \r_reg_array_reg[6]\(2)
    );
\r_reg_array_reg[6][3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[6][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(3),
      Q => \r_reg_array_reg[6]\(3)
    );
\r_reg_array_reg[6][4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[6][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(4),
      Q => \r_reg_array_reg[6]\(4)
    );
\r_reg_array_reg[6][5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[6][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(5),
      Q => \r_reg_array_reg[6]\(5)
    );
\r_reg_array_reg[6][6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[6][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(6),
      Q => \r_reg_array_reg[6]\(6)
    );
\r_reg_array_reg[6][7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[6][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(7),
      Q => \r_reg_array_reg[6]\(7)
    );
\r_reg_array_reg[7][0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[7][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(0),
      Q => \r_reg_array_reg[7]\(0)
    );
\r_reg_array_reg[7][1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[7][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(1),
      Q => \r_reg_array_reg[7]\(1)
    );
\r_reg_array_reg[7][2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[7][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(2),
      Q => \r_reg_array_reg[7]\(2)
    );
\r_reg_array_reg[7][3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[7][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(3),
      Q => \r_reg_array_reg[7]\(3)
    );
\r_reg_array_reg[7][4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[7][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(4),
      Q => \r_reg_array_reg[7]\(4)
    );
\r_reg_array_reg[7][5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[7][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(5),
      Q => \r_reg_array_reg[7]\(5)
    );
\r_reg_array_reg[7][6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[7][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(6),
      Q => \r_reg_array_reg[7]\(6)
    );
\r_reg_array_reg[7][7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[7][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(7),
      Q => \r_reg_array_reg[7]\(7)
    );
\r_reg_array_reg[8][0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[8][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(0),
      Q => \r_reg_array_reg[8]\(0)
    );
\r_reg_array_reg[8][1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[8][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(1),
      Q => \r_reg_array_reg[8]\(1)
    );
\r_reg_array_reg[8][2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[8][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(2),
      Q => \r_reg_array_reg[8]\(2)
    );
\r_reg_array_reg[8][3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[8][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(3),
      Q => \r_reg_array_reg[8]\(3)
    );
\r_reg_array_reg[8][4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[8][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(4),
      Q => \r_reg_array_reg[8]\(4)
    );
\r_reg_array_reg[8][5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[8][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(5),
      Q => \r_reg_array_reg[8]\(5)
    );
\r_reg_array_reg[8][6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[8][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(6),
      Q => \r_reg_array_reg[8]\(6)
    );
\r_reg_array_reg[8][7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[8][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(7),
      Q => \r_reg_array_reg[8]\(7)
    );
\r_reg_array_reg[9][0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[9][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(0),
      Q => \r_reg_array_reg[9]\(0)
    );
\r_reg_array_reg[9][1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[9][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(1),
      Q => \r_reg_array_reg[9]\(1)
    );
\r_reg_array_reg[9][2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[9][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(2),
      Q => \r_reg_array_reg[9]\(2)
    );
\r_reg_array_reg[9][3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[9][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(3),
      Q => \r_reg_array_reg[9]\(3)
    );
\r_reg_array_reg[9][4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[9][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(4),
      Q => \r_reg_array_reg[9]\(4)
    );
\r_reg_array_reg[9][5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[9][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(5),
      Q => \r_reg_array_reg[9]\(5)
    );
\r_reg_array_reg[9][6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[9][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(6),
      Q => \r_reg_array_reg[9]\(6)
    );
\r_reg_array_reg[9][7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_reg_array_reg[9][7]_0\(0),
      CLR => \r_reg_array_reg[0][0]_0\,
      D => D(7),
      Q => \r_reg_array_reg[9]\(7)
    );
\rd_data[0]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3500350F35F035FF"
    )
        port map (
      I0 => \rd_data[0]_i_3__0_n_0\,
      I1 => \rd_data[0]_i_4_n_0\,
      I2 => \rd_data_reg[7]\(3),
      I3 => \rd_data_reg[7]\(2),
      I4 => \rd_data[0]_i_5_n_0\,
      I5 => \rd_data[0]_i_6_n_0\,
      O => \r_rd_logic_reg[3]_6\
    );
\rd_data[0]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \r_reg_array_reg[5]\(0),
      I1 => \r_reg_array_reg[7]\(0),
      I2 => \rd_data_reg[7]\(1),
      I3 => \rd_data_reg[7]\(0),
      I4 => \r_reg_array_reg[4]\(0),
      I5 => \r_reg_array_reg[6]\(0),
      O => \rd_data[0]_i_3__0_n_0\
    );
\rd_data[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \r_reg_array_reg[13]\(0),
      I1 => \r_reg_array_reg[15]\(0),
      I2 => \rd_data_reg[7]\(1),
      I3 => \rd_data_reg[7]\(0),
      I4 => \r_reg_array_reg[12]\(0),
      I5 => \r_reg_array_reg[14]\(0),
      O => \rd_data[0]_i_4_n_0\
    );
\rd_data[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \r_reg_array_reg[1]\(0),
      I1 => \r_reg_array_reg[3]\(0),
      I2 => \rd_data_reg[7]\(1),
      I3 => \rd_data_reg[7]\(0),
      I4 => \r_reg_array_reg[0]\(0),
      I5 => \r_reg_array_reg[2]\(0),
      O => \rd_data[0]_i_5_n_0\
    );
\rd_data[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \r_reg_array_reg[9]\(0),
      I1 => \r_reg_array_reg[11]\(0),
      I2 => \rd_data_reg[7]\(1),
      I3 => \rd_data_reg[7]\(0),
      I4 => \r_reg_array_reg[8]\(0),
      I5 => \r_reg_array_reg[10]\(0),
      O => \rd_data[0]_i_6_n_0\
    );
\rd_data[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3500350F35F035FF"
    )
        port map (
      I0 => \rd_data[1]_i_3_n_0\,
      I1 => \rd_data[1]_i_4_n_0\,
      I2 => \rd_data_reg[7]\(3),
      I3 => \rd_data_reg[7]\(2),
      I4 => \rd_data[1]_i_5_n_0\,
      I5 => \rd_data[1]_i_6_n_0\,
      O => \r_rd_logic_reg[3]_5\
    );
\rd_data[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \r_reg_array_reg[5]\(1),
      I1 => \r_reg_array_reg[7]\(1),
      I2 => \rd_data_reg[7]\(1),
      I3 => \rd_data_reg[7]\(0),
      I4 => \r_reg_array_reg[4]\(1),
      I5 => \r_reg_array_reg[6]\(1),
      O => \rd_data[1]_i_3_n_0\
    );
\rd_data[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \r_reg_array_reg[13]\(1),
      I1 => \r_reg_array_reg[15]\(1),
      I2 => \rd_data_reg[7]\(1),
      I3 => \rd_data_reg[7]\(0),
      I4 => \r_reg_array_reg[12]\(1),
      I5 => \r_reg_array_reg[14]\(1),
      O => \rd_data[1]_i_4_n_0\
    );
\rd_data[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \r_reg_array_reg[1]\(1),
      I1 => \r_reg_array_reg[3]\(1),
      I2 => \rd_data_reg[7]\(1),
      I3 => \rd_data_reg[7]\(0),
      I4 => \r_reg_array_reg[0]\(1),
      I5 => \r_reg_array_reg[2]\(1),
      O => \rd_data[1]_i_5_n_0\
    );
\rd_data[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \r_reg_array_reg[9]\(1),
      I1 => \r_reg_array_reg[11]\(1),
      I2 => \rd_data_reg[7]\(1),
      I3 => \rd_data_reg[7]\(0),
      I4 => \r_reg_array_reg[8]\(1),
      I5 => \r_reg_array_reg[10]\(1),
      O => \rd_data[1]_i_6_n_0\
    );
\rd_data[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3500350F35F035FF"
    )
        port map (
      I0 => \rd_data[2]_i_3_n_0\,
      I1 => \rd_data[2]_i_4_n_0\,
      I2 => \rd_data_reg[7]\(3),
      I3 => \rd_data_reg[7]\(2),
      I4 => \rd_data[2]_i_5_n_0\,
      I5 => \rd_data[2]_i_6_n_0\,
      O => \r_rd_logic_reg[3]_4\
    );
\rd_data[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \r_reg_array_reg[5]\(2),
      I1 => \r_reg_array_reg[7]\(2),
      I2 => \rd_data_reg[7]\(1),
      I3 => \rd_data_reg[7]\(0),
      I4 => \r_reg_array_reg[4]\(2),
      I5 => \r_reg_array_reg[6]\(2),
      O => \rd_data[2]_i_3_n_0\
    );
\rd_data[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \r_reg_array_reg[13]\(2),
      I1 => \r_reg_array_reg[15]\(2),
      I2 => \rd_data_reg[7]\(1),
      I3 => \rd_data_reg[7]\(0),
      I4 => \r_reg_array_reg[12]\(2),
      I5 => \r_reg_array_reg[14]\(2),
      O => \rd_data[2]_i_4_n_0\
    );
\rd_data[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \r_reg_array_reg[1]\(2),
      I1 => \r_reg_array_reg[3]\(2),
      I2 => \rd_data_reg[7]\(1),
      I3 => \rd_data_reg[7]\(0),
      I4 => \r_reg_array_reg[0]\(2),
      I5 => \r_reg_array_reg[2]\(2),
      O => \rd_data[2]_i_5_n_0\
    );
\rd_data[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \r_reg_array_reg[9]\(2),
      I1 => \r_reg_array_reg[11]\(2),
      I2 => \rd_data_reg[7]\(1),
      I3 => \rd_data_reg[7]\(0),
      I4 => \r_reg_array_reg[8]\(2),
      I5 => \r_reg_array_reg[10]\(2),
      O => \rd_data[2]_i_6_n_0\
    );
\rd_data[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3500350F35F035FF"
    )
        port map (
      I0 => \rd_data[3]_i_3_n_0\,
      I1 => \rd_data[3]_i_4_n_0\,
      I2 => \rd_data_reg[7]\(3),
      I3 => \rd_data_reg[7]\(2),
      I4 => \rd_data[3]_i_5_n_0\,
      I5 => \rd_data[3]_i_6_n_0\,
      O => \r_rd_logic_reg[3]_3\
    );
\rd_data[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \r_reg_array_reg[5]\(3),
      I1 => \r_reg_array_reg[7]\(3),
      I2 => \rd_data_reg[7]\(1),
      I3 => \rd_data_reg[7]\(0),
      I4 => \r_reg_array_reg[4]\(3),
      I5 => \r_reg_array_reg[6]\(3),
      O => \rd_data[3]_i_3_n_0\
    );
\rd_data[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \r_reg_array_reg[13]\(3),
      I1 => \r_reg_array_reg[15]\(3),
      I2 => \rd_data_reg[7]\(1),
      I3 => \rd_data_reg[7]\(0),
      I4 => \r_reg_array_reg[12]\(3),
      I5 => \r_reg_array_reg[14]\(3),
      O => \rd_data[3]_i_4_n_0\
    );
\rd_data[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \r_reg_array_reg[1]\(3),
      I1 => \r_reg_array_reg[3]\(3),
      I2 => \rd_data_reg[7]\(1),
      I3 => \rd_data_reg[7]\(0),
      I4 => \r_reg_array_reg[0]\(3),
      I5 => \r_reg_array_reg[2]\(3),
      O => \rd_data[3]_i_5_n_0\
    );
\rd_data[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \r_reg_array_reg[9]\(3),
      I1 => \r_reg_array_reg[11]\(3),
      I2 => \rd_data_reg[7]\(1),
      I3 => \rd_data_reg[7]\(0),
      I4 => \r_reg_array_reg[8]\(3),
      I5 => \r_reg_array_reg[10]\(3),
      O => \rd_data[3]_i_6_n_0\
    );
\rd_data[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3500350F35F035FF"
    )
        port map (
      I0 => \rd_data[4]_i_3_n_0\,
      I1 => \rd_data[4]_i_4_n_0\,
      I2 => \rd_data_reg[7]\(3),
      I3 => \rd_data_reg[7]\(2),
      I4 => \rd_data[4]_i_5_n_0\,
      I5 => \rd_data[4]_i_6_n_0\,
      O => \r_rd_logic_reg[3]_2\
    );
\rd_data[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \r_reg_array_reg[5]\(4),
      I1 => \r_reg_array_reg[7]\(4),
      I2 => \rd_data_reg[7]\(1),
      I3 => \rd_data_reg[7]\(0),
      I4 => \r_reg_array_reg[4]\(4),
      I5 => \r_reg_array_reg[6]\(4),
      O => \rd_data[4]_i_3_n_0\
    );
\rd_data[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \r_reg_array_reg[13]\(4),
      I1 => \r_reg_array_reg[15]\(4),
      I2 => \rd_data_reg[7]\(1),
      I3 => \rd_data_reg[7]\(0),
      I4 => \r_reg_array_reg[12]\(4),
      I5 => \r_reg_array_reg[14]\(4),
      O => \rd_data[4]_i_4_n_0\
    );
\rd_data[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \r_reg_array_reg[1]\(4),
      I1 => \r_reg_array_reg[3]\(4),
      I2 => \rd_data_reg[7]\(1),
      I3 => \rd_data_reg[7]\(0),
      I4 => \r_reg_array_reg[0]\(4),
      I5 => \r_reg_array_reg[2]\(4),
      O => \rd_data[4]_i_5_n_0\
    );
\rd_data[4]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \r_reg_array_reg[9]\(4),
      I1 => \r_reg_array_reg[11]\(4),
      I2 => \rd_data_reg[7]\(1),
      I3 => \rd_data_reg[7]\(0),
      I4 => \r_reg_array_reg[8]\(4),
      I5 => \r_reg_array_reg[10]\(4),
      O => \rd_data[4]_i_6_n_0\
    );
\rd_data[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3500350F35F035FF"
    )
        port map (
      I0 => \rd_data[5]_i_3_n_0\,
      I1 => \rd_data[5]_i_4_n_0\,
      I2 => \rd_data_reg[7]\(3),
      I3 => \rd_data_reg[7]\(2),
      I4 => \rd_data[5]_i_5_n_0\,
      I5 => \rd_data[5]_i_6_n_0\,
      O => \r_rd_logic_reg[3]_1\
    );
\rd_data[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \r_reg_array_reg[5]\(5),
      I1 => \r_reg_array_reg[7]\(5),
      I2 => \rd_data_reg[7]\(1),
      I3 => \rd_data_reg[7]\(0),
      I4 => \r_reg_array_reg[4]\(5),
      I5 => \r_reg_array_reg[6]\(5),
      O => \rd_data[5]_i_3_n_0\
    );
\rd_data[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \r_reg_array_reg[13]\(5),
      I1 => \r_reg_array_reg[15]\(5),
      I2 => \rd_data_reg[7]\(1),
      I3 => \rd_data_reg[7]\(0),
      I4 => \r_reg_array_reg[12]\(5),
      I5 => \r_reg_array_reg[14]\(5),
      O => \rd_data[5]_i_4_n_0\
    );
\rd_data[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \r_reg_array_reg[1]\(5),
      I1 => \r_reg_array_reg[3]\(5),
      I2 => \rd_data_reg[7]\(1),
      I3 => \rd_data_reg[7]\(0),
      I4 => \r_reg_array_reg[0]\(5),
      I5 => \r_reg_array_reg[2]\(5),
      O => \rd_data[5]_i_5_n_0\
    );
\rd_data[5]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \r_reg_array_reg[9]\(5),
      I1 => \r_reg_array_reg[11]\(5),
      I2 => \rd_data_reg[7]\(1),
      I3 => \rd_data_reg[7]\(0),
      I4 => \r_reg_array_reg[8]\(5),
      I5 => \r_reg_array_reg[10]\(5),
      O => \rd_data[5]_i_6_n_0\
    );
\rd_data[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3500350F35F035FF"
    )
        port map (
      I0 => \rd_data[6]_i_3_n_0\,
      I1 => \rd_data[6]_i_4_n_0\,
      I2 => \rd_data_reg[7]\(3),
      I3 => \rd_data_reg[7]\(2),
      I4 => \rd_data[6]_i_5_n_0\,
      I5 => \rd_data[6]_i_6_n_0\,
      O => \r_rd_logic_reg[3]_0\
    );
\rd_data[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \r_reg_array_reg[5]\(6),
      I1 => \r_reg_array_reg[7]\(6),
      I2 => \rd_data_reg[7]\(1),
      I3 => \rd_data_reg[7]\(0),
      I4 => \r_reg_array_reg[4]\(6),
      I5 => \r_reg_array_reg[6]\(6),
      O => \rd_data[6]_i_3_n_0\
    );
\rd_data[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \r_reg_array_reg[13]\(6),
      I1 => \r_reg_array_reg[15]\(6),
      I2 => \rd_data_reg[7]\(1),
      I3 => \rd_data_reg[7]\(0),
      I4 => \r_reg_array_reg[12]\(6),
      I5 => \r_reg_array_reg[14]\(6),
      O => \rd_data[6]_i_4_n_0\
    );
\rd_data[6]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \r_reg_array_reg[1]\(6),
      I1 => \r_reg_array_reg[3]\(6),
      I2 => \rd_data_reg[7]\(1),
      I3 => \rd_data_reg[7]\(0),
      I4 => \r_reg_array_reg[0]\(6),
      I5 => \r_reg_array_reg[2]\(6),
      O => \rd_data[6]_i_5_n_0\
    );
\rd_data[6]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \r_reg_array_reg[9]\(6),
      I1 => \r_reg_array_reg[11]\(6),
      I2 => \rd_data_reg[7]\(1),
      I3 => \rd_data_reg[7]\(0),
      I4 => \r_reg_array_reg[8]\(6),
      I5 => \r_reg_array_reg[10]\(6),
      O => \rd_data[6]_i_6_n_0\
    );
\rd_data[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3500350F35F035FF"
    )
        port map (
      I0 => \rd_data[7]_i_4_n_0\,
      I1 => \rd_data[7]_i_5_n_0\,
      I2 => \rd_data_reg[7]\(3),
      I3 => \rd_data_reg[7]\(2),
      I4 => \rd_data[7]_i_6_n_0\,
      I5 => \rd_data[7]_i_7_n_0\,
      O => \r_rd_logic_reg[3]\
    );
\rd_data[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \r_reg_array_reg[5]\(7),
      I1 => \r_reg_array_reg[7]\(7),
      I2 => \rd_data_reg[7]\(1),
      I3 => \rd_data_reg[7]\(0),
      I4 => \r_reg_array_reg[4]\(7),
      I5 => \r_reg_array_reg[6]\(7),
      O => \rd_data[7]_i_4_n_0\
    );
\rd_data[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \r_reg_array_reg[13]\(7),
      I1 => \r_reg_array_reg[15]\(7),
      I2 => \rd_data_reg[7]\(1),
      I3 => \rd_data_reg[7]\(0),
      I4 => \r_reg_array_reg[12]\(7),
      I5 => \r_reg_array_reg[14]\(7),
      O => \rd_data[7]_i_5_n_0\
    );
\rd_data[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \r_reg_array_reg[1]\(7),
      I1 => \r_reg_array_reg[3]\(7),
      I2 => \rd_data_reg[7]\(1),
      I3 => \rd_data_reg[7]\(0),
      I4 => \r_reg_array_reg[0]\(7),
      I5 => \r_reg_array_reg[2]\(7),
      O => \rd_data[7]_i_6_n_0\
    );
\rd_data[7]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \r_reg_array_reg[9]\(7),
      I1 => \r_reg_array_reg[11]\(7),
      I2 => \rd_data_reg[7]\(1),
      I3 => \rd_data_reg[7]\(0),
      I4 => \r_reg_array_reg[8]\(7),
      I5 => \r_reg_array_reg[10]\(7),
      O => \rd_data[7]_i_7_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rx is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_r_state_reg[1]_0\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    w_en_rd : in STD_LOGIC;
    \r_wr_logic_reg[0]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    rx : in STD_LOGIC;
    tick : in STD_LOGIC;
    aclk : in STD_LOGIC;
    \r_data_bits_received_reg[3]_0\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rx;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rx is
  signal \FSM_sequential_r_state[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \FSM_sequential_r_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_r_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \^fsm_sequential_r_state_reg[1]_0\ : STD_LOGIC;
  signal dout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal r_data_bits_received : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \r_data_bits_received[3]_i_1_n_0\ : STD_LOGIC;
  signal \r_data_bits_received[3]_i_3_n_0\ : STD_LOGIC;
  signal r_sampling_ticks : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \r_sampling_ticks[4]_i_2_n_0\ : STD_LOGIC;
  signal \r_sampling_ticks[4]_i_3_n_0\ : STD_LOGIC;
  signal r_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal w_next_data_bits_received : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal w_next_sampling_ticks : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal w_next_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal w_out_shift : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_r_state[1]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \FSM_sequential_r_state[1]_i_3\ : label is "soft_lutpair38";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_r_state_reg[0]\ : label is "START:01,DATA:10,STOP:11,IDLE:00";
  attribute FSM_ENCODED_STATES of \FSM_sequential_r_state_reg[1]\ : label is "START:01,DATA:10,STOP:11,IDLE:00";
  attribute SOFT_HLUTNM of \dout[0]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \dout[1]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \dout[2]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \dout[3]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \dout[4]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \dout[5]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \dout[7]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of empty_i_3 : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \r_data_bits_received[0]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \r_data_bits_received[1]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \r_data_bits_received[2]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \r_data_bits_received[3]_i_2\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \r_data_bits_received[3]_i_3\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \r_reg_array[15][1]_i_1__0\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \r_reg_array[15][2]_i_1__0\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \r_reg_array[15][3]_i_1__0\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \r_reg_array[15][4]_i_1__0\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \r_reg_array[15][5]_i_1__0\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \r_reg_array[15][6]_i_1__0\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \r_reg_array[15][7]_i_2__0\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \r_sampling_ticks[0]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \r_sampling_ticks[1]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \r_sampling_ticks[2]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \r_sampling_ticks[4]_i_2\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \r_sampling_ticks[4]_i_3\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \r_wr_logic[3]_i_1__0\ : label is "soft_lutpair41";
begin
  \FSM_sequential_r_state_reg[1]_0\ <= \^fsm_sequential_r_state_reg[1]_0\;
\FSM_sequential_r_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCCCCCDDDDCFCF"
    )
        port map (
      I0 => \FSM_sequential_r_state[1]_i_2_n_0\,
      I1 => \FSM_sequential_r_state[0]_i_2__0_n_0\,
      I2 => rx,
      I3 => \FSM_sequential_r_state[1]_i_3_n_0\,
      I4 => r_state(0),
      I5 => r_state(1),
      O => w_next_state(0)
    );
\FSM_sequential_r_state[0]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001000000000"
    )
        port map (
      I0 => r_data_bits_received(0),
      I1 => r_data_bits_received(1),
      I2 => r_state(1),
      I3 => r_state(0),
      I4 => r_data_bits_received(2),
      I5 => r_data_bits_received(3),
      O => \FSM_sequential_r_state[0]_i_2__0_n_0\
    );
\FSM_sequential_r_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F588"
    )
        port map (
      I0 => r_state(0),
      I1 => \FSM_sequential_r_state[1]_i_2_n_0\,
      I2 => \FSM_sequential_r_state[1]_i_3_n_0\,
      I3 => r_state(1),
      O => w_next_state(1)
    );
\FSM_sequential_r_state[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000100"
    )
        port map (
      I0 => r_sampling_ticks(4),
      I1 => r_sampling_ticks(2),
      I2 => r_sampling_ticks(0),
      I3 => r_sampling_ticks(3),
      I4 => r_sampling_ticks(1),
      O => \FSM_sequential_r_state[1]_i_2_n_0\
    );
\FSM_sequential_r_state[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF7FFFFF"
    )
        port map (
      I0 => r_sampling_ticks(1),
      I1 => r_sampling_ticks(0),
      I2 => r_sampling_ticks(2),
      I3 => r_sampling_ticks(4),
      I4 => r_sampling_ticks(3),
      O => \FSM_sequential_r_state[1]_i_3_n_0\
    );
\FSM_sequential_r_state_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \r_data_bits_received_reg[3]_0\,
      D => w_next_state(0),
      Q => r_state(0)
    );
\FSM_sequential_r_state_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \r_data_bits_received_reg[3]_0\,
      D => w_next_state(1),
      Q => r_state(1)
    );
\dout[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => r_state(1),
      I1 => dout(1),
      O => w_out_shift(0)
    );
\dout[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => r_state(1),
      I1 => dout(2),
      O => w_out_shift(1)
    );
\dout[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => r_state(1),
      I1 => dout(3),
      O => w_out_shift(2)
    );
\dout[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => r_state(1),
      I1 => dout(4),
      O => w_out_shift(3)
    );
\dout[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => r_state(1),
      I1 => dout(5),
      O => w_out_shift(4)
    );
\dout[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => r_state(1),
      I1 => dout(6),
      O => w_out_shift(5)
    );
\dout[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => r_state(1),
      I1 => dout(7),
      O => w_out_shift(6)
    );
\dout[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => r_state(1),
      I1 => rx,
      O => w_out_shift(7)
    );
\dout_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_data_bits_received[3]_i_1_n_0\,
      CLR => \r_data_bits_received_reg[3]_0\,
      D => w_out_shift(0),
      Q => dout(0)
    );
\dout_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_data_bits_received[3]_i_1_n_0\,
      CLR => \r_data_bits_received_reg[3]_0\,
      D => w_out_shift(1),
      Q => dout(1)
    );
\dout_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_data_bits_received[3]_i_1_n_0\,
      CLR => \r_data_bits_received_reg[3]_0\,
      D => w_out_shift(2),
      Q => dout(2)
    );
\dout_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_data_bits_received[3]_i_1_n_0\,
      CLR => \r_data_bits_received_reg[3]_0\,
      D => w_out_shift(3),
      Q => dout(3)
    );
\dout_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_data_bits_received[3]_i_1_n_0\,
      CLR => \r_data_bits_received_reg[3]_0\,
      D => w_out_shift(4),
      Q => dout(4)
    );
\dout_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_data_bits_received[3]_i_1_n_0\,
      CLR => \r_data_bits_received_reg[3]_0\,
      D => w_out_shift(5),
      Q => dout(5)
    );
\dout_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_data_bits_received[3]_i_1_n_0\,
      CLR => \r_data_bits_received_reg[3]_0\,
      D => w_out_shift(6),
      Q => dout(6)
    );
\dout_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_data_bits_received[3]_i_1_n_0\,
      CLR => \r_data_bits_received_reg[3]_0\,
      D => w_out_shift(7),
      Q => dout(7)
    );
empty_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => r_state(1),
      I1 => r_state(0),
      I2 => \r_data_bits_received[3]_i_3_n_0\,
      O => \^fsm_sequential_r_state_reg[1]_0\
    );
\r_data_bits_received[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => r_state(1),
      I1 => r_data_bits_received(0),
      O => w_next_data_bits_received(0)
    );
\r_data_bits_received[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"48"
    )
        port map (
      I0 => r_data_bits_received(0),
      I1 => r_state(1),
      I2 => r_data_bits_received(1),
      O => w_next_data_bits_received(1)
    );
\r_data_bits_received[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7080"
    )
        port map (
      I0 => r_data_bits_received(1),
      I1 => r_data_bits_received(0),
      I2 => r_state(1),
      I3 => r_data_bits_received(2),
      O => w_next_data_bits_received(2)
    );
\r_data_bits_received[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0B"
    )
        port map (
      I0 => \r_data_bits_received[3]_i_3_n_0\,
      I1 => r_state(1),
      I2 => r_state(0),
      O => \r_data_bits_received[3]_i_1_n_0\
    );
\r_data_bits_received[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F008000"
    )
        port map (
      I0 => r_data_bits_received(2),
      I1 => r_data_bits_received(0),
      I2 => r_data_bits_received(1),
      I3 => r_state(1),
      I4 => r_data_bits_received(3),
      O => w_next_data_bits_received(3)
    );
\r_data_bits_received[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => r_sampling_ticks(4),
      I1 => r_sampling_ticks(3),
      I2 => r_sampling_ticks(2),
      I3 => r_sampling_ticks(0),
      I4 => r_sampling_ticks(1),
      O => \r_data_bits_received[3]_i_3_n_0\
    );
\r_data_bits_received_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_data_bits_received[3]_i_1_n_0\,
      CLR => \r_data_bits_received_reg[3]_0\,
      D => w_next_data_bits_received(0),
      Q => r_data_bits_received(0)
    );
\r_data_bits_received_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_data_bits_received[3]_i_1_n_0\,
      CLR => \r_data_bits_received_reg[3]_0\,
      D => w_next_data_bits_received(1),
      Q => r_data_bits_received(1)
    );
\r_data_bits_received_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_data_bits_received[3]_i_1_n_0\,
      CLR => \r_data_bits_received_reg[3]_0\,
      D => w_next_data_bits_received(2),
      Q => r_data_bits_received(2)
    );
\r_data_bits_received_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_data_bits_received[3]_i_1_n_0\,
      CLR => \r_data_bits_received_reg[3]_0\,
      D => w_next_data_bits_received(3),
      Q => r_data_bits_received(3)
    );
\r_reg_array[15][0]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => dout(0),
      I1 => Q(0),
      O => D(0)
    );
\r_reg_array[15][1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => dout(1),
      I1 => Q(0),
      O => D(1)
    );
\r_reg_array[15][2]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => dout(2),
      I1 => Q(0),
      O => D(2)
    );
\r_reg_array[15][3]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => dout(3),
      I1 => Q(0),
      O => D(3)
    );
\r_reg_array[15][4]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => dout(4),
      I1 => Q(0),
      O => D(4)
    );
\r_reg_array[15][5]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => dout(5),
      I1 => Q(0),
      O => D(5)
    );
\r_reg_array[15][6]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => dout(6),
      I1 => Q(0),
      O => D(6)
    );
\r_reg_array[15][7]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => dout(7),
      I1 => Q(0),
      O => D(7)
    );
\r_sampling_ticks[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \r_sampling_ticks[4]_i_2_n_0\,
      I1 => tick,
      I2 => r_sampling_ticks(0),
      O => w_next_sampling_ticks(0)
    );
\r_sampling_ticks[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2888"
    )
        port map (
      I0 => \r_sampling_ticks[4]_i_2_n_0\,
      I1 => r_sampling_ticks(1),
      I2 => tick,
      I3 => r_sampling_ticks(0),
      O => w_next_sampling_ticks(1)
    );
\r_sampling_ticks[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"28888888"
    )
        port map (
      I0 => \r_sampling_ticks[4]_i_2_n_0\,
      I1 => r_sampling_ticks(2),
      I2 => r_sampling_ticks(1),
      I3 => r_sampling_ticks(0),
      I4 => tick,
      O => w_next_sampling_ticks(2)
    );
\r_sampling_ticks[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2888888888888888"
    )
        port map (
      I0 => \r_sampling_ticks[4]_i_2_n_0\,
      I1 => r_sampling_ticks(3),
      I2 => r_sampling_ticks(2),
      I3 => tick,
      I4 => r_sampling_ticks(0),
      I5 => r_sampling_ticks(1),
      O => w_next_sampling_ticks(3)
    );
\r_sampling_ticks[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2888"
    )
        port map (
      I0 => \r_sampling_ticks[4]_i_2_n_0\,
      I1 => r_sampling_ticks(4),
      I2 => r_sampling_ticks(3),
      I3 => \r_sampling_ticks[4]_i_3_n_0\,
      O => w_next_sampling_ticks(4)
    );
\r_sampling_ticks[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A2F2"
    )
        port map (
      I0 => r_state(0),
      I1 => \FSM_sequential_r_state[1]_i_2_n_0\,
      I2 => r_state(1),
      I3 => \r_data_bits_received[3]_i_3_n_0\,
      O => \r_sampling_ticks[4]_i_2_n_0\
    );
\r_sampling_ticks[4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => r_sampling_ticks(2),
      I1 => tick,
      I2 => r_sampling_ticks(0),
      I3 => r_sampling_ticks(1),
      O => \r_sampling_ticks[4]_i_3_n_0\
    );
\r_sampling_ticks_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \r_data_bits_received_reg[3]_0\,
      D => w_next_sampling_ticks(0),
      Q => r_sampling_ticks(0)
    );
\r_sampling_ticks_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \r_data_bits_received_reg[3]_0\,
      D => w_next_sampling_ticks(1),
      Q => r_sampling_ticks(1)
    );
\r_sampling_ticks_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \r_data_bits_received_reg[3]_0\,
      D => w_next_sampling_ticks(2),
      Q => r_sampling_ticks(2)
    );
\r_sampling_ticks_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \r_data_bits_received_reg[3]_0\,
      D => w_next_sampling_ticks(3),
      Q => r_sampling_ticks(3)
    );
\r_sampling_ticks_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \r_data_bits_received_reg[3]_0\,
      D => w_next_sampling_ticks(4),
      Q => r_sampling_ticks(4)
    );
\r_wr_logic[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF8A"
    )
        port map (
      I0 => \^fsm_sequential_r_state_reg[1]_0\,
      I1 => w_en_rd,
      I2 => \r_wr_logic_reg[0]\,
      I3 => Q(0),
      O => E(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_timer is
  port (
    slot_decode_error : out STD_LOGIC_VECTOR ( 0 to 0 );
    slot_slave_error : out STD_LOGIC_VECTOR ( 0 to 0 );
    slot_wr_done : out STD_LOGIC_VECTOR ( 0 to 0 );
    slot_rd_done : out STD_LOGIC_VECTOR ( 0 to 0 );
    \S_AXI_awaddr[4]\ : out STD_LOGIC;
    \S_AXI_araddr[5]\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \rd_data_reg[31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \w_decode_error__0\ : in STD_LOGIC;
    \w_slave_error__0\ : in STD_LOGIC;
    rd_done_reg_0 : in STD_LOGIC;
    \w_rd_done__0\ : in STD_LOGIC;
    aclk : in STD_LOGIC;
    rd_done_reg_1 : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    \w_en__0\ : in STD_LOGIC;
    r_eg_reg_0 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_wvalid : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \r_control_reg[0]_0\ : in STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \r_control_reg[0]_1\ : in STD_LOGIC;
    \r_control_reg[0]_2\ : in STD_LOGIC;
    \r_auto_reload_reg[31]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 31 downto 0 );
    r_eg_reg_1 : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_timer;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_timer is
  signal \FSM_onehot_r_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_w_next_state_reg[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \FSM_onehot_w_next_state_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_w_next_state_reg[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \FSM_onehot_w_next_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_w_next_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_w_next_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \finished0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \finished0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \finished0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \finished0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \finished0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \finished0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \finished0_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \finished0_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \finished0_carry__0_n_0\ : STD_LOGIC;
  signal \finished0_carry__0_n_1\ : STD_LOGIC;
  signal \finished0_carry__0_n_2\ : STD_LOGIC;
  signal \finished0_carry__0_n_3\ : STD_LOGIC;
  signal \finished0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \finished0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \finished0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \finished0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \finished0_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \finished0_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \finished0_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \finished0_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \finished0_carry__1_n_0\ : STD_LOGIC;
  signal \finished0_carry__1_n_1\ : STD_LOGIC;
  signal \finished0_carry__1_n_2\ : STD_LOGIC;
  signal \finished0_carry__1_n_3\ : STD_LOGIC;
  signal \finished0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \finished0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \finished0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \finished0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \finished0_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \finished0_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \finished0_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \finished0_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \finished0_carry__2_n_0\ : STD_LOGIC;
  signal \finished0_carry__2_n_1\ : STD_LOGIC;
  signal \finished0_carry__2_n_2\ : STD_LOGIC;
  signal \finished0_carry__2_n_3\ : STD_LOGIC;
  signal finished0_carry_i_1_n_0 : STD_LOGIC;
  signal finished0_carry_i_2_n_0 : STD_LOGIC;
  signal finished0_carry_i_3_n_0 : STD_LOGIC;
  signal finished0_carry_i_4_n_0 : STD_LOGIC;
  signal finished0_carry_i_5_n_0 : STD_LOGIC;
  signal finished0_carry_i_6_n_0 : STD_LOGIC;
  signal finished0_carry_i_7_n_0 : STD_LOGIC;
  signal finished0_carry_i_8_n_0 : STD_LOGIC;
  signal finished0_carry_n_0 : STD_LOGIC;
  signal finished0_carry_n_1 : STD_LOGIC;
  signal finished0_carry_n_2 : STD_LOGIC;
  signal finished0_carry_n_3 : STD_LOGIC;
  signal \finished__0\ : STD_LOGIC;
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__5_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__5_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__5_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__5_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__6_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__6_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__6_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 0 to 0 );
  signal p_0_in1_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal r_auto_reload : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \r_control[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_control[1]_i_1_n_0\ : STD_LOGIC;
  signal r_counter : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal r_counter0 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \r_counter0_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \r_counter0_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \r_counter0_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \r_counter0_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \r_counter0_inferred__0/i__carry__0_n_4\ : STD_LOGIC;
  signal \r_counter0_inferred__0/i__carry__0_n_5\ : STD_LOGIC;
  signal \r_counter0_inferred__0/i__carry__0_n_6\ : STD_LOGIC;
  signal \r_counter0_inferred__0/i__carry__0_n_7\ : STD_LOGIC;
  signal \r_counter0_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \r_counter0_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \r_counter0_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \r_counter0_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \r_counter0_inferred__0/i__carry__1_n_4\ : STD_LOGIC;
  signal \r_counter0_inferred__0/i__carry__1_n_5\ : STD_LOGIC;
  signal \r_counter0_inferred__0/i__carry__1_n_6\ : STD_LOGIC;
  signal \r_counter0_inferred__0/i__carry__1_n_7\ : STD_LOGIC;
  signal \r_counter0_inferred__0/i__carry__2_n_0\ : STD_LOGIC;
  signal \r_counter0_inferred__0/i__carry__2_n_1\ : STD_LOGIC;
  signal \r_counter0_inferred__0/i__carry__2_n_2\ : STD_LOGIC;
  signal \r_counter0_inferred__0/i__carry__2_n_3\ : STD_LOGIC;
  signal \r_counter0_inferred__0/i__carry__2_n_4\ : STD_LOGIC;
  signal \r_counter0_inferred__0/i__carry__2_n_5\ : STD_LOGIC;
  signal \r_counter0_inferred__0/i__carry__2_n_6\ : STD_LOGIC;
  signal \r_counter0_inferred__0/i__carry__2_n_7\ : STD_LOGIC;
  signal \r_counter0_inferred__0/i__carry__3_n_0\ : STD_LOGIC;
  signal \r_counter0_inferred__0/i__carry__3_n_1\ : STD_LOGIC;
  signal \r_counter0_inferred__0/i__carry__3_n_2\ : STD_LOGIC;
  signal \r_counter0_inferred__0/i__carry__3_n_3\ : STD_LOGIC;
  signal \r_counter0_inferred__0/i__carry__3_n_4\ : STD_LOGIC;
  signal \r_counter0_inferred__0/i__carry__3_n_5\ : STD_LOGIC;
  signal \r_counter0_inferred__0/i__carry__3_n_6\ : STD_LOGIC;
  signal \r_counter0_inferred__0/i__carry__3_n_7\ : STD_LOGIC;
  signal \r_counter0_inferred__0/i__carry__4_n_0\ : STD_LOGIC;
  signal \r_counter0_inferred__0/i__carry__4_n_1\ : STD_LOGIC;
  signal \r_counter0_inferred__0/i__carry__4_n_2\ : STD_LOGIC;
  signal \r_counter0_inferred__0/i__carry__4_n_3\ : STD_LOGIC;
  signal \r_counter0_inferred__0/i__carry__4_n_4\ : STD_LOGIC;
  signal \r_counter0_inferred__0/i__carry__4_n_5\ : STD_LOGIC;
  signal \r_counter0_inferred__0/i__carry__4_n_6\ : STD_LOGIC;
  signal \r_counter0_inferred__0/i__carry__4_n_7\ : STD_LOGIC;
  signal \r_counter0_inferred__0/i__carry__5_n_0\ : STD_LOGIC;
  signal \r_counter0_inferred__0/i__carry__5_n_1\ : STD_LOGIC;
  signal \r_counter0_inferred__0/i__carry__5_n_2\ : STD_LOGIC;
  signal \r_counter0_inferred__0/i__carry__5_n_3\ : STD_LOGIC;
  signal \r_counter0_inferred__0/i__carry__5_n_4\ : STD_LOGIC;
  signal \r_counter0_inferred__0/i__carry__5_n_5\ : STD_LOGIC;
  signal \r_counter0_inferred__0/i__carry__5_n_6\ : STD_LOGIC;
  signal \r_counter0_inferred__0/i__carry__5_n_7\ : STD_LOGIC;
  signal \r_counter0_inferred__0/i__carry__6_n_2\ : STD_LOGIC;
  signal \r_counter0_inferred__0/i__carry__6_n_3\ : STD_LOGIC;
  signal \r_counter0_inferred__0/i__carry__6_n_5\ : STD_LOGIC;
  signal \r_counter0_inferred__0/i__carry__6_n_6\ : STD_LOGIC;
  signal \r_counter0_inferred__0/i__carry__6_n_7\ : STD_LOGIC;
  signal \r_counter0_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \r_counter0_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \r_counter0_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \r_counter0_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \r_counter0_inferred__0/i__carry_n_4\ : STD_LOGIC;
  signal \r_counter0_inferred__0/i__carry_n_5\ : STD_LOGIC;
  signal \r_counter0_inferred__0/i__carry_n_6\ : STD_LOGIC;
  signal \r_counter0_inferred__0/i__carry_n_7\ : STD_LOGIC;
  signal \r_counter16_out__0\ : STD_LOGIC;
  signal \r_counter[10]_i_2_n_0\ : STD_LOGIC;
  signal \r_counter[11]_i_2_n_0\ : STD_LOGIC;
  signal \r_counter[12]_i_3_n_0\ : STD_LOGIC;
  signal \r_counter[13]_i_2_n_0\ : STD_LOGIC;
  signal \r_counter[14]_i_2_n_0\ : STD_LOGIC;
  signal \r_counter[15]_i_2_n_0\ : STD_LOGIC;
  signal \r_counter[16]_i_3_n_0\ : STD_LOGIC;
  signal \r_counter[17]_i_2_n_0\ : STD_LOGIC;
  signal \r_counter[18]_i_2_n_0\ : STD_LOGIC;
  signal \r_counter[19]_i_2_n_0\ : STD_LOGIC;
  signal \r_counter[1]_i_2_n_0\ : STD_LOGIC;
  signal \r_counter[20]_i_3_n_0\ : STD_LOGIC;
  signal \r_counter[21]_i_2_n_0\ : STD_LOGIC;
  signal \r_counter[22]_i_2_n_0\ : STD_LOGIC;
  signal \r_counter[23]_i_2_n_0\ : STD_LOGIC;
  signal \r_counter[24]_i_3_n_0\ : STD_LOGIC;
  signal \r_counter[25]_i_2_n_0\ : STD_LOGIC;
  signal \r_counter[26]_i_2_n_0\ : STD_LOGIC;
  signal \r_counter[27]_i_2_n_0\ : STD_LOGIC;
  signal \r_counter[28]_i_3_n_0\ : STD_LOGIC;
  signal \r_counter[29]_i_2_n_0\ : STD_LOGIC;
  signal \r_counter[2]_i_2_n_0\ : STD_LOGIC;
  signal \r_counter[30]_i_2_n_0\ : STD_LOGIC;
  signal \r_counter[31]_i_10_n_0\ : STD_LOGIC;
  signal \r_counter[31]_i_11_n_0\ : STD_LOGIC;
  signal \r_counter[31]_i_12_n_0\ : STD_LOGIC;
  signal \r_counter[31]_i_13_n_0\ : STD_LOGIC;
  signal \r_counter[31]_i_14_n_0\ : STD_LOGIC;
  signal \r_counter[31]_i_15_n_0\ : STD_LOGIC;
  signal \r_counter[31]_i_16_n_0\ : STD_LOGIC;
  signal \r_counter[31]_i_17_n_0\ : STD_LOGIC;
  signal \r_counter[31]_i_18_n_0\ : STD_LOGIC;
  signal \r_counter[31]_i_1_n_0\ : STD_LOGIC;
  signal \r_counter[31]_i_6_n_0\ : STD_LOGIC;
  signal \r_counter[31]_i_7_n_0\ : STD_LOGIC;
  signal \r_counter[31]_i_8_n_0\ : STD_LOGIC;
  signal \r_counter[31]_i_9_n_0\ : STD_LOGIC;
  signal \r_counter[3]_i_2_n_0\ : STD_LOGIC;
  signal \r_counter[4]_i_3_n_0\ : STD_LOGIC;
  signal \r_counter[5]_i_2_n_0\ : STD_LOGIC;
  signal \r_counter[6]_i_2_n_0\ : STD_LOGIC;
  signal \r_counter[7]_i_2_n_0\ : STD_LOGIC;
  signal \r_counter[8]_i_3_n_0\ : STD_LOGIC;
  signal \r_counter[9]_i_2_n_0\ : STD_LOGIC;
  signal \r_counter_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \r_counter_reg[12]_i_2_n_1\ : STD_LOGIC;
  signal \r_counter_reg[12]_i_2_n_2\ : STD_LOGIC;
  signal \r_counter_reg[12]_i_2_n_3\ : STD_LOGIC;
  signal \r_counter_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \r_counter_reg[16]_i_2_n_1\ : STD_LOGIC;
  signal \r_counter_reg[16]_i_2_n_2\ : STD_LOGIC;
  signal \r_counter_reg[16]_i_2_n_3\ : STD_LOGIC;
  signal \r_counter_reg[20]_i_2_n_0\ : STD_LOGIC;
  signal \r_counter_reg[20]_i_2_n_1\ : STD_LOGIC;
  signal \r_counter_reg[20]_i_2_n_2\ : STD_LOGIC;
  signal \r_counter_reg[20]_i_2_n_3\ : STD_LOGIC;
  signal \r_counter_reg[24]_i_2_n_0\ : STD_LOGIC;
  signal \r_counter_reg[24]_i_2_n_1\ : STD_LOGIC;
  signal \r_counter_reg[24]_i_2_n_2\ : STD_LOGIC;
  signal \r_counter_reg[24]_i_2_n_3\ : STD_LOGIC;
  signal \r_counter_reg[28]_i_2_n_0\ : STD_LOGIC;
  signal \r_counter_reg[28]_i_2_n_1\ : STD_LOGIC;
  signal \r_counter_reg[28]_i_2_n_2\ : STD_LOGIC;
  signal \r_counter_reg[28]_i_2_n_3\ : STD_LOGIC;
  signal \r_counter_reg[31]_i_4_n_2\ : STD_LOGIC;
  signal \r_counter_reg[31]_i_4_n_3\ : STD_LOGIC;
  signal \r_counter_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \r_counter_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \r_counter_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \r_counter_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \r_counter_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \r_counter_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \r_counter_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \r_counter_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal r_eg : STD_LOGIC;
  signal r_eg_i_1_n_0 : STD_LOGIC;
  signal r_eg_i_3_n_0 : STD_LOGIC;
  signal \^slot_decode_error\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal slot_idle : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^slot_slave_error\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal w_decode_error : STD_LOGIC;
  signal w_decode_error_reg_i_1_n_0 : STD_LOGIC;
  signal w_next_state : STD_LOGIC;
  signal w_rd_data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \w_rd_data_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \w_rd_data_reg[10]_i_1_n_0\ : STD_LOGIC;
  signal \w_rd_data_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \w_rd_data_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \w_rd_data_reg[13]_i_1_n_0\ : STD_LOGIC;
  signal \w_rd_data_reg[14]_i_1_n_0\ : STD_LOGIC;
  signal \w_rd_data_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \w_rd_data_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \w_rd_data_reg[17]_i_1_n_0\ : STD_LOGIC;
  signal \w_rd_data_reg[18]_i_1_n_0\ : STD_LOGIC;
  signal \w_rd_data_reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \w_rd_data_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \w_rd_data_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \w_rd_data_reg[21]_i_1_n_0\ : STD_LOGIC;
  signal \w_rd_data_reg[22]_i_1_n_0\ : STD_LOGIC;
  signal \w_rd_data_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \w_rd_data_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \w_rd_data_reg[25]_i_1_n_0\ : STD_LOGIC;
  signal \w_rd_data_reg[26]_i_1_n_0\ : STD_LOGIC;
  signal \w_rd_data_reg[27]_i_1_n_0\ : STD_LOGIC;
  signal \w_rd_data_reg[28]_i_1_n_0\ : STD_LOGIC;
  signal \w_rd_data_reg[29]_i_1_n_0\ : STD_LOGIC;
  signal \w_rd_data_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \w_rd_data_reg[30]_i_1_n_0\ : STD_LOGIC;
  signal \w_rd_data_reg[31]_i_1_n_0\ : STD_LOGIC;
  signal \w_rd_data_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \w_rd_data_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \w_rd_data_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \w_rd_data_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \w_rd_data_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \w_rd_data_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \w_rd_data_reg[9]_i_1_n_0\ : STD_LOGIC;
  signal w_rd_done : STD_LOGIC;
  signal w_slave_error : STD_LOGIC;
  signal w_slave_error_reg_i_1_n_0 : STD_LOGIC;
  signal w_status : STD_LOGIC_VECTOR ( 4 to 4 );
  signal w_wr_done : STD_LOGIC;
  signal NLW_finished0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_finished0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_finished0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_finished0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_r_counter0_inferred__0/i__carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_r_counter0_inferred__0/i__carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_r_counter_reg[31]_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_r_counter_reg[31]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_r_state_reg[0]\ : label is "ACTIVE:010,DONE:100,IDLE:001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_r_state_reg[1]\ : label is "ACTIVE:010,DONE:100,IDLE:001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_r_state_reg[2]\ : label is "ACTIVE:010,DONE:100,IDLE:001";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \FSM_onehot_w_next_state_reg[0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \FSM_onehot_w_next_state_reg[0]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_w_next_state_reg[0]_i_1__0\ : label is "soft_lutpair26";
  attribute XILINX_LEGACY_PRIM of \FSM_onehot_w_next_state_reg[1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \FSM_onehot_w_next_state_reg[1]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \FSM_onehot_w_next_state_reg[1]_i_1\ : label is "soft_lutpair26";
  attribute XILINX_LEGACY_PRIM of \FSM_onehot_w_next_state_reg[2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \FSM_onehot_w_next_state_reg[2]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \FSM_onehot_w_next_state_reg[2]_i_2\ : label is "soft_lutpair24";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of finished0_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \finished0_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \finished0_carry__1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \finished0_carry__2\ : label is 11;
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \r_counter0_inferred__0/i__carry\ : label is 35;
  attribute ADDER_THRESHOLD of \r_counter0_inferred__0/i__carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \r_counter0_inferred__0/i__carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \r_counter0_inferred__0/i__carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \r_counter0_inferred__0/i__carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \r_counter0_inferred__0/i__carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \r_counter0_inferred__0/i__carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \r_counter0_inferred__0/i__carry__6\ : label is 35;
  attribute SOFT_HLUTNM of \r_counter[31]_i_17\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \r_counter[31]_i_18\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \r_counter[31]_i_8\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \r_counter[31]_i_9\ : label is "soft_lutpair22";
  attribute ADDER_THRESHOLD of \r_counter_reg[12]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \r_counter_reg[16]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \r_counter_reg[20]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \r_counter_reg[24]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \r_counter_reg[28]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \r_counter_reg[31]_i_4\ : label is 35;
  attribute ADDER_THRESHOLD of \r_counter_reg[4]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \r_counter_reg[8]_i_2\ : label is 35;
  attribute SOFT_HLUTNM of r_eg_i_3 : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \r_status[4]_i_1\ : label is "soft_lutpair25";
  attribute XILINX_LEGACY_PRIM of w_decode_error_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of w_decode_error_reg : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of w_decode_error_reg_i_1 : label is "soft_lutpair25";
  attribute XILINX_LEGACY_PRIM of \w_rd_data_reg[0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \w_rd_data_reg[0]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \w_rd_data_reg[10]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \w_rd_data_reg[10]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \w_rd_data_reg[11]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \w_rd_data_reg[11]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \w_rd_data_reg[12]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \w_rd_data_reg[12]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \w_rd_data_reg[13]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \w_rd_data_reg[13]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \w_rd_data_reg[14]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \w_rd_data_reg[14]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \w_rd_data_reg[15]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \w_rd_data_reg[15]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \w_rd_data_reg[16]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \w_rd_data_reg[16]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \w_rd_data_reg[17]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \w_rd_data_reg[17]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \w_rd_data_reg[18]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \w_rd_data_reg[18]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \w_rd_data_reg[19]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \w_rd_data_reg[19]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \w_rd_data_reg[1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \w_rd_data_reg[1]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \w_rd_data_reg[20]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \w_rd_data_reg[20]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \w_rd_data_reg[21]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \w_rd_data_reg[21]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \w_rd_data_reg[22]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \w_rd_data_reg[22]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \w_rd_data_reg[23]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \w_rd_data_reg[23]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \w_rd_data_reg[24]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \w_rd_data_reg[24]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \w_rd_data_reg[25]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \w_rd_data_reg[25]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \w_rd_data_reg[26]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \w_rd_data_reg[26]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \w_rd_data_reg[27]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \w_rd_data_reg[27]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \w_rd_data_reg[28]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \w_rd_data_reg[28]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \w_rd_data_reg[29]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \w_rd_data_reg[29]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \w_rd_data_reg[2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \w_rd_data_reg[2]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \w_rd_data_reg[30]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \w_rd_data_reg[30]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \w_rd_data_reg[31]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \w_rd_data_reg[31]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \w_rd_data_reg[3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \w_rd_data_reg[3]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \w_rd_data_reg[4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \w_rd_data_reg[4]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \w_rd_data_reg[5]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \w_rd_data_reg[5]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \w_rd_data_reg[6]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \w_rd_data_reg[6]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \w_rd_data_reg[7]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \w_rd_data_reg[7]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \w_rd_data_reg[8]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \w_rd_data_reg[8]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \w_rd_data_reg[9]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \w_rd_data_reg[9]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of w_rd_done_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of w_rd_done_reg : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of w_slave_error_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of w_slave_error_reg : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of w_slave_error_reg_i_1 : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \wr_done_i_1__1\ : label is "soft_lutpair27";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
  slot_decode_error(0) <= \^slot_decode_error\(0);
  slot_slave_error(0) <= \^slot_slave_error\(0);
\FSM_onehot_r_state_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \FSM_onehot_w_next_state_reg_n_0_[0]\,
      PRE => rd_done_reg_1,
      Q => \FSM_onehot_r_state_reg_n_0_[0]\
    );
\FSM_onehot_r_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      CLR => rd_done_reg_1,
      D => \FSM_onehot_w_next_state_reg_n_0_[1]\,
      Q => \^q\(0)
    );
\FSM_onehot_r_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      CLR => rd_done_reg_1,
      D => \FSM_onehot_w_next_state_reg_n_0_[2]\,
      Q => \^q\(1)
    );
\FSM_onehot_w_next_state_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '1'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_w_next_state_reg[0]_i_1__0_n_0\,
      G => w_next_state,
      GE => '1',
      Q => \FSM_onehot_w_next_state_reg_n_0_[0]\
    );
\FSM_onehot_w_next_state_reg[0]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_r_state_reg_n_0_[0]\,
      I1 => \w_en__0\,
      O => \FSM_onehot_w_next_state_reg[0]_i_1__0_n_0\
    );
\FSM_onehot_w_next_state_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_w_next_state_reg[1]_i_1_n_0\,
      G => w_next_state,
      GE => '1',
      Q => \FSM_onehot_w_next_state_reg_n_0_[1]\
    );
\FSM_onehot_w_next_state_reg[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_r_state_reg_n_0_[0]\,
      I1 => \w_en__0\,
      O => \FSM_onehot_w_next_state_reg[1]_i_1_n_0\
    );
\FSM_onehot_w_next_state_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_w_next_state_reg[2]_i_1__0_n_0\,
      G => w_next_state,
      GE => '1',
      Q => \FSM_onehot_w_next_state_reg_n_0_[2]\
    );
\FSM_onehot_w_next_state_reg[2]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \FSM_onehot_w_next_state_reg[2]_i_1__0_n_0\
    );
\FSM_onehot_w_next_state_reg[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \FSM_onehot_r_state_reg_n_0_[0]\,
      I1 => \^q\(1),
      I2 => \^q\(0),
      O => w_next_state
    );
S_AXI_arready_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF1FFFFFFFF"
    )
        port map (
      I0 => S_AXI_araddr(1),
      I1 => slot_idle(0),
      I2 => S_AXI_araddr(0),
      I3 => S_AXI_araddr(2),
      I4 => S_AXI_araddr(3),
      I5 => S_AXI_arvalid,
      O => \S_AXI_araddr[5]\
    );
S_AXI_awready_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFEFFFEFFFFFF"
    )
        port map (
      I0 => S_AXI_awaddr(0),
      I1 => S_AXI_awaddr(2),
      I2 => S_AXI_awaddr(3),
      I3 => S_AXI_awvalid,
      I4 => slot_idle(0),
      I5 => S_AXI_awaddr(1),
      O => \S_AXI_awaddr[4]\
    );
decode_error_reg: unisim.vcomponents.FDPE
     port map (
      C => aclk,
      CE => '1',
      D => w_decode_error,
      PRE => rd_done_reg_1,
      Q => \^slot_decode_error\(0)
    );
finished0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => finished0_carry_n_0,
      CO(2) => finished0_carry_n_1,
      CO(1) => finished0_carry_n_2,
      CO(0) => finished0_carry_n_3,
      CYINIT => '1',
      DI(3) => finished0_carry_i_1_n_0,
      DI(2) => finished0_carry_i_2_n_0,
      DI(1) => finished0_carry_i_3_n_0,
      DI(0) => finished0_carry_i_4_n_0,
      O(3 downto 0) => NLW_finished0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => finished0_carry_i_5_n_0,
      S(2) => finished0_carry_i_6_n_0,
      S(1) => finished0_carry_i_7_n_0,
      S(0) => finished0_carry_i_8_n_0
    );
\finished0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => finished0_carry_n_0,
      CO(3) => \finished0_carry__0_n_0\,
      CO(2) => \finished0_carry__0_n_1\,
      CO(1) => \finished0_carry__0_n_2\,
      CO(0) => \finished0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \finished0_carry__0_i_1_n_0\,
      DI(2) => \finished0_carry__0_i_2_n_0\,
      DI(1) => \finished0_carry__0_i_3_n_0\,
      DI(0) => \finished0_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_finished0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \finished0_carry__0_i_5_n_0\,
      S(2) => \finished0_carry__0_i_6_n_0\,
      S(1) => \finished0_carry__0_i_7_n_0\,
      S(0) => \finished0_carry__0_i_8_n_0\
    );
\finished0_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => r_counter(14),
      I1 => r_auto_reload(14),
      I2 => r_auto_reload(15),
      I3 => r_counter(15),
      O => \finished0_carry__0_i_1_n_0\
    );
\finished0_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => r_counter(12),
      I1 => r_auto_reload(12),
      I2 => r_auto_reload(13),
      I3 => r_counter(13),
      O => \finished0_carry__0_i_2_n_0\
    );
\finished0_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => r_counter(10),
      I1 => r_auto_reload(10),
      I2 => r_auto_reload(11),
      I3 => r_counter(11),
      O => \finished0_carry__0_i_3_n_0\
    );
\finished0_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => r_counter(8),
      I1 => r_auto_reload(8),
      I2 => r_auto_reload(9),
      I3 => r_counter(9),
      O => \finished0_carry__0_i_4_n_0\
    );
\finished0_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => r_auto_reload(15),
      I1 => r_counter(15),
      I2 => r_auto_reload(14),
      I3 => r_counter(14),
      O => \finished0_carry__0_i_5_n_0\
    );
\finished0_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => r_auto_reload(13),
      I1 => r_counter(13),
      I2 => r_auto_reload(12),
      I3 => r_counter(12),
      O => \finished0_carry__0_i_6_n_0\
    );
\finished0_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => r_auto_reload(11),
      I1 => r_counter(11),
      I2 => r_auto_reload(10),
      I3 => r_counter(10),
      O => \finished0_carry__0_i_7_n_0\
    );
\finished0_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => r_auto_reload(9),
      I1 => r_counter(9),
      I2 => r_auto_reload(8),
      I3 => r_counter(8),
      O => \finished0_carry__0_i_8_n_0\
    );
\finished0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \finished0_carry__0_n_0\,
      CO(3) => \finished0_carry__1_n_0\,
      CO(2) => \finished0_carry__1_n_1\,
      CO(1) => \finished0_carry__1_n_2\,
      CO(0) => \finished0_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \finished0_carry__1_i_1_n_0\,
      DI(2) => \finished0_carry__1_i_2_n_0\,
      DI(1) => \finished0_carry__1_i_3_n_0\,
      DI(0) => \finished0_carry__1_i_4_n_0\,
      O(3 downto 0) => \NLW_finished0_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \finished0_carry__1_i_5_n_0\,
      S(2) => \finished0_carry__1_i_6_n_0\,
      S(1) => \finished0_carry__1_i_7_n_0\,
      S(0) => \finished0_carry__1_i_8_n_0\
    );
\finished0_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => r_counter(22),
      I1 => r_auto_reload(22),
      I2 => r_auto_reload(23),
      I3 => r_counter(23),
      O => \finished0_carry__1_i_1_n_0\
    );
\finished0_carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => r_counter(20),
      I1 => r_auto_reload(20),
      I2 => r_auto_reload(21),
      I3 => r_counter(21),
      O => \finished0_carry__1_i_2_n_0\
    );
\finished0_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => r_counter(18),
      I1 => r_auto_reload(18),
      I2 => r_auto_reload(19),
      I3 => r_counter(19),
      O => \finished0_carry__1_i_3_n_0\
    );
\finished0_carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => r_counter(16),
      I1 => r_auto_reload(16),
      I2 => r_auto_reload(17),
      I3 => r_counter(17),
      O => \finished0_carry__1_i_4_n_0\
    );
\finished0_carry__1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => r_auto_reload(23),
      I1 => r_counter(23),
      I2 => r_auto_reload(22),
      I3 => r_counter(22),
      O => \finished0_carry__1_i_5_n_0\
    );
\finished0_carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => r_auto_reload(21),
      I1 => r_counter(21),
      I2 => r_auto_reload(20),
      I3 => r_counter(20),
      O => \finished0_carry__1_i_6_n_0\
    );
\finished0_carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => r_auto_reload(19),
      I1 => r_counter(19),
      I2 => r_auto_reload(18),
      I3 => r_counter(18),
      O => \finished0_carry__1_i_7_n_0\
    );
\finished0_carry__1_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => r_auto_reload(17),
      I1 => r_counter(17),
      I2 => r_auto_reload(16),
      I3 => r_counter(16),
      O => \finished0_carry__1_i_8_n_0\
    );
\finished0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \finished0_carry__1_n_0\,
      CO(3) => \finished0_carry__2_n_0\,
      CO(2) => \finished0_carry__2_n_1\,
      CO(1) => \finished0_carry__2_n_2\,
      CO(0) => \finished0_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \finished0_carry__2_i_1_n_0\,
      DI(2) => \finished0_carry__2_i_2_n_0\,
      DI(1) => \finished0_carry__2_i_3_n_0\,
      DI(0) => \finished0_carry__2_i_4_n_0\,
      O(3 downto 0) => \NLW_finished0_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \finished0_carry__2_i_5_n_0\,
      S(2) => \finished0_carry__2_i_6_n_0\,
      S(1) => \finished0_carry__2_i_7_n_0\,
      S(0) => \finished0_carry__2_i_8_n_0\
    );
\finished0_carry__2_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => r_counter(30),
      I1 => r_auto_reload(30),
      I2 => r_auto_reload(31),
      I3 => r_counter(31),
      O => \finished0_carry__2_i_1_n_0\
    );
\finished0_carry__2_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => r_counter(28),
      I1 => r_auto_reload(28),
      I2 => r_auto_reload(29),
      I3 => r_counter(29),
      O => \finished0_carry__2_i_2_n_0\
    );
\finished0_carry__2_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => r_counter(26),
      I1 => r_auto_reload(26),
      I2 => r_auto_reload(27),
      I3 => r_counter(27),
      O => \finished0_carry__2_i_3_n_0\
    );
\finished0_carry__2_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => r_counter(24),
      I1 => r_auto_reload(24),
      I2 => r_auto_reload(25),
      I3 => r_counter(25),
      O => \finished0_carry__2_i_4_n_0\
    );
\finished0_carry__2_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => r_auto_reload(31),
      I1 => r_counter(31),
      I2 => r_auto_reload(30),
      I3 => r_counter(30),
      O => \finished0_carry__2_i_5_n_0\
    );
\finished0_carry__2_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => r_auto_reload(29),
      I1 => r_counter(29),
      I2 => r_auto_reload(28),
      I3 => r_counter(28),
      O => \finished0_carry__2_i_6_n_0\
    );
\finished0_carry__2_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => r_auto_reload(27),
      I1 => r_counter(27),
      I2 => r_auto_reload(26),
      I3 => r_counter(26),
      O => \finished0_carry__2_i_7_n_0\
    );
\finished0_carry__2_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => r_auto_reload(25),
      I1 => r_counter(25),
      I2 => r_auto_reload(24),
      I3 => r_counter(24),
      O => \finished0_carry__2_i_8_n_0\
    );
finished0_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => r_counter(6),
      I1 => r_auto_reload(6),
      I2 => r_auto_reload(7),
      I3 => r_counter(7),
      O => finished0_carry_i_1_n_0
    );
finished0_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => r_counter(4),
      I1 => r_auto_reload(4),
      I2 => r_auto_reload(5),
      I3 => r_counter(5),
      O => finished0_carry_i_2_n_0
    );
finished0_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => r_counter(2),
      I1 => r_auto_reload(2),
      I2 => r_auto_reload(3),
      I3 => r_counter(3),
      O => finished0_carry_i_3_n_0
    );
finished0_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => r_counter(0),
      I1 => r_auto_reload(0),
      I2 => r_auto_reload(1),
      I3 => r_counter(1),
      O => finished0_carry_i_4_n_0
    );
finished0_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => r_auto_reload(7),
      I1 => r_counter(7),
      I2 => r_auto_reload(6),
      I3 => r_counter(6),
      O => finished0_carry_i_5_n_0
    );
finished0_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => r_auto_reload(5),
      I1 => r_counter(5),
      I2 => r_auto_reload(4),
      I3 => r_counter(4),
      O => finished0_carry_i_6_n_0
    );
finished0_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => r_auto_reload(3),
      I1 => r_counter(3),
      I2 => r_auto_reload(2),
      I3 => r_counter(2),
      O => finished0_carry_i_7_n_0
    );
finished0_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => r_auto_reload(1),
      I1 => r_counter(1),
      I2 => r_auto_reload(0),
      I3 => r_counter(0),
      O => finished0_carry_i_8_n_0
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r_counter(8),
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r_counter(7),
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r_counter(6),
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r_counter(5),
      O => \i__carry__0_i_4_n_0\
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r_counter(12),
      O => \i__carry__1_i_1_n_0\
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r_counter(11),
      O => \i__carry__1_i_2_n_0\
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r_counter(10),
      O => \i__carry__1_i_3_n_0\
    );
\i__carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r_counter(9),
      O => \i__carry__1_i_4_n_0\
    );
\i__carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r_counter(16),
      O => \i__carry__2_i_1_n_0\
    );
\i__carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r_counter(15),
      O => \i__carry__2_i_2_n_0\
    );
\i__carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r_counter(14),
      O => \i__carry__2_i_3_n_0\
    );
\i__carry__2_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r_counter(13),
      O => \i__carry__2_i_4_n_0\
    );
\i__carry__3_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r_counter(20),
      O => \i__carry__3_i_1_n_0\
    );
\i__carry__3_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r_counter(19),
      O => \i__carry__3_i_2_n_0\
    );
\i__carry__3_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r_counter(18),
      O => \i__carry__3_i_3_n_0\
    );
\i__carry__3_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r_counter(17),
      O => \i__carry__3_i_4_n_0\
    );
\i__carry__4_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r_counter(24),
      O => \i__carry__4_i_1_n_0\
    );
\i__carry__4_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r_counter(23),
      O => \i__carry__4_i_2_n_0\
    );
\i__carry__4_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r_counter(22),
      O => \i__carry__4_i_3_n_0\
    );
\i__carry__4_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r_counter(21),
      O => \i__carry__4_i_4_n_0\
    );
\i__carry__5_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r_counter(28),
      O => \i__carry__5_i_1_n_0\
    );
\i__carry__5_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r_counter(27),
      O => \i__carry__5_i_2_n_0\
    );
\i__carry__5_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r_counter(26),
      O => \i__carry__5_i_3_n_0\
    );
\i__carry__5_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r_counter(25),
      O => \i__carry__5_i_4_n_0\
    );
\i__carry__6_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r_counter(31),
      O => \i__carry__6_i_1_n_0\
    );
\i__carry__6_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r_counter(30),
      O => \i__carry__6_i_2_n_0\
    );
\i__carry__6_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r_counter(29),
      O => \i__carry__6_i_3_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r_counter(4),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r_counter(3),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r_counter(2),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r_counter(1),
      O => \i__carry_i_4_n_0\
    );
\r_auto_reload_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_auto_reload_reg[31]_0\(0),
      CLR => rd_done_reg_1,
      D => D(0),
      Q => r_auto_reload(0)
    );
\r_auto_reload_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_auto_reload_reg[31]_0\(0),
      CLR => rd_done_reg_1,
      D => D(10),
      Q => r_auto_reload(10)
    );
\r_auto_reload_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_auto_reload_reg[31]_0\(0),
      CLR => rd_done_reg_1,
      D => D(11),
      Q => r_auto_reload(11)
    );
\r_auto_reload_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_auto_reload_reg[31]_0\(0),
      CLR => rd_done_reg_1,
      D => D(12),
      Q => r_auto_reload(12)
    );
\r_auto_reload_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_auto_reload_reg[31]_0\(0),
      CLR => rd_done_reg_1,
      D => D(13),
      Q => r_auto_reload(13)
    );
\r_auto_reload_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_auto_reload_reg[31]_0\(0),
      CLR => rd_done_reg_1,
      D => D(14),
      Q => r_auto_reload(14)
    );
\r_auto_reload_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_auto_reload_reg[31]_0\(0),
      CLR => rd_done_reg_1,
      D => D(15),
      Q => r_auto_reload(15)
    );
\r_auto_reload_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_auto_reload_reg[31]_0\(0),
      CLR => rd_done_reg_1,
      D => D(16),
      Q => r_auto_reload(16)
    );
\r_auto_reload_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_auto_reload_reg[31]_0\(0),
      CLR => rd_done_reg_1,
      D => D(17),
      Q => r_auto_reload(17)
    );
\r_auto_reload_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_auto_reload_reg[31]_0\(0),
      CLR => rd_done_reg_1,
      D => D(18),
      Q => r_auto_reload(18)
    );
\r_auto_reload_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_auto_reload_reg[31]_0\(0),
      CLR => rd_done_reg_1,
      D => D(19),
      Q => r_auto_reload(19)
    );
\r_auto_reload_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_auto_reload_reg[31]_0\(0),
      CLR => rd_done_reg_1,
      D => D(1),
      Q => r_auto_reload(1)
    );
\r_auto_reload_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_auto_reload_reg[31]_0\(0),
      CLR => rd_done_reg_1,
      D => D(20),
      Q => r_auto_reload(20)
    );
\r_auto_reload_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_auto_reload_reg[31]_0\(0),
      CLR => rd_done_reg_1,
      D => D(21),
      Q => r_auto_reload(21)
    );
\r_auto_reload_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_auto_reload_reg[31]_0\(0),
      CLR => rd_done_reg_1,
      D => D(22),
      Q => r_auto_reload(22)
    );
\r_auto_reload_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_auto_reload_reg[31]_0\(0),
      CLR => rd_done_reg_1,
      D => D(23),
      Q => r_auto_reload(23)
    );
\r_auto_reload_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_auto_reload_reg[31]_0\(0),
      CLR => rd_done_reg_1,
      D => D(24),
      Q => r_auto_reload(24)
    );
\r_auto_reload_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_auto_reload_reg[31]_0\(0),
      CLR => rd_done_reg_1,
      D => D(25),
      Q => r_auto_reload(25)
    );
\r_auto_reload_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_auto_reload_reg[31]_0\(0),
      CLR => rd_done_reg_1,
      D => D(26),
      Q => r_auto_reload(26)
    );
\r_auto_reload_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_auto_reload_reg[31]_0\(0),
      CLR => rd_done_reg_1,
      D => D(27),
      Q => r_auto_reload(27)
    );
\r_auto_reload_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_auto_reload_reg[31]_0\(0),
      CLR => rd_done_reg_1,
      D => D(28),
      Q => r_auto_reload(28)
    );
\r_auto_reload_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_auto_reload_reg[31]_0\(0),
      CLR => rd_done_reg_1,
      D => D(29),
      Q => r_auto_reload(29)
    );
\r_auto_reload_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_auto_reload_reg[31]_0\(0),
      CLR => rd_done_reg_1,
      D => D(2),
      Q => r_auto_reload(2)
    );
\r_auto_reload_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_auto_reload_reg[31]_0\(0),
      CLR => rd_done_reg_1,
      D => D(30),
      Q => r_auto_reload(30)
    );
\r_auto_reload_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_auto_reload_reg[31]_0\(0),
      CLR => rd_done_reg_1,
      D => D(31),
      Q => r_auto_reload(31)
    );
\r_auto_reload_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_auto_reload_reg[31]_0\(0),
      CLR => rd_done_reg_1,
      D => D(3),
      Q => r_auto_reload(3)
    );
\r_auto_reload_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_auto_reload_reg[31]_0\(0),
      CLR => rd_done_reg_1,
      D => D(4),
      Q => r_auto_reload(4)
    );
\r_auto_reload_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_auto_reload_reg[31]_0\(0),
      CLR => rd_done_reg_1,
      D => D(5),
      Q => r_auto_reload(5)
    );
\r_auto_reload_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_auto_reload_reg[31]_0\(0),
      CLR => rd_done_reg_1,
      D => D(6),
      Q => r_auto_reload(6)
    );
\r_auto_reload_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_auto_reload_reg[31]_0\(0),
      CLR => rd_done_reg_1,
      D => D(7),
      Q => r_auto_reload(7)
    );
\r_auto_reload_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_auto_reload_reg[31]_0\(0),
      CLR => rd_done_reg_1,
      D => D(8),
      Q => r_auto_reload(8)
    );
\r_auto_reload_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_auto_reload_reg[31]_0\(0),
      CLR => rd_done_reg_1,
      D => D(9),
      Q => r_auto_reload(9)
    );
\r_control[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"04FFFFFF04000000"
    )
        port map (
      I0 => \r_control_reg[0]_0\,
      I1 => S_AXI_wdata(0),
      I2 => \r_control_reg[0]_1\,
      I3 => \^q\(0),
      I4 => \r_control_reg[0]_2\,
      I5 => p_0_in(0),
      O => \r_control[0]_i_1_n_0\
    );
\r_control[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"04FFFFFF04000000"
    )
        port map (
      I0 => \r_control_reg[0]_0\,
      I1 => S_AXI_wdata(1),
      I2 => \r_control_reg[0]_1\,
      I3 => \^q\(0),
      I4 => \r_control_reg[0]_2\,
      I5 => p_0_in1_in,
      O => \r_control[1]_i_1_n_0\
    );
\r_control_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => rd_done_reg_1,
      D => \r_control[0]_i_1_n_0\,
      Q => p_0_in(0)
    );
\r_control_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => rd_done_reg_1,
      D => \r_control[1]_i_1_n_0\,
      Q => p_0_in1_in
    );
\r_counter0_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \r_counter0_inferred__0/i__carry_n_0\,
      CO(2) => \r_counter0_inferred__0/i__carry_n_1\,
      CO(1) => \r_counter0_inferred__0/i__carry_n_2\,
      CO(0) => \r_counter0_inferred__0/i__carry_n_3\,
      CYINIT => r_counter(0),
      DI(3 downto 0) => r_counter(4 downto 1),
      O(3) => \r_counter0_inferred__0/i__carry_n_4\,
      O(2) => \r_counter0_inferred__0/i__carry_n_5\,
      O(1) => \r_counter0_inferred__0/i__carry_n_6\,
      O(0) => \r_counter0_inferred__0/i__carry_n_7\,
      S(3) => \i__carry_i_1_n_0\,
      S(2) => \i__carry_i_2_n_0\,
      S(1) => \i__carry_i_3_n_0\,
      S(0) => \i__carry_i_4_n_0\
    );
\r_counter0_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_counter0_inferred__0/i__carry_n_0\,
      CO(3) => \r_counter0_inferred__0/i__carry__0_n_0\,
      CO(2) => \r_counter0_inferred__0/i__carry__0_n_1\,
      CO(1) => \r_counter0_inferred__0/i__carry__0_n_2\,
      CO(0) => \r_counter0_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => r_counter(8 downto 5),
      O(3) => \r_counter0_inferred__0/i__carry__0_n_4\,
      O(2) => \r_counter0_inferred__0/i__carry__0_n_5\,
      O(1) => \r_counter0_inferred__0/i__carry__0_n_6\,
      O(0) => \r_counter0_inferred__0/i__carry__0_n_7\,
      S(3) => \i__carry__0_i_1_n_0\,
      S(2) => \i__carry__0_i_2_n_0\,
      S(1) => \i__carry__0_i_3_n_0\,
      S(0) => \i__carry__0_i_4_n_0\
    );
\r_counter0_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_counter0_inferred__0/i__carry__0_n_0\,
      CO(3) => \r_counter0_inferred__0/i__carry__1_n_0\,
      CO(2) => \r_counter0_inferred__0/i__carry__1_n_1\,
      CO(1) => \r_counter0_inferred__0/i__carry__1_n_2\,
      CO(0) => \r_counter0_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => r_counter(12 downto 9),
      O(3) => \r_counter0_inferred__0/i__carry__1_n_4\,
      O(2) => \r_counter0_inferred__0/i__carry__1_n_5\,
      O(1) => \r_counter0_inferred__0/i__carry__1_n_6\,
      O(0) => \r_counter0_inferred__0/i__carry__1_n_7\,
      S(3) => \i__carry__1_i_1_n_0\,
      S(2) => \i__carry__1_i_2_n_0\,
      S(1) => \i__carry__1_i_3_n_0\,
      S(0) => \i__carry__1_i_4_n_0\
    );
\r_counter0_inferred__0/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_counter0_inferred__0/i__carry__1_n_0\,
      CO(3) => \r_counter0_inferred__0/i__carry__2_n_0\,
      CO(2) => \r_counter0_inferred__0/i__carry__2_n_1\,
      CO(1) => \r_counter0_inferred__0/i__carry__2_n_2\,
      CO(0) => \r_counter0_inferred__0/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => r_counter(16 downto 13),
      O(3) => \r_counter0_inferred__0/i__carry__2_n_4\,
      O(2) => \r_counter0_inferred__0/i__carry__2_n_5\,
      O(1) => \r_counter0_inferred__0/i__carry__2_n_6\,
      O(0) => \r_counter0_inferred__0/i__carry__2_n_7\,
      S(3) => \i__carry__2_i_1_n_0\,
      S(2) => \i__carry__2_i_2_n_0\,
      S(1) => \i__carry__2_i_3_n_0\,
      S(0) => \i__carry__2_i_4_n_0\
    );
\r_counter0_inferred__0/i__carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_counter0_inferred__0/i__carry__2_n_0\,
      CO(3) => \r_counter0_inferred__0/i__carry__3_n_0\,
      CO(2) => \r_counter0_inferred__0/i__carry__3_n_1\,
      CO(1) => \r_counter0_inferred__0/i__carry__3_n_2\,
      CO(0) => \r_counter0_inferred__0/i__carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => r_counter(20 downto 17),
      O(3) => \r_counter0_inferred__0/i__carry__3_n_4\,
      O(2) => \r_counter0_inferred__0/i__carry__3_n_5\,
      O(1) => \r_counter0_inferred__0/i__carry__3_n_6\,
      O(0) => \r_counter0_inferred__0/i__carry__3_n_7\,
      S(3) => \i__carry__3_i_1_n_0\,
      S(2) => \i__carry__3_i_2_n_0\,
      S(1) => \i__carry__3_i_3_n_0\,
      S(0) => \i__carry__3_i_4_n_0\
    );
\r_counter0_inferred__0/i__carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_counter0_inferred__0/i__carry__3_n_0\,
      CO(3) => \r_counter0_inferred__0/i__carry__4_n_0\,
      CO(2) => \r_counter0_inferred__0/i__carry__4_n_1\,
      CO(1) => \r_counter0_inferred__0/i__carry__4_n_2\,
      CO(0) => \r_counter0_inferred__0/i__carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => r_counter(24 downto 21),
      O(3) => \r_counter0_inferred__0/i__carry__4_n_4\,
      O(2) => \r_counter0_inferred__0/i__carry__4_n_5\,
      O(1) => \r_counter0_inferred__0/i__carry__4_n_6\,
      O(0) => \r_counter0_inferred__0/i__carry__4_n_7\,
      S(3) => \i__carry__4_i_1_n_0\,
      S(2) => \i__carry__4_i_2_n_0\,
      S(1) => \i__carry__4_i_3_n_0\,
      S(0) => \i__carry__4_i_4_n_0\
    );
\r_counter0_inferred__0/i__carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_counter0_inferred__0/i__carry__4_n_0\,
      CO(3) => \r_counter0_inferred__0/i__carry__5_n_0\,
      CO(2) => \r_counter0_inferred__0/i__carry__5_n_1\,
      CO(1) => \r_counter0_inferred__0/i__carry__5_n_2\,
      CO(0) => \r_counter0_inferred__0/i__carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => r_counter(28 downto 25),
      O(3) => \r_counter0_inferred__0/i__carry__5_n_4\,
      O(2) => \r_counter0_inferred__0/i__carry__5_n_5\,
      O(1) => \r_counter0_inferred__0/i__carry__5_n_6\,
      O(0) => \r_counter0_inferred__0/i__carry__5_n_7\,
      S(3) => \i__carry__5_i_1_n_0\,
      S(2) => \i__carry__5_i_2_n_0\,
      S(1) => \i__carry__5_i_3_n_0\,
      S(0) => \i__carry__5_i_4_n_0\
    );
\r_counter0_inferred__0/i__carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_counter0_inferred__0/i__carry__5_n_0\,
      CO(3 downto 2) => \NLW_r_counter0_inferred__0/i__carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \r_counter0_inferred__0/i__carry__6_n_2\,
      CO(0) => \r_counter0_inferred__0/i__carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => r_counter(30 downto 29),
      O(3) => \NLW_r_counter0_inferred__0/i__carry__6_O_UNCONNECTED\(3),
      O(2) => \r_counter0_inferred__0/i__carry__6_n_5\,
      O(1) => \r_counter0_inferred__0/i__carry__6_n_6\,
      O(0) => \r_counter0_inferred__0/i__carry__6_n_7\,
      S(3) => '0',
      S(2) => \i__carry__6_i_1_n_0\,
      S(1) => \i__carry__6_i_2_n_0\,
      S(0) => \i__carry__6_i_3_n_0\
    );
\r_counter[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88000800BB003B00"
    )
        port map (
      I0 => r_auto_reload(0),
      I1 => \finished__0\,
      I2 => r_eg,
      I3 => p_0_in(0),
      I4 => p_0_in1_in,
      I5 => r_counter(0),
      O => p_1_in(0)
    );
\r_counter[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA80AAAAAA80AA80"
    )
        port map (
      I0 => p_0_in(0),
      I1 => r_counter0(10),
      I2 => \r_counter16_out__0\,
      I3 => \r_counter[10]_i_2_n_0\,
      I4 => \r_counter[31]_i_7_n_0\,
      I5 => r_auto_reload(10),
      O => p_1_in(10)
    );
\r_counter[10]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08880000"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in1_in,
      I2 => \r_counter[31]_i_10_n_0\,
      I3 => \r_counter[31]_i_11_n_0\,
      I4 => \r_counter0_inferred__0/i__carry__1_n_6\,
      O => \r_counter[10]_i_2_n_0\
    );
\r_counter[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA80AAAAAA80AA80"
    )
        port map (
      I0 => p_0_in(0),
      I1 => r_counter0(11),
      I2 => \r_counter16_out__0\,
      I3 => \r_counter[11]_i_2_n_0\,
      I4 => \r_counter[31]_i_7_n_0\,
      I5 => r_auto_reload(11),
      O => p_1_in(11)
    );
\r_counter[11]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08880000"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in1_in,
      I2 => \r_counter[31]_i_10_n_0\,
      I3 => \r_counter[31]_i_11_n_0\,
      I4 => \r_counter0_inferred__0/i__carry__1_n_5\,
      O => \r_counter[11]_i_2_n_0\
    );
\r_counter[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA80AAAAAA80AA80"
    )
        port map (
      I0 => p_0_in(0),
      I1 => r_counter0(12),
      I2 => \r_counter16_out__0\,
      I3 => \r_counter[12]_i_3_n_0\,
      I4 => \r_counter[31]_i_7_n_0\,
      I5 => r_auto_reload(12),
      O => p_1_in(12)
    );
\r_counter[12]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08880000"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in1_in,
      I2 => \r_counter[31]_i_10_n_0\,
      I3 => \r_counter[31]_i_11_n_0\,
      I4 => \r_counter0_inferred__0/i__carry__1_n_4\,
      O => \r_counter[12]_i_3_n_0\
    );
\r_counter[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA80AAAAAA80AA80"
    )
        port map (
      I0 => p_0_in(0),
      I1 => r_counter0(13),
      I2 => \r_counter16_out__0\,
      I3 => \r_counter[13]_i_2_n_0\,
      I4 => \r_counter[31]_i_7_n_0\,
      I5 => r_auto_reload(13),
      O => p_1_in(13)
    );
\r_counter[13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08880000"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in1_in,
      I2 => \r_counter[31]_i_10_n_0\,
      I3 => \r_counter[31]_i_11_n_0\,
      I4 => \r_counter0_inferred__0/i__carry__2_n_7\,
      O => \r_counter[13]_i_2_n_0\
    );
\r_counter[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA80AAAAAA80AA80"
    )
        port map (
      I0 => p_0_in(0),
      I1 => r_counter0(14),
      I2 => \r_counter16_out__0\,
      I3 => \r_counter[14]_i_2_n_0\,
      I4 => \r_counter[31]_i_7_n_0\,
      I5 => r_auto_reload(14),
      O => p_1_in(14)
    );
\r_counter[14]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08880000"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in1_in,
      I2 => \r_counter[31]_i_10_n_0\,
      I3 => \r_counter[31]_i_11_n_0\,
      I4 => \r_counter0_inferred__0/i__carry__2_n_6\,
      O => \r_counter[14]_i_2_n_0\
    );
\r_counter[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA80AAAAAA80AA80"
    )
        port map (
      I0 => p_0_in(0),
      I1 => r_counter0(15),
      I2 => \r_counter16_out__0\,
      I3 => \r_counter[15]_i_2_n_0\,
      I4 => \r_counter[31]_i_7_n_0\,
      I5 => r_auto_reload(15),
      O => p_1_in(15)
    );
\r_counter[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08880000"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in1_in,
      I2 => \r_counter[31]_i_10_n_0\,
      I3 => \r_counter[31]_i_11_n_0\,
      I4 => \r_counter0_inferred__0/i__carry__2_n_5\,
      O => \r_counter[15]_i_2_n_0\
    );
\r_counter[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA80AAAAAA80AA80"
    )
        port map (
      I0 => p_0_in(0),
      I1 => r_counter0(16),
      I2 => \r_counter16_out__0\,
      I3 => \r_counter[16]_i_3_n_0\,
      I4 => \r_counter[31]_i_7_n_0\,
      I5 => r_auto_reload(16),
      O => p_1_in(16)
    );
\r_counter[16]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08880000"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in1_in,
      I2 => \r_counter[31]_i_10_n_0\,
      I3 => \r_counter[31]_i_11_n_0\,
      I4 => \r_counter0_inferred__0/i__carry__2_n_4\,
      O => \r_counter[16]_i_3_n_0\
    );
\r_counter[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA80AAAAAA80AA80"
    )
        port map (
      I0 => p_0_in(0),
      I1 => r_counter0(17),
      I2 => \r_counter16_out__0\,
      I3 => \r_counter[17]_i_2_n_0\,
      I4 => \r_counter[31]_i_7_n_0\,
      I5 => r_auto_reload(17),
      O => p_1_in(17)
    );
\r_counter[17]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08880000"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in1_in,
      I2 => \r_counter[31]_i_10_n_0\,
      I3 => \r_counter[31]_i_11_n_0\,
      I4 => \r_counter0_inferred__0/i__carry__3_n_7\,
      O => \r_counter[17]_i_2_n_0\
    );
\r_counter[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA80AAAAAA80AA80"
    )
        port map (
      I0 => p_0_in(0),
      I1 => r_counter0(18),
      I2 => \r_counter16_out__0\,
      I3 => \r_counter[18]_i_2_n_0\,
      I4 => \r_counter[31]_i_7_n_0\,
      I5 => r_auto_reload(18),
      O => p_1_in(18)
    );
\r_counter[18]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08880000"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in1_in,
      I2 => \r_counter[31]_i_10_n_0\,
      I3 => \r_counter[31]_i_11_n_0\,
      I4 => \r_counter0_inferred__0/i__carry__3_n_6\,
      O => \r_counter[18]_i_2_n_0\
    );
\r_counter[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA80AAAAAA80AA80"
    )
        port map (
      I0 => p_0_in(0),
      I1 => r_counter0(19),
      I2 => \r_counter16_out__0\,
      I3 => \r_counter[19]_i_2_n_0\,
      I4 => \r_counter[31]_i_7_n_0\,
      I5 => r_auto_reload(19),
      O => p_1_in(19)
    );
\r_counter[19]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08880000"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in1_in,
      I2 => \r_counter[31]_i_10_n_0\,
      I3 => \r_counter[31]_i_11_n_0\,
      I4 => \r_counter0_inferred__0/i__carry__3_n_5\,
      O => \r_counter[19]_i_2_n_0\
    );
\r_counter[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA80AAAAAA80AA80"
    )
        port map (
      I0 => p_0_in(0),
      I1 => r_counter0(1),
      I2 => \r_counter16_out__0\,
      I3 => \r_counter[1]_i_2_n_0\,
      I4 => \r_counter[31]_i_7_n_0\,
      I5 => r_auto_reload(1),
      O => p_1_in(1)
    );
\r_counter[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08880000"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in1_in,
      I2 => \r_counter[31]_i_10_n_0\,
      I3 => \r_counter[31]_i_11_n_0\,
      I4 => \r_counter0_inferred__0/i__carry_n_7\,
      O => \r_counter[1]_i_2_n_0\
    );
\r_counter[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA80AAAAAA80AA80"
    )
        port map (
      I0 => p_0_in(0),
      I1 => r_counter0(20),
      I2 => \r_counter16_out__0\,
      I3 => \r_counter[20]_i_3_n_0\,
      I4 => \r_counter[31]_i_7_n_0\,
      I5 => r_auto_reload(20),
      O => p_1_in(20)
    );
\r_counter[20]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08880000"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in1_in,
      I2 => \r_counter[31]_i_10_n_0\,
      I3 => \r_counter[31]_i_11_n_0\,
      I4 => \r_counter0_inferred__0/i__carry__3_n_4\,
      O => \r_counter[20]_i_3_n_0\
    );
\r_counter[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA80AAAAAA80AA80"
    )
        port map (
      I0 => p_0_in(0),
      I1 => r_counter0(21),
      I2 => \r_counter16_out__0\,
      I3 => \r_counter[21]_i_2_n_0\,
      I4 => \r_counter[31]_i_7_n_0\,
      I5 => r_auto_reload(21),
      O => p_1_in(21)
    );
\r_counter[21]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08880000"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in1_in,
      I2 => \r_counter[31]_i_10_n_0\,
      I3 => \r_counter[31]_i_11_n_0\,
      I4 => \r_counter0_inferred__0/i__carry__4_n_7\,
      O => \r_counter[21]_i_2_n_0\
    );
\r_counter[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA80AAAAAA80AA80"
    )
        port map (
      I0 => p_0_in(0),
      I1 => r_counter0(22),
      I2 => \r_counter16_out__0\,
      I3 => \r_counter[22]_i_2_n_0\,
      I4 => \r_counter[31]_i_7_n_0\,
      I5 => r_auto_reload(22),
      O => p_1_in(22)
    );
\r_counter[22]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08880000"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in1_in,
      I2 => \r_counter[31]_i_10_n_0\,
      I3 => \r_counter[31]_i_11_n_0\,
      I4 => \r_counter0_inferred__0/i__carry__4_n_6\,
      O => \r_counter[22]_i_2_n_0\
    );
\r_counter[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA80AAAAAA80AA80"
    )
        port map (
      I0 => p_0_in(0),
      I1 => r_counter0(23),
      I2 => \r_counter16_out__0\,
      I3 => \r_counter[23]_i_2_n_0\,
      I4 => \r_counter[31]_i_7_n_0\,
      I5 => r_auto_reload(23),
      O => p_1_in(23)
    );
\r_counter[23]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08880000"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in1_in,
      I2 => \r_counter[31]_i_10_n_0\,
      I3 => \r_counter[31]_i_11_n_0\,
      I4 => \r_counter0_inferred__0/i__carry__4_n_5\,
      O => \r_counter[23]_i_2_n_0\
    );
\r_counter[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA80AAAAAA80AA80"
    )
        port map (
      I0 => p_0_in(0),
      I1 => r_counter0(24),
      I2 => \r_counter16_out__0\,
      I3 => \r_counter[24]_i_3_n_0\,
      I4 => \r_counter[31]_i_7_n_0\,
      I5 => r_auto_reload(24),
      O => p_1_in(24)
    );
\r_counter[24]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08880000"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in1_in,
      I2 => \r_counter[31]_i_10_n_0\,
      I3 => \r_counter[31]_i_11_n_0\,
      I4 => \r_counter0_inferred__0/i__carry__4_n_4\,
      O => \r_counter[24]_i_3_n_0\
    );
\r_counter[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA80AAAAAA80AA80"
    )
        port map (
      I0 => p_0_in(0),
      I1 => r_counter0(25),
      I2 => \r_counter16_out__0\,
      I3 => \r_counter[25]_i_2_n_0\,
      I4 => \r_counter[31]_i_7_n_0\,
      I5 => r_auto_reload(25),
      O => p_1_in(25)
    );
\r_counter[25]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08880000"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in1_in,
      I2 => \r_counter[31]_i_10_n_0\,
      I3 => \r_counter[31]_i_11_n_0\,
      I4 => \r_counter0_inferred__0/i__carry__5_n_7\,
      O => \r_counter[25]_i_2_n_0\
    );
\r_counter[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA80AAAAAA80AA80"
    )
        port map (
      I0 => p_0_in(0),
      I1 => r_counter0(26),
      I2 => \r_counter16_out__0\,
      I3 => \r_counter[26]_i_2_n_0\,
      I4 => \r_counter[31]_i_7_n_0\,
      I5 => r_auto_reload(26),
      O => p_1_in(26)
    );
\r_counter[26]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08880000"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in1_in,
      I2 => \r_counter[31]_i_10_n_0\,
      I3 => \r_counter[31]_i_11_n_0\,
      I4 => \r_counter0_inferred__0/i__carry__5_n_6\,
      O => \r_counter[26]_i_2_n_0\
    );
\r_counter[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA80AAAAAA80AA80"
    )
        port map (
      I0 => p_0_in(0),
      I1 => r_counter0(27),
      I2 => \r_counter16_out__0\,
      I3 => \r_counter[27]_i_2_n_0\,
      I4 => \r_counter[31]_i_7_n_0\,
      I5 => r_auto_reload(27),
      O => p_1_in(27)
    );
\r_counter[27]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08880000"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in1_in,
      I2 => \r_counter[31]_i_10_n_0\,
      I3 => \r_counter[31]_i_11_n_0\,
      I4 => \r_counter0_inferred__0/i__carry__5_n_5\,
      O => \r_counter[27]_i_2_n_0\
    );
\r_counter[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA80AAAAAA80AA80"
    )
        port map (
      I0 => p_0_in(0),
      I1 => r_counter0(28),
      I2 => \r_counter16_out__0\,
      I3 => \r_counter[28]_i_3_n_0\,
      I4 => \r_counter[31]_i_7_n_0\,
      I5 => r_auto_reload(28),
      O => p_1_in(28)
    );
\r_counter[28]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08880000"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in1_in,
      I2 => \r_counter[31]_i_10_n_0\,
      I3 => \r_counter[31]_i_11_n_0\,
      I4 => \r_counter0_inferred__0/i__carry__5_n_4\,
      O => \r_counter[28]_i_3_n_0\
    );
\r_counter[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA80AAAAAA80AA80"
    )
        port map (
      I0 => p_0_in(0),
      I1 => r_counter0(29),
      I2 => \r_counter16_out__0\,
      I3 => \r_counter[29]_i_2_n_0\,
      I4 => \r_counter[31]_i_7_n_0\,
      I5 => r_auto_reload(29),
      O => p_1_in(29)
    );
\r_counter[29]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08880000"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in1_in,
      I2 => \r_counter[31]_i_10_n_0\,
      I3 => \r_counter[31]_i_11_n_0\,
      I4 => \r_counter0_inferred__0/i__carry__6_n_7\,
      O => \r_counter[29]_i_2_n_0\
    );
\r_counter[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA80AAAAAA80AA80"
    )
        port map (
      I0 => p_0_in(0),
      I1 => r_counter0(2),
      I2 => \r_counter16_out__0\,
      I3 => \r_counter[2]_i_2_n_0\,
      I4 => \r_counter[31]_i_7_n_0\,
      I5 => r_auto_reload(2),
      O => p_1_in(2)
    );
\r_counter[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08880000"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in1_in,
      I2 => \r_counter[31]_i_10_n_0\,
      I3 => \r_counter[31]_i_11_n_0\,
      I4 => \r_counter0_inferred__0/i__carry_n_6\,
      O => \r_counter[2]_i_2_n_0\
    );
\r_counter[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA80AAAAAA80AA80"
    )
        port map (
      I0 => p_0_in(0),
      I1 => r_counter0(30),
      I2 => \r_counter16_out__0\,
      I3 => \r_counter[30]_i_2_n_0\,
      I4 => \r_counter[31]_i_7_n_0\,
      I5 => r_auto_reload(30),
      O => p_1_in(30)
    );
\r_counter[30]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08880000"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in1_in,
      I2 => \r_counter[31]_i_10_n_0\,
      I3 => \r_counter[31]_i_11_n_0\,
      I4 => \r_counter0_inferred__0/i__carry__6_n_6\,
      O => \r_counter[30]_i_2_n_0\
    );
\r_counter[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => p_0_in(0),
      I1 => r_eg,
      I2 => \finished__0\,
      O => \r_counter[31]_i_1_n_0\
    );
\r_counter[31]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
        port map (
      I0 => r_counter(1),
      I1 => r_counter(0),
      I2 => p_0_in1_in,
      I3 => \r_counter[31]_i_14_n_0\,
      I4 => \r_counter[31]_i_15_n_0\,
      I5 => \r_counter[31]_i_16_n_0\,
      O => \r_counter[31]_i_10_n_0\
    );
\r_counter[31]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \r_counter[31]_i_12_n_0\,
      I1 => \r_counter[31]_i_17_n_0\,
      I2 => \r_counter[31]_i_13_n_0\,
      I3 => \r_counter[31]_i_18_n_0\,
      O => \r_counter[31]_i_11_n_0\
    );
\r_counter[31]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => r_counter(23),
      I1 => r_counter(22),
      I2 => r_counter(21),
      I3 => r_counter(20),
      O => \r_counter[31]_i_12_n_0\
    );
\r_counter[31]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => r_counter(27),
      I1 => r_counter(26),
      I2 => r_counter(25),
      I3 => r_counter(24),
      O => \r_counter[31]_i_13_n_0\
    );
\r_counter[31]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => r_counter(5),
      I1 => r_counter(4),
      I2 => r_counter(3),
      I3 => r_counter(2),
      O => \r_counter[31]_i_14_n_0\
    );
\r_counter[31]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => r_counter(9),
      I1 => r_counter(8),
      I2 => r_counter(7),
      I3 => r_counter(6),
      O => \r_counter[31]_i_15_n_0\
    );
\r_counter[31]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => r_counter(10),
      I1 => r_counter(11),
      I2 => r_counter(12),
      I3 => r_counter(13),
      I4 => r_counter(15),
      I5 => r_counter(14),
      O => \r_counter[31]_i_16_n_0\
    );
\r_counter[31]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => r_counter(17),
      I1 => r_counter(16),
      I2 => r_counter(19),
      I3 => r_counter(18),
      O => \r_counter[31]_i_17_n_0\
    );
\r_counter[31]_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => r_counter(31),
      I1 => r_counter(30),
      I2 => r_counter(29),
      I3 => r_counter(28),
      O => \r_counter[31]_i_18_n_0\
    );
\r_counter[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA80AAAAAA80AA80"
    )
        port map (
      I0 => p_0_in(0),
      I1 => r_counter0(31),
      I2 => \r_counter16_out__0\,
      I3 => \r_counter[31]_i_6_n_0\,
      I4 => \r_counter[31]_i_7_n_0\,
      I5 => r_auto_reload(31),
      O => p_1_in(31)
    );
\r_counter[31]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8080"
    )
        port map (
      I0 => \r_counter[31]_i_8_n_0\,
      I1 => \r_counter[31]_i_9_n_0\,
      I2 => \r_counter[31]_i_10_n_0\,
      I3 => p_0_in1_in,
      I4 => \finished0_carry__2_n_0\,
      O => \finished__0\
    );
\r_counter[31]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002020202020202"
    )
        port map (
      I0 => p_0_in(0),
      I1 => \finished0_carry__2_n_0\,
      I2 => p_0_in1_in,
      I3 => \r_counter[31]_i_10_n_0\,
      I4 => \r_counter[31]_i_9_n_0\,
      I5 => \r_counter[31]_i_8_n_0\,
      O => \r_counter16_out__0\
    );
\r_counter[31]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08880000"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in1_in,
      I2 => \r_counter[31]_i_10_n_0\,
      I3 => \r_counter[31]_i_11_n_0\,
      I4 => \r_counter0_inferred__0/i__carry__6_n_5\,
      O => \r_counter[31]_i_6_n_0\
    );
\r_counter[31]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4040C8CCC8CCC8CC"
    )
        port map (
      I0 => p_0_in1_in,
      I1 => p_0_in(0),
      I2 => r_eg,
      I3 => \finished0_carry__2_n_0\,
      I4 => \r_counter[31]_i_10_n_0\,
      I5 => \r_counter[31]_i_11_n_0\,
      O => \r_counter[31]_i_7_n_0\
    );
\r_counter[31]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => r_counter(18),
      I1 => r_counter(19),
      I2 => r_counter(16),
      I3 => r_counter(17),
      I4 => \r_counter[31]_i_12_n_0\,
      O => \r_counter[31]_i_8_n_0\
    );
\r_counter[31]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => r_counter(28),
      I1 => r_counter(29),
      I2 => r_counter(30),
      I3 => r_counter(31),
      I4 => \r_counter[31]_i_13_n_0\,
      O => \r_counter[31]_i_9_n_0\
    );
\r_counter[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA80AAAAAA80AA80"
    )
        port map (
      I0 => p_0_in(0),
      I1 => r_counter0(3),
      I2 => \r_counter16_out__0\,
      I3 => \r_counter[3]_i_2_n_0\,
      I4 => \r_counter[31]_i_7_n_0\,
      I5 => r_auto_reload(3),
      O => p_1_in(3)
    );
\r_counter[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08880000"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in1_in,
      I2 => \r_counter[31]_i_10_n_0\,
      I3 => \r_counter[31]_i_11_n_0\,
      I4 => \r_counter0_inferred__0/i__carry_n_5\,
      O => \r_counter[3]_i_2_n_0\
    );
\r_counter[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA80AAAAAA80AA80"
    )
        port map (
      I0 => p_0_in(0),
      I1 => r_counter0(4),
      I2 => \r_counter16_out__0\,
      I3 => \r_counter[4]_i_3_n_0\,
      I4 => \r_counter[31]_i_7_n_0\,
      I5 => r_auto_reload(4),
      O => p_1_in(4)
    );
\r_counter[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08880000"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in1_in,
      I2 => \r_counter[31]_i_10_n_0\,
      I3 => \r_counter[31]_i_11_n_0\,
      I4 => \r_counter0_inferred__0/i__carry_n_4\,
      O => \r_counter[4]_i_3_n_0\
    );
\r_counter[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA80AAAAAA80AA80"
    )
        port map (
      I0 => p_0_in(0),
      I1 => r_counter0(5),
      I2 => \r_counter16_out__0\,
      I3 => \r_counter[5]_i_2_n_0\,
      I4 => \r_counter[31]_i_7_n_0\,
      I5 => r_auto_reload(5),
      O => p_1_in(5)
    );
\r_counter[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08880000"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in1_in,
      I2 => \r_counter[31]_i_10_n_0\,
      I3 => \r_counter[31]_i_11_n_0\,
      I4 => \r_counter0_inferred__0/i__carry__0_n_7\,
      O => \r_counter[5]_i_2_n_0\
    );
\r_counter[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA80AAAAAA80AA80"
    )
        port map (
      I0 => p_0_in(0),
      I1 => r_counter0(6),
      I2 => \r_counter16_out__0\,
      I3 => \r_counter[6]_i_2_n_0\,
      I4 => \r_counter[31]_i_7_n_0\,
      I5 => r_auto_reload(6),
      O => p_1_in(6)
    );
\r_counter[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08880000"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in1_in,
      I2 => \r_counter[31]_i_10_n_0\,
      I3 => \r_counter[31]_i_11_n_0\,
      I4 => \r_counter0_inferred__0/i__carry__0_n_6\,
      O => \r_counter[6]_i_2_n_0\
    );
\r_counter[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA80AAAAAA80AA80"
    )
        port map (
      I0 => p_0_in(0),
      I1 => r_counter0(7),
      I2 => \r_counter16_out__0\,
      I3 => \r_counter[7]_i_2_n_0\,
      I4 => \r_counter[31]_i_7_n_0\,
      I5 => r_auto_reload(7),
      O => p_1_in(7)
    );
\r_counter[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08880000"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in1_in,
      I2 => \r_counter[31]_i_10_n_0\,
      I3 => \r_counter[31]_i_11_n_0\,
      I4 => \r_counter0_inferred__0/i__carry__0_n_5\,
      O => \r_counter[7]_i_2_n_0\
    );
\r_counter[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA80AAAAAA80AA80"
    )
        port map (
      I0 => p_0_in(0),
      I1 => r_counter0(8),
      I2 => \r_counter16_out__0\,
      I3 => \r_counter[8]_i_3_n_0\,
      I4 => \r_counter[31]_i_7_n_0\,
      I5 => r_auto_reload(8),
      O => p_1_in(8)
    );
\r_counter[8]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08880000"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in1_in,
      I2 => \r_counter[31]_i_10_n_0\,
      I3 => \r_counter[31]_i_11_n_0\,
      I4 => \r_counter0_inferred__0/i__carry__0_n_4\,
      O => \r_counter[8]_i_3_n_0\
    );
\r_counter[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA80AAAAAA80AA80"
    )
        port map (
      I0 => p_0_in(0),
      I1 => r_counter0(9),
      I2 => \r_counter16_out__0\,
      I3 => \r_counter[9]_i_2_n_0\,
      I4 => \r_counter[31]_i_7_n_0\,
      I5 => r_auto_reload(9),
      O => p_1_in(9)
    );
\r_counter[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08880000"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in1_in,
      I2 => \r_counter[31]_i_10_n_0\,
      I3 => \r_counter[31]_i_11_n_0\,
      I4 => \r_counter0_inferred__0/i__carry__1_n_7\,
      O => \r_counter[9]_i_2_n_0\
    );
\r_counter_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_counter[31]_i_1_n_0\,
      CLR => rd_done_reg_1,
      D => p_1_in(0),
      Q => r_counter(0)
    );
\r_counter_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_counter[31]_i_1_n_0\,
      CLR => rd_done_reg_1,
      D => p_1_in(10),
      Q => r_counter(10)
    );
\r_counter_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_counter[31]_i_1_n_0\,
      CLR => rd_done_reg_1,
      D => p_1_in(11),
      Q => r_counter(11)
    );
\r_counter_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_counter[31]_i_1_n_0\,
      CLR => rd_done_reg_1,
      D => p_1_in(12),
      Q => r_counter(12)
    );
\r_counter_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_counter_reg[8]_i_2_n_0\,
      CO(3) => \r_counter_reg[12]_i_2_n_0\,
      CO(2) => \r_counter_reg[12]_i_2_n_1\,
      CO(1) => \r_counter_reg[12]_i_2_n_2\,
      CO(0) => \r_counter_reg[12]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => r_counter0(12 downto 9),
      S(3 downto 0) => r_counter(12 downto 9)
    );
\r_counter_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_counter[31]_i_1_n_0\,
      CLR => rd_done_reg_1,
      D => p_1_in(13),
      Q => r_counter(13)
    );
\r_counter_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_counter[31]_i_1_n_0\,
      CLR => rd_done_reg_1,
      D => p_1_in(14),
      Q => r_counter(14)
    );
\r_counter_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_counter[31]_i_1_n_0\,
      CLR => rd_done_reg_1,
      D => p_1_in(15),
      Q => r_counter(15)
    );
\r_counter_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_counter[31]_i_1_n_0\,
      CLR => rd_done_reg_1,
      D => p_1_in(16),
      Q => r_counter(16)
    );
\r_counter_reg[16]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_counter_reg[12]_i_2_n_0\,
      CO(3) => \r_counter_reg[16]_i_2_n_0\,
      CO(2) => \r_counter_reg[16]_i_2_n_1\,
      CO(1) => \r_counter_reg[16]_i_2_n_2\,
      CO(0) => \r_counter_reg[16]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => r_counter0(16 downto 13),
      S(3 downto 0) => r_counter(16 downto 13)
    );
\r_counter_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_counter[31]_i_1_n_0\,
      CLR => rd_done_reg_1,
      D => p_1_in(17),
      Q => r_counter(17)
    );
\r_counter_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_counter[31]_i_1_n_0\,
      CLR => rd_done_reg_1,
      D => p_1_in(18),
      Q => r_counter(18)
    );
\r_counter_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_counter[31]_i_1_n_0\,
      CLR => rd_done_reg_1,
      D => p_1_in(19),
      Q => r_counter(19)
    );
\r_counter_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_counter[31]_i_1_n_0\,
      CLR => rd_done_reg_1,
      D => p_1_in(1),
      Q => r_counter(1)
    );
\r_counter_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_counter[31]_i_1_n_0\,
      CLR => rd_done_reg_1,
      D => p_1_in(20),
      Q => r_counter(20)
    );
\r_counter_reg[20]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_counter_reg[16]_i_2_n_0\,
      CO(3) => \r_counter_reg[20]_i_2_n_0\,
      CO(2) => \r_counter_reg[20]_i_2_n_1\,
      CO(1) => \r_counter_reg[20]_i_2_n_2\,
      CO(0) => \r_counter_reg[20]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => r_counter0(20 downto 17),
      S(3 downto 0) => r_counter(20 downto 17)
    );
\r_counter_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_counter[31]_i_1_n_0\,
      CLR => rd_done_reg_1,
      D => p_1_in(21),
      Q => r_counter(21)
    );
\r_counter_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_counter[31]_i_1_n_0\,
      CLR => rd_done_reg_1,
      D => p_1_in(22),
      Q => r_counter(22)
    );
\r_counter_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_counter[31]_i_1_n_0\,
      CLR => rd_done_reg_1,
      D => p_1_in(23),
      Q => r_counter(23)
    );
\r_counter_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_counter[31]_i_1_n_0\,
      CLR => rd_done_reg_1,
      D => p_1_in(24),
      Q => r_counter(24)
    );
\r_counter_reg[24]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_counter_reg[20]_i_2_n_0\,
      CO(3) => \r_counter_reg[24]_i_2_n_0\,
      CO(2) => \r_counter_reg[24]_i_2_n_1\,
      CO(1) => \r_counter_reg[24]_i_2_n_2\,
      CO(0) => \r_counter_reg[24]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => r_counter0(24 downto 21),
      S(3 downto 0) => r_counter(24 downto 21)
    );
\r_counter_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_counter[31]_i_1_n_0\,
      CLR => rd_done_reg_1,
      D => p_1_in(25),
      Q => r_counter(25)
    );
\r_counter_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_counter[31]_i_1_n_0\,
      CLR => rd_done_reg_1,
      D => p_1_in(26),
      Q => r_counter(26)
    );
\r_counter_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_counter[31]_i_1_n_0\,
      CLR => rd_done_reg_1,
      D => p_1_in(27),
      Q => r_counter(27)
    );
\r_counter_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_counter[31]_i_1_n_0\,
      CLR => rd_done_reg_1,
      D => p_1_in(28),
      Q => r_counter(28)
    );
\r_counter_reg[28]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_counter_reg[24]_i_2_n_0\,
      CO(3) => \r_counter_reg[28]_i_2_n_0\,
      CO(2) => \r_counter_reg[28]_i_2_n_1\,
      CO(1) => \r_counter_reg[28]_i_2_n_2\,
      CO(0) => \r_counter_reg[28]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => r_counter0(28 downto 25),
      S(3 downto 0) => r_counter(28 downto 25)
    );
\r_counter_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_counter[31]_i_1_n_0\,
      CLR => rd_done_reg_1,
      D => p_1_in(29),
      Q => r_counter(29)
    );
\r_counter_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_counter[31]_i_1_n_0\,
      CLR => rd_done_reg_1,
      D => p_1_in(2),
      Q => r_counter(2)
    );
\r_counter_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_counter[31]_i_1_n_0\,
      CLR => rd_done_reg_1,
      D => p_1_in(30),
      Q => r_counter(30)
    );
\r_counter_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_counter[31]_i_1_n_0\,
      CLR => rd_done_reg_1,
      D => p_1_in(31),
      Q => r_counter(31)
    );
\r_counter_reg[31]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_counter_reg[28]_i_2_n_0\,
      CO(3 downto 2) => \NLW_r_counter_reg[31]_i_4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \r_counter_reg[31]_i_4_n_2\,
      CO(0) => \r_counter_reg[31]_i_4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_r_counter_reg[31]_i_4_O_UNCONNECTED\(3),
      O(2 downto 0) => r_counter0(31 downto 29),
      S(3) => '0',
      S(2 downto 0) => r_counter(31 downto 29)
    );
\r_counter_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_counter[31]_i_1_n_0\,
      CLR => rd_done_reg_1,
      D => p_1_in(3),
      Q => r_counter(3)
    );
\r_counter_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_counter[31]_i_1_n_0\,
      CLR => rd_done_reg_1,
      D => p_1_in(4),
      Q => r_counter(4)
    );
\r_counter_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \r_counter_reg[4]_i_2_n_0\,
      CO(2) => \r_counter_reg[4]_i_2_n_1\,
      CO(1) => \r_counter_reg[4]_i_2_n_2\,
      CO(0) => \r_counter_reg[4]_i_2_n_3\,
      CYINIT => r_counter(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => r_counter0(4 downto 1),
      S(3 downto 0) => r_counter(4 downto 1)
    );
\r_counter_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_counter[31]_i_1_n_0\,
      CLR => rd_done_reg_1,
      D => p_1_in(5),
      Q => r_counter(5)
    );
\r_counter_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_counter[31]_i_1_n_0\,
      CLR => rd_done_reg_1,
      D => p_1_in(6),
      Q => r_counter(6)
    );
\r_counter_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_counter[31]_i_1_n_0\,
      CLR => rd_done_reg_1,
      D => p_1_in(7),
      Q => r_counter(7)
    );
\r_counter_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_counter[31]_i_1_n_0\,
      CLR => rd_done_reg_1,
      D => p_1_in(8),
      Q => r_counter(8)
    );
\r_counter_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_counter_reg[4]_i_2_n_0\,
      CO(3) => \r_counter_reg[8]_i_2_n_0\,
      CO(2) => \r_counter_reg[8]_i_2_n_1\,
      CO(1) => \r_counter_reg[8]_i_2_n_2\,
      CO(0) => \r_counter_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => r_counter0(8 downto 5),
      S(3 downto 0) => r_counter(8 downto 5)
    );
\r_counter_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_counter[31]_i_1_n_0\,
      CLR => rd_done_reg_1,
      D => p_1_in(9),
      Q => r_counter(9)
    );
r_eg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => D(0),
      I1 => r_eg_reg_0(0),
      I2 => S_AXI_wvalid,
      I3 => r_eg_reg_1,
      I4 => r_eg_i_3_n_0,
      I5 => r_eg,
      O => r_eg_i_1_n_0
    );
r_eg_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(0),
      I1 => r_eg_reg_0(2),
      O => r_eg_i_3_n_0
    );
r_eg_reg: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => rd_done_reg_1,
      D => r_eg_i_1_n_0,
      Q => r_eg
    );
\r_status[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FE"
    )
        port map (
      I0 => \^q\(0),
      I1 => \FSM_onehot_r_state_reg_n_0_[0]\,
      I2 => \^q\(1),
      I3 => \w_en__0\,
      O => w_status(4)
    );
\r_status_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => rd_done_reg_1,
      D => w_status(4),
      Q => slot_idle(0)
    );
\rd_data_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => rd_done_reg_1,
      D => w_rd_data(0),
      Q => \rd_data_reg[31]_0\(0)
    );
\rd_data_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => rd_done_reg_1,
      D => w_rd_data(10),
      Q => \rd_data_reg[31]_0\(10)
    );
\rd_data_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => rd_done_reg_1,
      D => w_rd_data(11),
      Q => \rd_data_reg[31]_0\(11)
    );
\rd_data_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => rd_done_reg_1,
      D => w_rd_data(12),
      Q => \rd_data_reg[31]_0\(12)
    );
\rd_data_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => rd_done_reg_1,
      D => w_rd_data(13),
      Q => \rd_data_reg[31]_0\(13)
    );
\rd_data_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => rd_done_reg_1,
      D => w_rd_data(14),
      Q => \rd_data_reg[31]_0\(14)
    );
\rd_data_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => rd_done_reg_1,
      D => w_rd_data(15),
      Q => \rd_data_reg[31]_0\(15)
    );
\rd_data_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => rd_done_reg_1,
      D => w_rd_data(16),
      Q => \rd_data_reg[31]_0\(16)
    );
\rd_data_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => rd_done_reg_1,
      D => w_rd_data(17),
      Q => \rd_data_reg[31]_0\(17)
    );
\rd_data_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => rd_done_reg_1,
      D => w_rd_data(18),
      Q => \rd_data_reg[31]_0\(18)
    );
\rd_data_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => rd_done_reg_1,
      D => w_rd_data(19),
      Q => \rd_data_reg[31]_0\(19)
    );
\rd_data_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => rd_done_reg_1,
      D => w_rd_data(1),
      Q => \rd_data_reg[31]_0\(1)
    );
\rd_data_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => rd_done_reg_1,
      D => w_rd_data(20),
      Q => \rd_data_reg[31]_0\(20)
    );
\rd_data_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => rd_done_reg_1,
      D => w_rd_data(21),
      Q => \rd_data_reg[31]_0\(21)
    );
\rd_data_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => rd_done_reg_1,
      D => w_rd_data(22),
      Q => \rd_data_reg[31]_0\(22)
    );
\rd_data_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => rd_done_reg_1,
      D => w_rd_data(23),
      Q => \rd_data_reg[31]_0\(23)
    );
\rd_data_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => rd_done_reg_1,
      D => w_rd_data(24),
      Q => \rd_data_reg[31]_0\(24)
    );
\rd_data_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => rd_done_reg_1,
      D => w_rd_data(25),
      Q => \rd_data_reg[31]_0\(25)
    );
\rd_data_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => rd_done_reg_1,
      D => w_rd_data(26),
      Q => \rd_data_reg[31]_0\(26)
    );
\rd_data_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => rd_done_reg_1,
      D => w_rd_data(27),
      Q => \rd_data_reg[31]_0\(27)
    );
\rd_data_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => rd_done_reg_1,
      D => w_rd_data(28),
      Q => \rd_data_reg[31]_0\(28)
    );
\rd_data_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => rd_done_reg_1,
      D => w_rd_data(29),
      Q => \rd_data_reg[31]_0\(29)
    );
\rd_data_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => rd_done_reg_1,
      D => w_rd_data(2),
      Q => \rd_data_reg[31]_0\(2)
    );
\rd_data_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => rd_done_reg_1,
      D => w_rd_data(30),
      Q => \rd_data_reg[31]_0\(30)
    );
\rd_data_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => rd_done_reg_1,
      D => w_rd_data(31),
      Q => \rd_data_reg[31]_0\(31)
    );
\rd_data_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => rd_done_reg_1,
      D => w_rd_data(3),
      Q => \rd_data_reg[31]_0\(3)
    );
\rd_data_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => rd_done_reg_1,
      D => w_rd_data(4),
      Q => \rd_data_reg[31]_0\(4)
    );
\rd_data_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => rd_done_reg_1,
      D => w_rd_data(5),
      Q => \rd_data_reg[31]_0\(5)
    );
\rd_data_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => rd_done_reg_1,
      D => w_rd_data(6),
      Q => \rd_data_reg[31]_0\(6)
    );
\rd_data_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => rd_done_reg_1,
      D => w_rd_data(7),
      Q => \rd_data_reg[31]_0\(7)
    );
\rd_data_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => rd_done_reg_1,
      D => w_rd_data(8),
      Q => \rd_data_reg[31]_0\(8)
    );
\rd_data_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => rd_done_reg_1,
      D => w_rd_data(9),
      Q => \rd_data_reg[31]_0\(9)
    );
rd_done_reg: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => rd_done_reg_1,
      D => w_rd_done,
      Q => slot_rd_done(0)
    );
slave_error_reg: unisim.vcomponents.FDPE
     port map (
      C => aclk,
      CE => '1',
      D => w_slave_error,
      PRE => rd_done_reg_1,
      Q => \^slot_slave_error\(0)
    );
w_decode_error_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => w_decode_error_reg_i_1_n_0,
      G => \w_decode_error__0\,
      GE => '1',
      Q => w_decode_error
    );
w_decode_error_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \^slot_decode_error\(0),
      I1 => \^q\(1),
      I2 => \^q\(0),
      O => w_decode_error_reg_i_1_n_0
    );
\w_rd_data_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \w_rd_data_reg[0]_i_1_n_0\,
      G => E(0),
      GE => '1',
      Q => w_rd_data(0)
    );
\w_rd_data_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => r_auto_reload(0),
      I1 => r_eg,
      I2 => r_eg_reg_0(1),
      I3 => r_eg_reg_0(0),
      I4 => r_counter(0),
      I5 => p_0_in(0),
      O => \w_rd_data_reg[0]_i_1_n_0\
    );
\w_rd_data_reg[10]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \w_rd_data_reg[10]_i_1_n_0\,
      G => E(0),
      GE => '1',
      Q => w_rd_data(10)
    );
\w_rd_data_reg[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => r_auto_reload(10),
      I1 => r_counter(10),
      I2 => r_eg_reg_0(0),
      I3 => r_eg_reg_0(1),
      O => \w_rd_data_reg[10]_i_1_n_0\
    );
\w_rd_data_reg[11]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \w_rd_data_reg[11]_i_1_n_0\,
      G => E(0),
      GE => '1',
      Q => w_rd_data(11)
    );
\w_rd_data_reg[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => r_auto_reload(11),
      I1 => r_counter(11),
      I2 => r_eg_reg_0(0),
      I3 => r_eg_reg_0(1),
      O => \w_rd_data_reg[11]_i_1_n_0\
    );
\w_rd_data_reg[12]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \w_rd_data_reg[12]_i_1_n_0\,
      G => E(0),
      GE => '1',
      Q => w_rd_data(12)
    );
\w_rd_data_reg[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => r_auto_reload(12),
      I1 => r_counter(12),
      I2 => r_eg_reg_0(0),
      I3 => r_eg_reg_0(1),
      O => \w_rd_data_reg[12]_i_1_n_0\
    );
\w_rd_data_reg[13]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \w_rd_data_reg[13]_i_1_n_0\,
      G => E(0),
      GE => '1',
      Q => w_rd_data(13)
    );
\w_rd_data_reg[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => r_auto_reload(13),
      I1 => r_counter(13),
      I2 => r_eg_reg_0(0),
      I3 => r_eg_reg_0(1),
      O => \w_rd_data_reg[13]_i_1_n_0\
    );
\w_rd_data_reg[14]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \w_rd_data_reg[14]_i_1_n_0\,
      G => E(0),
      GE => '1',
      Q => w_rd_data(14)
    );
\w_rd_data_reg[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => r_auto_reload(14),
      I1 => r_counter(14),
      I2 => r_eg_reg_0(0),
      I3 => r_eg_reg_0(1),
      O => \w_rd_data_reg[14]_i_1_n_0\
    );
\w_rd_data_reg[15]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \w_rd_data_reg[15]_i_1_n_0\,
      G => E(0),
      GE => '1',
      Q => w_rd_data(15)
    );
\w_rd_data_reg[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => r_auto_reload(15),
      I1 => r_counter(15),
      I2 => r_eg_reg_0(0),
      I3 => r_eg_reg_0(1),
      O => \w_rd_data_reg[15]_i_1_n_0\
    );
\w_rd_data_reg[16]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \w_rd_data_reg[16]_i_1_n_0\,
      G => E(0),
      GE => '1',
      Q => w_rd_data(16)
    );
\w_rd_data_reg[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => r_auto_reload(16),
      I1 => r_counter(16),
      I2 => r_eg_reg_0(0),
      I3 => r_eg_reg_0(1),
      O => \w_rd_data_reg[16]_i_1_n_0\
    );
\w_rd_data_reg[17]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \w_rd_data_reg[17]_i_1_n_0\,
      G => E(0),
      GE => '1',
      Q => w_rd_data(17)
    );
\w_rd_data_reg[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => r_auto_reload(17),
      I1 => r_counter(17),
      I2 => r_eg_reg_0(0),
      I3 => r_eg_reg_0(1),
      O => \w_rd_data_reg[17]_i_1_n_0\
    );
\w_rd_data_reg[18]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \w_rd_data_reg[18]_i_1_n_0\,
      G => E(0),
      GE => '1',
      Q => w_rd_data(18)
    );
\w_rd_data_reg[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => r_auto_reload(18),
      I1 => r_counter(18),
      I2 => r_eg_reg_0(0),
      I3 => r_eg_reg_0(1),
      O => \w_rd_data_reg[18]_i_1_n_0\
    );
\w_rd_data_reg[19]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \w_rd_data_reg[19]_i_1_n_0\,
      G => E(0),
      GE => '1',
      Q => w_rd_data(19)
    );
\w_rd_data_reg[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => r_auto_reload(19),
      I1 => r_counter(19),
      I2 => r_eg_reg_0(0),
      I3 => r_eg_reg_0(1),
      O => \w_rd_data_reg[19]_i_1_n_0\
    );
\w_rd_data_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \w_rd_data_reg[1]_i_1_n_0\,
      G => E(0),
      GE => '1',
      Q => w_rd_data(1)
    );
\w_rd_data_reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => r_counter(1),
      I1 => p_0_in1_in,
      I2 => r_auto_reload(1),
      I3 => r_eg_reg_0(0),
      I4 => r_eg_reg_0(1),
      O => \w_rd_data_reg[1]_i_1_n_0\
    );
\w_rd_data_reg[20]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \w_rd_data_reg[20]_i_1_n_0\,
      G => E(0),
      GE => '1',
      Q => w_rd_data(20)
    );
\w_rd_data_reg[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => r_auto_reload(20),
      I1 => r_counter(20),
      I2 => r_eg_reg_0(0),
      I3 => r_eg_reg_0(1),
      O => \w_rd_data_reg[20]_i_1_n_0\
    );
\w_rd_data_reg[21]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \w_rd_data_reg[21]_i_1_n_0\,
      G => E(0),
      GE => '1',
      Q => w_rd_data(21)
    );
\w_rd_data_reg[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => r_auto_reload(21),
      I1 => r_counter(21),
      I2 => r_eg_reg_0(0),
      I3 => r_eg_reg_0(1),
      O => \w_rd_data_reg[21]_i_1_n_0\
    );
\w_rd_data_reg[22]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \w_rd_data_reg[22]_i_1_n_0\,
      G => E(0),
      GE => '1',
      Q => w_rd_data(22)
    );
\w_rd_data_reg[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => r_auto_reload(22),
      I1 => r_counter(22),
      I2 => r_eg_reg_0(0),
      I3 => r_eg_reg_0(1),
      O => \w_rd_data_reg[22]_i_1_n_0\
    );
\w_rd_data_reg[23]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \w_rd_data_reg[23]_i_1_n_0\,
      G => E(0),
      GE => '1',
      Q => w_rd_data(23)
    );
\w_rd_data_reg[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => r_auto_reload(23),
      I1 => r_counter(23),
      I2 => r_eg_reg_0(0),
      I3 => r_eg_reg_0(1),
      O => \w_rd_data_reg[23]_i_1_n_0\
    );
\w_rd_data_reg[24]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \w_rd_data_reg[24]_i_1_n_0\,
      G => E(0),
      GE => '1',
      Q => w_rd_data(24)
    );
\w_rd_data_reg[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => r_auto_reload(24),
      I1 => r_counter(24),
      I2 => r_eg_reg_0(0),
      I3 => r_eg_reg_0(1),
      O => \w_rd_data_reg[24]_i_1_n_0\
    );
\w_rd_data_reg[25]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \w_rd_data_reg[25]_i_1_n_0\,
      G => E(0),
      GE => '1',
      Q => w_rd_data(25)
    );
\w_rd_data_reg[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => r_auto_reload(25),
      I1 => r_counter(25),
      I2 => r_eg_reg_0(0),
      I3 => r_eg_reg_0(1),
      O => \w_rd_data_reg[25]_i_1_n_0\
    );
\w_rd_data_reg[26]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \w_rd_data_reg[26]_i_1_n_0\,
      G => E(0),
      GE => '1',
      Q => w_rd_data(26)
    );
\w_rd_data_reg[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => r_auto_reload(26),
      I1 => r_counter(26),
      I2 => r_eg_reg_0(0),
      I3 => r_eg_reg_0(1),
      O => \w_rd_data_reg[26]_i_1_n_0\
    );
\w_rd_data_reg[27]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \w_rd_data_reg[27]_i_1_n_0\,
      G => E(0),
      GE => '1',
      Q => w_rd_data(27)
    );
\w_rd_data_reg[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => r_auto_reload(27),
      I1 => r_counter(27),
      I2 => r_eg_reg_0(0),
      I3 => r_eg_reg_0(1),
      O => \w_rd_data_reg[27]_i_1_n_0\
    );
\w_rd_data_reg[28]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \w_rd_data_reg[28]_i_1_n_0\,
      G => E(0),
      GE => '1',
      Q => w_rd_data(28)
    );
\w_rd_data_reg[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => r_auto_reload(28),
      I1 => r_counter(28),
      I2 => r_eg_reg_0(0),
      I3 => r_eg_reg_0(1),
      O => \w_rd_data_reg[28]_i_1_n_0\
    );
\w_rd_data_reg[29]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \w_rd_data_reg[29]_i_1_n_0\,
      G => E(0),
      GE => '1',
      Q => w_rd_data(29)
    );
\w_rd_data_reg[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => r_auto_reload(29),
      I1 => r_counter(29),
      I2 => r_eg_reg_0(0),
      I3 => r_eg_reg_0(1),
      O => \w_rd_data_reg[29]_i_1_n_0\
    );
\w_rd_data_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \w_rd_data_reg[2]_i_1_n_0\,
      G => E(0),
      GE => '1',
      Q => w_rd_data(2)
    );
\w_rd_data_reg[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => r_auto_reload(2),
      I1 => r_counter(2),
      I2 => r_eg_reg_0(0),
      I3 => r_eg_reg_0(1),
      O => \w_rd_data_reg[2]_i_1_n_0\
    );
\w_rd_data_reg[30]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \w_rd_data_reg[30]_i_1_n_0\,
      G => E(0),
      GE => '1',
      Q => w_rd_data(30)
    );
\w_rd_data_reg[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => r_auto_reload(30),
      I1 => r_counter(30),
      I2 => r_eg_reg_0(0),
      I3 => r_eg_reg_0(1),
      O => \w_rd_data_reg[30]_i_1_n_0\
    );
\w_rd_data_reg[31]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \w_rd_data_reg[31]_i_1_n_0\,
      G => E(0),
      GE => '1',
      Q => w_rd_data(31)
    );
\w_rd_data_reg[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => r_auto_reload(31),
      I1 => r_counter(31),
      I2 => r_eg_reg_0(0),
      I3 => r_eg_reg_0(1),
      O => \w_rd_data_reg[31]_i_1_n_0\
    );
\w_rd_data_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \w_rd_data_reg[3]_i_1_n_0\,
      G => E(0),
      GE => '1',
      Q => w_rd_data(3)
    );
\w_rd_data_reg[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => r_auto_reload(3),
      I1 => r_counter(3),
      I2 => r_eg_reg_0(0),
      I3 => r_eg_reg_0(1),
      O => \w_rd_data_reg[3]_i_1_n_0\
    );
\w_rd_data_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \w_rd_data_reg[4]_i_1_n_0\,
      G => E(0),
      GE => '1',
      Q => w_rd_data(4)
    );
\w_rd_data_reg[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => r_auto_reload(4),
      I1 => r_counter(4),
      I2 => r_eg_reg_0(0),
      I3 => r_eg_reg_0(1),
      O => \w_rd_data_reg[4]_i_1_n_0\
    );
\w_rd_data_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \w_rd_data_reg[5]_i_1_n_0\,
      G => E(0),
      GE => '1',
      Q => w_rd_data(5)
    );
\w_rd_data_reg[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => r_auto_reload(5),
      I1 => r_counter(5),
      I2 => r_eg_reg_0(0),
      I3 => r_eg_reg_0(1),
      O => \w_rd_data_reg[5]_i_1_n_0\
    );
\w_rd_data_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \w_rd_data_reg[6]_i_1_n_0\,
      G => E(0),
      GE => '1',
      Q => w_rd_data(6)
    );
\w_rd_data_reg[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => r_auto_reload(6),
      I1 => r_counter(6),
      I2 => r_eg_reg_0(0),
      I3 => r_eg_reg_0(1),
      O => \w_rd_data_reg[6]_i_1_n_0\
    );
\w_rd_data_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \w_rd_data_reg[7]_i_1_n_0\,
      G => E(0),
      GE => '1',
      Q => w_rd_data(7)
    );
\w_rd_data_reg[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => r_auto_reload(7),
      I1 => r_counter(7),
      I2 => r_eg_reg_0(0),
      I3 => r_eg_reg_0(1),
      O => \w_rd_data_reg[7]_i_1_n_0\
    );
\w_rd_data_reg[8]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \w_rd_data_reg[8]_i_1_n_0\,
      G => E(0),
      GE => '1',
      Q => w_rd_data(8)
    );
\w_rd_data_reg[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => r_auto_reload(8),
      I1 => r_counter(8),
      I2 => r_eg_reg_0(0),
      I3 => r_eg_reg_0(1),
      O => \w_rd_data_reg[8]_i_1_n_0\
    );
\w_rd_data_reg[9]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \w_rd_data_reg[9]_i_1_n_0\,
      G => E(0),
      GE => '1',
      Q => w_rd_data(9)
    );
\w_rd_data_reg[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => r_auto_reload(9),
      I1 => r_counter(9),
      I2 => r_eg_reg_0(0),
      I3 => r_eg_reg_0(1),
      O => \w_rd_data_reg[9]_i_1_n_0\
    );
w_rd_done_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => rd_done_reg_0,
      G => \w_rd_done__0\,
      GE => '1',
      Q => w_rd_done
    );
w_slave_error_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => w_slave_error_reg_i_1_n_0,
      G => \w_slave_error__0\,
      GE => '1',
      Q => w_slave_error
    );
w_slave_error_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_r_state_reg_n_0_[0]\,
      I1 => \^q\(1),
      I2 => \^slot_slave_error\(0),
      I3 => S_AXI_wvalid,
      I4 => \^q\(0),
      O => w_slave_error_reg_i_1_n_0
    );
\wr_done_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(0),
      I1 => S_AXI_wvalid,
      O => w_wr_done
    );
wr_done_reg: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => rd_done_reg_1,
      D => w_wr_done,
      Q => slot_wr_done(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tx is
  port (
    \FSM_sequential_r_state_reg[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    tx : out STD_LOGIC;
    \FSM_sequential_r_state_reg[0]_0\ : out STD_LOGIC;
    w_en_wr : in STD_LOGIC;
    \r_wr_logic_reg[0]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \r_rd_logic_reg[0]\ : in STD_LOGIC;
    tick : in STD_LOGIC;
    \r_reg_array__0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    aclk : in STD_LOGIC;
    \r_in_shift_reg[7]_0\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tx;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tx is
  signal \FSM_sequential_r_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_r_state[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_r_state[0]_i_4_n_0\ : STD_LOGIC;
  signal r_data_bits_sent : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \r_in_shift[7]_i_1_n_0\ : STD_LOGIC;
  signal \r_in_shift_reg_n_0_[0]\ : STD_LOGIC;
  signal \r_in_shift_reg_n_0_[1]\ : STD_LOGIC;
  signal \r_in_shift_reg_n_0_[2]\ : STD_LOGIC;
  signal \r_in_shift_reg_n_0_[3]\ : STD_LOGIC;
  signal \r_in_shift_reg_n_0_[4]\ : STD_LOGIC;
  signal \r_in_shift_reg_n_0_[5]\ : STD_LOGIC;
  signal \r_in_shift_reg_n_0_[6]\ : STD_LOGIC;
  signal \r_in_shift_reg_n_0_[7]\ : STD_LOGIC;
  signal \r_sampling_ticks[3]_i_2_n_0\ : STD_LOGIC;
  signal \r_sampling_ticks_reg_n_0_[0]\ : STD_LOGIC;
  signal \r_sampling_ticks_reg_n_0_[1]\ : STD_LOGIC;
  signal \r_sampling_ticks_reg_n_0_[2]\ : STD_LOGIC;
  signal \r_sampling_ticks_reg_n_0_[3]\ : STD_LOGIC;
  signal r_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal w_in_shift : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal w_next_data_bits_sent : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal w_next_sampling_ticks : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal w_next_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_r_state[0]_i_3\ : label is "soft_lutpair58";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_r_state_reg[0]\ : label is "START:01,DATA:10,STOP:11,IDLE:00";
  attribute FSM_ENCODED_STATES of \FSM_sequential_r_state_reg[1]\ : label is "START:01,DATA:10,STOP:11,IDLE:00";
  attribute SOFT_HLUTNM of \empty_i_3__0\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \r_data_bits_sent[0]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \r_data_bits_sent[1]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \r_data_bits_sent[2]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \r_in_shift[0]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \r_in_shift[1]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \r_in_shift[2]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \r_in_shift[3]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \r_in_shift[4]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \r_in_shift[5]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \r_in_shift[6]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \r_in_shift[7]_i_2\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \r_rd_logic[3]_i_1__0\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \r_wr_logic[3]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of tx_INST_0 : label is "soft_lutpair57";
begin
\FSM_sequential_r_state[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA002AA02AA02"
    )
        port map (
      I0 => \FSM_sequential_r_state[0]_i_2_n_0\,
      I1 => \r_rd_logic_reg[0]\,
      I2 => r_state(1),
      I3 => r_state(0),
      I4 => \FSM_sequential_r_state[0]_i_3_n_0\,
      I5 => \FSM_sequential_r_state[0]_i_4_n_0\,
      O => w_next_state(0)
    );
\FSM_sequential_r_state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \r_sampling_ticks_reg_n_0_[3]\,
      I1 => \r_sampling_ticks_reg_n_0_[2]\,
      I2 => \r_sampling_ticks_reg_n_0_[1]\,
      I3 => \r_sampling_ticks_reg_n_0_[0]\,
      I4 => r_state(0),
      I5 => r_state(1),
      O => \FSM_sequential_r_state[0]_i_2_n_0\
    );
\FSM_sequential_r_state[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => r_data_bits_sent(1),
      I1 => r_data_bits_sent(0),
      I2 => r_state(1),
      I3 => r_data_bits_sent(2),
      O => \FSM_sequential_r_state[0]_i_3_n_0\
    );
\FSM_sequential_r_state[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \r_sampling_ticks_reg_n_0_[1]\,
      I1 => \r_sampling_ticks_reg_n_0_[0]\,
      I2 => \r_sampling_ticks_reg_n_0_[3]\,
      I3 => \r_sampling_ticks_reg_n_0_[2]\,
      O => \FSM_sequential_r_state[0]_i_4_n_0\
    );
\FSM_sequential_r_state[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => r_state(1),
      I1 => \r_sampling_ticks_reg_n_0_[3]\,
      I2 => \r_sampling_ticks_reg_n_0_[2]\,
      I3 => \r_sampling_ticks_reg_n_0_[1]\,
      I4 => \r_sampling_ticks_reg_n_0_[0]\,
      I5 => r_state(0),
      O => w_next_state(1)
    );
\FSM_sequential_r_state_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \r_in_shift_reg[7]_0\,
      D => w_next_state(0),
      Q => r_state(0)
    );
\FSM_sequential_r_state_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \r_in_shift_reg[7]_0\,
      D => w_next_state(1),
      Q => r_state(1)
    );
\empty_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => r_state(0),
      I1 => r_state(1),
      O => \FSM_sequential_r_state_reg[0]_0\
    );
\r_data_bits_sent[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => r_state(1),
      I1 => r_data_bits_sent(0),
      O => w_next_data_bits_sent(0)
    );
\r_data_bits_sent[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"48"
    )
        port map (
      I0 => r_data_bits_sent(0),
      I1 => r_state(1),
      I2 => r_data_bits_sent(1),
      O => w_next_data_bits_sent(1)
    );
\r_data_bits_sent[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7080"
    )
        port map (
      I0 => r_data_bits_sent(1),
      I1 => r_data_bits_sent(0),
      I2 => r_state(1),
      I3 => r_data_bits_sent(2),
      O => w_next_data_bits_sent(2)
    );
\r_data_bits_sent_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_in_shift[7]_i_1_n_0\,
      CLR => \r_in_shift_reg[7]_0\,
      D => w_next_data_bits_sent(0),
      Q => r_data_bits_sent(0)
    );
\r_data_bits_sent_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_in_shift[7]_i_1_n_0\,
      CLR => \r_in_shift_reg[7]_0\,
      D => w_next_data_bits_sent(1),
      Q => r_data_bits_sent(1)
    );
\r_data_bits_sent_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_in_shift[7]_i_1_n_0\,
      CLR => \r_in_shift_reg[7]_0\,
      D => w_next_data_bits_sent(2),
      Q => r_data_bits_sent(2)
    );
\r_in_shift[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \r_in_shift_reg_n_0_[1]\,
      I1 => \r_reg_array__0\(0),
      I2 => r_state(1),
      O => w_in_shift(0)
    );
\r_in_shift[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \r_in_shift_reg_n_0_[2]\,
      I1 => \r_reg_array__0\(1),
      I2 => r_state(1),
      O => w_in_shift(1)
    );
\r_in_shift[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \r_in_shift_reg_n_0_[3]\,
      I1 => \r_reg_array__0\(2),
      I2 => r_state(1),
      O => w_in_shift(2)
    );
\r_in_shift[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \r_in_shift_reg_n_0_[4]\,
      I1 => \r_reg_array__0\(3),
      I2 => r_state(1),
      O => w_in_shift(3)
    );
\r_in_shift[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \r_in_shift_reg_n_0_[5]\,
      I1 => \r_reg_array__0\(4),
      I2 => r_state(1),
      O => w_in_shift(4)
    );
\r_in_shift[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \r_in_shift_reg_n_0_[6]\,
      I1 => \r_reg_array__0\(5),
      I2 => r_state(1),
      O => w_in_shift(5)
    );
\r_in_shift[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \r_in_shift_reg_n_0_[7]\,
      I1 => \r_reg_array__0\(6),
      I2 => r_state(1),
      O => w_in_shift(6)
    );
\r_in_shift[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000008000FFFF"
    )
        port map (
      I0 => \r_sampling_ticks_reg_n_0_[1]\,
      I1 => \r_sampling_ticks_reg_n_0_[0]\,
      I2 => \r_sampling_ticks_reg_n_0_[3]\,
      I3 => \r_sampling_ticks_reg_n_0_[2]\,
      I4 => r_state(1),
      I5 => r_state(0),
      O => \r_in_shift[7]_i_1_n_0\
    );
\r_in_shift[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => r_state(1),
      I1 => \r_reg_array__0\(7),
      O => w_in_shift(7)
    );
\r_in_shift_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_in_shift[7]_i_1_n_0\,
      CLR => \r_in_shift_reg[7]_0\,
      D => w_in_shift(0),
      Q => \r_in_shift_reg_n_0_[0]\
    );
\r_in_shift_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_in_shift[7]_i_1_n_0\,
      CLR => \r_in_shift_reg[7]_0\,
      D => w_in_shift(1),
      Q => \r_in_shift_reg_n_0_[1]\
    );
\r_in_shift_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_in_shift[7]_i_1_n_0\,
      CLR => \r_in_shift_reg[7]_0\,
      D => w_in_shift(2),
      Q => \r_in_shift_reg_n_0_[2]\
    );
\r_in_shift_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_in_shift[7]_i_1_n_0\,
      CLR => \r_in_shift_reg[7]_0\,
      D => w_in_shift(3),
      Q => \r_in_shift_reg_n_0_[3]\
    );
\r_in_shift_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_in_shift[7]_i_1_n_0\,
      CLR => \r_in_shift_reg[7]_0\,
      D => w_in_shift(4),
      Q => \r_in_shift_reg_n_0_[4]\
    );
\r_in_shift_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_in_shift[7]_i_1_n_0\,
      CLR => \r_in_shift_reg[7]_0\,
      D => w_in_shift(5),
      Q => \r_in_shift_reg_n_0_[5]\
    );
\r_in_shift_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_in_shift[7]_i_1_n_0\,
      CLR => \r_in_shift_reg[7]_0\,
      D => w_in_shift(6),
      Q => \r_in_shift_reg_n_0_[6]\
    );
\r_in_shift_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_in_shift[7]_i_1_n_0\,
      CLR => \r_in_shift_reg[7]_0\,
      D => w_in_shift(7),
      Q => \r_in_shift_reg_n_0_[7]\
    );
\r_rd_logic[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF01"
    )
        port map (
      I0 => \r_rd_logic_reg[0]\,
      I1 => r_state(0),
      I2 => r_state(1),
      I3 => Q(0),
      O => E(0)
    );
\r_sampling_ticks[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"008E8E00"
    )
        port map (
      I0 => r_state(0),
      I1 => r_state(1),
      I2 => \FSM_sequential_r_state[0]_i_4_n_0\,
      I3 => tick,
      I4 => \r_sampling_ticks_reg_n_0_[0]\,
      O => w_next_sampling_ticks(0)
    );
\r_sampling_ticks[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"008E8E008E008E00"
    )
        port map (
      I0 => r_state(0),
      I1 => r_state(1),
      I2 => \FSM_sequential_r_state[0]_i_4_n_0\,
      I3 => \r_sampling_ticks_reg_n_0_[1]\,
      I4 => tick,
      I5 => \r_sampling_ticks_reg_n_0_[0]\,
      O => w_next_sampling_ticks(1)
    );
\r_sampling_ticks[2]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"28888888"
    )
        port map (
      I0 => \r_sampling_ticks[3]_i_2_n_0\,
      I1 => \r_sampling_ticks_reg_n_0_[2]\,
      I2 => \r_sampling_ticks_reg_n_0_[1]\,
      I3 => \r_sampling_ticks_reg_n_0_[0]\,
      I4 => tick,
      O => w_next_sampling_ticks(2)
    );
\r_sampling_ticks[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2888888888888888"
    )
        port map (
      I0 => \r_sampling_ticks[3]_i_2_n_0\,
      I1 => \r_sampling_ticks_reg_n_0_[3]\,
      I2 => \r_sampling_ticks_reg_n_0_[2]\,
      I3 => tick,
      I4 => \r_sampling_ticks_reg_n_0_[0]\,
      I5 => \r_sampling_ticks_reg_n_0_[1]\,
      O => w_next_sampling_ticks(3)
    );
\r_sampling_ticks[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFF7FFF0000"
    )
        port map (
      I0 => \r_sampling_ticks_reg_n_0_[1]\,
      I1 => \r_sampling_ticks_reg_n_0_[0]\,
      I2 => \r_sampling_ticks_reg_n_0_[3]\,
      I3 => \r_sampling_ticks_reg_n_0_[2]\,
      I4 => r_state(1),
      I5 => r_state(0),
      O => \r_sampling_ticks[3]_i_2_n_0\
    );
\r_sampling_ticks_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \r_in_shift_reg[7]_0\,
      D => w_next_sampling_ticks(0),
      Q => \r_sampling_ticks_reg_n_0_[0]\
    );
\r_sampling_ticks_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \r_in_shift_reg[7]_0\,
      D => w_next_sampling_ticks(1),
      Q => \r_sampling_ticks_reg_n_0_[1]\
    );
\r_sampling_ticks_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \r_in_shift_reg[7]_0\,
      D => w_next_sampling_ticks(2),
      Q => \r_sampling_ticks_reg_n_0_[2]\
    );
\r_sampling_ticks_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \r_in_shift_reg[7]_0\,
      D => w_next_sampling_ticks(3),
      Q => \r_sampling_ticks_reg_n_0_[3]\
    );
\r_wr_logic[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF02AA"
    )
        port map (
      I0 => w_en_wr,
      I1 => r_state(1),
      I2 => r_state(0),
      I3 => \r_wr_logic_reg[0]\,
      I4 => Q(0),
      O => \FSM_sequential_r_state_reg[1]_0\(0)
    );
tx_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D9"
    )
        port map (
      I0 => r_state(0),
      I1 => r_state(1),
      I2 => \r_in_shift_reg_n_0_[0]\,
      O => tx
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo is
  port (
    empty_reg : out STD_LOGIC;
    S_AXI_rready_0 : out STD_LOGIC;
    \r_rd_logic_reg[3]\ : out STD_LOGIC;
    \r_rd_logic_reg[3]_0\ : out STD_LOGIC;
    \r_rd_logic_reg[3]_1\ : out STD_LOGIC;
    \r_rd_logic_reg[3]_2\ : out STD_LOGIC;
    \r_rd_logic_reg[3]_3\ : out STD_LOGIC;
    \r_rd_logic_reg[3]_4\ : out STD_LOGIC;
    \r_rd_logic_reg[3]_5\ : out STD_LOGIC;
    \r_rd_logic_reg[3]_6\ : out STD_LOGIC;
    full_reg : out STD_LOGIC;
    \r_rd_logic_reg[0]\ : in STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    \r_rd_logic_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \r_rd_logic_reg[0]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \r_reg_array_reg[15][7]\ : in STD_LOGIC;
    w_en_rd : in STD_LOGIC;
    aclk : in STD_LOGIC;
    \r_reg_array_reg[0][0]\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo is
  signal control_n_1 : STD_LOGIC;
  signal control_n_10 : STD_LOGIC;
  signal control_n_11 : STD_LOGIC;
  signal control_n_12 : STD_LOGIC;
  signal control_n_13 : STD_LOGIC;
  signal control_n_14 : STD_LOGIC;
  signal control_n_15 : STD_LOGIC;
  signal control_n_16 : STD_LOGIC;
  signal control_n_2 : STD_LOGIC;
  signal control_n_3 : STD_LOGIC;
  signal control_n_4 : STD_LOGIC;
  signal control_n_5 : STD_LOGIC;
  signal control_n_6 : STD_LOGIC;
  signal control_n_7 : STD_LOGIC;
  signal control_n_8 : STD_LOGIC;
  signal control_n_9 : STD_LOGIC;
  signal r_rd_logic_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal r_rd_logic_reg_0_sn_1 : STD_LOGIC;
  signal r_rd_logic_reg_3_sn_1 : STD_LOGIC;
begin
  \r_rd_logic_reg[3]\ <= r_rd_logic_reg_3_sn_1;
  r_rd_logic_reg_0_sn_1 <= \r_rd_logic_reg[0]\;
control: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_controller_1
     port map (
      E(0) => control_n_1,
      Q(0) => Q(0),
      S_AXI_rready => S_AXI_rready,
      S_AXI_rready_0 => S_AXI_rready_0,
      aclk => aclk,
      empty_reg_0 => empty_reg,
      full_reg_0 => full_reg,
      \r_rd_logic_reg[0]_0\ => r_rd_logic_reg_0_sn_1,
      \r_rd_logic_reg[0]_1\(0) => \r_rd_logic_reg[0]_0\(0),
      \r_rd_logic_reg[0]_2\(0) => \r_rd_logic_reg[0]_1\(0),
      \r_rd_logic_reg[3]_0\(3 downto 0) => r_rd_logic_reg(3 downto 0),
      \r_reg_array_reg[15][7]\ => \r_reg_array_reg[15][7]\,
      \r_wr_logic_reg[0]_0\(0) => control_n_2,
      \r_wr_logic_reg[0]_1\(0) => control_n_4,
      \r_wr_logic_reg[0]_10\(0) => control_n_16,
      \r_wr_logic_reg[0]_11\(0) => E(0),
      \r_wr_logic_reg[0]_2\(0) => control_n_5,
      \r_wr_logic_reg[0]_3\(0) => control_n_6,
      \r_wr_logic_reg[0]_4\(0) => control_n_8,
      \r_wr_logic_reg[0]_5\(0) => control_n_9,
      \r_wr_logic_reg[0]_6\(0) => control_n_10,
      \r_wr_logic_reg[0]_7\(0) => control_n_12,
      \r_wr_logic_reg[0]_8\(0) => control_n_13,
      \r_wr_logic_reg[0]_9\(0) => control_n_14,
      \r_wr_logic_reg[1]_0\(0) => control_n_3,
      \r_wr_logic_reg[1]_1\(0) => control_n_7,
      \r_wr_logic_reg[1]_2\(0) => control_n_11,
      \r_wr_logic_reg[1]_3\(0) => control_n_15,
      \r_wr_logic_reg[3]_0\ => \r_reg_array_reg[0][0]\,
      w_en_rd => w_en_rd
    );
rf: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_file_2
     port map (
      D(7 downto 0) => D(7 downto 0),
      E(0) => control_n_16,
      aclk => aclk,
      \r_rd_logic_reg[3]\ => r_rd_logic_reg_3_sn_1,
      \r_rd_logic_reg[3]_0\ => \r_rd_logic_reg[3]_0\,
      \r_rd_logic_reg[3]_1\ => \r_rd_logic_reg[3]_1\,
      \r_rd_logic_reg[3]_2\ => \r_rd_logic_reg[3]_2\,
      \r_rd_logic_reg[3]_3\ => \r_rd_logic_reg[3]_3\,
      \r_rd_logic_reg[3]_4\ => \r_rd_logic_reg[3]_4\,
      \r_rd_logic_reg[3]_5\ => \r_rd_logic_reg[3]_5\,
      \r_rd_logic_reg[3]_6\ => \r_rd_logic_reg[3]_6\,
      \r_reg_array_reg[0][0]_0\ => \r_reg_array_reg[0][0]\,
      \r_reg_array_reg[0][7]_0\(0) => control_n_1,
      \r_reg_array_reg[10][7]_0\(0) => control_n_11,
      \r_reg_array_reg[11][7]_0\(0) => control_n_12,
      \r_reg_array_reg[12][7]_0\(0) => control_n_13,
      \r_reg_array_reg[13][7]_0\(0) => control_n_14,
      \r_reg_array_reg[14][7]_0\(0) => control_n_15,
      \r_reg_array_reg[1][7]_0\(0) => control_n_2,
      \r_reg_array_reg[2][7]_0\(0) => control_n_3,
      \r_reg_array_reg[3][7]_0\(0) => control_n_4,
      \r_reg_array_reg[4][7]_0\(0) => control_n_5,
      \r_reg_array_reg[5][7]_0\(0) => control_n_6,
      \r_reg_array_reg[6][7]_0\(0) => control_n_7,
      \r_reg_array_reg[7][7]_0\(0) => control_n_8,
      \r_reg_array_reg[8][7]_0\(0) => control_n_9,
      \r_reg_array_reg[9][7]_0\(0) => control_n_10,
      \rd_data_reg[7]\(3 downto 0) => r_rd_logic_reg(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_0 is
  port (
    arst_n_0 : out STD_LOGIC;
    full_reg : out STD_LOGIC;
    full_reg_0 : out STD_LOGIC;
    \r_reg_array__0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    empty_reg : out STD_LOGIC;
    arst_n : in STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_wvalid : in STD_LOGIC;
    slave_error_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    slave_error_reg_0 : in STD_LOGIC;
    w_en_wr : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \r_reg_array_reg[0][7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    aclk : in STD_LOGIC;
    full_reg_1 : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \r_wr_logic_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_0 : entity is "fifo";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_0 is
  signal \^arst_n_0\ : STD_LOGIC;
  signal control_n_10 : STD_LOGIC;
  signal control_n_11 : STD_LOGIC;
  signal control_n_12 : STD_LOGIC;
  signal control_n_13 : STD_LOGIC;
  signal control_n_14 : STD_LOGIC;
  signal control_n_15 : STD_LOGIC;
  signal control_n_16 : STD_LOGIC;
  signal control_n_17 : STD_LOGIC;
  signal control_n_18 : STD_LOGIC;
  signal control_n_19 : STD_LOGIC;
  signal control_n_20 : STD_LOGIC;
  signal control_n_21 : STD_LOGIC;
  signal control_n_6 : STD_LOGIC;
  signal control_n_7 : STD_LOGIC;
  signal control_n_8 : STD_LOGIC;
  signal control_n_9 : STD_LOGIC;
  signal r_rd_logic_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  arst_n_0 <= \^arst_n_0\;
control: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_controller
     port map (
      E(0) => control_n_6,
      Q(3 downto 0) => r_rd_logic_reg(3 downto 0),
      S_AXI_rready => S_AXI_rready,
      S_AXI_wvalid => S_AXI_wvalid,
      aclk => aclk,
      empty_reg_0 => empty_reg,
      full_reg_0 => full_reg,
      full_reg_1 => full_reg_0,
      full_reg_2 => full_reg_1,
      \r_rd_logic_reg[0]_0\(0) => E(0),
      \r_wr_logic_reg[0]_0\(0) => control_n_7,
      \r_wr_logic_reg[0]_1\(0) => control_n_11,
      \r_wr_logic_reg[0]_2\(0) => control_n_15,
      \r_wr_logic_reg[0]_3\(0) => control_n_19,
      \r_wr_logic_reg[0]_4\(0) => Q(0),
      \r_wr_logic_reg[0]_5\(0) => \r_wr_logic_reg[0]\(0),
      \r_wr_logic_reg[1]_0\(0) => control_n_8,
      \r_wr_logic_reg[1]_1\(0) => control_n_9,
      \r_wr_logic_reg[1]_10\(0) => control_n_21,
      \r_wr_logic_reg[1]_2\(0) => control_n_10,
      \r_wr_logic_reg[1]_3\(0) => control_n_12,
      \r_wr_logic_reg[1]_4\(0) => control_n_13,
      \r_wr_logic_reg[1]_5\(0) => control_n_14,
      \r_wr_logic_reg[1]_6\(0) => control_n_16,
      \r_wr_logic_reg[1]_7\(0) => control_n_17,
      \r_wr_logic_reg[1]_8\(0) => control_n_18,
      \r_wr_logic_reg[1]_9\(0) => control_n_20,
      \r_wr_logic_reg[3]_0\ => \^arst_n_0\,
      slave_error_reg(0) => slave_error_reg(0),
      slave_error_reg_0 => slave_error_reg_0,
      w_en_wr => w_en_wr
    );
rf: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_file
     port map (
      E(0) => control_n_21,
      Q(3 downto 0) => r_rd_logic_reg(3 downto 0),
      aclk => aclk,
      arst_n => arst_n,
      arst_n_0 => \^arst_n_0\,
      \r_reg_array__0\(7 downto 0) => \r_reg_array__0\(7 downto 0),
      \r_reg_array_reg[0][7]_0\(7 downto 0) => \r_reg_array_reg[0][7]\(7 downto 0),
      \r_reg_array_reg[0][7]_1\(0) => control_n_6,
      \r_reg_array_reg[10][7]_0\(0) => control_n_16,
      \r_reg_array_reg[11][7]_0\(0) => control_n_17,
      \r_reg_array_reg[12][7]_0\(0) => control_n_18,
      \r_reg_array_reg[13][7]_0\(0) => control_n_19,
      \r_reg_array_reg[14][7]_0\(0) => control_n_20,
      \r_reg_array_reg[1][7]_0\(0) => control_n_7,
      \r_reg_array_reg[2][7]_0\(0) => control_n_8,
      \r_reg_array_reg[3][7]_0\(0) => control_n_9,
      \r_reg_array_reg[4][7]_0\(0) => control_n_10,
      \r_reg_array_reg[5][7]_0\(0) => control_n_11,
      \r_reg_array_reg[6][7]_0\(0) => control_n_12,
      \r_reg_array_reg[7][7]_0\(0) => control_n_13,
      \r_reg_array_reg[8][7]_0\(0) => control_n_14,
      \r_reg_array_reg[9][7]_0\(0) => control_n_15
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_core is
  port (
    arst_n_0 : out STD_LOGIC;
    full_reg : out STD_LOGIC;
    full_reg_0 : out STD_LOGIC;
    empty_reg : out STD_LOGIC;
    tx : out STD_LOGIC;
    S_AXI_rready_0 : out STD_LOGIC;
    \r_rd_logic_reg[3]\ : out STD_LOGIC;
    \r_rd_logic_reg[3]_0\ : out STD_LOGIC;
    \r_rd_logic_reg[3]_1\ : out STD_LOGIC;
    \r_rd_logic_reg[3]_2\ : out STD_LOGIC;
    \r_rd_logic_reg[3]_3\ : out STD_LOGIC;
    \r_rd_logic_reg[3]_4\ : out STD_LOGIC;
    \r_rd_logic_reg[3]_5\ : out STD_LOGIC;
    \r_rd_logic_reg[3]_6\ : out STD_LOGIC;
    arst_n : in STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_wvalid : in STD_LOGIC;
    \r_rd_logic_reg[0]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    w_en_wr : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    w_en_rd : in STD_LOGIC;
    \r_rd_logic_reg[0]_0\ : in STD_LOGIC;
    \r_rd_logic_reg[0]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    rx : in STD_LOGIC;
    w_next_cnt1_carry : in STD_LOGIC_VECTOR ( 9 downto 0 );
    aclk : in STD_LOGIC;
    \r_reg_array_reg[0][7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_core;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_core is
  signal \^arst_n_0\ : STD_LOGIC;
  signal \^empty_reg\ : STD_LOGIC;
  signal \^full_reg_0\ : STD_LOGIC;
  signal \rf/r_reg_array__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rx_fifo_n_10 : STD_LOGIC;
  signal rx_inst_n_0 : STD_LOGIC;
  signal rx_inst_n_1 : STD_LOGIC;
  signal rx_inst_n_2 : STD_LOGIC;
  signal rx_inst_n_3 : STD_LOGIC;
  signal rx_inst_n_4 : STD_LOGIC;
  signal rx_inst_n_5 : STD_LOGIC;
  signal rx_inst_n_6 : STD_LOGIC;
  signal rx_inst_n_7 : STD_LOGIC;
  signal rx_inst_n_8 : STD_LOGIC;
  signal rx_inst_n_9 : STD_LOGIC;
  signal tick : STD_LOGIC;
  signal tx_fifo_n_11 : STD_LOGIC;
  signal tx_inst_n_0 : STD_LOGIC;
  signal tx_inst_n_1 : STD_LOGIC;
  signal tx_inst_n_3 : STD_LOGIC;
begin
  arst_n_0 <= \^arst_n_0\;
  empty_reg <= \^empty_reg\;
  full_reg_0 <= \^full_reg_0\;
buad_gen: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_buad_generator
     port map (
      aclk => aclk,
      \r_cnt_reg[0]_0\ => \^arst_n_0\,
      tick => tick,
      w_next_cnt1_carry_0(9 downto 0) => w_next_cnt1_carry(9 downto 0)
    );
rx_fifo: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo
     port map (
      D(7) => rx_inst_n_2,
      D(6) => rx_inst_n_3,
      D(5) => rx_inst_n_4,
      D(4) => rx_inst_n_5,
      D(3) => rx_inst_n_6,
      D(2) => rx_inst_n_7,
      D(1) => rx_inst_n_8,
      D(0) => rx_inst_n_9,
      E(0) => rx_inst_n_0,
      Q(0) => Q(0),
      S_AXI_rready => S_AXI_rready,
      S_AXI_rready_0 => S_AXI_rready_0,
      aclk => aclk,
      empty_reg => \^empty_reg\,
      full_reg => rx_fifo_n_10,
      \r_rd_logic_reg[0]\ => \r_rd_logic_reg[0]_0\,
      \r_rd_logic_reg[0]_0\(0) => \r_rd_logic_reg[0]\(1),
      \r_rd_logic_reg[0]_1\(0) => \r_rd_logic_reg[0]_1\(0),
      \r_rd_logic_reg[3]\ => \r_rd_logic_reg[3]\,
      \r_rd_logic_reg[3]_0\ => \r_rd_logic_reg[3]_0\,
      \r_rd_logic_reg[3]_1\ => \r_rd_logic_reg[3]_1\,
      \r_rd_logic_reg[3]_2\ => \r_rd_logic_reg[3]_2\,
      \r_rd_logic_reg[3]_3\ => \r_rd_logic_reg[3]_3\,
      \r_rd_logic_reg[3]_4\ => \r_rd_logic_reg[3]_4\,
      \r_rd_logic_reg[3]_5\ => \r_rd_logic_reg[3]_5\,
      \r_rd_logic_reg[3]_6\ => \r_rd_logic_reg[3]_6\,
      \r_reg_array_reg[0][0]\ => \^arst_n_0\,
      \r_reg_array_reg[15][7]\ => rx_inst_n_1,
      w_en_rd => w_en_rd
    );
rx_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rx
     port map (
      D(7) => rx_inst_n_2,
      D(6) => rx_inst_n_3,
      D(5) => rx_inst_n_4,
      D(4) => rx_inst_n_5,
      D(3) => rx_inst_n_6,
      D(2) => rx_inst_n_7,
      D(1) => rx_inst_n_8,
      D(0) => rx_inst_n_9,
      E(0) => rx_inst_n_0,
      \FSM_sequential_r_state_reg[1]_0\ => rx_inst_n_1,
      Q(0) => Q(0),
      aclk => aclk,
      \r_data_bits_received_reg[3]_0\ => \^arst_n_0\,
      \r_wr_logic_reg[0]\ => rx_fifo_n_10,
      rx => rx,
      tick => tick,
      w_en_rd => w_en_rd
    );
tx_fifo: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_0
     port map (
      E(0) => tx_inst_n_1,
      Q(0) => Q(1),
      S_AXI_rready => S_AXI_rready,
      S_AXI_wvalid => S_AXI_wvalid,
      aclk => aclk,
      arst_n => arst_n,
      arst_n_0 => \^arst_n_0\,
      empty_reg => tx_fifo_n_11,
      full_reg => full_reg,
      full_reg_0 => \^full_reg_0\,
      full_reg_1 => tx_inst_n_3,
      \r_reg_array__0\(7 downto 0) => \rf/r_reg_array__0\(7 downto 0),
      \r_reg_array_reg[0][7]\(7 downto 0) => \r_reg_array_reg[0][7]\(7 downto 0),
      \r_wr_logic_reg[0]\(0) => tx_inst_n_0,
      slave_error_reg(0) => \r_rd_logic_reg[0]\(0),
      slave_error_reg_0 => \^empty_reg\,
      w_en_wr => w_en_wr
    );
tx_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tx
     port map (
      E(0) => tx_inst_n_1,
      \FSM_sequential_r_state_reg[0]_0\ => tx_inst_n_3,
      \FSM_sequential_r_state_reg[1]_0\(0) => tx_inst_n_0,
      Q(0) => Q(1),
      aclk => aclk,
      \r_in_shift_reg[7]_0\ => \^arst_n_0\,
      \r_rd_logic_reg[0]\ => tx_fifo_n_11,
      \r_reg_array__0\(7 downto 0) => \rf/r_reg_array__0\(7 downto 0),
      \r_wr_logic_reg[0]\ => \^full_reg_0\,
      tick => tick,
      tx => tx,
      w_en_wr => w_en_wr
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart is
  port (
    slot_wr_done : out STD_LOGIC_VECTOR ( 0 to 0 );
    arst_n_0 : out STD_LOGIC;
    slot_rd_done : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    tx_full : out STD_LOGIC;
    rx_empty : out STD_LOGIC;
    \r_control_reg[1]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rready_0 : out STD_LOGIC;
    \FSM_onehot_r_state_reg[1]_0\ : out STD_LOGIC;
    tx : out STD_LOGIC;
    S_AXI_rready_1 : out STD_LOGIC;
    \r_dvsr_reg[9]_0\ : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \r_rd_logic_reg[3]\ : out STD_LOGIC;
    \r_rd_logic_reg[3]_0\ : out STD_LOGIC;
    \r_rd_logic_reg[3]_1\ : out STD_LOGIC;
    \r_rd_logic_reg[3]_2\ : out STD_LOGIC;
    \r_rd_logic_reg[3]_3\ : out STD_LOGIC;
    \r_rd_logic_reg[3]_4\ : out STD_LOGIC;
    \r_rd_logic_reg[3]_5\ : out STD_LOGIC;
    \r_rd_logic_reg[3]_6\ : out STD_LOGIC;
    slot_decode_error : out STD_LOGIC_VECTOR ( 0 to 0 );
    slot_slave_error : out STD_LOGIC_VECTOR ( 0 to 0 );
    \rd_data_reg[9]_0\ : out STD_LOGIC_VECTOR ( 9 downto 0 );
    w_wr_done : in STD_LOGIC;
    aclk : in STD_LOGIC;
    w_rd_done : in STD_LOGIC;
    arst_n : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    \w_en__0\ : in STD_LOGIC;
    S_AXI_wvalid : in STD_LOGIC;
    \r_rd_logic_reg[0]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    w_en_wr : in STD_LOGIC;
    w_en_rd : in STD_LOGIC;
    \r_rd_logic_reg[0]_0\ : in STD_LOGIC;
    rx : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    slave_error_reg_0 : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \r_dvsr_reg[9]_1\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \r_control_reg[1]_1\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \r_reg_array_reg[0][7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \rd_data_reg[9]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \rd_data_reg[9]_2\ : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart is
  signal \^fsm_onehot_r_state_reg[1]_0\ : STD_LOGIC;
  signal \FSM_onehot_r_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_w_next_state_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_w_next_state_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_w_next_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_w_next_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_w_next_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^arst_n_0\ : STD_LOGIC;
  signal core_n_1 : STD_LOGIC;
  signal decode_error_i_1_n_0 : STD_LOGIC;
  signal \^r_control_reg[1]_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^r_dvsr_reg[9]_0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal slave_error_i_1_n_0 : STD_LOGIC;
  signal slave_error_i_4_n_0 : STD_LOGIC;
  signal \^slot_decode_error\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^slot_slave_error\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal w_next_state : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_r_state_reg[0]\ : label is "ACTIVE:010,DONE:100,IDLE:001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_r_state_reg[1]\ : label is "ACTIVE:010,DONE:100,IDLE:001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_r_state_reg[2]\ : label is "ACTIVE:010,DONE:100,IDLE:001";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \FSM_onehot_w_next_state_reg[0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \FSM_onehot_w_next_state_reg[0]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \FSM_onehot_w_next_state_reg[1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \FSM_onehot_w_next_state_reg[1]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \FSM_onehot_w_next_state_reg[2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \FSM_onehot_w_next_state_reg[2]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_w_next_state_reg[2]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \FSM_onehot_w_next_state_reg[2]_i_2__0\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of slave_error_i_2 : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of slave_error_i_4 : label is "soft_lutpair65";
begin
  \FSM_onehot_r_state_reg[1]_0\ <= \^fsm_onehot_r_state_reg[1]_0\;
  Q(1 downto 0) <= \^q\(1 downto 0);
  arst_n_0 <= \^arst_n_0\;
  \r_control_reg[1]_0\(1 downto 0) <= \^r_control_reg[1]_0\(1 downto 0);
  \r_dvsr_reg[9]_0\(9 downto 0) <= \^r_dvsr_reg[9]_0\(9 downto 0);
  slot_decode_error(0) <= \^slot_decode_error\(0);
  slot_slave_error(0) <= \^slot_slave_error\(0);
\FSM_onehot_r_state_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \FSM_onehot_w_next_state_reg_n_0_[0]\,
      PRE => \^arst_n_0\,
      Q => \^q\(0)
    );
\FSM_onehot_r_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      CLR => \^arst_n_0\,
      D => \FSM_onehot_w_next_state_reg_n_0_[1]\,
      Q => \^q\(1)
    );
\FSM_onehot_r_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      CLR => \^arst_n_0\,
      D => \FSM_onehot_w_next_state_reg_n_0_[2]\,
      Q => \FSM_onehot_r_state_reg_n_0_[2]\
    );
\FSM_onehot_w_next_state_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '1'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_w_next_state_reg[0]_i_1_n_0\,
      G => w_next_state,
      GE => '1',
      Q => \FSM_onehot_w_next_state_reg_n_0_[0]\
    );
\FSM_onehot_w_next_state_reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E0FFE0E0"
    )
        port map (
      I0 => S_AXI_bready,
      I1 => S_AXI_rready,
      I2 => \FSM_onehot_r_state_reg_n_0_[2]\,
      I3 => \w_en__0\,
      I4 => \^q\(0),
      O => \FSM_onehot_w_next_state_reg[0]_i_1_n_0\
    );
\FSM_onehot_w_next_state_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(0),
      G => w_next_state,
      GE => '1',
      Q => \FSM_onehot_w_next_state_reg_n_0_[1]\
    );
\FSM_onehot_w_next_state_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_w_next_state_reg[2]_i_1_n_0\,
      G => w_next_state,
      GE => '1',
      Q => \FSM_onehot_w_next_state_reg_n_0_[2]\
    );
\FSM_onehot_w_next_state_reg[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF10"
    )
        port map (
      I0 => S_AXI_bready,
      I1 => S_AXI_rready,
      I2 => \FSM_onehot_r_state_reg_n_0_[2]\,
      I3 => \^q\(1),
      O => \FSM_onehot_w_next_state_reg[2]_i_1_n_0\
    );
\FSM_onehot_w_next_state_reg[2]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \^q\(0),
      I1 => \FSM_onehot_r_state_reg_n_0_[2]\,
      I2 => \^q\(1),
      O => w_next_state
    );
core: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_core
     port map (
      Q(1 downto 0) => \^r_control_reg[1]_0\(1 downto 0),
      S_AXI_rready => S_AXI_rready,
      S_AXI_rready_0 => S_AXI_rready_1,
      S_AXI_wvalid => S_AXI_wvalid,
      aclk => aclk,
      arst_n => arst_n,
      arst_n_0 => \^arst_n_0\,
      empty_reg => rx_empty,
      full_reg => core_n_1,
      full_reg_0 => tx_full,
      \r_rd_logic_reg[0]\(1) => \r_rd_logic_reg[0]\(4),
      \r_rd_logic_reg[0]\(0) => \r_rd_logic_reg[0]\(2),
      \r_rd_logic_reg[0]_0\ => \r_rd_logic_reg[0]_0\,
      \r_rd_logic_reg[0]_1\(0) => \^q\(1),
      \r_rd_logic_reg[3]\ => \r_rd_logic_reg[3]\,
      \r_rd_logic_reg[3]_0\ => \r_rd_logic_reg[3]_0\,
      \r_rd_logic_reg[3]_1\ => \r_rd_logic_reg[3]_1\,
      \r_rd_logic_reg[3]_2\ => \r_rd_logic_reg[3]_2\,
      \r_rd_logic_reg[3]_3\ => \r_rd_logic_reg[3]_3\,
      \r_rd_logic_reg[3]_4\ => \r_rd_logic_reg[3]_4\,
      \r_rd_logic_reg[3]_5\ => \r_rd_logic_reg[3]_5\,
      \r_rd_logic_reg[3]_6\ => \r_rd_logic_reg[3]_6\,
      \r_reg_array_reg[0][7]\(7 downto 0) => \r_reg_array_reg[0][7]\(7 downto 0),
      rx => rx,
      tx => tx,
      w_en_rd => w_en_rd,
      w_en_wr => w_en_wr,
      w_next_cnt1_carry(9 downto 0) => \^r_dvsr_reg[9]_0\(9 downto 0)
    );
decode_error_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFE00FFFEFE0000"
    )
        port map (
      I0 => \r_rd_logic_reg[0]\(1),
      I1 => \r_rd_logic_reg[0]\(0),
      I2 => \r_rd_logic_reg[0]\(4),
      I3 => \^q\(0),
      I4 => \^q\(1),
      I5 => \^slot_decode_error\(0),
      O => decode_error_i_1_n_0
    );
decode_error_reg: unisim.vcomponents.FDPE
     port map (
      C => aclk,
      CE => '1',
      D => decode_error_i_1_n_0,
      PRE => \^arst_n_0\,
      Q => \^slot_decode_error\(0)
    );
\r_control_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \^arst_n_0\,
      D => \r_control_reg[1]_1\(0),
      Q => \^r_control_reg[1]_0\(0)
    );
\r_control_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \^arst_n_0\,
      D => \r_control_reg[1]_1\(1),
      Q => \^r_control_reg[1]_0\(1)
    );
\r_dvsr_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arst_n_0\,
      D => \r_dvsr_reg[9]_1\(0),
      Q => \^r_dvsr_reg[9]_0\(0)
    );
\r_dvsr_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arst_n_0\,
      D => \r_dvsr_reg[9]_1\(1),
      Q => \^r_dvsr_reg[9]_0\(1)
    );
\r_dvsr_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arst_n_0\,
      D => \r_dvsr_reg[9]_1\(2),
      Q => \^r_dvsr_reg[9]_0\(2)
    );
\r_dvsr_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arst_n_0\,
      D => \r_dvsr_reg[9]_1\(3),
      Q => \^r_dvsr_reg[9]_0\(3)
    );
\r_dvsr_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arst_n_0\,
      D => \r_dvsr_reg[9]_1\(4),
      Q => \^r_dvsr_reg[9]_0\(4)
    );
\r_dvsr_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arst_n_0\,
      D => \r_dvsr_reg[9]_1\(5),
      Q => \^r_dvsr_reg[9]_0\(5)
    );
\r_dvsr_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arst_n_0\,
      D => \r_dvsr_reg[9]_1\(6),
      Q => \^r_dvsr_reg[9]_0\(6)
    );
\r_dvsr_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arst_n_0\,
      D => \r_dvsr_reg[9]_1\(7),
      Q => \^r_dvsr_reg[9]_0\(7)
    );
\r_dvsr_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arst_n_0\,
      D => \r_dvsr_reg[9]_1\(8),
      Q => \^r_dvsr_reg[9]_0\(8)
    );
\r_dvsr_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arst_n_0\,
      D => \r_dvsr_reg[9]_1\(9),
      Q => \^r_dvsr_reg[9]_0\(9)
    );
\rd_data[9]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => S_AXI_rready,
      I1 => S_AXI_wvalid,
      O => S_AXI_rready_0
    );
\rd_data_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \rd_data_reg[9]_1\(0),
      CLR => \^arst_n_0\,
      D => \rd_data_reg[9]_2\(0),
      Q => \rd_data_reg[9]_0\(0)
    );
\rd_data_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \rd_data_reg[9]_1\(0),
      CLR => \^arst_n_0\,
      D => \rd_data_reg[9]_2\(1),
      Q => \rd_data_reg[9]_0\(1)
    );
\rd_data_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \rd_data_reg[9]_1\(0),
      CLR => \^arst_n_0\,
      D => \rd_data_reg[9]_2\(2),
      Q => \rd_data_reg[9]_0\(2)
    );
\rd_data_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \rd_data_reg[9]_1\(0),
      CLR => \^arst_n_0\,
      D => \rd_data_reg[9]_2\(3),
      Q => \rd_data_reg[9]_0\(3)
    );
\rd_data_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \rd_data_reg[9]_1\(0),
      CLR => \^arst_n_0\,
      D => \rd_data_reg[9]_2\(4),
      Q => \rd_data_reg[9]_0\(4)
    );
\rd_data_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \rd_data_reg[9]_1\(0),
      CLR => \^arst_n_0\,
      D => \rd_data_reg[9]_2\(5),
      Q => \rd_data_reg[9]_0\(5)
    );
\rd_data_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \rd_data_reg[9]_1\(0),
      CLR => \^arst_n_0\,
      D => \rd_data_reg[9]_2\(6),
      Q => \rd_data_reg[9]_0\(6)
    );
\rd_data_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \rd_data_reg[9]_1\(0),
      CLR => \^arst_n_0\,
      D => \rd_data_reg[9]_2\(7),
      Q => \rd_data_reg[9]_0\(7)
    );
\rd_data_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \rd_data_reg[9]_1\(0),
      CLR => \^arst_n_0\,
      D => \rd_data_reg[9]_2\(8),
      Q => \rd_data_reg[9]_0\(8)
    );
\rd_data_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \rd_data_reg[9]_1\(0),
      CLR => \^arst_n_0\,
      D => \rd_data_reg[9]_2\(9),
      Q => \rd_data_reg[9]_0\(9)
    );
rd_done_reg: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \^arst_n_0\,
      D => w_rd_done,
      Q => slot_rd_done(0)
    );
slave_error_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0200FFFF02000000"
    )
        port map (
      I0 => \^fsm_onehot_r_state_reg[1]_0\,
      I1 => slave_error_reg_0,
      I2 => \r_rd_logic_reg[0]\(3),
      I3 => core_n_1,
      I4 => slave_error_i_4_n_0,
      I5 => \^slot_slave_error\(0),
      O => slave_error_i_1_n_0
    );
slave_error_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(1),
      I1 => \r_rd_logic_reg[0]\(4),
      O => \^fsm_onehot_r_state_reg[1]_0\
    );
slave_error_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => slave_error_i_4_n_0
    );
slave_error_reg: unisim.vcomponents.FDPE
     port map (
      C => aclk,
      CE => '1',
      D => slave_error_i_1_n_0,
      PRE => \^arst_n_0\,
      Q => \^slot_slave_error\(0)
    );
wr_done_reg: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \^arst_n_0\,
      D => w_wr_done,
      Q => slot_wr_done(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mmio_subsystem is
  port (
    aclk : in STD_LOGIC;
    arst_n : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_awready : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_arready : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    in_ports : in STD_LOGIC_VECTOR ( 8 downto 0 );
    out_ports : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rx : in STD_LOGIC;
    tx : out STD_LOGIC;
    debug_r_state : out STD_LOGIC_VECTOR ( 2 downto 0 );
    debug_w_next_state : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute NUM_INPUT : integer;
  attribute NUM_INPUT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mmio_subsystem : entity is 9;
  attribute NUM_OUTPUT : integer;
  attribute NUM_OUTPUT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mmio_subsystem : entity is 4;
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mmio_subsystem;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mmio_subsystem is
  signal \<const0>\ : STD_LOGIC;
  signal control_n_100 : STD_LOGIC;
  signal control_n_101 : STD_LOGIC;
  signal control_n_102 : STD_LOGIC;
  signal control_n_103 : STD_LOGIC;
  signal control_n_104 : STD_LOGIC;
  signal control_n_107 : STD_LOGIC;
  signal control_n_109 : STD_LOGIC;
  signal control_n_117 : STD_LOGIC;
  signal control_n_121 : STD_LOGIC;
  signal control_n_127 : STD_LOGIC;
  signal control_n_128 : STD_LOGIC;
  signal control_n_129 : STD_LOGIC;
  signal control_n_13 : STD_LOGIC;
  signal control_n_130 : STD_LOGIC;
  signal control_n_131 : STD_LOGIC;
  signal control_n_132 : STD_LOGIC;
  signal control_n_133 : STD_LOGIC;
  signal control_n_134 : STD_LOGIC;
  signal control_n_135 : STD_LOGIC;
  signal control_n_136 : STD_LOGIC;
  signal control_n_137 : STD_LOGIC;
  signal control_n_20 : STD_LOGIC;
  signal control_n_53 : STD_LOGIC;
  signal control_n_92 : STD_LOGIC;
  signal control_n_95 : STD_LOGIC;
  signal control_n_97 : STD_LOGIC;
  signal control_n_98 : STD_LOGIC;
  signal control_n_99 : STD_LOGIC;
  signal emperor_gpio_n_4 : STD_LOGIC;
  signal emperor_gpio_n_5 : STD_LOGIC;
  signal emperor_timer_n_4 : STD_LOGIC;
  signal emperor_timer_n_5 : STD_LOGIC;
  signal emperor_timer_n_6 : STD_LOGIC;
  signal emperor_timer_n_7 : STD_LOGIC;
  signal emperor_uart_n_1 : STD_LOGIC;
  signal emperor_uart_n_10 : STD_LOGIC;
  signal emperor_uart_n_12 : STD_LOGIC;
  signal emperor_uart_n_23 : STD_LOGIC;
  signal emperor_uart_n_24 : STD_LOGIC;
  signal emperor_uart_n_25 : STD_LOGIC;
  signal emperor_uart_n_26 : STD_LOGIC;
  signal emperor_uart_n_27 : STD_LOGIC;
  signal emperor_uart_n_28 : STD_LOGIC;
  signal emperor_uart_n_29 : STD_LOGIC;
  signal emperor_uart_n_3 : STD_LOGIC;
  signal emperor_uart_n_30 : STD_LOGIC;
  signal emperor_uart_n_4 : STD_LOGIC;
  signal emperor_uart_n_9 : STD_LOGIC;
  signal r_addr : STD_LOGIC_VECTOR ( 10 to 10 );
  signal r_control : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal r_dvsr : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal reg_addr : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal rx_empty : STD_LOGIC;
  signal slot_decode_error : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \slot_rd_data[0]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slot_rd_data[1]\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \slot_rd_data[2]\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal slot_rd_done : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal slot_slave_error : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \slot_wr_data[0]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slot_wr_data[2]\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal slot_wr_done : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal tx_full : STD_LOGIC;
  signal w_auto_reload : STD_LOGIC;
  signal w_control : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal w_decode_error : STD_LOGIC;
  signal \w_decode_error__0\ : STD_LOGIC;
  signal \w_en__0\ : STD_LOGIC;
  signal \w_en__0_3\ : STD_LOGIC;
  signal \w_en__0_4\ : STD_LOGIC;
  signal w_en_dvsr : STD_LOGIC;
  signal w_en_rd : STD_LOGIC;
  signal w_en_wr : STD_LOGIC;
  signal w_led_data : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal w_rd_data : STD_LOGIC;
  signal w_rd_data_0 : STD_LOGIC;
  signal \w_rd_data__0\ : STD_LOGIC;
  signal w_rd_done : STD_LOGIC;
  signal w_rd_done_1 : STD_LOGIC;
  signal \w_rd_done__0\ : STD_LOGIC;
  signal \w_slave_error__0\ : STD_LOGIC;
  signal w_wr_done : STD_LOGIC;
  signal w_wr_done_2 : STD_LOGIC;
begin
  debug_r_state(2) <= \<const0>\;
  debug_r_state(1) <= \<const0>\;
  debug_r_state(0) <= \<const0>\;
  debug_w_next_state(2) <= \<const0>\;
  debug_w_next_state(1) <= \<const0>\;
  debug_w_next_state(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
control: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mmio_controller
     port map (
      D(9 downto 0) => \slot_wr_data[2]\(9 downto 0),
      E(0) => \w_rd_data__0\,
      \FSM_onehot_r_state_reg[0]\(0) => control_n_95,
      \FSM_onehot_r_state_reg[1]\(0) => w_en_dvsr,
      Q(5) => r_addr(10),
      Q(4) => reg_addr(5),
      Q(3 downto 0) => reg_addr(3 downto 0),
      S_AXI_araddr(12 downto 5) => S_AXI_araddr(15 downto 8),
      S_AXI_araddr(4) => S_AXI_araddr(5),
      S_AXI_araddr(3 downto 0) => S_AXI_araddr(3 downto 0),
      S_AXI_arready => emperor_timer_n_5,
      S_AXI_arvalid => S_AXI_arvalid,
      S_AXI_awaddr(12 downto 5) => S_AXI_awaddr(15 downto 8),
      S_AXI_awaddr(4) => S_AXI_awaddr(5),
      S_AXI_awaddr(3 downto 0) => S_AXI_awaddr(3 downto 0),
      S_AXI_awready => S_AXI_awready,
      S_AXI_awready_0 => emperor_timer_n_4,
      S_AXI_awvalid => S_AXI_awvalid,
      S_AXI_bready => S_AXI_bready,
      S_AXI_bresp(1 downto 0) => S_AXI_bresp(1 downto 0),
      S_AXI_bvalid => S_AXI_bvalid,
      S_AXI_rdata(31 downto 0) => S_AXI_rdata(31 downto 0),
      \S_AXI_rdata[31]\(31 downto 0) => \slot_rd_data[0]\(31 downto 0),
      \S_AXI_rdata[9]\(9 downto 0) => \slot_rd_data[2]\(9 downto 0),
      S_AXI_rready => S_AXI_rready,
      S_AXI_rresp(1 downto 0) => S_AXI_rresp(1 downto 0),
      S_AXI_rvalid => S_AXI_rvalid,
      S_AXI_wdata(31 downto 0) => S_AXI_wdata(31 downto 0),
      \S_AXI_wdata[31]\(31 downto 0) => \slot_wr_data[0]\(31 downto 0),
      \S_AXI_wdata[7]\(7) => control_n_97,
      \S_AXI_wdata[7]\(6) => control_n_98,
      \S_AXI_wdata[7]\(5) => control_n_99,
      \S_AXI_wdata[7]\(4) => control_n_100,
      \S_AXI_wdata[7]\(3) => control_n_101,
      \S_AXI_wdata[7]\(2) => control_n_102,
      \S_AXI_wdata[7]\(1) => control_n_103,
      \S_AXI_wdata[7]\(0) => control_n_104,
      S_AXI_wready => S_AXI_wready,
      S_AXI_wvalid => S_AXI_wvalid,
      S_AXI_wvalid_0(1 downto 0) => w_control(1 downto 0),
      aclk => aclk,
      decode_error_reg(0) => emperor_gpio_n_5,
      \r_addr_reg[0]_0\(0) => w_auto_reload,
      \r_addr_reg[10]_0\ => control_n_13,
      \r_addr_reg[11]_0\ => control_n_20,
      \r_addr_reg[1]_0\ => control_n_107,
      \r_addr_reg[1]_1\ => control_n_109,
      \r_addr_reg[1]_2\ => control_n_117,
      \r_addr_reg[1]_3\ => control_n_121,
      \r_addr_reg[2]_0\(9) => control_n_127,
      \r_addr_reg[2]_0\(8) => control_n_128,
      \r_addr_reg[2]_0\(7) => control_n_129,
      \r_addr_reg[2]_0\(6) => control_n_130,
      \r_addr_reg[2]_0\(5) => control_n_131,
      \r_addr_reg[2]_0\(4) => control_n_132,
      \r_addr_reg[2]_0\(3) => control_n_133,
      \r_addr_reg[2]_0\(2) => control_n_134,
      \r_addr_reg[2]_0\(1) => control_n_135,
      \r_addr_reg[2]_0\(0) => control_n_136,
      \r_addr_reg[3]_0\(0) => w_rd_data_0,
      \r_addr_reg[3]_1\ => control_n_137,
      \r_addr_reg[9]_0\ => control_n_92,
      \r_control_reg[0]\(1) => emperor_uart_n_3,
      \r_control_reg[0]\(0) => emperor_uart_n_4,
      \r_reg_array_reg[0][0]\(1 downto 0) => r_control(1 downto 0),
      \r_state_reg[0]_0\ => control_n_53,
      \r_state_reg[2]_0\ => S_AXI_arready,
      \r_state_reg[2]_1\ => emperor_uart_n_1,
      \rd_data_reg[0]\ => emperor_uart_n_30,
      \rd_data_reg[0]_0\ => emperor_gpio_n_4,
      \rd_data_reg[1]\ => emperor_uart_n_29,
      \rd_data_reg[2]\ => emperor_uart_n_28,
      \rd_data_reg[3]\ => emperor_uart_n_27,
      \rd_data_reg[4]\ => emperor_uart_n_26,
      \rd_data_reg[5]\ => emperor_uart_n_25,
      \rd_data_reg[6]\ => emperor_uart_n_24,
      \rd_data_reg[7]\ => emperor_uart_n_23,
      \rd_data_reg[9]\ => emperor_uart_n_10,
      \rd_data_reg[9]_0\ => emperor_uart_n_9,
      \rd_data_reg[9]_1\ => emperor_uart_n_12,
      \rd_data_reg[9]_2\(9 downto 0) => r_dvsr(9 downto 0),
      rx_empty => rx_empty,
      slave_error_reg(1) => emperor_timer_n_6,
      slave_error_reg(0) => emperor_timer_n_7,
      slot_decode_error(2 downto 0) => slot_decode_error(2 downto 0),
      \slot_rd_data[1]\(0) => \slot_rd_data[1]\(0),
      slot_rd_done(2 downto 0) => slot_rd_done(2 downto 0),
      slot_slave_error(1) => slot_slave_error(2),
      slot_slave_error(0) => slot_slave_error(0),
      slot_wr_done(2 downto 0) => slot_wr_done(2 downto 0),
      tx_full => tx_full,
      w_decode_error => w_decode_error,
      \w_decode_error__0\ => \w_decode_error__0\,
      \w_en__0\ => \w_en__0_4\,
      \w_en__0_0\ => \w_en__0_3\,
      \w_en__0_1\ => \w_en__0\,
      w_en_rd => w_en_rd,
      w_en_wr => w_en_wr,
      w_led_data(3 downto 0) => w_led_data(3 downto 0),
      w_rd_data => w_rd_data,
      w_rd_done => w_rd_done_1,
      w_rd_done_2 => w_rd_done,
      \w_rd_done__0\ => \w_rd_done__0\,
      \w_slave_error__0\ => \w_slave_error__0\,
      w_wr_done => w_wr_done_2,
      w_wr_done_3 => w_wr_done
    );
emperor_gpio: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gpio
     port map (
      \FSM_onehot_r_state_reg[1]_0\(0) => emperor_gpio_n_5,
      Q(2) => r_addr(10),
      Q(1 downto 0) => reg_addr(3 downto 2),
      S_AXI_wdata(3 downto 0) => S_AXI_wdata(3 downto 0),
      aclk => aclk,
      in_ports(3 downto 0) => in_ports(7 downto 4),
      out_ports(3 downto 0) => out_ports(3 downto 0),
      \out_ports_reg[0]_0\ => control_n_20,
      \out_ports_reg[0]_1\ => control_n_92,
      \r_input_data_reg[5]_0\ => emperor_gpio_n_4,
      \rd_data_reg[0]_0\ => emperor_uart_n_1,
      slot_decode_error(0) => slot_decode_error(1),
      \slot_rd_data[1]\(0) => \slot_rd_data[1]\(0),
      slot_rd_done(0) => slot_rd_done(1),
      slot_wr_done(0) => slot_wr_done(1),
      w_decode_error => w_decode_error,
      \w_en__0\ => \w_en__0_3\,
      w_led_data(3 downto 0) => w_led_data(3 downto 0),
      w_rd_data => w_rd_data,
      w_rd_done => w_rd_done,
      w_wr_done => w_wr_done
    );
emperor_timer: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_timer
     port map (
      D(31 downto 0) => \slot_wr_data[0]\(31 downto 0),
      E(0) => \w_rd_data__0\,
      Q(1) => emperor_timer_n_6,
      Q(0) => emperor_timer_n_7,
      S_AXI_araddr(3 downto 0) => S_AXI_araddr(7 downto 4),
      \S_AXI_araddr[5]\ => emperor_timer_n_5,
      S_AXI_arvalid => S_AXI_arvalid,
      S_AXI_awaddr(3 downto 0) => S_AXI_awaddr(7 downto 4),
      \S_AXI_awaddr[4]\ => emperor_timer_n_4,
      S_AXI_awvalid => S_AXI_awvalid,
      S_AXI_wdata(1 downto 0) => S_AXI_wdata(1 downto 0),
      S_AXI_wvalid => S_AXI_wvalid,
      aclk => aclk,
      \r_auto_reload_reg[31]_0\(0) => w_auto_reload,
      \r_control_reg[0]_0\ => control_n_13,
      \r_control_reg[0]_1\ => control_n_53,
      \r_control_reg[0]_2\ => control_n_117,
      r_eg_reg_0(2) => reg_addr(5),
      r_eg_reg_0(1 downto 0) => reg_addr(3 downto 2),
      r_eg_reg_1 => control_n_107,
      \rd_data_reg[31]_0\(31 downto 0) => \slot_rd_data[0]\(31 downto 0),
      rd_done_reg_0 => control_n_121,
      rd_done_reg_1 => emperor_uart_n_1,
      slot_decode_error(0) => slot_decode_error(0),
      slot_rd_done(0) => slot_rd_done(0),
      slot_slave_error(0) => slot_slave_error(0),
      slot_wr_done(0) => slot_wr_done(0),
      \w_decode_error__0\ => \w_decode_error__0\,
      \w_en__0\ => \w_en__0_4\,
      \w_rd_done__0\ => \w_rd_done__0\,
      \w_slave_error__0\ => \w_slave_error__0\
    );
emperor_uart: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart
     port map (
      D(0) => control_n_95,
      E(0) => w_en_dvsr,
      \FSM_onehot_r_state_reg[1]_0\ => emperor_uart_n_10,
      Q(1) => emperor_uart_n_3,
      Q(0) => emperor_uart_n_4,
      S_AXI_bready => S_AXI_bready,
      S_AXI_rready => S_AXI_rready,
      S_AXI_rready_0 => emperor_uart_n_9,
      S_AXI_rready_1 => emperor_uart_n_12,
      S_AXI_wvalid => S_AXI_wvalid,
      aclk => aclk,
      arst_n => arst_n,
      arst_n_0 => emperor_uart_n_1,
      \r_control_reg[1]_0\(1 downto 0) => r_control(1 downto 0),
      \r_control_reg[1]_1\(1 downto 0) => w_control(1 downto 0),
      \r_dvsr_reg[9]_0\(9 downto 0) => r_dvsr(9 downto 0),
      \r_dvsr_reg[9]_1\(9 downto 0) => \slot_wr_data[2]\(9 downto 0),
      \r_rd_logic_reg[0]\(4) => reg_addr(5),
      \r_rd_logic_reg[0]\(3 downto 0) => reg_addr(3 downto 0),
      \r_rd_logic_reg[0]_0\ => control_n_137,
      \r_rd_logic_reg[3]\ => emperor_uart_n_23,
      \r_rd_logic_reg[3]_0\ => emperor_uart_n_24,
      \r_rd_logic_reg[3]_1\ => emperor_uart_n_25,
      \r_rd_logic_reg[3]_2\ => emperor_uart_n_26,
      \r_rd_logic_reg[3]_3\ => emperor_uart_n_27,
      \r_rd_logic_reg[3]_4\ => emperor_uart_n_28,
      \r_rd_logic_reg[3]_5\ => emperor_uart_n_29,
      \r_rd_logic_reg[3]_6\ => emperor_uart_n_30,
      \r_reg_array_reg[0][7]\(7) => control_n_97,
      \r_reg_array_reg[0][7]\(6) => control_n_98,
      \r_reg_array_reg[0][7]\(5) => control_n_99,
      \r_reg_array_reg[0][7]\(4) => control_n_100,
      \r_reg_array_reg[0][7]\(3) => control_n_101,
      \r_reg_array_reg[0][7]\(2) => control_n_102,
      \r_reg_array_reg[0][7]\(1) => control_n_103,
      \r_reg_array_reg[0][7]\(0) => control_n_104,
      \rd_data_reg[9]_0\(9 downto 0) => \slot_rd_data[2]\(9 downto 0),
      \rd_data_reg[9]_1\(0) => w_rd_data_0,
      \rd_data_reg[9]_2\(9) => control_n_127,
      \rd_data_reg[9]_2\(8) => control_n_128,
      \rd_data_reg[9]_2\(7) => control_n_129,
      \rd_data_reg[9]_2\(6) => control_n_130,
      \rd_data_reg[9]_2\(5) => control_n_131,
      \rd_data_reg[9]_2\(4) => control_n_132,
      \rd_data_reg[9]_2\(3) => control_n_133,
      \rd_data_reg[9]_2\(2) => control_n_134,
      \rd_data_reg[9]_2\(1) => control_n_135,
      \rd_data_reg[9]_2\(0) => control_n_136,
      rx => rx,
      rx_empty => rx_empty,
      slave_error_reg_0 => control_n_109,
      slot_decode_error(0) => slot_decode_error(2),
      slot_rd_done(0) => slot_rd_done(2),
      slot_slave_error(0) => slot_slave_error(2),
      slot_wr_done(0) => slot_wr_done(2),
      tx => tx,
      tx_full => tx_full,
      \w_en__0\ => \w_en__0\,
      w_en_rd => w_en_rd,
      w_en_wr => w_en_wr,
      w_rd_done => w_rd_done_1,
      w_wr_done => w_wr_done_2
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    aclk : in STD_LOGIC;
    arst_n : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_awready : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_arready : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    in_ports : in STD_LOGIC_VECTOR ( 8 downto 0 );
    out_ports : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rx : in STD_LOGIC;
    tx : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "top_mmio_subsystem_0_2,mmio_subsystem,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "mmio_subsystem,Vivado 2024.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal NLW_inst_debug_r_state_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_debug_w_next_state_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute NUM_INPUT : integer;
  attribute NUM_INPUT of inst : label is 9;
  attribute NUM_OUTPUT : integer;
  attribute NUM_OUTPUT of inst : label is 4;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of S_AXI_arready : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  attribute X_INTERFACE_INFO of S_AXI_arvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  attribute X_INTERFACE_INFO of S_AXI_awready : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  attribute X_INTERFACE_INFO of S_AXI_awvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  attribute X_INTERFACE_INFO of S_AXI_bready : signal is "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  attribute X_INTERFACE_INFO of S_AXI_bvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  attribute X_INTERFACE_INFO of S_AXI_rready : signal is "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  attribute X_INTERFACE_INFO of S_AXI_rvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI RVALID";
  attribute X_INTERFACE_INFO of S_AXI_wready : signal is "xilinx.com:interface:aximm:1.0 S_AXI WREADY";
  attribute X_INTERFACE_INFO of S_AXI_wvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI WVALID";
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of aclk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET arst_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of arst_n : signal is "xilinx.com:signal:reset:1.0 arst_n RST";
  attribute X_INTERFACE_MODE of arst_n : signal is "slave";
  attribute X_INTERFACE_PARAMETER of arst_n : signal is "XIL_INTERFACENAME arst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rx : signal is "xilinx.com:interface:uart:1.0 UART RxD";
  attribute X_INTERFACE_MODE of rx : signal is "master";
  attribute X_INTERFACE_INFO of tx : signal is "xilinx.com:interface:uart:1.0 UART TxD";
  attribute X_INTERFACE_INFO of S_AXI_araddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARADDR";
  attribute X_INTERFACE_INFO of S_AXI_arprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARPROT";
  attribute X_INTERFACE_INFO of S_AXI_awaddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWADDR";
  attribute X_INTERFACE_MODE of S_AXI_awaddr : signal is "slave";
  attribute X_INTERFACE_PARAMETER of S_AXI_awaddr : signal is "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 16, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of S_AXI_awprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWPROT";
  attribute X_INTERFACE_INFO of S_AXI_bresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI BRESP";
  attribute X_INTERFACE_INFO of S_AXI_rdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute X_INTERFACE_INFO of S_AXI_rresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI RRESP";
  attribute X_INTERFACE_INFO of S_AXI_wdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI WDATA";
  attribute X_INTERFACE_INFO of S_AXI_wstrb : signal is "xilinx.com:interface:aximm:1.0 S_AXI WSTRB";
  attribute X_INTERFACE_INFO of in_ports : signal is "xilinx.com:interface:gpio:1.0 GPIO TRI_I";
  attribute X_INTERFACE_MODE of in_ports : signal is "master";
  attribute X_INTERFACE_INFO of out_ports : signal is "xilinx.com:interface:gpio:1.0 GPIO TRI_O";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mmio_subsystem
     port map (
      S_AXI_araddr(15 downto 0) => S_AXI_araddr(15 downto 0),
      S_AXI_arprot(2 downto 0) => B"000",
      S_AXI_arready => S_AXI_arready,
      S_AXI_arvalid => S_AXI_arvalid,
      S_AXI_awaddr(15 downto 0) => S_AXI_awaddr(15 downto 0),
      S_AXI_awprot(2 downto 0) => B"000",
      S_AXI_awready => S_AXI_awready,
      S_AXI_awvalid => S_AXI_awvalid,
      S_AXI_bready => S_AXI_bready,
      S_AXI_bresp(1 downto 0) => S_AXI_bresp(1 downto 0),
      S_AXI_bvalid => S_AXI_bvalid,
      S_AXI_rdata(31 downto 0) => S_AXI_rdata(31 downto 0),
      S_AXI_rready => S_AXI_rready,
      S_AXI_rresp(1 downto 0) => S_AXI_rresp(1 downto 0),
      S_AXI_rvalid => S_AXI_rvalid,
      S_AXI_wdata(31 downto 0) => S_AXI_wdata(31 downto 0),
      S_AXI_wready => S_AXI_wready,
      S_AXI_wstrb(3 downto 0) => B"0000",
      S_AXI_wvalid => S_AXI_wvalid,
      aclk => aclk,
      arst_n => arst_n,
      debug_r_state(2 downto 0) => NLW_inst_debug_r_state_UNCONNECTED(2 downto 0),
      debug_w_next_state(2 downto 0) => NLW_inst_debug_w_next_state_UNCONNECTED(2 downto 0),
      in_ports(8) => '0',
      in_ports(7 downto 4) => in_ports(7 downto 4),
      in_ports(3 downto 0) => B"0000",
      out_ports(3 downto 0) => out_ports(3 downto 0),
      rx => rx,
      tx => tx
    );
end STRUCTURE;
