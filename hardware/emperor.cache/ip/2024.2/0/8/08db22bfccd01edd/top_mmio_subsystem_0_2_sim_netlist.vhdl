-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
-- Date        : Tue Aug 12 22:13:47 2025
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
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \w_en__0\ : out STD_LOGIC;
    \r_addr_reg[10]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \w_en__0_0\ : out STD_LOGIC;
    \S_AXI_wdata[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_wvalid_0 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \S_AXI_wdata[9]\ : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \FSM_onehot_r_state_reg[1]\ : out STD_LOGIC;
    w_decode_error : out STD_LOGIC;
    \w_decode_error__0\ : out STD_LOGIC;
    \r_addr_reg[7]_0\ : out STD_LOGIC;
    w_wr_done : out STD_LOGIC;
    w_en_wr : out STD_LOGIC;
    w_en_rd : out STD_LOGIC;
    w_wr_done_1 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    w_led_data : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \r_addr_reg[3]_0\ : out STD_LOGIC;
    \r_addr_reg[1]_0\ : out STD_LOGIC;
    \w_en__0_2\ : out STD_LOGIC;
    \r_state_reg[1]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \r_addr_reg[1]_1\ : out STD_LOGIC;
    \r_addr_reg[3]_1\ : out STD_LOGIC;
    S_AXI_awready : out STD_LOGIC;
    debug_w_next_state : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    \r_addr_reg[11]_0\ : out STD_LOGIC;
    \r_addr_reg[9]_0\ : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_wvalid : in STD_LOGIC;
    w_en0 : in STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \r_reg_array_reg[0][0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    decode_error_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    decode_error_reg_0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    tx_full : in STD_LOGIC;
    rx_empty : in STD_LOGIC;
    \out_ports_reg[0]\ : in STD_LOGIC;
    slot_decode_error : in STD_LOGIC_VECTOR ( 2 downto 0 );
    slave_error_reg : in STD_LOGIC;
    slave_error_reg_0 : in STD_LOGIC;
    slot_slave_error : in STD_LOGIC_VECTOR ( 1 downto 0 );
    aclk : in STD_LOGIC;
    \r_state_reg[1]_1\ : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    slot_wr_done : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mmio_controller;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mmio_controller is
  signal \^fsm_onehot_r_state_reg[1]\ : STD_LOGIC;
  signal \FSM_onehot_w_next_state_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_w_next_state_reg[1]_i_3__1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_w_next_state_reg[1]_i_4__0_n_0\ : STD_LOGIC;
  signal \FSM_onehot_w_next_state_reg[1]_i_4_n_0\ : STD_LOGIC;
  signal \S_AXI_bresp[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_bresp[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \^s_axi_wdata[9]\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \^debug_w_next_state\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal decode_error_i_2_n_0 : STD_LOGIC;
  signal decode_error_i_3_n_0 : STD_LOGIC;
  signal decode_error_i_4_n_0 : STD_LOGIC;
  signal \out_ports[3]_i_6_n_0\ : STD_LOGIC;
  signal r_addr : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal \^r_addr_reg[10]_0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^r_addr_reg[3]_0\ : STD_LOGIC;
  signal \^r_addr_reg[7]_0\ : STD_LOGIC;
  signal \r_control[1]_i_2_n_0\ : STD_LOGIC;
  signal \r_dvsr[9]_i_3_n_0\ : STD_LOGIC;
  signal \r_reg_array[15][7]_i_4_n_0\ : STD_LOGIC;
  signal \^r_state_reg[1]_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal reg_addr : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal sel0 : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal w_en_addr : STD_LOGIC;
  signal w_next_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \w_next_state_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \w_next_state_reg[1]_i_3_n_0\ : STD_LOGIC;
  signal wr_done_i_2_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_w_next_state_reg[0]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \FSM_onehot_w_next_state_reg[1]_i_3__1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \FSM_onehot_w_next_state_reg[1]_i_4\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of S_AXI_arready_INST_0 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \S_AXI_bresp[1]_INST_0_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of S_AXI_bvalid_INST_0 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of S_AXI_wready_INST_0 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of decode_error_i_4 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \out_ports[0]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \out_ports[1]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \out_ports[2]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \out_ports[3]_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \r_control[1]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \r_control[1]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \r_dvsr[9]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \r_reg_array[15][0]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \r_reg_array[15][1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \r_reg_array[15][2]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \r_reg_array[15][3]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \r_reg_array[15][4]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \r_reg_array[15][5]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \r_reg_array[15][6]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \r_reg_array[15][7]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \r_reg_array[15][7]_i_4\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of w_decode_error_reg_i_2 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of w_decode_error_reg_i_3 : label is "soft_lutpair1";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \w_next_state_reg[0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \w_next_state_reg[0]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \w_next_state_reg[1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \w_next_state_reg[1]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \w_next_state_reg[1]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of w_slave_error_reg_i_3 : label is "soft_lutpair11";
begin
  \FSM_onehot_r_state_reg[1]\ <= \^fsm_onehot_r_state_reg[1]\;
  \S_AXI_wdata[9]\(9 downto 0) <= \^s_axi_wdata[9]\(9 downto 0);
  debug_w_next_state(1 downto 0) <= \^debug_w_next_state\(1 downto 0);
  \r_addr_reg[10]_0\(2 downto 0) <= \^r_addr_reg[10]_0\(2 downto 0);
  \r_addr_reg[3]_0\ <= \^r_addr_reg[3]_0\;
  \r_addr_reg[7]_0\ <= \^r_addr_reg[7]_0\;
  \r_state_reg[1]_0\(1 downto 0) <= \^r_state_reg[1]_0\(1 downto 0);
\FSM_onehot_w_next_state_reg[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00040000"
    )
        port map (
      I0 => \FSM_onehot_w_next_state_reg[1]_i_4_n_0\,
      I1 => \^r_state_reg[1]_0\(0),
      I2 => \^r_state_reg[1]_0\(1),
      I3 => \FSM_onehot_w_next_state_reg[1]_i_2_n_0\,
      I4 => S_AXI_wvalid,
      O => \w_en__0_2\
    );
\FSM_onehot_w_next_state_reg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000A8"
    )
        port map (
      I0 => Q(0),
      I1 => S_AXI_rready,
      I2 => S_AXI_wvalid,
      I3 => \FSM_onehot_w_next_state_reg[1]_i_2_n_0\,
      I4 => \FSM_onehot_w_next_state_reg[1]_i_3__1_n_0\,
      I5 => \FSM_onehot_w_next_state_reg[1]_i_4_n_0\,
      O => D(0)
    );
\FSM_onehot_w_next_state_reg[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \^r_addr_reg[10]_0\(2),
      I1 => r_addr(11),
      I2 => sel0(4),
      I3 => sel0(7),
      I4 => sel0(6),
      I5 => sel0(5),
      O => \FSM_onehot_w_next_state_reg[1]_i_2_n_0\
    );
\FSM_onehot_w_next_state_reg[1]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => w_en0,
      I1 => r_addr(8),
      I2 => r_addr(9),
      I3 => \^r_addr_reg[10]_0\(2),
      I4 => \FSM_onehot_w_next_state_reg[1]_i_4__0_n_0\,
      I5 => \FSM_onehot_w_next_state_reg[1]_i_3__1_n_0\,
      O => \w_en__0_0\
    );
\FSM_onehot_w_next_state_reg[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000E0000"
    )
        port map (
      I0 => S_AXI_wvalid,
      I1 => S_AXI_rready,
      I2 => \FSM_onehot_w_next_state_reg[1]_i_3__1_n_0\,
      I3 => r_addr(9),
      I4 => r_addr(8),
      I5 => \FSM_onehot_w_next_state_reg[1]_i_2_n_0\,
      O => \w_en__0\
    );
\FSM_onehot_w_next_state_reg[1]_i_3__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => \^r_state_reg[1]_0\(1),
      I1 => \^r_state_reg[1]_0\(0),
      I2 => S_AXI_wvalid,
      O => \FSM_onehot_w_next_state_reg[1]_i_3__1_n_0\
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
\FSM_onehot_w_next_state_reg[1]_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => sel0(5),
      I1 => sel0(6),
      I2 => sel0(7),
      I3 => sel0(4),
      I4 => r_addr(11),
      O => \FSM_onehot_w_next_state_reg[1]_i_4__0_n_0\
    );
S_AXI_arready_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^r_state_reg[1]_0\(0),
      I1 => \^r_state_reg[1]_0\(1),
      O => S_AXI_awready
    );
\S_AXI_bresp[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000800"
    )
        port map (
      I0 => \^r_state_reg[1]_0\(0),
      I1 => \^r_state_reg[1]_0\(1),
      I2 => \S_AXI_bresp[1]_INST_0_i_2_n_0\,
      I3 => \S_AXI_bresp[1]_INST_0_i_1_n_0\,
      I4 => r_addr(11),
      I5 => \^r_addr_reg[10]_0\(2),
      O => S_AXI_bresp(0)
    );
\S_AXI_bresp[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000007000"
    )
        port map (
      I0 => \S_AXI_bresp[1]_INST_0_i_1_n_0\,
      I1 => \S_AXI_bresp[1]_INST_0_i_2_n_0\,
      I2 => \^r_state_reg[1]_0\(1),
      I3 => \^r_state_reg[1]_0\(0),
      I4 => \^r_addr_reg[10]_0\(2),
      I5 => r_addr(11),
      O => S_AXI_bresp(1)
    );
\S_AXI_bresp[1]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DCDF"
    )
        port map (
      I0 => slot_slave_error(1),
      I1 => r_addr(8),
      I2 => r_addr(9),
      I3 => slot_slave_error(0),
      O => \S_AXI_bresp[1]_INST_0_i_1_n_0\
    );
\S_AXI_bresp[1]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CF44CF77"
    )
        port map (
      I0 => slot_decode_error(2),
      I1 => r_addr(9),
      I2 => slot_decode_error(1),
      I3 => r_addr(8),
      I4 => slot_decode_error(0),
      O => \S_AXI_bresp[1]_INST_0_i_2_n_0\
    );
S_AXI_bvalid_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^r_state_reg[1]_0\(1),
      I1 => \^r_state_reg[1]_0\(0),
      O => S_AXI_bvalid
    );
S_AXI_wready_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => S_AXI_wvalid,
      I1 => \^r_state_reg[1]_0\(0),
      I2 => \^r_state_reg[1]_0\(1),
      O => S_AXI_wready
    );
decode_error_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0008000"
    )
        port map (
      I0 => S_AXI_rready,
      I1 => decode_error_i_2_n_0,
      I2 => decode_error_i_3_n_0,
      I3 => decode_error_reg(0),
      I4 => S_AXI_wvalid,
      O => w_decode_error
    );
\decode_error_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFE00FFFEFE0000"
    )
        port map (
      I0 => reg_addr(1),
      I1 => reg_addr(0),
      I2 => \^r_addr_reg[7]_0\,
      I3 => Q(0),
      I4 => Q(1),
      I5 => slot_decode_error(2),
      O => \r_addr_reg[1]_1\
    );
decode_error_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFE00F"
    )
        port map (
      I0 => reg_addr(3),
      I1 => \^r_addr_reg[10]_0\(0),
      I2 => \^r_addr_reg[10]_0\(1),
      I3 => reg_addr(5),
      I4 => decode_error_i_4_n_0,
      I5 => \r_dvsr[9]_i_3_n_0\,
      O => decode_error_i_2_n_0
    );
decode_error_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFEF"
    )
        port map (
      I0 => \^r_addr_reg[10]_0\(1),
      I1 => reg_addr(5),
      I2 => S_AXI_wvalid,
      I3 => \r_dvsr[9]_i_3_n_0\,
      I4 => reg_addr(6),
      I5 => reg_addr(7),
      O => decode_error_i_3_n_0
    );
decode_error_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => reg_addr(7),
      I1 => reg_addr(6),
      O => decode_error_i_4_n_0
    );
empty_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001000000000"
    )
        port map (
      I0 => reg_addr(1),
      I1 => reg_addr(0),
      I2 => S_AXI_wvalid,
      I3 => tx_full,
      I4 => reg_addr(3),
      I5 => \^r_addr_reg[10]_0\(0),
      O => \r_addr_reg[1]_0\
    );
\out_ports[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01000000"
    )
        port map (
      I0 => reg_addr(6),
      I1 => reg_addr(7),
      I2 => reg_addr(5),
      I3 => \^r_addr_reg[3]_0\,
      I4 => \out_ports_reg[0]\,
      O => w_led_data(0)
    );
\out_ports[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => \out_ports[3]_i_6_n_0\,
      I1 => reg_addr(3),
      I2 => \^r_addr_reg[10]_0\(0),
      I3 => reg_addr(0),
      I4 => \out_ports_reg[0]\,
      O => w_led_data(1)
    );
