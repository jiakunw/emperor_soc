-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
-- Date        : Fri Aug 22 20:30:02 2025
-- Host        : wangjiakun-Inspiron-14-Plus-7430 running 64-bit Ubuntu 24.04.1 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/wangjiakun/Development/emperor_soc/hardware/emperor.gen/sources_1/bd/top/ip/top_mmio_subsystem_1_0/top_mmio_subsystem_1_0_stub.vhdl
-- Design      : top_mmio_subsystem_1_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a200tfbg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity top_mmio_subsystem_1_0 is
  Port ( 
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
    debug_addr : out STD_LOGIC_VECTOR ( 7 downto 0 );
    debug_slot_wr_done : out STD_LOGIC_VECTOR ( 15 downto 0 );
    debug_slot_chip_select : out STD_LOGIC_VECTOR ( 15 downto 0 );
    debug_transaction_completed : out STD_LOGIC;
    debug_gpio_r_state : out STD_LOGIC_VECTOR ( 1 downto 0 );
    debug_gpio_w_next_state : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of top_mmio_subsystem_1_0 : entity is "top_mmio_subsystem_1_0,mmio_subsystem,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of top_mmio_subsystem_1_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of top_mmio_subsystem_1_0 : entity is "package_project";
end top_mmio_subsystem_1_0;

architecture stub of top_mmio_subsystem_1_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "aclk,arst_n,S_AXI_awaddr[31:0],S_AXI_awprot[2:0],S_AXI_awvalid,S_AXI_awready,S_AXI_wdata[31:0],S_AXI_wstrb[3:0],S_AXI_wvalid,S_AXI_wready,S_AXI_bresp[1:0],S_AXI_bvalid,S_AXI_bready,S_AXI_araddr[31:0],S_AXI_arprot[2:0],S_AXI_arvalid,S_AXI_arready,S_AXI_rdata[31:0],S_AXI_rresp[1:0],S_AXI_rvalid,S_AXI_rready,in_ports[8:0],out_ports[3:0],rx,tx,debug_r_state[2:0],debug_addr[7:0],debug_slot_wr_done[15:0],debug_slot_chip_select[15:0],debug_transaction_completed,debug_gpio_r_state[1:0],debug_gpio_w_next_state[1:0]";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of aclk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET arst_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of arst_n : signal is "xilinx.com:signal:reset:1.0 arst_n RST";
  attribute X_INTERFACE_MODE of arst_n : signal is "slave";
  attribute X_INTERFACE_PARAMETER of arst_n : signal is "XIL_INTERFACENAME arst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of S_AXI_awaddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWADDR";
  attribute X_INTERFACE_MODE of S_AXI_awaddr : signal is "slave";
  attribute X_INTERFACE_PARAMETER of S_AXI_awaddr : signal is "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of S_AXI_awprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWPROT";
  attribute X_INTERFACE_INFO of S_AXI_awvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  attribute X_INTERFACE_INFO of S_AXI_awready : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  attribute X_INTERFACE_INFO of S_AXI_wdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI WDATA";
  attribute X_INTERFACE_INFO of S_AXI_wstrb : signal is "xilinx.com:interface:aximm:1.0 S_AXI WSTRB";
  attribute X_INTERFACE_INFO of S_AXI_wvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI WVALID";
  attribute X_INTERFACE_INFO of S_AXI_wready : signal is "xilinx.com:interface:aximm:1.0 S_AXI WREADY";
  attribute X_INTERFACE_INFO of S_AXI_bresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI BRESP";
  attribute X_INTERFACE_INFO of S_AXI_bvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  attribute X_INTERFACE_INFO of S_AXI_bready : signal is "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  attribute X_INTERFACE_INFO of S_AXI_araddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARADDR";
  attribute X_INTERFACE_INFO of S_AXI_arprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARPROT";
  attribute X_INTERFACE_INFO of S_AXI_arvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  attribute X_INTERFACE_INFO of S_AXI_arready : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  attribute X_INTERFACE_INFO of S_AXI_rdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute X_INTERFACE_INFO of S_AXI_rresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI RRESP";
  attribute X_INTERFACE_INFO of S_AXI_rvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI RVALID";
  attribute X_INTERFACE_INFO of S_AXI_rready : signal is "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  attribute X_INTERFACE_INFO of in_ports : signal is "xilinx.com:interface:gpio:1.0 GPIO TRI_I";
  attribute X_INTERFACE_MODE of in_ports : signal is "master";
  attribute X_INTERFACE_INFO of out_ports : signal is "xilinx.com:interface:gpio:1.0 GPIO TRI_O";
  attribute X_INTERFACE_INFO of rx : signal is "xilinx.com:interface:uart:1.0 UART RxD";
  attribute X_INTERFACE_MODE of rx : signal is "master";
  attribute X_INTERFACE_INFO of tx : signal is "xilinx.com:interface:uart:1.0 UART TxD";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "mmio_subsystem,Vivado 2024.2";
begin
end;
