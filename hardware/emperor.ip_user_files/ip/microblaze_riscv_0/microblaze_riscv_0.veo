// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2025 Advanced Micro Devices, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.

// IP VLNV: xilinx.com:ip:microblaze_riscv:1.0
// IP Revision: 3

// The following must be inserted into your Verilog file for this
// core to be instantiated. Change the instance name and port connections
// (in parentheses) to your own signal names.

//----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
microblaze_riscv_0 your_instance_name (
  .Clk(Clk),                              // input wire Clk
  .Reset(Reset),                          // input wire Reset
  .Interrupt(Interrupt),                  // input wire Interrupt
  .Interrupt_Address(Interrupt_Address),  // input wire [0 : 31] Interrupt_Address
  .Interrupt_Ack(Interrupt_Ack),          // output wire [0 : 1] Interrupt_Ack
  .Instr_Addr(Instr_Addr),                // output wire [0 : 31] Instr_Addr
  .Instr(Instr),                          // input wire [0 : 31] Instr
  .IFetch(IFetch),                        // output wire IFetch
  .I_AS(I_AS),                            // output wire I_AS
  .IReady(IReady),                        // input wire IReady
  .IWAIT(IWAIT),                          // input wire IWAIT
  .ICE(ICE),                              // input wire ICE
  .IUE(IUE),                              // input wire IUE
  .Data_Addr(Data_Addr),                  // output wire [0 : 31] Data_Addr
  .Data_Read(Data_Read),                  // input wire [0 : 31] Data_Read
  .Data_Write(Data_Write),                // output wire [0 : 31] Data_Write
  .D_AS(D_AS),                            // output wire D_AS
  .Read_Strobe(Read_Strobe),              // output wire Read_Strobe
  .Write_Strobe(Write_Strobe),            // output wire Write_Strobe
  .DReady(DReady),                        // input wire DReady
  .DWait(DWait),                          // input wire DWait
  .DCE(DCE),                              // input wire DCE
  .DUE(DUE),                              // input wire DUE
  .Byte_Enable(Byte_Enable),              // output wire [0 : 3] Byte_Enable
  .Dbg_Clk(Dbg_Clk),                      // input wire Dbg_Clk
  .Dbg_TDI(Dbg_TDI),                      // input wire Dbg_TDI
  .Dbg_TDO(Dbg_TDO),                      // output wire Dbg_TDO
  .Dbg_Reg_En(Dbg_Reg_En),                // input wire [0 : 7] Dbg_Reg_En
  .Dbg_Shift(Dbg_Shift),                  // input wire Dbg_Shift
  .Dbg_Capture(Dbg_Capture),              // input wire Dbg_Capture
  .Dbg_Update(Dbg_Update),                // input wire Dbg_Update
  .Debug_Rst(Debug_Rst),                  // input wire Debug_Rst
  .Dbg_Disable(Dbg_Disable)              // input wire Dbg_Disable
);
// INST_TAG_END ------ End INSTANTIATION Template ---------

// You must compile the wrapper file microblaze_riscv_0.v when simulating
// the core, microblaze_riscv_0. When compiling the wrapper file, be sure to
// reference the Verilog simulation library.