\out_ports[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => \out_ports[3]_i_6_n_0\,
      I1 => \^r_addr_reg[10]_0\(0),
      I2 => reg_addr(3),
      I3 => reg_addr(0),
      I4 => \out_ports_reg[0]\,
      O => w_led_data(2)
    );
\out_ports[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => r_addr(11),
      I1 => sel0(4),
      I2 => r_addr(8),
      I3 => \^r_state_reg[1]_0\(0),
      I4 => \^r_state_reg[1]_0\(1),
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
\out_ports[3]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => \out_ports[3]_i_6_n_0\,
      I1 => reg_addr(3),
      I2 => \^r_addr_reg[10]_0\(0),
      I3 => reg_addr(0),
      I4 => \out_ports_reg[0]\,
      O => w_led_data(3)
    );
\out_ports[3]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => reg_addr(1),
      I1 => reg_addr(5),
      I2 => reg_addr(6),
      I3 => reg_addr(7),
      O => \out_ports[3]_i_6_n_0\
    );
\r_addr[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1110"
    )
        port map (
      I0 => \^r_state_reg[1]_0\(1),
      I1 => \^r_state_reg[1]_0\(0),
      I2 => S_AXI_awvalid,
      I3 => S_AXI_arvalid,
      O => w_en_addr
    );
\r_addr_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => w_en_addr,
      CLR => \r_state_reg[1]_1\,
      D => S_AXI_awaddr(0),
      Q => reg_addr(0)
    );
\r_addr_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => w_en_addr,
      CLR => \r_state_reg[1]_1\,
      D => S_AXI_awaddr(10),
      Q => \^r_addr_reg[10]_0\(2)
    );
\r_addr_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => w_en_addr,
      CLR => \r_state_reg[1]_1\,
      D => S_AXI_awaddr(11),
      Q => r_addr(11)
    );
\r_addr_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => w_en_addr,
      CLR => \r_state_reg[1]_1\,
      D => S_AXI_awaddr(12),
      Q => sel0(4)
    );
\r_addr_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => w_en_addr,
      CLR => \r_state_reg[1]_1\,
      D => S_AXI_awaddr(13),
      Q => sel0(5)
    );
\r_addr_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => w_en_addr,
      CLR => \r_state_reg[1]_1\,
      D => S_AXI_awaddr(14),
      Q => sel0(6)
    );
\r_addr_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => w_en_addr,
      CLR => \r_state_reg[1]_1\,
      D => S_AXI_awaddr(15),
      Q => sel0(7)
    );
\r_addr_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => w_en_addr,
      CLR => \r_state_reg[1]_1\,
      D => S_AXI_awaddr(1),
      Q => reg_addr(1)
    );
\r_addr_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => w_en_addr,
      CLR => \r_state_reg[1]_1\,
      D => S_AXI_awaddr(2),
      Q => \^r_addr_reg[10]_0\(0)
    );
\r_addr_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => w_en_addr,
      CLR => \r_state_reg[1]_1\,
      D => S_AXI_awaddr(3),
      Q => reg_addr(3)
    );
\r_addr_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => w_en_addr,
      CLR => \r_state_reg[1]_1\,
      D => S_AXI_awaddr(4),
      Q => \^r_addr_reg[10]_0\(1)
    );
\r_addr_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => w_en_addr,
      CLR => \r_state_reg[1]_1\,
      D => S_AXI_awaddr(5),
      Q => reg_addr(5)
    );
\r_addr_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => w_en_addr,
      CLR => \r_state_reg[1]_1\,
      D => S_AXI_awaddr(6),
      Q => reg_addr(6)
    );
\r_addr_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => w_en_addr,
      CLR => \r_state_reg[1]_1\,
      D => S_AXI_awaddr(7),
      Q => reg_addr(7)
    );
\r_addr_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => w_en_addr,
      CLR => \r_state_reg[1]_1\,
      D => S_AXI_awaddr(8),
      Q => r_addr(8)
    );
\r_addr_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => w_en_addr,
      CLR => \r_state_reg[1]_1\,
      D => S_AXI_awaddr(9),
      Q => r_addr(9)
    );
\r_control[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \r_control[1]_i_2_n_0\,
      I1 => S_AXI_wvalid,
      I2 => \^r_addr_reg[10]_0\(0),
      I3 => \^s_axi_wdata[9]\(0),
      I4 => \^fsm_onehot_r_state_reg[1]\,
      O => S_AXI_wvalid_0(0)
    );
\r_control[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \r_control[1]_i_2_n_0\,
      I1 => S_AXI_wvalid,
      I2 => \^r_addr_reg[10]_0\(0),
      I3 => \^s_axi_wdata[9]\(1),
      I4 => \^fsm_onehot_r_state_reg[1]\,
      O => S_AXI_wvalid_0(1)
    );
\r_control[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => reg_addr(1),
      I1 => reg_addr(3),
      I2 => reg_addr(0),
      O => \r_control[1]_i_2_n_0\
    );
\r_control[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => Q(1),
      I1 => reg_addr(5),
      I2 => \^r_addr_reg[10]_0\(1),
      I3 => reg_addr(6),
      I4 => reg_addr(7),
      O => \^fsm_onehot_r_state_reg[1]\
    );
\r_dvsr[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000040000000000"
    )
        port map (
      I0 => r_addr(8),
      I1 => r_addr(9),
      I2 => \^r_state_reg[1]_0\(1),
      I3 => \^r_state_reg[1]_0\(0),
      I4 => \FSM_onehot_w_next_state_reg[1]_i_2_n_0\,
      I5 => S_AXI_wdata(0),
      O => \^s_axi_wdata[9]\(0)
    );
\r_dvsr[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000040000000000"
    )
        port map (
      I0 => r_addr(8),
      I1 => r_addr(9),
      I2 => \^r_state_reg[1]_0\(1),
      I3 => \^r_state_reg[1]_0\(0),
      I4 => \FSM_onehot_w_next_state_reg[1]_i_2_n_0\,
      I5 => S_AXI_wdata(1),
      O => \^s_axi_wdata[9]\(1)
    );
\r_dvsr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000040000000000"
    )
        port map (
      I0 => r_addr(8),
      I1 => r_addr(9),
      I2 => \^r_state_reg[1]_0\(1),
      I3 => \^r_state_reg[1]_0\(0),
      I4 => \FSM_onehot_w_next_state_reg[1]_i_2_n_0\,
      I5 => S_AXI_wdata(2),
      O => \^s_axi_wdata[9]\(2)
    );
\r_dvsr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000040000000000"
    )
        port map (
      I0 => r_addr(8),
      I1 => r_addr(9),
      I2 => \^r_state_reg[1]_0\(1),
      I3 => \^r_state_reg[1]_0\(0),
      I4 => \FSM_onehot_w_next_state_reg[1]_i_2_n_0\,
      I5 => S_AXI_wdata(3),
      O => \^s_axi_wdata[9]\(3)
    );
\r_dvsr[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000040000000000"
    )
        port map (
      I0 => r_addr(8),
      I1 => r_addr(9),
      I2 => \^r_state_reg[1]_0\(1),
      I3 => \^r_state_reg[1]_0\(0),
      I4 => \FSM_onehot_w_next_state_reg[1]_i_2_n_0\,
      I5 => S_AXI_wdata(4),
      O => \^s_axi_wdata[9]\(4)
    );
\r_dvsr[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000040000000000"
    )
        port map (
      I0 => r_addr(8),
      I1 => r_addr(9),
      I2 => \^r_state_reg[1]_0\(1),
      I3 => \^r_state_reg[1]_0\(0),
      I4 => \FSM_onehot_w_next_state_reg[1]_i_2_n_0\,
      I5 => S_AXI_wdata(5),
      O => \^s_axi_wdata[9]\(5)
    );
\r_dvsr[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000040000000000"
    )
        port map (
      I0 => r_addr(8),
      I1 => r_addr(9),
      I2 => \^r_state_reg[1]_0\(1),
      I3 => \^r_state_reg[1]_0\(0),
      I4 => \FSM_onehot_w_next_state_reg[1]_i_2_n_0\,
      I5 => S_AXI_wdata(6),
      O => \^s_axi_wdata[9]\(6)
    );
\r_dvsr[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000040000000000"
    )
        port map (
      I0 => r_addr(8),
      I1 => r_addr(9),
      I2 => \^r_state_reg[1]_0\(1),
      I3 => \^r_state_reg[1]_0\(0),
      I4 => \FSM_onehot_w_next_state_reg[1]_i_2_n_0\,
      I5 => S_AXI_wdata(7),
      O => \^s_axi_wdata[9]\(7)
    );
\r_dvsr[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000040000000000"
    )
        port map (
      I0 => r_addr(8),
      I1 => r_addr(9),
      I2 => \^r_state_reg[1]_0\(1),
      I3 => \^r_state_reg[1]_0\(0),
      I4 => \FSM_onehot_w_next_state_reg[1]_i_2_n_0\,
      I5 => S_AXI_wdata(8),
      O => \^s_axi_wdata[9]\(8)
    );
\r_dvsr[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002000"
    )
        port map (
      I0 => Q(1),
      I1 => \^r_addr_reg[7]_0\,
      I2 => S_AXI_wvalid,
      I3 => reg_addr(3),
      I4 => \^r_addr_reg[10]_0\(0),
      I5 => \r_dvsr[9]_i_3_n_0\,
      O => E(0)
    );
\r_dvsr[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000040000000000"
    )
        port map (
      I0 => \FSM_onehot_w_next_state_reg[1]_i_2_n_0\,
      I1 => S_AXI_wdata(9),
      I2 => r_addr(8),
      I3 => r_addr(9),
      I4 => \^r_state_reg[1]_0\(1),
      I5 => \^r_state_reg[1]_0\(0),
      O => \^s_axi_wdata[9]\(9)
    );
\r_dvsr[9]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => reg_addr(1),
      I1 => reg_addr(0),
      O => \r_dvsr[9]_i_3_n_0\
    );
\r_rd_logic[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000010000000000"
    )
        port map (
      I0 => reg_addr(3),
      I1 => \^r_addr_reg[10]_0\(0),
      I2 => \r_dvsr[9]_i_3_n_0\,
      I3 => S_AXI_rready,
      I4 => rx_empty,
      I5 => \^fsm_onehot_r_state_reg[1]\,
      O => w_en_rd
    );
\r_reg_array[15][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => S_AXI_wdata(0),
      I1 => \FSM_onehot_w_next_state_reg[1]_i_2_n_0\,
      I2 => \r_reg_array[15][7]_i_4_n_0\,
      I3 => \r_reg_array_reg[0][0]\(0),
      O => \S_AXI_wdata[7]\(0)
    );
\r_reg_array[15][1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => S_AXI_wdata(1),
      I1 => \FSM_onehot_w_next_state_reg[1]_i_2_n_0\,
      I2 => \r_reg_array[15][7]_i_4_n_0\,
      I3 => \r_reg_array_reg[0][0]\(0),
      O => \S_AXI_wdata[7]\(1)
    );
\r_reg_array[15][2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => S_AXI_wdata(2),
      I1 => \FSM_onehot_w_next_state_reg[1]_i_2_n_0\,
      I2 => \r_reg_array[15][7]_i_4_n_0\,
      I3 => \r_reg_array_reg[0][0]\(0),
      O => \S_AXI_wdata[7]\(2)
    );
\r_reg_array[15][3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => S_AXI_wdata(3),
      I1 => \FSM_onehot_w_next_state_reg[1]_i_2_n_0\,
      I2 => \r_reg_array[15][7]_i_4_n_0\,
      I3 => \r_reg_array_reg[0][0]\(0),
      O => \S_AXI_wdata[7]\(3)
    );
\r_reg_array[15][4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => S_AXI_wdata(4),
      I1 => \FSM_onehot_w_next_state_reg[1]_i_2_n_0\,
      I2 => \r_reg_array[15][7]_i_4_n_0\,
      I3 => \r_reg_array_reg[0][0]\(0),
      O => \S_AXI_wdata[7]\(4)
    );
\r_reg_array[15][5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => S_AXI_wdata(5),
      I1 => \FSM_onehot_w_next_state_reg[1]_i_2_n_0\,
      I2 => \r_reg_array[15][7]_i_4_n_0\,
      I3 => \r_reg_array_reg[0][0]\(0),
      O => \S_AXI_wdata[7]\(5)
    );
\r_reg_array[15][6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => S_AXI_wdata(6),
      I1 => \FSM_onehot_w_next_state_reg[1]_i_2_n_0\,
      I2 => \r_reg_array[15][7]_i_4_n_0\,
      I3 => \r_reg_array_reg[0][0]\(0),
      O => \S_AXI_wdata[7]\(6)
    );
