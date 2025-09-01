-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
-- Date        : Sun Aug 31 05:32:07 2025
-- Host        : wangjiakun-Inspiron-14-Plus-7430 running 64-bit Ubuntu 24.04.1 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ microblaze_riscv_0_stub.vhdl
-- Design      : microblaze_riscv_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a200tfbg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    Clk : in STD_LOGIC;
    Reset : in STD_LOGIC;
    Interrupt : in STD_LOGIC;
    Interrupt_Address : in STD_LOGIC_VECTOR ( 0 to 31 );
    Interrupt_Ack : out STD_LOGIC_VECTOR ( 0 to 1 );
    Instr_Addr : out STD_LOGIC_VECTOR ( 0 to 31 );
    Instr : in STD_LOGIC_VECTOR ( 0 to 31 );
    IFetch : out STD_LOGIC;
    I_AS : out STD_LOGIC;
    IReady : in STD_LOGIC;
    IWAIT : in STD_LOGIC;
    ICE : in STD_LOGIC;
    IUE : in STD_LOGIC;
    Data_Addr : out STD_LOGIC_VECTOR ( 0 to 31 );
    Data_Read : in STD_LOGIC_VECTOR ( 0 to 31 );
    Data_Write : out STD_LOGIC_VECTOR ( 0 to 31 );
    D_AS : out STD_LOGIC;
    Read_Strobe : out STD_LOGIC;
    Write_Strobe : out STD_LOGIC;
    DReady : in STD_LOGIC;
    DWait : in STD_LOGIC;
    DCE : in STD_LOGIC;
    DUE : in STD_LOGIC;
    Byte_Enable : out STD_LOGIC_VECTOR ( 0 to 3 );
    Dbg_Clk : in STD_LOGIC;
    Dbg_TDI : in STD_LOGIC;
    Dbg_TDO : out STD_LOGIC;
    Dbg_Reg_En : in STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Shift : in STD_LOGIC;
    Dbg_Capture : in STD_LOGIC;
    Dbg_Update : in STD_LOGIC;
    Debug_Rst : in STD_LOGIC;
    Dbg_Disable : in STD_LOGIC
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "microblaze_riscv_0,riscv,{}";
  attribute core_generation_info : string;
  attribute core_generation_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "microblaze_riscv_0,riscv,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=microblaze_riscv,x_ipVersion=1.0,x_ipCoreRevision=3,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_FREQ=0,C_USE_CONFIG_RESET=0,C_NUM_SYNC_FF_CLK=2,C_NUM_SYNC_FF_CLK_IRQ=1,C_NUM_SYNC_FF_CLK_DEBUG=2,C_NUM_SYNC_FF_DBG_CLK=1,C_NUM_SYNC_FF_DBG_TRACE_CLK=2,C_FAULT_TOLERANT=0,C_ECC_USE_CE_EXCEPTION=0,C_LOCKSTEP_SLAVE=0,C_LOCKSTEP_MASTER=0,C_TEMPORAL_DEPTH=0,C_FAMILY=artix7,C_PART=xc7a200tfbg676-2,C_DATA_SIZE=32,C_LMB_DATA_SIZE=32,C_INSTR_SIZE=32,C_IADDR_SIZE=32,C_PIADDR_SIZE=32,C_DADDR_SIZE=32,C_PDADDR_SIZE=32,C_INSTANCE=microblaze_riscv_0,C_AVOID_PRIMITIVES=0,C_OPTIMIZATION=0,C_INTERCONNECT=2,C_BASE_VECTORS=0x0000000000000000,C_ARCHID=0x0000000000000001,C_IMPID=0x0000000000000001,C_HARTID=0x0000000000000000,C_M_AXI_DP_THREAD_ID_WIDTH=1,C_M_AXI_DP_DATA_WIDTH=32,C_M_AXI_DP_ADDR_WIDTH=32,C_M_AXI_DP_EXCLUSIVE_ACCESS=0,C_M_AXI_D_BUS_EXCEPTION=1,C_M_AXI_IP_THREAD_ID_WIDTH=1,C_M_AXI_IP_DATA_WIDTH=32,C_M_AXI_IP_ADDR_WIDTH=32,C_M_AXI_I_BUS_EXCEPTION=1,C_D_LMB=1,C_D_LMB_PROTOCOL=0,C_D_AXI=0,C_I_LMB=1,C_I_LMB_PROTOCOL=0,C_I_AXI=0,C_S_AXI=0,C_USE_MULDIV=0,C_USE_ATOMIC=0,C_USE_FPU=0,C_USE_COMPRESSION=0,C_USE_BITMAN=0,C_FSL_LINKS=0,C_USE_EXTENDED_FSL_INSTR=0,C_MMU_PRIVILEGED_INSTR=0,C_FSL_EXCEPTION=0,C_IMPRECISE_EXCEPTIONS=0,C_MISALIGNED_EXCEPTIONS=1,C_ILL_INSTR_EXCEPTION=2,C_PMP_ENTRIES=0,C_PMP_GRANULARITY=2,C_USE_INTERRUPT=0,C_USE_NON_SECURE=1,C_USE_EXT_BRK=1,C_USE_EXT_NM_BRK=1,C_USE_SLEEP=0,C_USE_MMU=0,C_USE_BARREL=1,C_USE_COUNTERS=1,C_USE_BRANCH_TARGET_CACHE=0,C_BRANCH_TARGET_CACHE_SIZE=0,C_PC_WIDTH=32,C_DEBUG_ENABLED=1,C_DEBUG_INTERFACE=0,C_NUMBER_OF_PC_BRK=1,C_NUMBER_OF_RD_ADDR_BRK=0,C_NUMBER_OF_WR_ADDR_BRK=0,C_DEBUG_EVENT_COUNTERS=0,C_DEBUG_LATENCY_COUNTERS=0,C_DEBUG_COUNTER_WIDTH=64,C_DEBUG_TRACE_SIZE=0,C_DEBUG_EXTERNAL_TRACE=0,C_DEBUG_TRACE_ASYNC_RESET=0,C_DEBUG_PROFILE_SIZE=0,C_INTERRUPT_IS_EDGE=0,C_EDGE_IS_POSITIVE=1,C_ASYNC_INTERRUPT=1,C_ASYNC_WAKEUP=1,C_M0_AXIS_DATA_WIDTH=32,C_S0_AXIS_DATA_WIDTH=32,C_M1_AXIS_DATA_WIDTH=32,C_S1_AXIS_DATA_WIDTH=32,C_M2_AXIS_DATA_WIDTH=32,C_S2_AXIS_DATA_WIDTH=32,C_M3_AXIS_DATA_WIDTH=32,C_S3_AXIS_DATA_WIDTH=32,C_M4_AXIS_DATA_WIDTH=32,C_S4_AXIS_DATA_WIDTH=32,C_M5_AXIS_DATA_WIDTH=32,C_S5_AXIS_DATA_WIDTH=32,C_M6_AXIS_DATA_WIDTH=32,C_S6_AXIS_DATA_WIDTH=32,C_M7_AXIS_DATA_WIDTH=32,C_S7_AXIS_DATA_WIDTH=32,C_M8_AXIS_DATA_WIDTH=32,C_S8_AXIS_DATA_WIDTH=32,C_M9_AXIS_DATA_WIDTH=32,C_S9_AXIS_DATA_WIDTH=32,C_M10_AXIS_DATA_WIDTH=32,C_S10_AXIS_DATA_WIDTH=32,C_M11_AXIS_DATA_WIDTH=32,C_S11_AXIS_DATA_WIDTH=32,C_M12_AXIS_DATA_WIDTH=32,C_S12_AXIS_DATA_WIDTH=32,C_M13_AXIS_DATA_WIDTH=32,C_S13_AXIS_DATA_WIDTH=32,C_M14_AXIS_DATA_WIDTH=32,C_S14_AXIS_DATA_WIDTH=32,C_M15_AXIS_DATA_WIDTH=32,C_S15_AXIS_DATA_WIDTH=32,C_ICACHE_BASEADDR=0x0000000000000000,C_ICACHE_HIGHADDR=0x000000003fffffff,C_USE_ICACHE=0,C_ICACHE_BYTE_SIZE=8192,C_ICACHE_LINE_LEN=4,C_ICACHE_STREAMS=0,C_ICACHE_VICTIMS=0,C_ICACHE_FORCE_TAG_LUTRAM=0,C_ICACHE_DATA_WIDTH=0,C_M_AXI_IC_THREAD_ID_WIDTH=1,C_M_AXI_IC_DATA_WIDTH=32,C_M_AXI_IC_ADDR_WIDTH=32,C_M_AXI_IC_USER_VALUE=31,C_M_AXI_IC_AWUSER_WIDTH=5,C_M_AXI_IC_ARUSER_WIDTH=5,C_M_AXI_IC_WUSER_WIDTH=1,C_M_AXI_IC_RUSER_WIDTH=1,C_M_AXI_IC_BUSER_WIDTH=1,C_DCACHE_BASEADDR=0x0000000000000000,C_DCACHE_HIGHADDR=0x000000003fffffff,C_USE_DCACHE=0,C_DCACHE_BYTE_SIZE=8192,C_DCACHE_LINE_LEN=4,C_DCACHE_USE_WRITEBACK=0,C_DCACHE_VICTIMS=0,C_DCACHE_FORCE_TAG_LUTRAM=0,C_DCACHE_DATA_WIDTH=0,C_M_AXI_DC_THREAD_ID_WIDTH=1,C_M_AXI_DC_DATA_WIDTH=32,C_M_AXI_DC_ADDR_WIDTH=32,C_M_AXI_DC_EXCLUSIVE_ACCESS=0,C_M_AXI_DC_USER_VALUE=31,C_M_AXI_DC_AWUSER_WIDTH=5,C_M_AXI_DC_ARUSER_WIDTH=5,C_M_AXI_DC_WUSER_WIDTH=1,C_M_AXI_DC_RUSER_WIDTH=1,C_M_AXI_DC_BUSER_WIDTH=1}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "Clk,Reset,Interrupt,Interrupt_Address[0:31],Interrupt_Ack[0:1],Instr_Addr[0:31],Instr[0:31],IFetch,I_AS,IReady,IWAIT,ICE,IUE,Data_Addr[0:31],Data_Read[0:31],Data_Write[0:31],D_AS,Read_Strobe,Write_Strobe,DReady,DWait,DCE,DUE,Byte_Enable[0:3],Dbg_Clk,Dbg_TDI,Dbg_TDO,Dbg_Reg_En[0:7],Dbg_Shift,Dbg_Capture,Dbg_Update,Debug_Rst,Dbg_Disable";
  attribute x_interface_info : string;
  attribute x_interface_info of Clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute x_interface_mode : string;
  attribute x_interface_mode of Clk : signal is "slave CLK.CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of Clk : signal is "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_BUSIF M0_AXIS:S0_AXIS:M1_AXIS:S1_AXIS:M2_AXIS:S2_AXIS:M3_AXIS:S3_AXIS:M4_AXIS:S4_AXIS:M5_AXIS:S5_AXIS:M6_AXIS:S6_AXIS:M7_AXIS:S7_AXIS:M8_AXIS:S8_AXIS:M9_AXIS:S9_AXIS:M10_AXIS:S10_AXIS:M11_AXIS:S11_AXIS:M12_AXIS:S12_AXIS:M13_AXIS:S13_AXIS:M14_AXIS:S14_AXIS:M15_AXIS:S15_AXIS:DLMB:ILMB:M_AXI_DP:M_AXI_IP:M_AXI_DC:M_AXI_IC:M_ACE_DC:M_ACE_IC:MON_DLMB:MON_ILMB:MON_AXI_DP:MON_AXI_IP:MON_AXI_DC:MON_AXI_IC:MON_ACE_DC:MON_ACE_IC:S_AXI, ASSOCIATED_RESET Reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute x_interface_info of Reset : signal is "xilinx.com:signal:reset:1.0 RST.RESET RST";
  attribute x_interface_mode of Reset : signal is "slave RST.RESET";
  attribute x_interface_parameter of Reset : signal is "XIL_INTERFACENAME RST.RESET, POLARITY ACTIVE_HIGH, TYPE PROCESSOR, INSERT_VIP 0";
  attribute x_interface_info of Interrupt : signal is "xilinx.com:interface:mbinterrupt:1.0 INTERRUPT INTERRUPT";
  attribute x_interface_mode of Interrupt : signal is "slave INTERRUPT";
  attribute x_interface_parameter of Interrupt : signal is "XIL_INTERFACENAME INTERRUPT, SENSITIVITY LEVEL_HIGH, LOW_LATENCY 0";
  attribute x_interface_info of Interrupt_Address : signal is "xilinx.com:interface:mbinterrupt:1.0 INTERRUPT ADDRESS";
  attribute x_interface_info of Interrupt_Ack : signal is "xilinx.com:interface:mbinterrupt:1.0 INTERRUPT ACK";
  attribute x_interface_info of Instr_Addr : signal is "xilinx.com:interface:lmb:1.0 ILMB ABUS";
  attribute x_interface_mode of Instr_Addr : signal is "master ILMB";
  attribute x_interface_parameter of Instr_Addr : signal is "XIL_INTERFACENAME ILMB, ADDR_WIDTH 32, DATA_WIDTH 32, PROTOCOL STANDARD, READ_WRITE_MODE READ_ONLY";
  attribute x_interface_info of Instr : signal is "xilinx.com:interface:lmb:1.0 ILMB READDBUS";
  attribute x_interface_info of IFetch : signal is "xilinx.com:interface:lmb:1.0 ILMB READSTROBE";
  attribute x_interface_info of I_AS : signal is "xilinx.com:interface:lmb:1.0 ILMB ADDRSTROBE";
  attribute x_interface_info of IReady : signal is "xilinx.com:interface:lmb:1.0 ILMB READY";
  attribute x_interface_info of IWAIT : signal is "xilinx.com:interface:lmb:1.0 ILMB WAIT";
  attribute x_interface_info of ICE : signal is "xilinx.com:interface:lmb:1.0 ILMB CE";
  attribute x_interface_info of IUE : signal is "xilinx.com:interface:lmb:1.0 ILMB UE";
  attribute x_interface_info of Data_Addr : signal is "xilinx.com:interface:lmb:1.0 DLMB ABUS";
  attribute x_interface_mode of Data_Addr : signal is "master DLMB";
  attribute x_interface_parameter of Data_Addr : signal is "XIL_INTERFACENAME DLMB, ADDR_WIDTH 32, DATA_WIDTH 32, PROTOCOL STANDARD, READ_WRITE_MODE READ_WRITE";
  attribute x_interface_info of Data_Read : signal is "xilinx.com:interface:lmb:1.0 DLMB READDBUS";
  attribute x_interface_info of Data_Write : signal is "xilinx.com:interface:lmb:1.0 DLMB WRITEDBUS";
  attribute x_interface_info of D_AS : signal is "xilinx.com:interface:lmb:1.0 DLMB ADDRSTROBE";
  attribute x_interface_info of Read_Strobe : signal is "xilinx.com:interface:lmb:1.0 DLMB READSTROBE";
  attribute x_interface_info of Write_Strobe : signal is "xilinx.com:interface:lmb:1.0 DLMB WRITESTROBE";
  attribute x_interface_info of DReady : signal is "xilinx.com:interface:lmb:1.0 DLMB READY";
  attribute x_interface_info of DWait : signal is "xilinx.com:interface:lmb:1.0 DLMB WAIT";
  attribute x_interface_info of DCE : signal is "xilinx.com:interface:lmb:1.0 DLMB CE";
  attribute x_interface_info of DUE : signal is "xilinx.com:interface:lmb:1.0 DLMB UE";
  attribute x_interface_info of Byte_Enable : signal is "xilinx.com:interface:lmb:1.0 DLMB BE";
  attribute x_interface_info of Dbg_Clk : signal is "xilinx.com:interface:mbdebug:3.0 DEBUG CLK";
  attribute x_interface_mode of Dbg_Clk : signal is "slave DEBUG";
  attribute x_interface_info of Dbg_TDI : signal is "xilinx.com:interface:mbdebug:3.0 DEBUG TDI";
  attribute x_interface_info of Dbg_TDO : signal is "xilinx.com:interface:mbdebug:3.0 DEBUG TDO";
  attribute x_interface_info of Dbg_Reg_En : signal is "xilinx.com:interface:mbdebug:3.0 DEBUG REG_EN";
  attribute x_interface_info of Dbg_Shift : signal is "xilinx.com:interface:mbdebug:3.0 DEBUG SHIFT";
  attribute x_interface_info of Dbg_Capture : signal is "xilinx.com:interface:mbdebug:3.0 DEBUG CAPTURE";
  attribute x_interface_info of Dbg_Update : signal is "xilinx.com:interface:mbdebug:3.0 DEBUG UPDATE";
  attribute x_interface_info of Debug_Rst : signal is "xilinx.com:interface:mbdebug:3.0 DEBUG RST";
  attribute x_interface_info of Dbg_Disable : signal is "xilinx.com:interface:mbdebug:3.0 DEBUG DISABLE";
  attribute x_core_info : string;
  attribute x_core_info of stub : architecture is "riscv,Vivado 2024.2";
begin
end;
