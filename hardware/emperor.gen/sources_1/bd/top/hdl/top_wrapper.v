//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
//Date        : Tue Sep  9 04:04:43 2025
//Host        : wangjiakun-Inspiron-14-Plus-7430 running 64-bit Ubuntu 24.04.1 LTS
//Command     : generate_target top_wrapper.bd
//Design      : top_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module top_wrapper
   (GPI,
    GPO,
    MISO,
    MOSI,
    RX,
    SCLK,
    SS_N,
    TX,
    reset,
    sys_diff_clock_clk_n,
    sys_diff_clock_clk_p);
  input [8:0]GPI;
  output [3:0]GPO;
  input MISO;
  output MOSI;
  input RX;
  output SCLK;
  output SS_N;
  output TX;
  input reset;
  input sys_diff_clock_clk_n;
  input sys_diff_clock_clk_p;

  wire [8:0]GPI;
  wire [3:0]GPO;
  wire MISO;
  wire MOSI;
  wire RX;
  wire SCLK;
  wire SS_N;
  wire TX;
  wire reset;
  wire sys_diff_clock_clk_n;
  wire sys_diff_clock_clk_p;

  top top_i
       (.GPI(GPI),
        .GPO(GPO),
        .MISO(MISO),
        .MOSI(MOSI),
        .RX(RX),
        .SCLK(SCLK),
        .SS_N(SS_N),
        .TX(TX),
        .reset(reset),
        .sys_diff_clock_clk_n(sys_diff_clock_clk_n),
        .sys_diff_clock_clk_p(sys_diff_clock_clk_p));
endmodule