\r_reg_array[15][7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => S_AXI_wdata(7),
      I1 => \FSM_onehot_w_next_state_reg[1]_i_2_n_0\,
      I2 => \r_reg_array[15][7]_i_4_n_0\,
      I3 => \r_reg_array_reg[0][0]\(0),
      O => \S_AXI_wdata[7]\(7)
    );
\r_reg_array[15][7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000020000000000"
    )
        port map (
      I0 => \^r_addr_reg[10]_0\(0),
      I1 => reg_addr(3),
      I2 => tx_full,
      I3 => S_AXI_wvalid,
      I4 => \r_dvsr[9]_i_3_n_0\,
      I5 => \^fsm_onehot_r_state_reg[1]\,
      O => w_en_wr
    );
\r_reg_array[15][7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => \^r_state_reg[1]_0\(0),
      I1 => \^r_state_reg[1]_0\(1),
      I2 => r_addr(9),
      I3 => r_addr(8),
      O => \r_reg_array[15][7]_i_4_n_0\
    );
\r_state_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \r_state_reg[1]_1\,
      D => \^debug_w_next_state\(0),
      Q => \^r_state_reg[1]_0\(0)
    );
\r_state_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \r_state_reg[1]_1\,
      D => \^debug_w_next_state\(1),
      Q => \^r_state_reg[1]_0\(1)
    );
slave_error_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0200FFFF02000000"
    )
        port map (
      I0 => \^fsm_onehot_r_state_reg[1]\,
      I1 => \r_dvsr[9]_i_3_n_0\,
      I2 => reg_addr(3),
      I3 => slave_error_reg,
      I4 => slave_error_reg_0,
      I5 => slot_slave_error(1),
      O => \r_addr_reg[3]_1\
    );
w_decode_error_reg_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFE00"
    )
        port map (
      I0 => \^r_addr_reg[7]_0\,
      I1 => reg_addr(0),
      I2 => reg_addr(1),
      I3 => decode_error_reg_0(0),
      I4 => decode_error_reg_0(1),
      O => \w_decode_error__0\
    );
w_decode_error_reg_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => reg_addr(7),
      I1 => reg_addr(6),
      I2 => \^r_addr_reg[10]_0\(1),
      I3 => reg_addr(5),
      O => \^r_addr_reg[7]_0\
    );
\w_next_state_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => w_next_state(0),
      G => \w_next_state_reg[1]_i_2_n_0\,
      GE => '1',
      Q => \^debug_w_next_state\(0)
    );
\w_next_state_reg[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => S_AXI_bready,
      I1 => \^r_state_reg[1]_0\(1),
      O => w_next_state(0)
    );
\w_next_state_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => w_next_state(1),
      G => \w_next_state_reg[1]_i_2_n_0\,
      GE => '1',
      Q => \^debug_w_next_state\(1)
    );
\w_next_state_reg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444444447444"
    )
        port map (
      I0 => S_AXI_bready,
      I1 => \^r_state_reg[1]_0\(1),
      I2 => \w_next_state_reg[1]_i_3_n_0\,
      I3 => \^r_state_reg[1]_0\(0),
      I4 => r_addr(11),
      I5 => \^r_addr_reg[10]_0\(2),
      O => w_next_state(1)
    );
\w_next_state_reg[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^r_state_reg[1]_0\(0),
      I1 => \^r_state_reg[1]_0\(1),
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
w_slave_error_reg_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => reg_addr(3),
      I1 => \^r_addr_reg[10]_0\(0),
      I2 => reg_addr(0),
      I3 => reg_addr(1),
      O => \^r_addr_reg[3]_0\
    );
wr_done_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0C0"
    )
        port map (
      I0 => S_AXI_wvalid,
      I1 => wr_done_i_2_n_0,
      I2 => Q(1),
      I3 => \^r_addr_reg[7]_0\,
      O => w_wr_done
    );
\wr_done_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => reg_addr(1),
      I1 => reg_addr(0),
      I2 => decode_error_reg(0),
      I3 => S_AXI_wvalid,
      I4 => \^r_addr_reg[7]_0\,
      O => w_wr_done_1
    );
wr_done_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000000"
    )
        port map (
      I0 => S_AXI_rready,
      I1 => reg_addr(3),
      I2 => \^r_addr_reg[10]_0\(0),
      I3 => reg_addr(0),
      I4 => reg_addr(1),
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
    \r_cnt_reg[1]_0\ : out STD_LOGIC;
    tick : out STD_LOGIC;
    w_next_cnt1_carry_0 : in STD_LOGIC_VECTOR ( 9 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    \r_cnt_reg[0]_0\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_buad_generator;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_buad_generator is
  signal load : STD_LOGIC;
  signal \r_cnt[5]_i_2_n_0\ : STD_LOGIC;
  signal \r_cnt[9]_i_2_n_0\ : STD_LOGIC;
  signal r_cnt_reg : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \r_sampling_ticks[4]_i_4_n_0\ : STD_LOGIC;
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
  attribute SOFT_HLUTNM of \r_cnt[0]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \r_cnt[1]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \r_cnt[2]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \r_cnt[3]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \r_cnt[5]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \r_cnt[6]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \r_cnt[7]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \r_cnt[8]_i_1\ : label is "soft_lutpair21";
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
      I0 => \r_sampling_ticks[4]_i_4_n_0\,
      I1 => r_cnt_reg(2),
      I2 => r_cnt_reg(3),
      I3 => r_cnt_reg(0),
      I4 => r_cnt_reg(1),
      O => tick
    );
\r_sampling_ticks[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => r_cnt_reg(1),
      I1 => r_cnt_reg(0),
      I2 => r_cnt_reg(3),
      I3 => r_cnt_reg(2),
      I4 => \r_sampling_ticks[4]_i_4_n_0\,
      I5 => Q(0),
      O => \r_cnt_reg[1]_0\
    );
\r_sampling_ticks[4]_i_4\: unisim.vcomponents.LUT6
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
      O => \r_sampling_ticks[4]_i_4_n_0\
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
    empty_reg_0 : out STD_LOGIC;
    full_reg_0 : out STD_LOGIC;
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
    full_reg_1 : out STD_LOGIC;
    \r_rd_logic_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    aclk : in STD_LOGIC;
    \r_wr_logic_reg[3]_0\ : in STD_LOGIC;
    empty_reg_1 : in STD_LOGIC;
    empty_reg_2 : in STD_LOGIC;
    w_en_wr : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_wvalid : in STD_LOGIC;
    slave_error_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    slave_error_reg_0 : in STD_LOGIC;
    full_reg_2 : in STD_LOGIC;
    \r_rd_logic_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \r_wr_logic_reg[0]_4\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_controller;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_controller is
  signal empty_i_1_n_0 : STD_LOGIC;
  signal empty_i_2_n_0 : STD_LOGIC;
  signal empty_i_5_n_0 : STD_LOGIC;
  signal empty_i_6_n_0 : STD_LOGIC;
  signal \^empty_reg_0\ : STD_LOGIC;
  signal full_i_1_n_0 : STD_LOGIC;
  signal \full_i_2__0_n_0\ : STD_LOGIC;
  signal \full_i_3__0_n_0\ : STD_LOGIC;
  signal \^full_reg_0\ : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \p_0_in__2\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^r_rd_logic_reg[3]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal r_wr_logic_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of empty_i_6 : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \r_rd_logic[1]_i_1__0\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \r_rd_logic[2]_i_1__0\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \r_rd_logic[3]_i_2__0\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \r_wr_logic[0]_i_1__0\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \r_wr_logic[1]_i_1__0\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \r_wr_logic[2]_i_1__0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \r_wr_logic[3]_i_2__0\ : label is "soft_lutpair34";
begin
  empty_reg_0 <= \^empty_reg_0\;
  full_reg_0 <= \^full_reg_0\;
  \r_rd_logic_reg[3]_0\(3 downto 0) <= \^r_rd_logic_reg[3]_0\(3 downto 0);
empty_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEF2FAF0FFF0FFFA"
    )
        port map (
      I0 => empty_i_2_n_0,
      I1 => \^full_reg_0\,
      I2 => Q(0),
      I3 => \^empty_reg_0\,
      I4 => full_reg_2,
      I5 => w_en_wr,
      O => empty_i_1_n_0
    );
empty_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"70000070"
    )
        port map (
      I0 => empty_reg_1,
      I1 => empty_reg_2,
      I2 => empty_i_5_n_0,
      I3 => r_wr_logic_reg(3),
      I4 => empty_i_6_n_0,
      O => empty_i_2_n_0
    );
empty_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0140802010040802"
    )
        port map (
      I0 => r_wr_logic_reg(0),
      I1 => r_wr_logic_reg(1),
      I2 => r_wr_logic_reg(2),
      I3 => \^r_rd_logic_reg[3]_0\(1),
      I4 => \^r_rd_logic_reg[3]_0\(0),
      I5 => \^r_rd_logic_reg[3]_0\(2),
      O => empty_i_5_n_0
    );
empty_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^r_rd_logic_reg[3]_0\(0),
      I1 => \^r_rd_logic_reg[3]_0\(1),
      I2 => \^r_rd_logic_reg[3]_0\(2),
      I3 => \^r_rd_logic_reg[3]_0\(3),
      O => empty_i_6_n_0
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
      I1 => \^full_reg_0\,
      I2 => Q(0),
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
      I5 => \^r_rd_logic_reg[3]_0\(3),
      O => \full_i_2__0_n_0\
    );
\full_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0842100010000842"
    )
        port map (
      I0 => \^r_rd_logic_reg[3]_0\(0),
      I1 => \^r_rd_logic_reg[3]_0\(1),
      I2 => r_wr_logic_reg(0),
      I3 => r_wr_logic_reg(1),
      I4 => r_wr_logic_reg(2),
      I5 => \^r_rd_logic_reg[3]_0\(2),
      O => \full_i_3__0_n_0\
    );
full_reg: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \r_wr_logic_reg[3]_0\,
      D => full_i_1_n_0,
      Q => \^full_reg_0\
    );
\r_rd_logic[0]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(0),
      I1 => \^r_rd_logic_reg[3]_0\(0),
      O => \p_0_in__2\(0)
    );
\r_rd_logic[1]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \^r_rd_logic_reg[3]_0\(1),
      I1 => \^r_rd_logic_reg[3]_0\(0),
      I2 => Q(0),
      O => \p_0_in__2\(1)
    );
\r_rd_logic[2]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"006A"
    )
        port map (
      I0 => \^r_rd_logic_reg[3]_0\(2),
      I1 => \^r_rd_logic_reg[3]_0\(0),
      I2 => \^r_rd_logic_reg[3]_0\(1),
      I3 => Q(0),
      O => \p_0_in__2\(2)
    );
\r_rd_logic[3]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00006AAA"
    )
        port map (
      I0 => \^r_rd_logic_reg[3]_0\(3),
      I1 => \^r_rd_logic_reg[3]_0\(2),
      I2 => \^r_rd_logic_reg[3]_0\(1),
      I3 => \^r_rd_logic_reg[3]_0\(0),
      I4 => Q(0),
      O => \p_0_in__2\(3)
    );
\r_rd_logic_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_rd_logic_reg[0]_0\(0),
      CLR => \r_wr_logic_reg[3]_0\,
      D => \p_0_in__2\(0),
      Q => \^r_rd_logic_reg[3]_0\(0)
    );
\r_rd_logic_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_rd_logic_reg[0]_0\(0),
      CLR => \r_wr_logic_reg[3]_0\,
      D => \p_0_in__2\(1),
      Q => \^r_rd_logic_reg[3]_0\(1)
    );
\r_rd_logic_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_rd_logic_reg[0]_0\(0),
      CLR => \r_wr_logic_reg[3]_0\,
      D => \p_0_in__2\(2),
      Q => \^r_rd_logic_reg[3]_0\(2)
    );
\r_rd_logic_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_rd_logic_reg[0]_0\(0),
      CLR => \r_wr_logic_reg[3]_0\,
      D => \p_0_in__2\(3),
      Q => \^r_rd_logic_reg[3]_0\(3)
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
      I5 => Q(0),
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
      I5 => Q(0),
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
      I5 => Q(0),
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
      I5 => Q(0),
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
      I5 => Q(0),
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
      I5 => Q(0),
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
      I5 => Q(0),
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
      I5 => Q(0),
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
      I5 => Q(0),
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
      I5 => Q(0),
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
      I5 => Q(0),
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
      I5 => Q(0),
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
      I5 => Q(0),
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
      I5 => Q(0),
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
      I5 => Q(0),
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
      I5 => Q(0),
      O => \r_wr_logic_reg[0]_2\(0)
    );
