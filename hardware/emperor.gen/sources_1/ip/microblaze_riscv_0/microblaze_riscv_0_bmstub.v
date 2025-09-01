// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------

`timescale 1 ps / 1 ps

(* BLOCK_STUB = "true" *)
module microblaze_riscv_0 (
  Clk,
  Reset,
  Interrupt,
  Interrupt_Address,
  Interrupt_Ack,
  Instr_Addr,
  Instr,
  IFetch,
  I_AS,
  IReady,
  IWAIT,
  ICE,
  IUE,
  Data_Addr,
  Data_Read,
  Data_Write,
  D_AS,
  Read_Strobe,
  Write_Strobe,
  DReady,
  DWait,
  DCE,
  DUE,
  Byte_Enable,
  Dbg_Clk,
  Dbg_TDI,
  Dbg_TDO,
  Dbg_Reg_En,
  Dbg_Shift,
  Dbg_Capture,
  Dbg_Update,
  Debug_Rst,
  Dbg_Disable
);

  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *)
  (* X_INTERFACE_MODE = "slave CLK.CLK" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_BUSIF M0_AXIS:S0_AXIS:M1_AXIS:S1_AXIS:M2_AXIS:S2_AXIS:M3_AXIS:S3_AXIS:M4_AXIS:S4_AXIS:M5_AXIS:S5_AXIS:M6_AXIS:S6_AXIS:M7_AXIS:S7_AXIS:M8_AXIS:S8_AXIS:M9_AXIS:S9_AXIS:M10_AXIS:S10_AXIS:M11_AXIS:S11_AXIS:M12_AXIS:S12_AXIS:M13_AXIS:S13_AXIS:M14_AXIS:S14_AXIS:M15_AXIS:S15_AXIS:DLMB:ILMB:M_AXI_DP:M_AXI_IP:M_AXI_DC:M_AXI_IC:M_ACE_DC:M_ACE_IC:MON_DLMB:MON_ILMB:MON_AXI_DP:MON_AXI_IP:MON_AXI_DC:MON_AXI_IC:MON_ACE_DC:MON_ACE_IC:S_AXI, ASSOCIATED_RESET Reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN , ASSOCIATED_PORT , INSERT_VIP 0" *)
  input Clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET RST" *)
  (* X_INTERFACE_MODE = "slave RST.RESET" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET, POLARITY ACTIVE_HIGH, TYPE PROCESSOR, INSERT_VIP 0" *)
  input Reset;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mbinterrupt:1.0 INTERRUPT INTERRUPT" *)
  (* X_INTERFACE_MODE = "slave INTERRUPT" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTERRUPT, SENSITIVITY LEVEL_HIGH, LOW_LATENCY 0" *)
  input Interrupt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mbinterrupt:1.0 INTERRUPT ADDRESS" *)
  input [0:31]Interrupt_Address;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mbinterrupt:1.0 INTERRUPT ACK" *)
  output [0:1]Interrupt_Ack;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lmb:1.0 ILMB ABUS" *)
  (* X_INTERFACE_MODE = "master ILMB" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ILMB, ADDR_WIDTH 32, DATA_WIDTH 32, PROTOCOL STANDARD, READ_WRITE_MODE READ_ONLY" *)
  output [0:31]Instr_Addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lmb:1.0 ILMB READDBUS" *)
  input [0:31]Instr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lmb:1.0 ILMB READSTROBE" *)
  output IFetch;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lmb:1.0 ILMB ADDRSTROBE" *)
  output I_AS;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lmb:1.0 ILMB READY" *)
  input IReady;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lmb:1.0 ILMB WAIT" *)
  input IWAIT;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lmb:1.0 ILMB CE" *)
  input ICE;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lmb:1.0 ILMB UE" *)
  input IUE;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lmb:1.0 DLMB ABUS" *)
  (* X_INTERFACE_MODE = "master DLMB" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DLMB, ADDR_WIDTH 32, DATA_WIDTH 32, PROTOCOL STANDARD, READ_WRITE_MODE READ_WRITE" *)
  output [0:31]Data_Addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lmb:1.0 DLMB READDBUS" *)
  input [0:31]Data_Read;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lmb:1.0 DLMB WRITEDBUS" *)
  output [0:31]Data_Write;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lmb:1.0 DLMB ADDRSTROBE" *)
  output D_AS;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lmb:1.0 DLMB READSTROBE" *)
  output Read_Strobe;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lmb:1.0 DLMB WRITESTROBE" *)
  output Write_Strobe;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lmb:1.0 DLMB READY" *)
  input DReady;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lmb:1.0 DLMB WAIT" *)
  input DWait;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lmb:1.0 DLMB CE" *)
  input DCE;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lmb:1.0 DLMB UE" *)
  input DUE;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lmb:1.0 DLMB BE" *)
  output [0:3]Byte_Enable;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mbdebug:3.0 DEBUG CLK" *)
  (* X_INTERFACE_MODE = "slave DEBUG" *)
  input Dbg_Clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mbdebug:3.0 DEBUG TDI" *)
  input Dbg_TDI;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mbdebug:3.0 DEBUG TDO" *)
  output Dbg_TDO;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mbdebug:3.0 DEBUG REG_EN" *)
  input [0:7]Dbg_Reg_En;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mbdebug:3.0 DEBUG SHIFT" *)
  input Dbg_Shift;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mbdebug:3.0 DEBUG CAPTURE" *)
  input Dbg_Capture;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mbdebug:3.0 DEBUG UPDATE" *)
  input Dbg_Update;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mbdebug:3.0 DEBUG RST" *)
  input Debug_Rst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mbdebug:3.0 DEBUG DISABLE" *)
  input Dbg_Disable;

  // stub module has no contents

endmodule
