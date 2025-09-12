// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------

`timescale 1 ps / 1 ps

(* BLOCK_STUB = "true" *)
module top (
  sys_diff_clock_clk_n,
  sys_diff_clock_clk_p,
  reset,
  GPO,
  GPI,
  RX,
  TX,
  SCLK,
  SS_N,
  MOSI,
  MISO
);

  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 sys_diff_clock CLK_N" *)
  (* X_INTERFACE_MODE = "slave sys_diff_clock" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME sys_diff_clock, CAN_DEBUG false, FREQ_HZ 200000000" *)
  input sys_diff_clock_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 sys_diff_clock CLK_P" *)
  input sys_diff_clock_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET RST" *)
  (* X_INTERFACE_MODE = "slave RST.RESET" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
  input reset;
  (* X_INTERFACE_IGNORE = "true" *)
  output [3:0]GPO;
  (* X_INTERFACE_IGNORE = "true" *)
  input [8:0]GPI;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.RX DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.RX" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.RX, LAYERED_METADATA undef" *)
  input RX;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.TX DATA" *)
  (* X_INTERFACE_MODE = "master DATA.TX" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.TX, LAYERED_METADATA undef" *)
  output TX;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SCLK CLK" *)
  (* X_INTERFACE_MODE = "master CLK.SCLK" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SCLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *)
  output SCLK;
  (* X_INTERFACE_IGNORE = "true" *)
  output SS_N;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.MOSI DATA" *)
  (* X_INTERFACE_MODE = "master DATA.MOSI" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.MOSI, LAYERED_METADATA undef" *)
  output MOSI;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.MISO DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.MISO" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.MISO, LAYERED_METADATA undef" *)
  input MISO;

  // stub module has no contents

endmodule