\r_wr_logic[0]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r_wr_logic_reg(0),
      I1 => Q(0),
      O => \p_0_in__0\(0)
    );
\r_wr_logic[1]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => r_wr_logic_reg(0),
      I1 => r_wr_logic_reg(1),
      I2 => Q(0),
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
      I3 => Q(0),
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
      I4 => Q(0),
      O => \p_0_in__0\(3)
    );
\r_wr_logic_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_wr_logic_reg[0]_4\(0),
      CLR => \r_wr_logic_reg[3]_0\,
      D => \p_0_in__0\(0),
      Q => r_wr_logic_reg(0)
    );
\r_wr_logic_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_wr_logic_reg[0]_4\(0),
      CLR => \r_wr_logic_reg[3]_0\,
      D => \p_0_in__0\(1),
      Q => r_wr_logic_reg(1)
    );
\r_wr_logic_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_wr_logic_reg[0]_4\(0),
      CLR => \r_wr_logic_reg[3]_0\,
      D => \p_0_in__0\(2),
      Q => r_wr_logic_reg(2)
    );
\r_wr_logic_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_wr_logic_reg[0]_4\(0),
      CLR => \r_wr_logic_reg[3]_0\,
      D => \p_0_in__0\(3),
      Q => r_wr_logic_reg(3)
    );
slave_error_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACFCAC30"
    )
        port map (
      I0 => \^full_reg_0\,
      I1 => S_AXI_rready,
      I2 => S_AXI_wvalid,
      I3 => slave_error_reg(0),
      I4 => slave_error_reg_0,
      O => full_reg_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_controller_1 is
  port (
    empty_reg_0 : out STD_LOGIC;
    full_reg_0 : out STD_LOGIC;
    aclk : in STD_LOGIC;
    \r_wr_logic_reg[3]_0\ : in STD_LOGIC;
    w_en_rd : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    full_reg_1 : in STD_LOGIC;
    full_reg_2 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    full_reg_3 : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_controller_1 : entity is "fifo_controller";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_controller_1;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_controller_1 is
  signal \empty_i_1__0_n_0\ : STD_LOGIC;
  signal \empty_i_2__0_n_0\ : STD_LOGIC;
  signal \empty_i_3__0_n_0\ : STD_LOGIC;
  signal \empty_i_4__0_n_0\ : STD_LOGIC;
  signal \empty_i_5__0_n_0\ : STD_LOGIC;
  signal \^empty_reg_0\ : STD_LOGIC;
  signal \full_i_1__0_n_0\ : STD_LOGIC;
  signal full_i_2_n_0 : STD_LOGIC;
  signal full_i_4_n_0 : STD_LOGIC;
  signal \^full_reg_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \r_rd_logic[3]_i_1_n_0\ : STD_LOGIC;
  signal r_rd_logic_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal r_wr_logic_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal w_full_next1 : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \empty_i_3__0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \empty_i_4__0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of full_i_3 : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \r_rd_logic[0]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \r_rd_logic[1]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \r_rd_logic[2]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \r_rd_logic[3]_i_2\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \r_wr_logic[1]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \r_wr_logic[2]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \r_wr_logic[3]_i_2\ : label is "soft_lutpair24";
begin
  empty_reg_0 <= \^empty_reg_0\;
  full_reg_0 <= \^full_reg_0\;
\empty_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAF0FFFAFEF2FFF0"
    )
        port map (
      I0 => \empty_i_2__0_n_0\,
      I1 => \^full_reg_0\,
      I2 => Q(0),
      I3 => \^empty_reg_0\,
      I4 => full_reg_3,
      I5 => w_en_rd,
      O => \empty_i_1__0_n_0\
    );
\empty_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0888888800000000"
    )
        port map (
      I0 => \empty_i_3__0_n_0\,
      I1 => \empty_i_4__0_n_0\,
      I2 => full_reg_1,
      I3 => full_reg_2(0),
      I4 => full_reg_2(1),
      I5 => \empty_i_5__0_n_0\,
      O => \empty_i_2__0_n_0\
    );
\empty_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6A95"
    )
        port map (
      I0 => r_rd_logic_reg(2),
      I1 => r_rd_logic_reg(0),
      I2 => r_rd_logic_reg(1),
      I3 => r_wr_logic_reg(2),
      O => \empty_i_3__0_n_0\
    );
\empty_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0690"
    )
        port map (
      I0 => r_wr_logic_reg(1),
      I1 => r_rd_logic_reg(1),
      I2 => r_wr_logic_reg(0),
      I3 => r_rd_logic_reg(0),
      O => \empty_i_4__0_n_0\
    );
\empty_i_5__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAA9555"
    )
        port map (
      I0 => r_rd_logic_reg(3),
      I1 => r_rd_logic_reg(2),
      I2 => r_rd_logic_reg(1),
      I3 => r_rd_logic_reg(0),
      I4 => r_wr_logic_reg(3),
      O => \empty_i_5__0_n_0\
    );
empty_reg: unisim.vcomponents.FDPE
     port map (
      C => aclk,
      CE => '1',
      D => \empty_i_1__0_n_0\,
      PRE => \r_wr_logic_reg[3]_0\,
      Q => \^empty_reg_0\
    );
\full_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A0C0C0A0E0E0C0C"
    )
        port map (
      I0 => full_i_2_n_0,
      I1 => \^full_reg_0\,
      I2 => Q(0),
      I3 => \^empty_reg_0\,
      I4 => full_reg_3,
      I5 => w_en_rd,
      O => \full_i_1__0_n_0\
    );
full_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9000000000000000"
    )
        port map (
      I0 => r_rd_logic_reg(3),
      I1 => w_full_next1(3),
      I2 => full_reg_2(1),
      I3 => full_reg_2(0),
      I4 => full_reg_1,
      I5 => full_i_4_n_0,
      O => full_i_2_n_0
    );
full_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => r_wr_logic_reg(0),
      I1 => r_wr_logic_reg(1),
      I2 => r_wr_logic_reg(2),
      I3 => r_wr_logic_reg(3),
      O => w_full_next1(3)
    );
full_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0140802010040802"
    )
        port map (
      I0 => r_rd_logic_reg(0),
      I1 => r_rd_logic_reg(1),
      I2 => r_wr_logic_reg(2),
      I3 => r_wr_logic_reg(1),
      I4 => r_wr_logic_reg(0),
      I5 => r_rd_logic_reg(2),
      O => full_i_4_n_0
    );
full_reg: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \r_wr_logic_reg[3]_0\,
      D => \full_i_1__0_n_0\,
      Q => \^full_reg_0\
    );
\r_rd_logic[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(0),
      I1 => r_rd_logic_reg(0),
      O => \p_0_in__1\(0)
    );
\r_rd_logic[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => r_rd_logic_reg(1),
      I1 => r_rd_logic_reg(0),
      I2 => Q(0),
      O => \p_0_in__1\(1)
    );
\r_rd_logic[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"006A"
    )
        port map (
      I0 => r_rd_logic_reg(2),
      I1 => r_rd_logic_reg(0),
      I2 => r_rd_logic_reg(1),
      I3 => Q(0),
      O => \p_0_in__1\(2)
    );
\r_rd_logic[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \^empty_reg_0\,
      I1 => w_en_rd,
      I2 => Q(0),
      O => \r_rd_logic[3]_i_1_n_0\
    );
\r_rd_logic[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00006AAA"
    )
        port map (
      I0 => r_rd_logic_reg(3),
      I1 => r_rd_logic_reg(2),
      I2 => r_rd_logic_reg(1),
      I3 => r_rd_logic_reg(0),
      I4 => Q(0),
      O => \p_0_in__1\(3)
    );
\r_rd_logic_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_rd_logic[3]_i_1_n_0\,
      CLR => \r_wr_logic_reg[3]_0\,
      D => \p_0_in__1\(0),
      Q => r_rd_logic_reg(0)
    );
\r_rd_logic_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_rd_logic[3]_i_1_n_0\,
      CLR => \r_wr_logic_reg[3]_0\,
      D => \p_0_in__1\(1),
      Q => r_rd_logic_reg(1)
    );
\r_rd_logic_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_rd_logic[3]_i_1_n_0\,
      CLR => \r_wr_logic_reg[3]_0\,
      D => \p_0_in__1\(2),
      Q => r_rd_logic_reg(2)
    );
\r_rd_logic_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \r_rd_logic[3]_i_1_n_0\,
      CLR => \r_wr_logic_reg[3]_0\,
      D => \p_0_in__1\(3),
      Q => r_rd_logic_reg(3)
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
      CE => E(0),
      CLR => \r_wr_logic_reg[3]_0\,
      D => p_0_in(0),
      Q => r_wr_logic_reg(0)
    );
\r_wr_logic_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \r_wr_logic_reg[3]_0\,
      D => p_0_in(1),
      Q => r_wr_logic_reg(1)
    );
\r_wr_logic_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \r_wr_logic_reg[3]_0\,
      D => p_0_in(2),
      Q => r_wr_logic_reg(2)
    );
\r_wr_logic_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \r_wr_logic_reg[3]_0\,
      D => p_0_in(3),
      Q => r_wr_logic_reg(3)
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
    S_AXI_wvalid_0 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    out_ports : out STD_LOGIC_VECTOR ( 3 downto 0 );
    w_decode_error : in STD_LOGIC;
    aclk : in STD_LOGIC;
    wr_done_reg_0 : in STD_LOGIC;
    w_wr_done : in STD_LOGIC;
    \w_en__0\ : in STD_LOGIC;
    S_AXI_wvalid : in STD_LOGIC;
    \out_ports_reg[0]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \out_ports_reg[0]_1\ : in STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \out_ports_reg[0]_2\ : in STD_LOGIC;
    w_led_data : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gpio;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gpio is
  signal \FSM_onehot_r_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_w_next_state_reg[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \FSM_onehot_w_next_state_reg[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \FSM_onehot_w_next_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_w_next_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^out_ports\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \out_ports[0]_i_1_n_0\ : STD_LOGIC;
  signal \out_ports[1]_i_1_n_0\ : STD_LOGIC;
  signal \out_ports[2]_i_1_n_0\ : STD_LOGIC;
  signal \out_ports[3]_i_1_n_0\ : STD_LOGIC;
  signal w_next_state : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_r_state_reg[0]\ : label is "iSTATE:100,IDLE:001,ACTIVE:010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_r_state_reg[1]\ : label is "iSTATE:100,IDLE:001,ACTIVE:010";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \FSM_onehot_w_next_state_reg[0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \FSM_onehot_w_next_state_reg[0]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_w_next_state_reg[0]_i_1__0\ : label is "soft_lutpair15";
  attribute XILINX_LEGACY_PRIM of \FSM_onehot_w_next_state_reg[1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \FSM_onehot_w_next_state_reg[1]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \FSM_onehot_w_next_state_reg[1]_i_1__0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \FSM_onehot_w_next_state_reg[1]_i_2__1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \out_ports[3]_i_7\ : label is "soft_lutpair14";
begin
  Q(0) <= \^q\(0);
  out_ports(3 downto 0) <= \^out_ports\(3 downto 0);
\FSM_onehot_r_state_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \FSM_onehot_w_next_state_reg_n_0_[0]\,
      PRE => wr_done_reg_0,
      Q => \FSM_onehot_r_state_reg_n_0_[0]\
    );
\FSM_onehot_r_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      CLR => wr_done_reg_0,
      D => \FSM_onehot_w_next_state_reg_n_0_[1]\,
      Q => \^q\(0)
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
      I1 => \^q\(0),
      O => w_next_state
    );
decode_error_reg: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => wr_done_reg_0,
      D => w_decode_error,
      Q => slot_decode_error(0)
    );
\out_ports[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020FFFF00200000"
    )
        port map (
      I0 => \out_ports_reg[0]_1\,
      I1 => \out_ports_reg[0]_0\(1),
      I2 => S_AXI_wdata(0),
      I3 => \out_ports_reg[0]_2\,
      I4 => w_led_data(0),
      I5 => \^out_ports\(0),
      O => \out_ports[0]_i_1_n_0\
    );
\out_ports[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020FFFF00200000"
    )
        port map (
      I0 => \out_ports_reg[0]_1\,
      I1 => \out_ports_reg[0]_0\(1),
      I2 => S_AXI_wdata(1),
      I3 => \out_ports_reg[0]_2\,
      I4 => w_led_data(1),
      I5 => \^out_ports\(1),
      O => \out_ports[1]_i_1_n_0\
    );
\out_ports[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020FFFF00200000"
    )
        port map (
      I0 => \out_ports_reg[0]_1\,
      I1 => \out_ports_reg[0]_0\(1),
      I2 => S_AXI_wdata(2),
      I3 => \out_ports_reg[0]_2\,
      I4 => w_led_data(2),
      I5 => \^out_ports\(2),
      O => \out_ports[2]_i_1_n_0\
    );
\out_ports[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0200FFFF02000000"
    )
        port map (
      I0 => \out_ports_reg[0]_1\,
      I1 => \out_ports_reg[0]_2\,
      I2 => \out_ports_reg[0]_0\(1),
      I3 => S_AXI_wdata(3),
      I4 => w_led_data(3),
      I5 => \^out_ports\(3),
      O => \out_ports[3]_i_1_n_0\
    );
\out_ports[3]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => S_AXI_wvalid,
      I1 => \^q\(0),
      I2 => \out_ports_reg[0]_0\(0),
      O => S_AXI_wvalid_0
    );
\out_ports_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => wr_done_reg_0,
      D => \out_ports[0]_i_1_n_0\,
      Q => \^out_ports\(0)
    );
\out_ports_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => wr_done_reg_0,
      D => \out_ports[1]_i_1_n_0\,
      Q => \^out_ports\(1)
    );
\out_ports_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => wr_done_reg_0,
      D => \out_ports[2]_i_1_n_0\,
      Q => \^out_ports\(2)
    );
\out_ports_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => wr_done_reg_0,
      D => \out_ports[3]_i_1_n_0\,
      Q => \^out_ports\(3)
    );
wr_done_reg: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => wr_done_reg_0,
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
    \r_in_shift_reg[7]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
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
      I2 => \r_in_shift_reg[7]\(3),
      I3 => \r_in_shift_reg[7]\(2),
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
      I2 => \r_in_shift_reg[7]\(1),
      I3 => \r_in_shift_reg[7]\(0),
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
      I2 => \r_in_shift_reg[7]\(1),
      I3 => \r_in_shift_reg[7]\(0),
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
      I2 => \r_in_shift_reg[7]\(1),
      I3 => \r_in_shift_reg[7]\(0),
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
      I2 => \r_in_shift_reg[7]\(1),
      I3 => \r_in_shift_reg[7]\(0),
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
      I2 => \r_in_shift_reg[7]\(3),
      I3 => \r_in_shift_reg[7]\(2),
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
      I2 => \r_in_shift_reg[7]\(1),
      I3 => \r_in_shift_reg[7]\(0),
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
      I2 => \r_in_shift_reg[7]\(1),
      I3 => \r_in_shift_reg[7]\(0),
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
      I2 => \r_in_shift_reg[7]\(1),
      I3 => \r_in_shift_reg[7]\(0),
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
      I2 => \r_in_shift_reg[7]\(1),
      I3 => \r_in_shift_reg[7]\(0),
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
      I2 => \r_in_shift_reg[7]\(3),
      I3 => \r_in_shift_reg[7]\(2),
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
      I2 => \r_in_shift_reg[7]\(1),
      I3 => \r_in_shift_reg[7]\(0),
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
      I2 => \r_in_shift_reg[7]\(1),
      I3 => \r_in_shift_reg[7]\(0),
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
      I2 => \r_in_shift_reg[7]\(1),
      I3 => \r_in_shift_reg[7]\(0),
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
      I2 => \r_in_shift_reg[7]\(1),
      I3 => \r_in_shift_reg[7]\(0),
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
      I2 => \r_in_shift_reg[7]\(3),
      I3 => \r_in_shift_reg[7]\(2),
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
      I2 => \r_in_shift_reg[7]\(1),
      I3 => \r_in_shift_reg[7]\(0),
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
      I2 => \r_in_shift_reg[7]\(1),
      I3 => \r_in_shift_reg[7]\(0),
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
      I2 => \r_in_shift_reg[7]\(1),
      I3 => \r_in_shift_reg[7]\(0),
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
      I2 => \r_in_shift_reg[7]\(1),
      I3 => \r_in_shift_reg[7]\(0),
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
      I2 => \r_in_shift_reg[7]\(3),
      I3 => \r_in_shift_reg[7]\(2),
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
      I2 => \r_in_shift_reg[7]\(1),
      I3 => \r_in_shift_reg[7]\(0),
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
      I2 => \r_in_shift_reg[7]\(1),
      I3 => \r_in_shift_reg[7]\(0),
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
      I2 => \r_in_shift_reg[7]\(1),
      I3 => \r_in_shift_reg[7]\(0),
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
      I2 => \r_in_shift_reg[7]\(1),
      I3 => \r_in_shift_reg[7]\(0),
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
      I2 => \r_in_shift_reg[7]\(3),
      I3 => \r_in_shift_reg[7]\(2),
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
      I2 => \r_in_shift_reg[7]\(1),
      I3 => \r_in_shift_reg[7]\(0),
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
      I2 => \r_in_shift_reg[7]\(1),
      I3 => \r_in_shift_reg[7]\(0),
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
      I2 => \r_in_shift_reg[7]\(1),
      I3 => \r_in_shift_reg[7]\(0),
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
      I2 => \r_in_shift_reg[7]\(1),
      I3 => \r_in_shift_reg[7]\(0),
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
      I2 => \r_in_shift_reg[7]\(3),
      I3 => \r_in_shift_reg[7]\(2),
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
      I2 => \r_in_shift_reg[7]\(1),
      I3 => \r_in_shift_reg[7]\(0),
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
      I2 => \r_in_shift_reg[7]\(1),
      I3 => \r_in_shift_reg[7]\(0),
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
      I2 => \r_in_shift_reg[7]\(1),
      I3 => \r_in_shift_reg[7]\(0),
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
      I2 => \r_in_shift_reg[7]\(1),
      I3 => \r_in_shift_reg[7]\(0),
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
      I2 => \r_in_shift_reg[7]\(3),
      I3 => \r_in_shift_reg[7]\(2),
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
      I2 => \r_in_shift_reg[7]\(1),
      I3 => \r_in_shift_reg[7]\(0),
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
      I2 => \r_in_shift_reg[7]\(1),
      I3 => \r_in_shift_reg[7]\(0),
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
      I2 => \r_in_shift_reg[7]\(1),
      I3 => \r_in_shift_reg[7]\(0),
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
      I2 => \r_in_shift_reg[7]\(1),
      I3 => \r_in_shift_reg[7]\(0),
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rx is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_r_state_reg[1]_0\ : out STD_LOGIC;
    \FSM_sequential_r_state_reg[1]_1\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \r_sampling_ticks_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \r_sampling_ticks_reg[4]_0\ : out STD_LOGIC;
    w_en_rd : in STD_LOGIC;
    \r_wr_logic_reg[0]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    rx : in STD_LOGIC;
    tick : in STD_LOGIC;
    \r_sampling_ticks_reg[4]_1\ : in STD_LOGIC;
    aclk : in STD_LOGIC;
    \r_data_bits_received_reg[3]_0\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rx;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rx is
  signal \FSM_sequential_r_state[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \FSM_sequential_r_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_r_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \^fsm_sequential_r_state_reg[1]_0\ : STD_LOGIC;
  signal \^fsm_sequential_r_state_reg[1]_1\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal r_data_bits_received : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \r_data_bits_received[3]_i_1_n_0\ : STD_LOGIC;
  signal r_sampling_ticks : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal \r_sampling_ticks[4]_i_2_n_0\ : STD_LOGIC;
  signal \^r_sampling_ticks_reg[0]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^r_sampling_ticks_reg[4]_0\ : STD_LOGIC;
  signal w_next_data_bits_received : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal w_next_sampling_ticks : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal w_next_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_r_state[1]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \FSM_sequential_r_state[1]_i_3\ : label is "soft_lutpair29";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_r_state_reg[0]\ : label is "START:01,DATA:10,STOP:11,IDLE:00";
  attribute FSM_ENCODED_STATES of \FSM_sequential_r_state_reg[1]\ : label is "START:01,DATA:10,STOP:11,IDLE:00";
  attribute SOFT_HLUTNM of \r_data_bits_received[1]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \r_data_bits_received[2]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \r_data_bits_received[3]_i_2\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \r_data_bits_received[3]_i_3\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \r_sampling_ticks[1]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \r_sampling_ticks[2]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \r_sampling_ticks[4]_i_2\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \r_wr_logic[3]_i_3\ : label is "soft_lutpair33";
begin
  \FSM_sequential_r_state_reg[1]_0\ <= \^fsm_sequential_r_state_reg[1]_0\;
  \FSM_sequential_r_state_reg[1]_1\(1 downto 0) <= \^fsm_sequential_r_state_reg[1]_1\(1 downto 0);
  \r_sampling_ticks_reg[0]_0\(0) <= \^r_sampling_ticks_reg[0]_0\(0);
  \r_sampling_ticks_reg[4]_0\ <= \^r_sampling_ticks_reg[4]_0\;
\FSM_sequential_r_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCCCCCDDDDCFCF"
    )
        port map (
      I0 => \FSM_sequential_r_state[1]_i_2_n_0\,
      I1 => \FSM_sequential_r_state[0]_i_2__0_n_0\,
      I2 => rx,
      I3 => \FSM_sequential_r_state[1]_i_3_n_0\,
      I4 => \^fsm_sequential_r_state_reg[1]_1\(0),
      I5 => \^fsm_sequential_r_state_reg[1]_1\(1),
      O => w_next_state(0)
    );
\FSM_sequential_r_state[0]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001000000000"
    )
        port map (
      I0 => r_data_bits_received(0),
      I1 => r_data_bits_received(1),
      I2 => \^fsm_sequential_r_state_reg[1]_1\(1),
      I3 => \^fsm_sequential_r_state_reg[1]_1\(0),
      I4 => r_data_bits_received(2),
      I5 => r_data_bits_received(3),
      O => \FSM_sequential_r_state[0]_i_2__0_n_0\
    );
\FSM_sequential_r_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F588"
    )
        port map (
      I0 => \^fsm_sequential_r_state_reg[1]_1\(0),
      I1 => \FSM_sequential_r_state[1]_i_2_n_0\,
      I2 => \FSM_sequential_r_state[1]_i_3_n_0\,
      I3 => \^fsm_sequential_r_state_reg[1]_1\(1),
      O => w_next_state(1)
    );
\FSM_sequential_r_state[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000100"
    )
        port map (
      I0 => r_sampling_ticks(4),
      I1 => r_sampling_ticks(2),
      I2 => \^r_sampling_ticks_reg[0]_0\(0),
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
      I1 => \^r_sampling_ticks_reg[0]_0\(0),
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
      Q => \^fsm_sequential_r_state_reg[1]_1\(0)
    );
\FSM_sequential_r_state_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \r_data_bits_received_reg[3]_0\,
      D => w_next_state(1),
      Q => \^fsm_sequential_r_state_reg[1]_1\(1)
    );
\r_data_bits_received[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^fsm_sequential_r_state_reg[1]_1\(1),
      I1 => r_data_bits_received(0),
      O => w_next_data_bits_received(0)
    );
\r_data_bits_received[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"48"
    )
        port map (
      I0 => r_data_bits_received(0),
      I1 => \^fsm_sequential_r_state_reg[1]_1\(1),
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
      I2 => \^fsm_sequential_r_state_reg[1]_1\(1),
      I3 => r_data_bits_received(2),
      O => w_next_data_bits_received(2)
    );
\r_data_bits_received[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0B"
    )
        port map (
      I0 => \^r_sampling_ticks_reg[4]_0\,
      I1 => \^fsm_sequential_r_state_reg[1]_1\(1),
      I2 => \^fsm_sequential_r_state_reg[1]_1\(0),
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
      I3 => \^fsm_sequential_r_state_reg[1]_1\(1),
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
      I3 => \^r_sampling_ticks_reg[0]_0\(0),
      I4 => r_sampling_ticks(1),
      O => \^r_sampling_ticks_reg[4]_0\
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
\r_sampling_ticks[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \r_sampling_ticks[4]_i_2_n_0\,
      I1 => tick,
      I2 => \^r_sampling_ticks_reg[0]_0\(0),
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
      I3 => \^r_sampling_ticks_reg[0]_0\(0),
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
      I3 => \^r_sampling_ticks_reg[0]_0\(0),
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
      I4 => \^r_sampling_ticks_reg[0]_0\(0),
      I5 => r_sampling_ticks(1),
      O => w_next_sampling_ticks(3)
    );
\r_sampling_ticks[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2888888888888888"
    )
        port map (
      I0 => \r_sampling_ticks[4]_i_2_n_0\,
      I1 => r_sampling_ticks(4),
      I2 => r_sampling_ticks(3),
      I3 => r_sampling_ticks(1),
      I4 => \r_sampling_ticks_reg[4]_1\,
      I5 => r_sampling_ticks(2),
      O => w_next_sampling_ticks(4)
    );
\r_sampling_ticks[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A2F2"
    )
        port map (
      I0 => \^fsm_sequential_r_state_reg[1]_1\(0),
      I1 => \FSM_sequential_r_state[1]_i_2_n_0\,
      I2 => \^fsm_sequential_r_state_reg[1]_1\(1),
      I3 => \^r_sampling_ticks_reg[4]_0\,
      O => \r_sampling_ticks[4]_i_2_n_0\
    );
\r_sampling_ticks_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \r_data_bits_received_reg[3]_0\,
      D => w_next_sampling_ticks(0),
      Q => \^r_sampling_ticks_reg[0]_0\(0)
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
\r_wr_logic[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^fsm_sequential_r_state_reg[1]_1\(1),
      I1 => \^fsm_sequential_r_state_reg[1]_1\(0),
      I2 => \^r_sampling_ticks_reg[4]_0\,
      O => \^fsm_sequential_r_state_reg[1]_0\
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
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    w_en0 : out STD_LOGIC;
    \w_decode_error__0\ : in STD_LOGIC;
    aclk : in STD_LOGIC;
    slave_error_reg_0 : in STD_LOGIC;
    \w_en__0\ : in STD_LOGIC;
    slave_error_reg_1 : in STD_LOGIC;
    slave_error_reg_2 : in STD_LOGIC;
    S_AXI_wvalid : in STD_LOGIC;
    S_AXI_rready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_timer;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_timer is
  signal \FSM_onehot_r_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_w_next_state_reg[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_w_next_state_reg[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_w_next_state_reg[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \FSM_onehot_w_next_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_w_next_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_w_next_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^slot_decode_error\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^slot_slave_error\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal w_decode_error : STD_LOGIC;
  signal w_decode_error_reg_i_1_n_0 : STD_LOGIC;
  signal w_next_state : STD_LOGIC;
  signal w_slave_error : STD_LOGIC;
  signal \w_slave_error__0\ : STD_LOGIC;
  signal w_slave_error_reg_i_1_n_0 : STD_LOGIC;
  signal w_wr_done : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_r_state_reg[0]\ : label is "ACTIVE:010,DONE:100,IDLE:001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_r_state_reg[1]\ : label is "ACTIVE:010,DONE:100,IDLE:001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_r_state_reg[2]\ : label is "ACTIVE:010,DONE:100,IDLE:001";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \FSM_onehot_w_next_state_reg[0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \FSM_onehot_w_next_state_reg[0]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_w_next_state_reg[0]_i_1__1\ : label is "soft_lutpair19";
  attribute XILINX_LEGACY_PRIM of \FSM_onehot_w_next_state_reg[1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \FSM_onehot_w_next_state_reg[1]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \FSM_onehot_w_next_state_reg[1]_i_1__1\ : label is "soft_lutpair19";
  attribute XILINX_LEGACY_PRIM of \FSM_onehot_w_next_state_reg[2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \FSM_onehot_w_next_state_reg[2]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \FSM_onehot_w_next_state_reg[2]_i_1__0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \FSM_onehot_w_next_state_reg[2]_i_2\ : label is "soft_lutpair17";
  attribute XILINX_LEGACY_PRIM of w_decode_error_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of w_decode_error_reg : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of w_decode_error_reg_i_1 : label is "soft_lutpair18";
  attribute XILINX_LEGACY_PRIM of w_slave_error_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of w_slave_error_reg : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of w_slave_error_reg_i_1 : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of w_slave_error_reg_i_2 : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \wr_done_i_1__1\ : label is "soft_lutpair16";
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
      PRE => slave_error_reg_0,
      Q => \FSM_onehot_r_state_reg_n_0_[0]\
    );
\FSM_onehot_r_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      CLR => slave_error_reg_0,
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
      CLR => slave_error_reg_0,
      D => \FSM_onehot_w_next_state_reg_n_0_[2]\,
      Q => \^q\(1)
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
      D => \FSM_onehot_w_next_state_reg[1]_i_1__1_n_0\,
      G => w_next_state,
      GE => '1',
      Q => \FSM_onehot_w_next_state_reg_n_0_[1]\
    );
\FSM_onehot_w_next_state_reg[1]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_r_state_reg_n_0_[0]\,
      I1 => \w_en__0\,
      O => \FSM_onehot_w_next_state_reg[1]_i_1__1_n_0\
    );
\FSM_onehot_w_next_state_reg[1]_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => S_AXI_rready,
      I1 => S_AXI_wvalid,
      O => w_en0
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
decode_error_reg: unisim.vcomponents.FDPE
     port map (
      C => aclk,
      CE => '1',
      D => w_decode_error,
      PRE => slave_error_reg_0,
      Q => \^slot_decode_error\(0)
    );
slave_error_reg: unisim.vcomponents.FDPE
     port map (
      C => aclk,
      CE => '1',
      D => w_slave_error,
      PRE => slave_error_reg_0,
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
w_slave_error_reg_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2000"
    )
        port map (
      I0 => \^q\(0),
      I1 => slave_error_reg_1,
      I2 => slave_error_reg_2,
      I3 => S_AXI_wvalid,
      I4 => \^q\(1),
      O => \w_slave_error__0\
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
      CLR => slave_error_reg_0,
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
  attribute SOFT_HLUTNM of \FSM_sequential_r_state[0]_i_3\ : label is "soft_lutpair40";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_r_state_reg[0]\ : label is "START:01,DATA:10,STOP:11,IDLE:00";
  attribute FSM_ENCODED_STATES of \FSM_sequential_r_state_reg[1]\ : label is "START:01,DATA:10,STOP:11,IDLE:00";
  attribute SOFT_HLUTNM of empty_i_3 : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \r_data_bits_sent[0]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \r_data_bits_sent[1]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \r_data_bits_sent[2]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \r_in_shift[0]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \r_in_shift[1]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \r_in_shift[2]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \r_in_shift[3]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \r_in_shift[4]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \r_in_shift[5]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \r_in_shift[6]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \r_in_shift[7]_i_2\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \r_rd_logic[3]_i_1__0\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \r_wr_logic[3]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of tx_INST_0 : label is "soft_lutpair39";
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
empty_i_3: unisim.vcomponents.LUT2
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
    full_reg : out STD_LOGIC;
    aclk : in STD_LOGIC;
    \r_wr_logic_reg[3]\ : in STD_LOGIC;
    w_en_rd : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    full_reg_0 : in STD_LOGIC;
    full_reg_1 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    full_reg_2 : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo is
begin
control: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_controller_1
     port map (
      E(0) => E(0),
      Q(0) => Q(0),
      aclk => aclk,
      empty_reg_0 => empty_reg,
      full_reg_0 => full_reg,
      full_reg_1 => full_reg_0,
      full_reg_2(1 downto 0) => full_reg_1(1 downto 0),
      full_reg_3 => full_reg_2,
      \r_wr_logic_reg[3]_0\ => \r_wr_logic_reg[3]\,
      w_en_rd => w_en_rd
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_0 is
  port (
    empty_reg : out STD_LOGIC;
    arst_n_0 : out STD_LOGIC;
    full_reg : out STD_LOGIC;
    full_reg_0 : out STD_LOGIC;
    \r_reg_array__0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    aclk : in STD_LOGIC;
    arst_n : in STD_LOGIC;
    empty_reg_0 : in STD_LOGIC;
    empty_reg_1 : in STD_LOGIC;
    w_en_wr : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_wvalid : in STD_LOGIC;
    slave_error_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    slave_error_reg_0 : in STD_LOGIC;
    full_reg_1 : in STD_LOGIC;
    \r_reg_array_reg[0][7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
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
  signal control_n_2 : STD_LOGIC;
  signal control_n_3 : STD_LOGIC;
  signal control_n_4 : STD_LOGIC;
  signal control_n_5 : STD_LOGIC;
  signal control_n_6 : STD_LOGIC;
  signal control_n_7 : STD_LOGIC;
  signal control_n_8 : STD_LOGIC;
  signal control_n_9 : STD_LOGIC;
  signal r_rd_logic_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  arst_n_0 <= \^arst_n_0\;
control: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_controller
     port map (
      E(0) => control_n_2,
      Q(0) => Q(0),
      S_AXI_rready => S_AXI_rready,
      S_AXI_wvalid => S_AXI_wvalid,
      aclk => aclk,
      empty_reg_0 => empty_reg,
      empty_reg_1 => empty_reg_0,
      empty_reg_2 => empty_reg_1,
      full_reg_0 => full_reg,
      full_reg_1 => full_reg_0,
      full_reg_2 => full_reg_1,
      \r_rd_logic_reg[0]_0\(0) => E(0),
      \r_rd_logic_reg[3]_0\(3 downto 0) => r_rd_logic_reg(3 downto 0),
      \r_wr_logic_reg[0]_0\(0) => control_n_3,
      \r_wr_logic_reg[0]_1\(0) => control_n_7,
      \r_wr_logic_reg[0]_2\(0) => control_n_11,
      \r_wr_logic_reg[0]_3\(0) => control_n_15,
      \r_wr_logic_reg[0]_4\(0) => \r_wr_logic_reg[0]\(0),
      \r_wr_logic_reg[1]_0\(0) => control_n_4,
      \r_wr_logic_reg[1]_1\(0) => control_n_5,
      \r_wr_logic_reg[1]_10\(0) => control_n_17,
      \r_wr_logic_reg[1]_2\(0) => control_n_6,
      \r_wr_logic_reg[1]_3\(0) => control_n_8,
      \r_wr_logic_reg[1]_4\(0) => control_n_9,
      \r_wr_logic_reg[1]_5\(0) => control_n_10,
      \r_wr_logic_reg[1]_6\(0) => control_n_12,
      \r_wr_logic_reg[1]_7\(0) => control_n_13,
      \r_wr_logic_reg[1]_8\(0) => control_n_14,
      \r_wr_logic_reg[1]_9\(0) => control_n_16,
      \r_wr_logic_reg[3]_0\ => \^arst_n_0\,
      slave_error_reg(0) => slave_error_reg(0),
      slave_error_reg_0 => slave_error_reg_0,
      w_en_wr => w_en_wr
    );
rf: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_file
     port map (
      E(0) => control_n_17,
      aclk => aclk,
      arst_n => arst_n,
      arst_n_0 => \^arst_n_0\,
      \r_in_shift_reg[7]\(3 downto 0) => r_rd_logic_reg(3 downto 0),
      \r_reg_array__0\(7 downto 0) => \r_reg_array__0\(7 downto 0),
      \r_reg_array_reg[0][7]_0\(7 downto 0) => \r_reg_array_reg[0][7]\(7 downto 0),
      \r_reg_array_reg[0][7]_1\(0) => control_n_2,
      \r_reg_array_reg[10][7]_0\(0) => control_n_12,
      \r_reg_array_reg[11][7]_0\(0) => control_n_13,
      \r_reg_array_reg[12][7]_0\(0) => control_n_14,
      \r_reg_array_reg[13][7]_0\(0) => control_n_15,
      \r_reg_array_reg[14][7]_0\(0) => control_n_16,
      \r_reg_array_reg[1][7]_0\(0) => control_n_3,
      \r_reg_array_reg[2][7]_0\(0) => control_n_4,
      \r_reg_array_reg[3][7]_0\(0) => control_n_5,
      \r_reg_array_reg[4][7]_0\(0) => control_n_6,
      \r_reg_array_reg[5][7]_0\(0) => control_n_7,
      \r_reg_array_reg[6][7]_0\(0) => control_n_8,
      \r_reg_array_reg[7][7]_0\(0) => control_n_9,
      \r_reg_array_reg[8][7]_0\(0) => control_n_10,
      \r_reg_array_reg[9][7]_0\(0) => control_n_11
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_core is
  port (
    empty_reg : out STD_LOGIC;
    arst_n_0 : out STD_LOGIC;
    full_reg : out STD_LOGIC;
    full_reg_0 : out STD_LOGIC;
    tx : out STD_LOGIC;
    aclk : in STD_LOGIC;
    arst_n : in STD_LOGIC;
    empty_reg_0 : in STD_LOGIC;
    empty_reg_1 : in STD_LOGIC;
    w_en_wr : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    w_en_rd : in STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_wvalid : in STD_LOGIC;
    slave_error_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    rx : in STD_LOGIC;
    w_next_cnt1_carry : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \r_reg_array_reg[0][7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_core;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_core is
  signal \^arst_n_0\ : STD_LOGIC;
  signal buad_gen_n_0 : STD_LOGIC;
  signal \^empty_reg\ : STD_LOGIC;
  signal \^full_reg\ : STD_LOGIC;
  signal r_sampling_ticks : STD_LOGIC_VECTOR ( 0 to 0 );
  signal r_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \rf/r_reg_array__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rx_fifo_n_1 : STD_LOGIC;
  signal rx_inst_n_0 : STD_LOGIC;
  signal rx_inst_n_1 : STD_LOGIC;
  signal rx_inst_n_5 : STD_LOGIC;
  signal tick : STD_LOGIC;
  signal tx_fifo_n_0 : STD_LOGIC;
  signal tx_inst_n_0 : STD_LOGIC;
  signal tx_inst_n_1 : STD_LOGIC;
  signal tx_inst_n_3 : STD_LOGIC;
begin
  arst_n_0 <= \^arst_n_0\;
  empty_reg <= \^empty_reg\;
  full_reg <= \^full_reg\;
buad_gen: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_buad_generator
     port map (
      Q(0) => r_sampling_ticks(0),
      aclk => aclk,
      \r_cnt_reg[0]_0\ => \^arst_n_0\,
      \r_cnt_reg[1]_0\ => buad_gen_n_0,
      tick => tick,
      w_next_cnt1_carry_0(9 downto 0) => w_next_cnt1_carry(9 downto 0)
    );
rx_fifo: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo
     port map (
      E(0) => rx_inst_n_0,
      Q(0) => Q(0),
      aclk => aclk,
      empty_reg => \^empty_reg\,
      full_reg => rx_fifo_n_1,
      full_reg_0 => rx_inst_n_5,
      full_reg_1(1 downto 0) => r_state(1 downto 0),
      full_reg_2 => rx_inst_n_1,
      \r_wr_logic_reg[3]\ => \^arst_n_0\,
      w_en_rd => w_en_rd
    );
rx_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rx
     port map (
      E(0) => rx_inst_n_0,
      \FSM_sequential_r_state_reg[1]_0\ => rx_inst_n_1,
      \FSM_sequential_r_state_reg[1]_1\(1 downto 0) => r_state(1 downto 0),
      Q(0) => Q(0),
      aclk => aclk,
      \r_data_bits_received_reg[3]_0\ => \^arst_n_0\,
      \r_sampling_ticks_reg[0]_0\(0) => r_sampling_ticks(0),
      \r_sampling_ticks_reg[4]_0\ => rx_inst_n_5,
      \r_sampling_ticks_reg[4]_1\ => buad_gen_n_0,
      \r_wr_logic_reg[0]\ => rx_fifo_n_1,
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
      empty_reg => tx_fifo_n_0,
      empty_reg_0 => empty_reg_0,
      empty_reg_1 => empty_reg_1,
      full_reg => \^full_reg\,
      full_reg_0 => full_reg_0,
      full_reg_1 => tx_inst_n_3,
      \r_reg_array__0\(7 downto 0) => \rf/r_reg_array__0\(7 downto 0),
      \r_reg_array_reg[0][7]\(7 downto 0) => \r_reg_array_reg[0][7]\(7 downto 0),
      \r_wr_logic_reg[0]\(0) => tx_inst_n_0,
      slave_error_reg(0) => slave_error_reg(0),
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
      \r_rd_logic_reg[0]\ => tx_fifo_n_0,
      \r_reg_array__0\(7 downto 0) => \rf/r_reg_array__0\(7 downto 0),
      \r_wr_logic_reg[0]\ => \^full_reg\,
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
    slot_decode_error : out STD_LOGIC_VECTOR ( 0 to 0 );
    slot_slave_error : out STD_LOGIC_VECTOR ( 0 to 0 );
    rx_empty : out STD_LOGIC;
    tx_full : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \r_control_reg[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    full_reg : out STD_LOGIC;
    tx : out STD_LOGIC;
    \FSM_onehot_r_state_reg[0]_0\ : out STD_LOGIC;
    w_wr_done : in STD_LOGIC;
    aclk : in STD_LOGIC;
    decode_error_reg_0 : in STD_LOGIC;
    slave_error_reg_0 : in STD_LOGIC;
    arst_n : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    \w_en__0\ : in STD_LOGIC;
    empty_reg : in STD_LOGIC;
    empty_reg_0 : in STD_LOGIC;
    w_en_wr : in STD_LOGIC;
    w_en_rd : in STD_LOGIC;
    S_AXI_wvalid : in STD_LOGIC;
    slave_error_reg_1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    rx : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \r_dvsr_reg[9]_0\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \r_control_reg[1]_1\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \r_reg_array_reg[0][7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart is
  signal \FSM_onehot_r_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_w_next_state_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_w_next_state_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_w_next_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_w_next_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_w_next_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^arst_n_0\ : STD_LOGIC;
  signal r_control : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^r_control_reg[1]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal r_dvsr : STD_LOGIC_VECTOR ( 9 downto 0 );
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
  attribute SOFT_HLUTNM of \FSM_onehot_w_next_state_reg[2]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \FSM_onehot_w_next_state_reg[2]_i_2__0\ : label is "soft_lutpair46";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
  arst_n_0 <= \^arst_n_0\;
  \r_control_reg[1]_0\(0) <= \^r_control_reg[1]_0\(0);
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
      Q(1) => \^r_control_reg[1]_0\(0),
      Q(0) => r_control(0),
      S_AXI_rready => S_AXI_rready,
      S_AXI_wvalid => S_AXI_wvalid,
      aclk => aclk,
      arst_n => arst_n,
      arst_n_0 => \^arst_n_0\,
      empty_reg => rx_empty,
      empty_reg_0 => empty_reg,
      empty_reg_1 => empty_reg_0,
      full_reg => tx_full,
      full_reg_0 => full_reg,
      \r_reg_array_reg[0][7]\(7 downto 0) => \r_reg_array_reg[0][7]\(7 downto 0),
      rx => rx,
      slave_error_reg(0) => slave_error_reg_1(0),
      tx => tx,
      w_en_rd => w_en_rd,
      w_en_wr => w_en_wr,
      w_next_cnt1_carry(9 downto 0) => r_dvsr(9 downto 0)
    );
decode_error_reg: unisim.vcomponents.FDPE
     port map (
      C => aclk,
      CE => '1',
      D => decode_error_reg_0,
      PRE => \^arst_n_0\,
      Q => slot_decode_error(0)
    );
\r_control_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \^arst_n_0\,
      D => \r_control_reg[1]_1\(0),
      Q => r_control(0)
    );
\r_control_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \^arst_n_0\,
      D => \r_control_reg[1]_1\(1),
      Q => \^r_control_reg[1]_0\(0)
    );
\r_dvsr_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arst_n_0\,
      D => \r_dvsr_reg[9]_0\(0),
      Q => r_dvsr(0)
    );
\r_dvsr_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arst_n_0\,
      D => \r_dvsr_reg[9]_0\(1),
      Q => r_dvsr(1)
    );
\r_dvsr_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arst_n_0\,
      D => \r_dvsr_reg[9]_0\(2),
      Q => r_dvsr(2)
    );
\r_dvsr_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arst_n_0\,
      D => \r_dvsr_reg[9]_0\(3),
      Q => r_dvsr(3)
    );
\r_dvsr_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arst_n_0\,
      D => \r_dvsr_reg[9]_0\(4),
      Q => r_dvsr(4)
    );
\r_dvsr_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arst_n_0\,
      D => \r_dvsr_reg[9]_0\(5),
      Q => r_dvsr(5)
    );
\r_dvsr_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arst_n_0\,
      D => \r_dvsr_reg[9]_0\(6),
      Q => r_dvsr(6)
    );
\r_dvsr_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arst_n_0\,
      D => \r_dvsr_reg[9]_0\(7),
      Q => r_dvsr(7)
    );
\r_dvsr_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arst_n_0\,
      D => \r_dvsr_reg[9]_0\(8),
      Q => r_dvsr(8)
    );
\r_dvsr_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => E(0),
      CLR => \^arst_n_0\,
      D => \r_dvsr_reg[9]_0\(9),
      Q => r_dvsr(9)
    );
slave_error_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \FSM_onehot_r_state_reg[0]_0\
    );
slave_error_reg: unisim.vcomponents.FDPE
     port map (
      C => aclk,
      CE => '1',
      D => slave_error_reg_0,
      PRE => \^arst_n_0\,
      Q => slot_slave_error(0)
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
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
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
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
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
  signal \^s_axi_awready\ : STD_LOGIC;
  signal control_n_0 : STD_LOGIC;
  signal control_n_10 : STD_LOGIC;
  signal control_n_11 : STD_LOGIC;
  signal control_n_12 : STD_LOGIC;
  signal control_n_13 : STD_LOGIC;
  signal control_n_26 : STD_LOGIC;
  signal control_n_29 : STD_LOGIC;
  signal control_n_39 : STD_LOGIC;
  signal control_n_40 : STD_LOGIC;
  signal control_n_44 : STD_LOGIC;
  signal control_n_45 : STD_LOGIC;
  signal control_n_53 : STD_LOGIC;
  signal control_n_54 : STD_LOGIC;
  signal control_n_6 : STD_LOGIC;
  signal control_n_7 : STD_LOGIC;
  signal control_n_8 : STD_LOGIC;
  signal control_n_9 : STD_LOGIC;
  signal \^debug_r_state\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^debug_w_next_state\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal emperor_gpio_n_2 : STD_LOGIC;
  signal emperor_gpio_n_3 : STD_LOGIC;
  signal emperor_timer_n_3 : STD_LOGIC;
  signal emperor_timer_n_4 : STD_LOGIC;
  signal emperor_uart_n_1 : STD_LOGIC;
  signal emperor_uart_n_11 : STD_LOGIC;
  signal emperor_uart_n_6 : STD_LOGIC;
  signal emperor_uart_n_7 : STD_LOGIC;
  signal emperor_uart_n_9 : STD_LOGIC;
  signal r_addr : STD_LOGIC_VECTOR ( 10 to 10 );
  signal r_control : STD_LOGIC_VECTOR ( 1 to 1 );
  signal reg_addr : STD_LOGIC_VECTOR ( 4 downto 2 );
  signal rx_empty : STD_LOGIC;
  signal slot_decode_error : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal slot_slave_error : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \slot_wr_data[2]\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal slot_wr_done : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal tx_full : STD_LOGIC;
  signal w_control : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal w_decode_error : STD_LOGIC;
  signal \w_decode_error__0\ : STD_LOGIC;
  signal w_en0 : STD_LOGIC;
  signal \w_en__0\ : STD_LOGIC;
  signal \w_en__0_1\ : STD_LOGIC;
  signal \w_en__0_2\ : STD_LOGIC;
  signal w_en_dvsr : STD_LOGIC;
  signal w_en_rd : STD_LOGIC;
  signal w_en_wr : STD_LOGIC;
  signal w_led_data : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal w_wr_done : STD_LOGIC;
  signal w_wr_done_0 : STD_LOGIC;
begin
  S_AXI_arready <= \^s_axi_awready\;
  S_AXI_awready <= \^s_axi_awready\;
  S_AXI_rdata(31) <= \<const0>\;
  S_AXI_rdata(30) <= \<const0>\;
  S_AXI_rdata(29) <= \<const0>\;
  S_AXI_rdata(28) <= \<const0>\;
  S_AXI_rdata(27) <= \<const0>\;
  S_AXI_rdata(26) <= \<const0>\;
  S_AXI_rdata(25) <= \<const0>\;
  S_AXI_rdata(24) <= \<const0>\;
  S_AXI_rdata(23) <= \<const0>\;
  S_AXI_rdata(22) <= \<const0>\;
  S_AXI_rdata(21) <= \<const0>\;
  S_AXI_rdata(20) <= \<const0>\;
  S_AXI_rdata(19) <= \<const0>\;
  S_AXI_rdata(18) <= \<const0>\;
  S_AXI_rdata(17) <= \<const0>\;
  S_AXI_rdata(16) <= \<const0>\;
  S_AXI_rdata(15) <= \<const0>\;
  S_AXI_rdata(14) <= \<const0>\;
  S_AXI_rdata(13) <= \<const0>\;
  S_AXI_rdata(12) <= \<const0>\;
  S_AXI_rdata(11) <= \<const0>\;
  S_AXI_rdata(10) <= \<const0>\;
  S_AXI_rdata(9) <= \<const0>\;
  S_AXI_rdata(8) <= \<const0>\;
  S_AXI_rdata(7) <= \<const0>\;
  S_AXI_rdata(6) <= \<const0>\;
  S_AXI_rdata(5) <= \<const0>\;
  S_AXI_rdata(4) <= \<const0>\;
  S_AXI_rdata(3) <= \<const0>\;
  S_AXI_rdata(2) <= \<const0>\;
  S_AXI_rdata(1) <= \<const0>\;
  S_AXI_rdata(0) <= \<const0>\;
  S_AXI_rresp(1) <= \<const0>\;
  S_AXI_rresp(0) <= \<const0>\;
  S_AXI_rvalid <= \<const0>\;
  debug_r_state(2) <= \<const0>\;
  debug_r_state(1 downto 0) <= \^debug_r_state\(1 downto 0);
  debug_w_next_state(2) <= \<const0>\;
  debug_w_next_state(1 downto 0) <= \^debug_w_next_state\(1 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
control: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mmio_controller
     port map (
      D(0) => control_n_0,
      E(0) => w_en_dvsr,
      \FSM_onehot_r_state_reg[1]\ => control_n_26,
      Q(1) => emperor_uart_n_6,
      Q(0) => emperor_uart_n_7,
      S_AXI_arvalid => S_AXI_arvalid,
      S_AXI_awaddr(15 downto 0) => S_AXI_awaddr(15 downto 0),
      S_AXI_awready => \^s_axi_awready\,
      S_AXI_awvalid => S_AXI_awvalid,
      S_AXI_bready => S_AXI_bready,
      S_AXI_bresp(1 downto 0) => S_AXI_bresp(1 downto 0),
      S_AXI_bvalid => S_AXI_bvalid,
      S_AXI_rready => S_AXI_rready,
      S_AXI_wdata(9 downto 0) => S_AXI_wdata(9 downto 0),
      \S_AXI_wdata[7]\(7) => control_n_6,
      \S_AXI_wdata[7]\(6) => control_n_7,
      \S_AXI_wdata[7]\(5) => control_n_8,
      \S_AXI_wdata[7]\(4) => control_n_9,
      \S_AXI_wdata[7]\(3) => control_n_10,
      \S_AXI_wdata[7]\(2) => control_n_11,
      \S_AXI_wdata[7]\(1) => control_n_12,
      \S_AXI_wdata[7]\(0) => control_n_13,
      \S_AXI_wdata[9]\(9 downto 0) => \slot_wr_data[2]\(9 downto 0),
      S_AXI_wready => S_AXI_wready,
      S_AXI_wvalid => S_AXI_wvalid,
      S_AXI_wvalid_0(1 downto 0) => w_control(1 downto 0),
      aclk => aclk,
      debug_w_next_state(1 downto 0) => \^debug_w_next_state\(1 downto 0),
      decode_error_reg(0) => emperor_gpio_n_3,
      decode_error_reg_0(1) => emperor_timer_n_3,
      decode_error_reg_0(0) => emperor_timer_n_4,
      \out_ports_reg[0]\ => emperor_gpio_n_2,
      \r_addr_reg[10]_0\(2) => r_addr(10),
      \r_addr_reg[10]_0\(1) => reg_addr(4),
      \r_addr_reg[10]_0\(0) => reg_addr(2),
      \r_addr_reg[11]_0\ => control_n_53,
      \r_addr_reg[1]_0\ => control_n_40,
      \r_addr_reg[1]_1\ => control_n_44,
      \r_addr_reg[3]_0\ => control_n_39,
      \r_addr_reg[3]_1\ => control_n_45,
      \r_addr_reg[7]_0\ => control_n_29,
      \r_addr_reg[9]_0\ => control_n_54,
      \r_reg_array_reg[0][0]\(0) => r_control(1),
      \r_state_reg[1]_0\(1 downto 0) => \^debug_r_state\(1 downto 0),
      \r_state_reg[1]_1\ => emperor_uart_n_1,
      rx_empty => rx_empty,
      slave_error_reg => emperor_uart_n_9,
      slave_error_reg_0 => emperor_uart_n_11,
      slot_decode_error(2 downto 0) => slot_decode_error(2 downto 0),
      slot_slave_error(1) => slot_slave_error(2),
      slot_slave_error(0) => slot_slave_error(0),
      slot_wr_done(2 downto 0) => slot_wr_done(2 downto 0),
      tx_full => tx_full,
      w_decode_error => w_decode_error,
      \w_decode_error__0\ => \w_decode_error__0\,
      w_en0 => w_en0,
      \w_en__0\ => \w_en__0_2\,
      \w_en__0_0\ => \w_en__0_1\,
      \w_en__0_2\ => \w_en__0\,
      w_en_rd => w_en_rd,
      w_en_wr => w_en_wr,
      w_led_data(3 downto 0) => w_led_data(3 downto 0),
      w_wr_done => w_wr_done_0,
      w_wr_done_1 => w_wr_done
    );
emperor_gpio: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gpio
     port map (
      Q(0) => emperor_gpio_n_3,
      S_AXI_wdata(3 downto 0) => S_AXI_wdata(3 downto 0),
      S_AXI_wvalid => S_AXI_wvalid,
      S_AXI_wvalid_0 => emperor_gpio_n_2,
      aclk => aclk,
      out_ports(3 downto 0) => out_ports(3 downto 0),
      \out_ports_reg[0]_0\(1) => r_addr(10),
      \out_ports_reg[0]_0\(0) => reg_addr(4),
      \out_ports_reg[0]_1\ => control_n_53,
      \out_ports_reg[0]_2\ => control_n_54,
      slot_decode_error(0) => slot_decode_error(1),
      slot_wr_done(0) => slot_wr_done(1),
      w_decode_error => w_decode_error,
      \w_en__0\ => \w_en__0_2\,
      w_led_data(3 downto 0) => w_led_data(3 downto 0),
      w_wr_done => w_wr_done,
      wr_done_reg_0 => emperor_uart_n_1
    );
emperor_timer: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_timer
     port map (
      Q(1) => emperor_timer_n_3,
      Q(0) => emperor_timer_n_4,
      S_AXI_rready => S_AXI_rready,
      S_AXI_wvalid => S_AXI_wvalid,
      aclk => aclk,
      slave_error_reg_0 => emperor_uart_n_1,
      slave_error_reg_1 => control_n_29,
      slave_error_reg_2 => control_n_39,
      slot_decode_error(0) => slot_decode_error(0),
      slot_slave_error(0) => slot_slave_error(0),
      slot_wr_done(0) => slot_wr_done(0),
      \w_decode_error__0\ => \w_decode_error__0\,
      w_en0 => w_en0,
      \w_en__0\ => \w_en__0_1\
    );
emperor_uart: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart
     port map (
      D(0) => control_n_0,
      E(0) => w_en_dvsr,
      \FSM_onehot_r_state_reg[0]_0\ => emperor_uart_n_11,
      Q(1) => emperor_uart_n_6,
      Q(0) => emperor_uart_n_7,
      S_AXI_bready => S_AXI_bready,
      S_AXI_rready => S_AXI_rready,
      S_AXI_wvalid => S_AXI_wvalid,
      aclk => aclk,
      arst_n => arst_n,
      arst_n_0 => emperor_uart_n_1,
      decode_error_reg_0 => control_n_44,
      empty_reg => control_n_40,
      empty_reg_0 => control_n_26,
      full_reg => emperor_uart_n_9,
      \r_control_reg[1]_0\(0) => r_control(1),
      \r_control_reg[1]_1\(1 downto 0) => w_control(1 downto 0),
      \r_dvsr_reg[9]_0\(9 downto 0) => \slot_wr_data[2]\(9 downto 0),
      \r_reg_array_reg[0][7]\(7) => control_n_6,
      \r_reg_array_reg[0][7]\(6) => control_n_7,
      \r_reg_array_reg[0][7]\(5) => control_n_8,
      \r_reg_array_reg[0][7]\(4) => control_n_9,
      \r_reg_array_reg[0][7]\(3) => control_n_10,
      \r_reg_array_reg[0][7]\(2) => control_n_11,
      \r_reg_array_reg[0][7]\(1) => control_n_12,
      \r_reg_array_reg[0][7]\(0) => control_n_13,
      rx => rx,
      rx_empty => rx_empty,
      slave_error_reg_0 => control_n_45,
      slave_error_reg_1(0) => reg_addr(2),
      slot_decode_error(0) => slot_decode_error(2),
      slot_slave_error(0) => slot_slave_error(2),
      slot_wr_done(0) => slot_wr_done(2),
      tx => tx,
      tx_full => tx_full,
      \w_en__0\ => \w_en__0\,
      w_en_rd => w_en_rd,
      w_en_wr => w_en_wr,
      w_wr_done => w_wr_done_0
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
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
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
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
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
  signal \<const0>\ : STD_LOGIC;
  signal \^debug_r_state\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^debug_w_next_state\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_S_AXI_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_S_AXI_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_inst_S_AXI_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_debug_r_state_UNCONNECTED : STD_LOGIC_VECTOR ( 2 to 2 );
  signal NLW_inst_debug_w_next_state_UNCONNECTED : STD_LOGIC_VECTOR ( 2 to 2 );
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
  attribute X_INTERFACE_PARAMETER of S_AXI_awaddr : signal is "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
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
  S_AXI_rdata(31) <= \<const0>\;
  S_AXI_rdata(30) <= \<const0>\;
  S_AXI_rdata(29) <= \<const0>\;
  S_AXI_rdata(28) <= \<const0>\;
  S_AXI_rdata(27) <= \<const0>\;
  S_AXI_rdata(26) <= \<const0>\;
  S_AXI_rdata(25) <= \<const0>\;
  S_AXI_rdata(24) <= \<const0>\;
  S_AXI_rdata(23) <= \<const0>\;
  S_AXI_rdata(22) <= \<const0>\;
  S_AXI_rdata(21) <= \<const0>\;
  S_AXI_rdata(20) <= \<const0>\;
  S_AXI_rdata(19) <= \<const0>\;
  S_AXI_rdata(18) <= \<const0>\;
  S_AXI_rdata(17) <= \<const0>\;
  S_AXI_rdata(16) <= \<const0>\;
  S_AXI_rdata(15) <= \<const0>\;
  S_AXI_rdata(14) <= \<const0>\;
  S_AXI_rdata(13) <= \<const0>\;
  S_AXI_rdata(12) <= \<const0>\;
  S_AXI_rdata(11) <= \<const0>\;
  S_AXI_rdata(10) <= \<const0>\;
  S_AXI_rdata(9) <= \<const0>\;
  S_AXI_rdata(8) <= \<const0>\;
  S_AXI_rdata(7) <= \<const0>\;
  S_AXI_rdata(6) <= \<const0>\;
  S_AXI_rdata(5) <= \<const0>\;
  S_AXI_rdata(4) <= \<const0>\;
  S_AXI_rdata(3) <= \<const0>\;
  S_AXI_rdata(2) <= \<const0>\;
  S_AXI_rdata(1) <= \<const0>\;
  S_AXI_rdata(0) <= \<const0>\;
  S_AXI_rresp(1) <= \<const0>\;
  S_AXI_rresp(0) <= \<const0>\;
  S_AXI_rvalid <= \<const0>\;
  debug_r_state(2) <= \<const0>\;
  debug_r_state(1 downto 0) <= \^debug_r_state\(1 downto 0);
  debug_w_next_state(2) <= \<const0>\;
  debug_w_next_state(1 downto 0) <= \^debug_w_next_state\(1 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mmio_subsystem
     port map (
      S_AXI_araddr(31 downto 0) => B"00000000000000000000000000000000",
      S_AXI_arprot(2 downto 0) => B"000",
      S_AXI_arready => S_AXI_arready,
      S_AXI_arvalid => S_AXI_arvalid,
      S_AXI_awaddr(31 downto 16) => B"0000000000000000",
      S_AXI_awaddr(15 downto 0) => S_AXI_awaddr(15 downto 0),
      S_AXI_awprot(2 downto 0) => B"000",
      S_AXI_awready => S_AXI_awready,
      S_AXI_awvalid => S_AXI_awvalid,
      S_AXI_bready => S_AXI_bready,
      S_AXI_bresp(1 downto 0) => S_AXI_bresp(1 downto 0),
      S_AXI_bvalid => S_AXI_bvalid,
      S_AXI_rdata(31 downto 0) => NLW_inst_S_AXI_rdata_UNCONNECTED(31 downto 0),
      S_AXI_rready => S_AXI_rready,
      S_AXI_rresp(1 downto 0) => NLW_inst_S_AXI_rresp_UNCONNECTED(1 downto 0),
      S_AXI_rvalid => NLW_inst_S_AXI_rvalid_UNCONNECTED,
      S_AXI_wdata(31 downto 10) => B"0000000000000000000000",
      S_AXI_wdata(9 downto 0) => S_AXI_wdata(9 downto 0),
      S_AXI_wready => S_AXI_wready,
      S_AXI_wstrb(3 downto 0) => B"0000",
      S_AXI_wvalid => S_AXI_wvalid,
      aclk => aclk,
      arst_n => arst_n,
      debug_r_state(2) => NLW_inst_debug_r_state_UNCONNECTED(2),
      debug_r_state(1 downto 0) => \^debug_r_state\(1 downto 0),
      debug_w_next_state(2) => NLW_inst_debug_w_next_state_UNCONNECTED(2),
      debug_w_next_state(1 downto 0) => \^debug_w_next_state\(1 downto 0),
      in_ports(8 downto 0) => B"000000000",
      out_ports(3 downto 0) => out_ports(3 downto 0),
      rx => rx,
      tx => tx
    );
end STRUCTURE;
