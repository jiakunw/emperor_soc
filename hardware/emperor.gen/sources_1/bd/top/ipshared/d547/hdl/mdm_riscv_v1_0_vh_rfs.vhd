-------------------------------------------------------------------------------
-- mdm_funcs.vhd - Entity and architecture
-------------------------------------------------------------------------------
--
-- (c) Copyright 2022-2023 Advanced Micro Devices, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of AMD and is protected under U.S. and international copyright
-- and other intellectual property laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- AMD, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) AMD shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or AMD had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- AMD products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of AMD products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
--
-------------------------------------------------------------------------------
-- Filename:        mdm_funcs.vhd
--
-- Description:     Support functions for mdm
--
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
-- Structure:
--                  mdm_funcs.vhd
--
-------------------------------------------------------------------------------
-- Author:          stefana
-------------------------------------------------------------------------------
-- Naming Conventions:
--      active low signals:                     "*_n"
--      clock signals:                          "clk", "clk_div#", "clk_#x" 
--      reset signals:                          "rst", "rst_n" 
--      generics:                               "C_*" 
--      user defined types:                     "*_TYPE" 
--      state machine next state:               "*_ns" 
--      state machine current state:            "*_cs" 
--      combinatorial signals:                  "*_com" 
--      pipelined or register delay signals:    "*_d#" 
--      counter signals:                        "*cnt*"
--      clock enable signals:                   "*_ce"
--      internal version of output port         "*_i"
--      device pins:                            "*_pin" 
--      ports:                                  - Names begin with Uppercase 
--      processes:                              "*_PROCESS" 
--      component instantiations:               "<ENTITY_>I_<#|FUNC>
-------------------------------------------------------------------------------

package mdm_funcs is

  type TARGET_FAMILY_TYPE is (
                              -- pragma xilinx_rtl_off
                              VIRTEX7,
                              KINTEX7,
                              ARTIX7,
                              ZYNQ,
                              VIRTEXU,
                              KINTEXU,
                              ZYNQUPLUS,
                              VIRTEXUPLUS,
                              KINTEXUPLUS,
                              SPARTAN7,
                              VERSAL,
                              VERSAL_NET,
                              ARTIXUPLUS,
                              SPARTANUPLUS,
                              -- pragma xilinx_rtl_on
                              RTL
                             );

  function String_To_Family (S : string; PART: string; Select_RTL : boolean) return TARGET_FAMILY_TYPE;

  function BSCAN_Versal(S : string; PART : string; C_USE_BSCAN : integer) return string;

  function log2(x : natural) return integer;

end package mdm_funcs;

package body mdm_funcs is

  function LowerCase_Char(char : character) return character is
  begin
    -- If char is not an upper case letter then return char
    if char < 'A' or char > 'Z' then
      return char;
    end if;
    -- Otherwise map char to its corresponding lower case character and
    -- return that
    case char is
      when 'A'    => return 'a'; when 'B' => return 'b'; when 'C' => return 'c'; when 'D' => return 'd';
      when 'E'    => return 'e'; when 'F' => return 'f'; when 'G' => return 'g'; when 'H' => return 'h';
      when 'I'    => return 'i'; when 'J' => return 'j'; when 'K' => return 'k'; when 'L' => return 'l';
      when 'M'    => return 'm'; when 'N' => return 'n'; when 'O' => return 'o'; when 'P' => return 'p';
      when 'Q'    => return 'q'; when 'R' => return 'r'; when 'S' => return 's'; when 'T' => return 't';
      when 'U'    => return 'u'; when 'V' => return 'v'; when 'W' => return 'w'; when 'X' => return 'x';
      when 'Y'    => return 'y'; when 'Z' => return 'z';
      when others => return char;
    end case;
  end LowerCase_Char;

  function LowerCase_String (s : string) return string is
    variable res : string(s'range);
  begin  -- function LoweerCase_String
    for I in s'range loop
      res(I) := LowerCase_Char(s(I));
    end loop;  -- I
    return res;
  end function LowerCase_String;

  -- Returns true if case insensitive string comparison determines that
  -- str1 and str2 are equal
  function Equal_String( str1, str2 : string ) return boolean is
    constant len1 : integer := str1'length;
    constant len2 : integer := str2'length;
    variable equal : boolean := true;
  begin
    if not (len1=len2) then
      equal := false;
    else
      for i in str1'range loop
        if not (LowerCase_Char(str1(i)) = LowerCase_Char(str2(i))) then
          equal := false;
        end if;
      end loop;
    end if;

    return equal;
  end Equal_String;

  function String_To_Family (S : string; PART : string; Select_RTL : boolean) return TARGET_FAMILY_TYPE is
  begin  -- function String_To_Family
    if ((Select_RTL) or Equal_String(S, "rtl")) then
      return RTL;
    elsif Equal_String(S, "virtex7") or Equal_String(S, "qvirtex7") then
      return VIRTEX7;
    elsif Equal_String(S, "kintex7")  or Equal_String(S, "kintex7l")  or
          Equal_String(S, "qkintex7") or Equal_String(S, "qkintex7l") then
      return KINTEX7;
    elsif Equal_String(S, "artix7")  or Equal_String(S, "artix7l")  or Equal_String(S, "aartix7") or
          Equal_String(S, "qartix7") or Equal_String(S, "qartix7l") then
      return ARTIX7;
    elsif Equal_String(S, "zynq")  or Equal_String(S, "azynq") or Equal_String(S, "qzynq") then
      return ZYNQ;
    elsif Equal_String(S, "virtexu") or Equal_String(S, "qvirtexu") then
      return VIRTEXU;
    elsif Equal_String(S, "kintexu")  or Equal_String(S, "kintexul")  or
          Equal_String(S, "qkintexu") or Equal_String(S, "qkintexul") then
      return KINTEXU;
    elsif Equal_String(S, "zynquplus") or Equal_String(S, "zynquplusRFSOC") then
      return ZYNQUPLUS;
    elsif Equal_String(S, "virtexuplus") or Equal_String(S, "virtexuplusHBM") or
          Equal_String(S, "virtexuplus58g") then
      return VIRTEXUPLUS;
    elsif Equal_String(S, "kintexuplus") then
      return KINTEXUPLUS;
    elsif Equal_String(S, "spartan7") then
      return SPARTAN7;
    elsif Equal_String(S, "versal") then
      if Equal_String(PART(PART'left to PART'left + 3), "xcvn") then
        return VERSAL_NET;
      end if;
      return VERSAL;
    elsif Equal_String(S, "artixuplus") then
      return ARTIXUPLUS;
    elsif Equal_String(S, "spartanuplus") then
      return SPARTANUPLUS;
    else
      -- assert (false) report "No known target family" severity failure;
      return RTL;
    end if;
  end function String_To_Family;

  function BSCAN_Versal(S : string; PART : string; C_USE_BSCAN : integer) return string is
  begin
    if (String_To_Family(S, PART, false) = VERSAL or String_To_Family(S, PART, false) = VERSAL_NET) and
       (C_USE_BSCAN = 2 or C_USE_BSCAN = 4) then
      return "TRUE";
    end if;
    return "FALSE";
  end function BSCAN_Versal;

  function log2(x : natural) return integer is
    variable i  : integer := 0;
  begin
    if x = 0 then return 0;
    else
      while 2**i < x loop
        i := i+1;
      end loop;
      return i;
    end if;
  end function log2;

end package body mdm_funcs;


-------------------------------------------------------------------------------
-- mdm_primitives.vhd - Entity and architecture
-------------------------------------------------------------------------------
--
-- (c) Copyright 2022-2024 Advanced Micro Devices, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of AMD and is protected under U.S. and international copyright
-- and other intellectual property laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- AMD, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) AMD shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or AMD had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- AMD products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of AMD products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
--
-------------------------------------------------------------------------------
-- Filename:        mdm_primitives.vhd
--
-- Description:     one bit AND function using carry-chain
--
-- VHDL-Standard:   VHDL'93/02
-------------------------------------------------------------------------------
-- Structure:
--              mdm_primitives.vhd
--
-------------------------------------------------------------------------------
-- Author:          stefana
--
-- History:
--   stefana  2019-11-04    First Version
--
-------------------------------------------------------------------------------
-- Naming Conventions:
--      active low signals:                     "*_n"
--      clock signals:                          "clk", "clk_div#", "clk_#x"
--      reset signals:                          "rst", "rst_n"
--      generics:                               "C_*"
--      user defined types:                     "*_TYPE"
--      state machine next state:               "*_ns"
--      state machine current state:            "*_cs"
--      combinatorial signals:                  "*_com"
--      pipelined or register delay signals:    "*_d#"
--      counter signals:                        "*cnt*"
--      clock enable signals:                   "*_ce"
--      internal version of output port         "*_i"
--      device pins:                            "*_pin"
--      ports:                                  - Names begin with Uppercase
--      processes:                              "*_PROCESS"
--      component instantiations:               "<ENTITY_>I_<#|FUNC>
-------------------------------------------------------------------------------

-- XIL_Scan_Reset_Control
library IEEE;
use IEEE.std_logic_1164.all;

entity xil_scan_reset_control is
  port (
    Scan_En          : in  std_logic;
    Scan_Reset_Sel   : in  std_logic;
    Scan_Reset       : in  std_logic;
    Functional_Reset : in  std_logic;
    Reset            : out std_logic);
end entity xil_scan_reset_control;

architecture IMP of xil_scan_reset_control is

begin
  Reset <= '0'               when Scan_En = '1' else
            Functional_Reset when Scan_Reset_Sel = '0' else
            Scan_Reset;
end architecture IMP;


----- entity mb_sync_bit -----
library IEEE;
use IEEE.std_logic_1164.all;

entity mb_sync_bit is
  generic(
    C_LEVELS            : natural   := 2;
    C_RESET_VALUE       : std_logic := '0';
    C_RESET_SYNCHRONOUS : boolean   := true;
    C_RESET_ACTIVE_HIGH : boolean   := true);
  port(
    Clk            : in  std_logic;
    Rst            : in  std_logic;
    Scan_Reset_Sel : in  std_logic;
    Scan_Reset     : in  std_logic;
    Scan_En        : in  std_logic;
    Raw            : in  std_logic;
    Synced         : out std_logic);
end mb_sync_bit;

architecture IMP of mb_sync_bit is

  component xil_scan_reset_control is
  port (
    Scan_En          : in  std_logic;
    Scan_Reset_Sel   : in  std_logic;
    Scan_Reset       : in  std_logic;
    Functional_Reset : in  std_logic;
    Reset            : out std_logic);
  end component xil_scan_reset_control;

  -- Downgrade Synth 8-3332 warnings
  attribute DowngradeIPIdentifiedWarnings: string;
  attribute DowngradeIPIdentifiedWarnings of IMP : architecture is "yes";

begin

  -- Generate synchronizer DFFs
  Synchronize : if C_LEVELS > 1 generate
    signal reset : std_logic;
    signal sync  : std_logic_vector(1 to C_LEVELS) := (others => C_RESET_VALUE);
    attribute ASYNC_REG : string;
    attribute ASYNC_REG of sync : signal is "TRUE";
  begin

    -- Internal reset always has active high polarity
    reset <= Rst when C_RESET_ACTIVE_HIGH else
             not Rst;

    -- Synchronous reset
    use_sync_reset: if C_RESET_SYNCHRONOUS generate
    begin

      Sync_Rst_DFFs : process(Clk)
      begin
        if Clk'event and Clk = '1' then
          if reset = '1' then
            sync <= (sync'range  => C_RESET_VALUE);
          else
            for I in C_LEVELS downto 2 loop
              sync(I) <= sync(I-1);
            end loop;
            sync(1) <= Raw;
          end if;
        end if;
      end process;

    end generate use_sync_reset;

    -- Asychronous reset
    use_async_reset: if not C_RESET_SYNCHRONOUS generate
      signal async_reset : std_logic;
    begin

      -- Make sure asynchronous reset can be controlled during scan test
      async_reset_i: xil_scan_reset_control
      port map (
        Scan_En          => Scan_En,
        Scan_Reset_Sel   => Scan_Reset_Sel,
        Scan_Reset       => Scan_Reset,
        Functional_Reset => reset,
        Reset            => async_reset);

      Async_Rst_DFFs : process(Clk, async_reset)
      begin
        if async_reset = '1' then
          sync <= (sync'range => C_RESET_VALUE);
        elsif Clk'event and Clk = '1' then
          for I in C_LEVELS downto 2 loop
            sync(I) <= sync(I-1);
          end loop;
          sync(1) <= Raw;
        end if;
      end process;

    end generate use_async_reset;

    Synced <= sync(C_LEVELS);

  end generate Synchronize;

  -- 1 synchronizer DFF
  Single_Synchronize : if C_LEVELS = 1 generate
    signal reset : std_logic;
    signal sync  : std_logic := C_RESET_VALUE;
  begin

    -- Internal reset always has active high polarity
    reset <= Rst when C_RESET_ACTIVE_HIGH else
             not Rst;

    -- Synchronous reset
    use_sync_reset: if C_RESET_SYNCHRONOUS generate
    begin

      Sync_Rst_DFFs : process(Clk)
      begin
        if Clk'event and Clk = '1' then
          if reset = '1' then
            sync <= C_RESET_VALUE;
          else
            sync <= Raw;
          end if;
        end if;
      end process;

    end generate use_sync_reset;

    -- Asychronous reset
    use_async_reset: if not C_RESET_SYNCHRONOUS generate
      signal async_reset : std_logic;
    begin

      -- Make sure asynchronous reset can be controlled from during scan test
      async_reset_i: xil_scan_reset_control
      port map (
        Scan_En          => Scan_En,
        Scan_Reset_Sel   => Scan_Reset_Sel,
        Scan_Reset       => Scan_Reset,
        Functional_Reset => reset,
        Reset            => async_reset);

      Async_Rst_DFFs : process(Clk, async_reset)
      begin
        if async_reset = '1' then
          sync <= C_RESET_VALUE;
        elsif Clk'event and Clk = '1' then
          sync <= Raw;
        end if;
      end process;

    end generate use_async_reset;

    Synced <= sync;

  end generate Single_Synchronize;

  -- No synchronizer DFFs, connect input to output directly
  No_Synchronize : if C_LEVELS = 0 generate
  begin
    Synced <= Raw;
  end generate No_Synchronize;

end architecture IMP;  -- mb_sync_bit


----- entity BSCANE2 -----
library ieee;
use ieee.std_logic_1164.all;

library mdm_riscv_v1_0_3;
use mdm_riscv_v1_0_3.mdm_funcs.all;

entity MB_BSCANE2 is
  generic (
     C_TARGET     : TARGET_FAMILY_TYPE;
     DISABLE_JTAG : string := "FALSE";
     JTAG_CHAIN   : integer := 1
  );
  port (
     CAPTURE      : out std_logic := 'H';
     DRCK         : out std_logic := 'H';
     RESET        : out std_logic := 'H';
     RUNTEST      : out std_logic := 'L';
     SEL          : out std_logic := 'L';
     SHIFT        : out std_logic := 'L';
     TCK          : out std_logic := 'L';
     TDI          : out std_logic := 'L';
     TMS          : out std_logic := 'L';
     UPDATE       : out std_logic := 'L';
     TDO          : in  std_logic := 'X'
  );
end entity MB_BSCANE2;

library unisim;
use unisim.vcomponents.all;

architecture IMP of MB_BSCANE2 is
begin

  Using_RTL: if ( C_TARGET = RTL ) generate
  begin
    assert false report "Illegal use of implementation primitives" severity failure;
  end generate Using_RTL;

  Use_E2: if ( C_TARGET /= RTL ) generate
  begin
     BSCANE2_I: BSCANE2
      generic map (
        DISABLE_JTAG => DISABLE_JTAG,
        JTAG_CHAIN   => JTAG_CHAIN)
      port map (
        CAPTURE      => CAPTURE,
        DRCK         => DRCK,
        RESET        => RESET,
        RUNTEST      => RUNTEST,
        SEL          => SEL,
        SHIFT        => SHIFT,
        TCK          => TCK,
        TDI          => TDI,
        TMS          => TMS,
        UPDATE       => UPDATE,
        TDO          => TDO);
  end generate Use_E2;

end architecture IMP;


----- entity BUFG -----
library ieee;
use ieee.std_logic_1164.all;

library mdm_riscv_v1_0_3;
use mdm_riscv_v1_0_3.mdm_funcs.all;

entity MB_BUFG is
  generic (
    C_TARGET : TARGET_FAMILY_TYPE
  );
  port (
     O : out std_logic;
     I : in  std_logic
  );
end entity MB_BUFG;

library unisim;
use unisim.vcomponents.all;

architecture IMP of MB_BUFG is
begin

  Using_RTL: if ( C_TARGET = RTL ) generate
  begin
    O <= TO_X01(I);
  end generate Using_RTL;

  Using_FPGA: if ( C_TARGET /= RTL and C_TARGET /= VERSAL_NET ) generate
  begin
     Native: BUFG
      port map (
        O => O,
        I => I
      );
  end generate Using_FPGA;

  Using_FPGA_VERSAL_NET: if (C_TARGET = VERSAL_NET ) generate
  begin
     Native: BUFG_FABRIC
      port map (
        O => O,
        I => I
      );
  end generate Using_FPGA_VERSAL_NET;

end architecture IMP;


----- entity BUFGCE_1 -----
library ieee;
use ieee.std_logic_1164.all;

library mdm_riscv_v1_0_3;
use mdm_riscv_v1_0_3.mdm_funcs.all;

entity MB_BUFGCE_1 is
  generic (
    C_TARGET : TARGET_FAMILY_TYPE
  );
  port (
     O  : out std_logic;
     CE : in  std_logic;
     I  : in  std_logic
  );
end entity MB_BUFGCE_1;

library unisim;
use unisim.vcomponents.all;

architecture IMP of MB_BUFGCE_1 is
begin

  Using_RTL: if ( C_TARGET = RTL ) generate
  begin
    O <= TO_X01(I) when CE = '1' else '1';
  end generate Using_RTL;

  Using_FPGA: if ( C_TARGET /= RTL and C_TARGET /= VERSAL and C_TARGET /= VERSAL_NET ) generate
  begin
     Native: BUFGCE_1
      port map (
        O  => O,
        CE => CE,
        I  => I
      );
  end generate Using_FPGA;

  Using_FPGA_VERSAL: if ( C_TARGET = VERSAL or C_TARGET = VERSAL_NET ) generate
    signal I_CE : std_logic;
  begin
    I_CE <= I or not CE;

    Native: BUFG_FABRIC
      port map (
        O => O,
        I => I_CE
      );
  end generate Using_FPGA_VERSAL;

end architecture IMP;


----- entity BUFGCTRL -----
library ieee;
use ieee.std_logic_1164.all;

library mdm_riscv_v1_0_3;
use mdm_riscv_v1_0_3.mdm_funcs.all;

entity MB_BUFGCTRL is
  generic (
    C_TARGET            : TARGET_FAMILY_TYPE;
    INIT_OUT            : integer := 0;
    IS_CE0_INVERTED     : bit := '0';
    IS_CE1_INVERTED     : bit := '0';
    IS_I0_INVERTED      : bit := '0';
    IS_I1_INVERTED      : bit := '0';
    IS_IGNORE0_INVERTED : bit := '0';
    IS_IGNORE1_INVERTED : bit := '0';
    IS_S0_INVERTED      : bit := '0';
    IS_S1_INVERTED      : bit := '0';
    PRESELECT_I0        : boolean := false;
    PRESELECT_I1        : boolean := false
  );
  port (
    O                   : out std_logic;
    CE0                 : in  std_logic;
    CE1                 : in  std_logic;
    I0                  : in  std_logic;
    I1                  : in  std_logic;
    IGNORE0             : in  std_logic;
    IGNORE1             : in  std_logic;
    S0                  : in  std_logic;
    S1                  : in  std_logic
  );
end entity MB_BUFGCTRL;

library unisim;
use unisim.vcomponents.all;

architecture IMP of MB_BUFGCTRL is
begin

  Using_RTL: if ( C_TARGET = RTL ) generate
  begin
    assert false report "Illegal use of implementation primitives" severity failure;
  end generate Using_RTL;

  Using_FPGA: if ( C_TARGET /= RTL ) generate
    function get_sim_device(TARGET : TARGET_FAMILY_TYPE) return string is
    begin
      case TARGET is
        when VIRTEX7 | KINTEX7 | ARTIX7 | SPARTAN7 | ZYNQ                      => return "7SERIES";
        when VIRTEXU | KINTEXU                                                 => return "ULTRASCALE";
        when ZYNQUPLUS | VIRTEXUPLUS | KINTEXUPLUS | ARTIXUPLUS | SPARTANUPLUS => return "ULTRASCALE_PLUS";
        when VERSAL                                                            => return "VERSAL_AI_CORE";
        when VERSAL_NET                                                        => return "VERSAL_NET";
        when others                                                            => return "ULTRASCALE";
      end case;
    end function get_sim_device;

    constant SIM_DEVICE : string := get_sim_device( C_TARGET );
  begin
     Native: BUFGCTRL
      generic map (
        INIT_OUT            => INIT_OUT,
        SIM_DEVICE          => SIM_DEVICE,
        IS_CE0_INVERTED     => IS_CE0_INVERTED,
        IS_CE1_INVERTED     => IS_CE1_INVERTED,
        IS_I0_INVERTED      => IS_I0_INVERTED,
        IS_I1_INVERTED      => IS_I1_INVERTED,
        IS_IGNORE0_INVERTED => IS_IGNORE0_INVERTED,
        IS_IGNORE1_INVERTED => IS_IGNORE1_INVERTED,
        IS_S0_INVERTED      => IS_S0_INVERTED,
        IS_S1_INVERTED      => IS_S1_INVERTED,
        PRESELECT_I0        => PRESELECT_I0,
        PRESELECT_I1        => PRESELECT_I1
      )
      port map (
        O       => O,
        CE0     => CE0,
        CE1     => CE1,
        I0      => I0,
        I1      => I1,
        IGNORE0 => IGNORE0,
        IGNORE1 => IGNORE1,
        S0      => S0,
        S1      => S1
      );
  end generate Using_FPGA;

end architecture IMP;


----- entity FDRE -----
library IEEE;
use IEEE.std_logic_1164.all;

library mdm_riscv_v1_0_3;
use mdm_riscv_v1_0_3.mdm_funcs.all;

entity MB_FDRE is
  generic (
    C_TARGET : TARGET_FAMILY_TYPE;
    INIT     : bit := '0'
  );
  port(
    Q        : out std_logic;
    C        : in  std_logic;
    CE       : in  std_logic;
    D        : in  std_logic;
    R        : in  std_logic
  );
end entity MB_FDRE;

library Unisim;
use Unisim.vcomponents.all;

architecture IMP of MB_FDRE is
begin

  Using_RTL: if ( C_TARGET = RTL ) generate
    function To_StdLogic(A : in bit ) return std_logic is
    begin
      if( A = '1' ) then
        return '1';
      end if;
      return '0';
    end;

    signal q_o : std_logic := To_StdLogic(INIT);
  begin
    Q <=  q_o;
    process(C)
    begin
      if (rising_edge(C)) then
        if (R = '1') then
          q_o <= '0';
        elsif (CE = '1') then
          q_o <= D;
        end if;
      end if;
    end process;
  end generate Using_RTL;

  Using_FPGA: if ( C_TARGET /= RTL ) generate
  begin
    Native: FDRE
      generic map(
        INIT => INIT
      )
      port map(
        Q   => Q,
        C   => C,
        CE  => CE,
        D   => D,
        R   => R
      );
  end generate Using_FPGA;

end architecture IMP;


----- entity PLLE2_BASE -----
library ieee;
use ieee.std_logic_1164.all;

library mdm_riscv_v1_0_3;
use mdm_riscv_v1_0_3.mdm_funcs.all;

entity MB_PLLE2_BASE is
  generic (
    C_TARGET           : TARGET_FAMILY_TYPE;
    BANDWIDTH          : string := "OPTIMIZED";
    CLKFBOUT_MULT      : integer := 5;
    CLKFBOUT_PHASE     : real := 0.000;
    CLKIN1_PERIOD      : real := 0.000;
    CLKOUT0_DIVIDE     : integer := 1;
    CLKOUT0_DUTY_CYCLE : real := 0.500;
    CLKOUT0_PHASE      : real := 0.000;
    CLKOUT1_DIVIDE     : integer := 1;
    CLKOUT1_DUTY_CYCLE : real := 0.500;
    CLKOUT1_PHASE      : real := 0.000;
    CLKOUT2_DIVIDE     : integer := 1;
    CLKOUT2_DUTY_CYCLE : real := 0.500;
    CLKOUT2_PHASE      : real := 0.000;
    CLKOUT3_DIVIDE     : integer := 1;
    CLKOUT3_DUTY_CYCLE : real := 0.500;
    CLKOUT3_PHASE      : real := 0.000;
    CLKOUT4_DIVIDE     : integer := 1;
    CLKOUT4_DUTY_CYCLE : real := 0.500;
    CLKOUT4_PHASE      : real := 0.000;
    CLKOUT5_DIVIDE     : integer := 1;
    CLKOUT5_DUTY_CYCLE : real := 0.500;
    CLKOUT5_PHASE      : real := 0.000;
    DIVCLK_DIVIDE      : integer := 1;
    REF_JITTER1        : real := 0.010;
    STARTUP_WAIT       : string := "FALSE"
  );
  port (
    CLKFBOUT : out std_logic;
    CLKOUT0  : out std_logic;
    CLKOUT1  : out std_logic;
    CLKOUT2  : out std_logic;
    CLKOUT3  : out std_logic;
    CLKOUT4  : out std_logic;
    CLKOUT5  : out std_logic;
    LOCKED   : out std_logic;
    CLKFBIN  : in  std_logic;
    CLKIN1   : in  std_logic;
    PWRDWN   : in  std_logic;
    RST      : in  std_logic
  );
end entity MB_PLLE2_BASE;

library unisim;
use unisim.vcomponents.all;

architecture IMP of MB_PLLE2_BASE is
begin

  Using_RTL: if ( C_TARGET = RTL ) generate
  begin
    assert false report "Illegal use of implementation primitives" severity failure;
  end generate Using_RTL;

  Using_FPGA: if ( C_TARGET /= RTL ) generate
  begin
     Native: PLLE2_BASE
       generic map (
         BANDWIDTH          => BANDWIDTH,
         CLKFBOUT_MULT      => CLKFBOUT_MULT,
         CLKFBOUT_PHASE     => CLKFBOUT_PHASE,
         CLKIN1_PERIOD      => CLKIN1_PERIOD,
         CLKOUT0_DIVIDE     => CLKOUT0_DIVIDE,
         CLKOUT0_DUTY_CYCLE => CLKOUT0_DUTY_CYCLE,
         CLKOUT0_PHASE      => CLKOUT0_PHASE,
         CLKOUT1_DIVIDE     => CLKOUT1_DIVIDE,
         CLKOUT1_DUTY_CYCLE => CLKOUT1_DUTY_CYCLE,
         CLKOUT1_PHASE      => CLKOUT1_PHASE,
         CLKOUT2_DIVIDE     => CLKOUT2_DIVIDE,
         CLKOUT2_DUTY_CYCLE => CLKOUT2_DUTY_CYCLE,
         CLKOUT2_PHASE      => CLKOUT2_PHASE,
         CLKOUT3_DIVIDE     => CLKOUT3_DIVIDE,
         CLKOUT3_DUTY_CYCLE => CLKOUT3_DUTY_CYCLE,
         CLKOUT3_PHASE      => CLKOUT3_PHASE,
         CLKOUT4_DIVIDE     => CLKOUT4_DIVIDE,
         CLKOUT4_DUTY_CYCLE => CLKOUT4_DUTY_CYCLE,
         CLKOUT4_PHASE      => CLKOUT4_PHASE,
         CLKOUT5_DIVIDE     => CLKOUT5_DIVIDE,
         CLKOUT5_DUTY_CYCLE => CLKOUT5_DUTY_CYCLE,
         CLKOUT5_PHASE      => CLKOUT5_PHASE,
         DIVCLK_DIVIDE      => DIVCLK_DIVIDE,
         REF_JITTER1        => REF_JITTER1,
         STARTUP_WAIT       => STARTUP_WAIT
       )
       port map (
         CLKFBOUT           => CLKFBOUT,
         CLKOUT0            => CLKOUT0,
         CLKOUT1            => CLKOUT1,
         CLKOUT2            => CLKOUT2,
         CLKOUT3            => CLKOUT3,
         CLKOUT4            => CLKOUT4,
         CLKOUT5            => CLKOUT5,
         LOCKED             => LOCKED,
         CLKFBIN            => CLKFBIN,
         CLKIN1             => CLKIN1,
         PWRDWN             => PWRDWN,
         RST                => RST
       );
  end generate Using_FPGA;

end architecture IMP;


----- entity FDC_1 -----
library ieee;
use ieee.std_logic_1164.all;

library mdm_riscv_v1_0_3;
use mdm_riscv_v1_0_3.mdm_funcs.all;

entity MB_FDC_1 is
  generic (
    C_TARGET : TARGET_FAMILY_TYPE;
    INIT     : bit := '0'
  );
  port (
     Q       : out std_logic;
     C       : in  std_logic;
     CLR     : in  std_logic;
     D       : in  std_logic
  );
end entity MB_FDC_1;

library unisim;
use unisim.vcomponents.all;

architecture IMP of MB_FDC_1 is
begin

  Using_RTL: if ( C_TARGET = RTL ) generate
    signal q_out : std_logic := TO_X01(INIT);
  begin
    Q <= q_out;

    FunctionalBehavior : process(C, CLR)
    begin
      if CLR = '1' then
        q_out <= '0';
      elsif (falling_edge(C)) then
        q_out <= D;
      end if;
    end process;

  end generate Using_RTL;

  Using_FPGA: if ( C_TARGET /= RTL ) generate
  begin
    Native: FDC_1
      generic map (
        INIT => INIT
      )
      port map (
        Q   => Q,
        C   => C,
        CLR => CLR,
        D   => D
      );
  end generate Using_FPGA;

end architecture IMP;


----- entity FDRE_1 -----
library ieee;
use ieee.std_logic_1164.all;

library mdm_riscv_v1_0_3;
use mdm_riscv_v1_0_3.mdm_funcs.all;

entity MB_FDRE_1 is
  generic (
    C_TARGET : TARGET_FAMILY_TYPE;
    INIT     : bit := '0'
  );
  port (
     Q       : out std_logic;
     C       : in  std_logic;
     CE      : in  std_logic;
     D       : in  std_logic;
     R       : in  std_logic
  );
end entity MB_FDRE_1;

library unisim;
use unisim.vcomponents.all;

architecture IMP of MB_FDRE_1 is
begin

  Using_RTL: if ( C_TARGET = RTL ) generate
    signal q_out : std_logic := TO_X01(INIT);
  begin
    Q <= q_out;

    FunctionalBehavior : process(C)
    begin
      if C'EVENT and C = '0' then
        if R = '1' then
          q_out <= '0';
        elsif CE = '1' or CE = 'Z' then
          q_out <= D;
        end if;
      end if;
    end process;

  end generate Using_RTL;

  Using_FPGA: if ( C_TARGET /= RTL ) generate
  begin
     Native: FDRE_1
       generic map (
         INIT => INIT
       )
       port map (
         Q    => Q,
         C    => C,
         CE   => CE,
         D    => D,
         R    => R
       );
  end generate Using_FPGA;

end architecture IMP;


----- entity SRL16E -----
library ieee;
use ieee.std_logic_1164.all;

library mdm_riscv_v1_0_3;
use mdm_riscv_v1_0_3.mdm_funcs.all;

entity MB_SRL16E is
  generic(
    C_TARGET    : TARGET_FAMILY_TYPE;
    C_STATIC    : boolean    := false;
    C_USE_SRL16 : string     := "yes";
    INIT        : bit_vector := X"0000");
  port(
    Config_Reset : in  std_logic;
    Q   : out std_logic;
    A0  : in  std_logic;
    A1  : in  std_logic;
    A2  : in  std_logic;
    A3  : in  std_logic;
    CE  : in  std_logic;
    CLK : in  std_logic;
    D   : in  std_logic);
end entity MB_SRL16E;

library unisim;
use unisim.vcomponents.all;

library ieee;
use ieee.numeric_std.all;

architecture IMP of MB_SRL16E is
begin  -- architecture IMP

  Use_unisim: if (C_USE_SRL16 /= "no" and C_TARGET /= RTL) generate
    MB_SRL16E_I1: SRL16E
      generic map (
        INIT  => INIT)  -- [bit_vector]
      port map (
        Q   => Q,       -- [out std_logic]
        A0  => A0,      -- [in  std_logic]
        A1  => A1,      -- [in  std_logic]
        A2  => A2,      -- [in  std_logic]
        A3  => A3,      -- [in  std_logic]
        CE  => CE,      -- [in  std_logic]
        CLK => CLK,     -- [in  std_logic]
        D   => D);      -- [in std_logic]
  end generate Use_unisim;

  Use_RTL : if (C_USE_SRL16 = "no" or C_TARGET = RTL) generate
    signal shift_reg         : std_logic_vector(15 downto 0) := to_stdLogicVector(INIT);
    constant shift_reg_const : std_logic_vector(15 downto 0) := to_stdLogicVector(INIT);
    attribute shreg_extract : string;
    attribute shreg_extract of SHIFT_REG : signal is "no";
  begin

    Static_Values: if (C_STATIC) generate
    begin
      Q <= shift_reg_const(to_integer(unsigned(to_stdLogicVector(A3 & A2 & A1 & A0))));
    end generate Static_Values;

    Dynamic_Values: if (not C_STATIC) generate
    begin
      Q <= shift_reg(to_integer(unsigned(to_stdLogicVector(A3 & A2 & A1 & A0))));

      process(CLK)
      begin
        if (rising_edge(CLK)) then
          if Config_Reset = '1' then
            shift_reg <= (others => '0');
          else
            if CE = '1' then
              shift_reg <= shift_reg(14 downto 0) & D;
            end if;
          end if;
        end if;
      end process;

    end generate Dynamic_Values;

  end generate Use_RTL;

end architecture IMP;


----- entity FDRSE -----
library ieee;
use ieee.std_logic_1164.all;

library mdm_riscv_v1_0_3;
use mdm_riscv_v1_0_3.mdm_funcs.all;

entity MB_FDRSE is
  generic (
    C_TARGET       : TARGET_FAMILY_TYPE;
    INIT           : bit := '0';
    IS_CE_INVERTED : bit := '0';
    IS_C_INVERTED  : bit := '0';
    IS_D_INVERTED  : bit := '0';
    IS_R_INVERTED  : bit := '0';
    IS_S_INVERTED  : bit := '0'
  );
  port (
    Q              : out std_logic;
    C              : in  std_logic;
    CE             : in  std_logic;
    D              : in  std_logic;
    R              : in  std_logic;
    S              : in  std_logic
  );
end entity MB_FDRSE;

library unisim;
use unisim.vcomponents.all;

library ieee;
use ieee.numeric_std.all;

architecture IMP of MB_FDRSE is
begin

  Using_RTL: if ( C_TARGET = RTL ) generate
    signal q_out              : std_logic := TO_X01(INIT);
    signal ce_in              : std_logic;
    signal d_in               : std_logic;
    signal s_in               : std_logic;
    signal r_in               : std_logic;
    constant IS_CE_INVERTED_BIN : std_logic := TO_X01(IS_CE_INVERTED);
    constant IS_D_INVERTED_BIN  : std_logic := TO_X01(IS_D_INVERTED);
    constant IS_S_INVERTED_BIN  : std_logic := TO_X01(IS_S_INVERTED);
    constant IS_R_INVERTED_BIN  : std_logic := TO_X01(IS_R_INVERTED);
  begin
    Q      <= q_out;
    ce_in  <= IS_CE_INVERTED_BIN xor CE;
    d_in   <= IS_D_INVERTED_BIN  xor D;
    s_in   <= IS_S_INVERTED_BIN  xor S;
    r_in   <= IS_R_INVERTED_BIN  xor R;

    Rising: if IS_C_INVERTED = '0' generate
    begin
      FunctionalBehavior : process(C)
      begin
        if (rising_edge(C)) then
          if (r_in = '1') then
            q_out <= '0';
          elsif (s_in = '1') then
            q_out <= '1';
          elsif (ce_in = '1') then
            q_out <= D;
          end if;
        end if;
      end process;
    end generate Rising;

    Falling: if IS_C_INVERTED /= '0' generate
    begin
      FunctionalBehavior : process(C)
      begin
        if (falling_edge(C)) then
          if (r_in = '1') then
            q_out <= '0';
          elsif (s_in = '1') then
            q_out <= '1';
          elsif (ce_in = '1') then
            q_out <= D;
          end if;
        end if;
      end process;
    end generate Falling;

  end generate Using_RTL;

  Using_FPGA: if ( C_TARGET /= RTL ) generate
  begin
     Native: FDRSE
       generic map (
         INIT           => INIT,
         IS_C_INVERTED  => IS_C_INVERTED,
         IS_CE_INVERTED => IS_CE_INVERTED,
         IS_D_INVERTED  => IS_D_INVERTED,
         IS_R_INVERTED  => IS_R_INVERTED,
         IS_S_INVERTED  => IS_S_INVERTED
       )
       port map (
         Q              => Q,
         C              => C,
         CE             => CE,
         R              => R,
         S              => S,
         D              => D
       );
  end generate Using_FPGA;

end architecture IMP;


----- entity MUXCY with XORCY -----
library IEEE;
use IEEE.std_logic_1164.all;

library mdm_riscv_v1_0_3;
use mdm_riscv_v1_0_3.mdm_funcs.all;

entity MB_MUXCY_XORCY is
  generic (
    C_TARGET : TARGET_FAMILY_TYPE
  );
  port (
    O  : out std_logic;
    LO : out std_logic;
    CI : in  std_logic;
    DI : in  std_logic;
    S  : in  std_logic
  );
end entity MB_MUXCY_XORCY;

library Unisim;
use Unisim.vcomponents.all;

architecture IMP of MB_MUXCY_XORCY is
begin

  Using_RTL: if ( C_TARGET = RTL ) generate
  begin
    O <= (CI xor S);
    LO <= DI when S = '0' else CI;
  end generate Using_RTL;

  Using_FPGA: if ( C_TARGET /= RTL ) generate
  begin
    Native_I1: MUXCY_L
      port map(
        LO => LO,
        CI => CI,
        DI => DI,
        S  => S
      );
    Native_I2: XORCY
      port map(
        O  => O,
        CI => CI,
        LI => S
      );
  end generate Using_FPGA;

end architecture IMP;


----- entity MUXCY -----
library IEEE;
use IEEE.std_logic_1164.all;

library mdm_riscv_v1_0_3;
use mdm_riscv_v1_0_3.mdm_funcs.all;

entity MB_MUXCY is
  generic (
    C_TARGET : TARGET_FAMILY_TYPE
  );
  port (
    LO : out std_logic;
    CI : in  std_logic;
    DI : in  std_logic;
    S  : in  std_logic
  );
end entity MB_MUXCY;

library Unisim;
use Unisim.vcomponents.all;

architecture IMP of MB_MUXCY is
begin

  Using_RTL: if ( C_TARGET = RTL ) generate
  begin
    LO <= DI when S = '0' else CI;
  end generate Using_RTL;

  Using_FPGA: if ( C_TARGET /= RTL ) generate
  begin
    Native: MUXCY_L
      port map(
        LO => LO,
        CI => CI,
        DI => DI,
        S  => S
      );
  end generate Using_FPGA;

end architecture IMP;


----- entity XORCY -----
library IEEE;
use IEEE.std_logic_1164.all;

library mdm_riscv_v1_0_3;
use mdm_riscv_v1_0_3.mdm_funcs.all;

entity MB_XORCY is
  generic (
    C_TARGET : TARGET_FAMILY_TYPE
  );
  port (
    O  : out std_logic;
    CI : in  std_logic;
    LI : in  std_logic
  );
end entity MB_XORCY;

library Unisim;
use Unisim.vcomponents.all;

architecture IMP of MB_XORCY is
begin

  Using_RTL: if ( C_TARGET = RTL ) generate
  begin
    O <= (CI xor LI);
  end generate Using_RTL;

  Using_FPGA: if ( C_TARGET /= RTL ) generate
  begin
    Native: XORCY
      port map(
        O  => O,
        CI => CI,
        LI => LI
      );
  end generate Using_FPGA;

end architecture IMP;


----- entity SRLC32E -----
library ieee;
use ieee.std_logic_1164.all;

library mdm_riscv_v1_0_3;
use mdm_riscv_v1_0_3.mdm_funcs.all;

entity MB_SRLC32E is
  generic (
    C_TARGET        : TARGET_FAMILY_TYPE;
    C_USE_SRL16     : string     := "yes";
    INIT            : bit_vector := X"00000000";
    IS_CLK_INVERTED : bit := '0'
  );
  port (
     Config_Reset   : in  STD_LOGIC;
     Q              : out STD_LOGIC;
     Q31            : out STD_LOGIC;
     A              : in  STD_LOGIC_VECTOR (4 downto 0) := "00000";
     CE             : in  STD_LOGIC;
     CLK            : in  STD_LOGIC;
     D              : in  STD_LOGIC
  );
end entity MB_SRLC32E;

library unisim;
use unisim.vcomponents.all;

library ieee;
use ieee.numeric_std.all;

architecture IMP of MB_SRLC32E is
begin

  Using_RTL: if (C_USE_SRL16 = "no"  or C_TARGET = RTL) generate
    signal shift_reg : std_logic_vector(31 downto 0) := to_stdLogicVector(INIT);

    attribute shreg_extract : string;
    attribute shreg_extract of shift_reg : signal is "no";
  begin
    Q   <= shift_reg(to_integer(unsigned(A)));
    Q31 <= shift_reg(31);

    Rising: if IS_CLK_INVERTED = '0' generate
    begin
      process(CLK)
      begin
        if (rising_edge(CLK)) then
          if Config_Reset = '1' then
            shift_reg <= (others => '0');
          else
            if CE = '1' then
              shift_reg <= shift_reg(30 downto 0) & D;
            end if;
          end if;
        end if;
      end process;
    end generate Rising;

    Falling: if IS_CLK_INVERTED /= '0' generate
    begin
      process(CLK)
      begin
        if (falling_edge(CLK)) then
          if Config_Reset = '1' then
            shift_reg <= (others => '0');
          else
            if CE = '1' then
              shift_reg <= shift_reg(30 downto 0) & D;
            end if;
          end if;
        end if;
      end process;
    end generate Falling;

  end generate Using_RTL;

  Using_FPGA: if (C_USE_SRL16 /= "no" and C_TARGET /= RTL ) generate
  begin
     Native: SRLC32E
       generic map (
         INIT            => INIT,
         IS_CLK_INVERTED => IS_CLK_INVERTED
       )
       port map (
         Q               => Q,
         Q31             => Q31,
         A               => A,
         CE              => CE,
         CLK             => CLK,
         D               => D
       );
  end generate Using_FPGA;

end architecture IMP;


----- entity carry_and -----
library ieee;
use ieee.std_logic_1164.all;

library mdm_riscv_v1_0_3;
use mdm_riscv_v1_0_3.mdm_funcs.all;

entity carry_and is
  generic (
    C_TARGET : TARGET_FAMILY_TYPE
  );
  port (
    Carry_IN  : in  std_logic;
    A         : in  std_logic;
    Carry_OUT : out std_logic);
end entity carry_and;

architecture IMP of carry_and is

  component MB_MUXCY is
    generic (
      C_TARGET : TARGET_FAMILY_TYPE
    );
    port (
      LO : out std_logic;
      CI : in  std_logic;
      DI : in  std_logic;
      S  : in  std_logic
    );
  end component MB_MUXCY;

  signal carry_out_i : std_logic;
begin  -- architecture IMP

  MUXCY_I : MB_MUXCY
    generic map (
      C_TARGET => C_TARGET
    )
    port map (
      DI => '0',
      CI => Carry_IN,
      S  => A,
      LO => carry_out_i);

  Carry_OUT <= carry_out_i;

end architecture IMP;


----- entity carry_or_vec -----
library IEEE;
use IEEE.std_logic_1164.all;

library mdm_riscv_v1_0_3;
use mdm_riscv_v1_0_3.mdm_funcs.all;

entity carry_or_vec is
  generic (
    C_TARGET : TARGET_FAMILY_TYPE;
    Size     : natural);
  port (
    Carry_In  : in std_logic;
    In_Vec    : in  std_logic_vector(0 to Size-1);
    Carry_Out : out std_logic);
end entity carry_or_vec;

architecture IMP of carry_or_vec is

  component MB_MUXCY is
    generic (
      C_TARGET : TARGET_FAMILY_TYPE
    );
    port (
      LO : out std_logic;
      CI : in  std_logic;
      DI : in  std_logic;
      S  : in  std_logic
    );
  end component MB_MUXCY;

  constant C_BITS_PER_LUT : natural := 6;

  signal sel   : std_logic_vector(0 to ((Size+(C_BITS_PER_LUT - 1))/C_BITS_PER_LUT) - 1);
  signal carry : std_logic_vector(0 to ((Size+(C_BITS_PER_LUT - 1))/C_BITS_PER_LUT));

  signal sig1  : std_logic_vector(0 to sel'length*C_BITS_PER_LUT - 1);

begin  -- architecture IMP

  assign_sigs : process (In_Vec) is
  begin  -- process assign_sigs
    sig1               <= (others => '0');
    sig1(0 to Size-1)  <= In_Vec;
  end process assign_sigs;

  carry(carry'right) <= Carry_In;

  The_Compare : for I in sel'right downto sel'left generate
  begin
    Compare_All_Bits: process(sig1)
      variable sel_I   : std_logic;
    begin
      sel_I  :=  '0';
      Compare_Bits: for J in C_BITS_PER_LUT - 1 downto 0 loop
        sel_I  := sel_I or ( sig1(C_BITS_PER_LUT * I + J) );
      end loop Compare_Bits;
      sel(I) <= not sel_I;
    end process Compare_All_Bits;

    MUXCY_L_I1 : MB_MUXCY
      generic map (
        C_TARGET => C_TARGET
      )
      port map (
        DI => '1',                      -- [in  std_logic S = 0]
        CI => Carry(I+1),               -- [in  std_logic S = 1]
        S  => sel(I),                   -- [in  std_logic (Select)]
        LO => Carry(I));                -- [out std_logic]
  end generate The_Compare;

  Carry_Out <= Carry(0);

end architecture IMP;


----- entity carry_or -----
library ieee;
use ieee.std_logic_1164.all;

library mdm_riscv_v1_0_3;
use mdm_riscv_v1_0_3.mdm_funcs.all;

entity carry_or is
  generic (
    C_TARGET : TARGET_FAMILY_TYPE
  );
  port (
    Carry_IN  : in  std_logic;
    A         : in  std_logic;
    Carry_OUT : out std_logic);
end entity carry_or;

architecture IMP of carry_or is

  component MB_MUXCY is
    generic (
      C_TARGET : TARGET_FAMILY_TYPE
    );
    port (
      LO : out std_logic;
      CI : in  std_logic;
      DI : in  std_logic;
      S  : in  std_logic
    );
  end component MB_MUXCY;

  signal carry_out_i : std_logic;
  signal A_N : std_logic;

begin  -- architecture IMP

  A_N <= not A;

  MUXCY_I : MB_MUXCY
    generic map (
      C_TARGET => C_TARGET
    )
    port map (
      DI => '1',
      CI => Carry_IN,
      S  => A_N,
      LO => carry_out_i);

  Carry_OUT <= carry_out_i;

end architecture IMP;


----- entity select_bit -----
library ieee;
use ieee.std_logic_1164.all;

library mdm_riscv_v1_0_3;
use mdm_riscv_v1_0_3.mdm_funcs.all;

entity select_bit is
  generic (
    C_TARGET  : TARGET_FAMILY_TYPE;
    sel_value : std_logic_vector(1 downto 0));
  port (
    Mask      : in  std_logic_vector(1 downto 0);
    Request   : in  std_logic_vector(1 downto 0);
    Carry_In  : in  std_logic;
    Carry_Out : out std_logic);
end entity select_bit;

architecture IMP of select_bit is

  component MB_MUXCY is
    generic (
      C_TARGET : TARGET_FAMILY_TYPE
    );
    port (
      LO : out std_logic;
      CI : in  std_logic;
      DI : in  std_logic;
      S  : in  std_logic
    );
  end component MB_MUXCY;

  signal di  : std_logic;
  signal sel : std_logic;

begin  -- architecture IMP

  -- Just pass the carry value if none is requesting or is enabled
  sel <= not( (Request(1) and Mask(1)) or (Request(0) and Mask(0)));

  di <= ((Request(0) and Mask(0) and sel_value(0))) or
        ( not(Request(0) and Mask(0)) and Request(1) and Mask(1) and sel_value(1));

  MUXCY_I : MB_MUXCY
    generic map (
      C_TARGET => C_TARGET
    )
    port map (
      DI => di,
      CI => Carry_In,
      S  => sel,
      LO => Carry_Out);

end architecture IMP;


----- entity LUT1 -----
library IEEE;
use IEEE.std_logic_1164.all;

library mdm_riscv_v1_0_3;
use mdm_riscv_v1_0_3.mdm_funcs.all;

entity MB_LUT1 is
  generic (
    C_TARGET : TARGET_FAMILY_TYPE;
    INIT     : bit_vector := X"0"
  );
  port (
    O  : out std_logic;
    I0 : in  std_logic
  );
end entity MB_LUT1;

library Unisim;
use Unisim.vcomponents.all;

architecture IMP of MB_LUT1 is
begin

  Using_RTL: if ( C_TARGET = RTL ) generate
    constant INIT_reg : std_logic_vector(1 downto 0) := To_StdLogicVector(INIT);
  begin
    process (I0)
    begin
      if( I0 = '0' ) then
        O     <= INIT_reg(0);
      else
        O     <= INIT_reg(1);
      end if;
    end process;
  end generate Using_RTL;

  Using_FPGA: if ( C_TARGET /= RTL ) generate
    signal lut1_o : std_logic;

    attribute DONT_TOUCH : string;
    attribute DONT_TOUCH of lut1_o : signal is "true";
  begin
    Native: LUT1
      generic map(
        INIT    => INIT
      )
      port map(
        O       => lut1_o,
        I0      => I0
      );
    O <= lut1_o;
  end generate Using_FPGA;

end architecture IMP;


-------------------------------------------------------------------------------
-- arbiter.vhd - Entity and architecture
-------------------------------------------------------------------------------
--
-- (c) Copyright 2022-2023 Advanced Micro Devices, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of AMD and is protected under U.S. and international copyright
-- and other intellectual property laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- AMD, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) AMD shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or AMD had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- AMD products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of AMD products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
--
-------------------------------------------------------------------------------
-- Filename:        arbiter.vhd
--
-- Description:     
--                  
-- VHDL-Standard:   VHDL'93/02
-------------------------------------------------------------------------------
-- Structure:   
--              arbiter.vhd
--                  mdm_primitives.vhd
--
-------------------------------------------------------------------------------
-- Author:          stefana
--
-- History:
--   stefana  2019-11-04    First Version
--
-------------------------------------------------------------------------------
-- Naming Conventions:
--      active low signals:                     "*_n"
--      clock signals:                          "clk", "clk_div#", "clk_#x" 
--      reset signals:                          "rst", "rst_n" 
--      generics:                               "C_*" 
--      user defined types:                     "*_TYPE" 
--      state machine next state:               "*_ns" 
--      state machine current state:            "*_cs" 
--      combinatorial signals:                  "*_com" 
--      pipelined or register delay signals:    "*_d#" 
--      counter signals:                        "*cnt*"
--      clock enable signals:                   "*_ce" 
--      internal version of output port         "*_i"
--      device pins:                            "*_pin" 
--      ports:                                  - Names begin with Uppercase 
--      processes:                              "*_PROCESS" 
--      component instantiations:               "<ENTITY_>I_<#|FUNC>
-------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library mdm_riscv_v1_0_3;
use mdm_riscv_v1_0_3.mdm_funcs.all;

entity Arbiter is
  generic (
    C_TARGET  : TARGET_FAMILY_TYPE;
    Size      : natural := 32;
    Size_Log2 : natural := 5);
  port (
    Clk       : in  std_logic;
    Reset     : in  std_logic;

    Enable    : in  std_logic;
    Requests  : in  std_logic_vector(Size-1 downto 0);
    Granted   : out std_logic_vector(Size-1 downto 0);
    Valid_Sel : out std_logic;
    Selected  : out std_logic_vector(Size_Log2-1 downto 0));
end entity Arbiter;

architecture IMP of Arbiter is

  component select_bit
    generic (
      C_TARGET  : TARGET_FAMILY_TYPE;
      sel_value : std_logic_vector(1 downto 0));
    port (
      Mask      : in  std_logic_vector(1 downto 0);
      Request   : in  std_logic_vector(1 downto 0);
      Carry_In  : in  std_logic;
      Carry_Out : out std_logic);
  end component select_bit;

  component carry_or_vec
    generic (
      C_TARGET  : TARGET_FAMILY_TYPE;
      Size      : natural);
    port (
      Carry_In  : in std_logic;
      In_Vec    : in  std_logic_vector(0 to Size-1);
      Carry_Out : out std_logic);
  end component carry_or_vec;

  component carry_and
    generic (
      C_TARGET  : TARGET_FAMILY_TYPE);
    port (
      Carry_IN  : in  std_logic;
      A         : in  std_logic;
      Carry_OUT : out std_logic);
  end component carry_and;

  component carry_or
    generic (
      C_TARGET  : TARGET_FAMILY_TYPE);
    port (
      Carry_IN  : in  std_logic;
      A         : in  std_logic;
      Carry_OUT : out std_logic);
  end component carry_or;

  subtype index_type is std_logic_vector(Size_Log2-1 downto 0);
  type int_array_type is array (natural range 2*Size-1 downto 0) of index_type;

  function init_index_table return int_array_type is
    variable tmp : int_array_type;
  begin  -- function init_index_table
    for I in 0 to Size-1 loop
      tmp(I)      := std_logic_vector(to_unsigned(I, Size_Log2));
      tmp(Size+I) := std_logic_vector(to_unsigned(I, Size_Log2));
    end loop;  -- I
    return tmp;
  end function init_index_table;

  constant index_table : int_array_type := init_index_table;

  signal long_req      : std_logic_vector(2*Size-1 downto 0);    
  signal mask          : std_logic_vector(2*Size-1 downto 0);

  signal grant_sel     : std_logic_vector(Size_Log2-1 downto 0);

  signal new_granted   : std_logic;
  signal reset_loop    : std_logic;
  signal mask_reset    : std_logic;

  signal valid_grant   : std_logic;

begin  -- architecture IMP

  long_req <= Requests & Requests;

  Request_Or : carry_or_vec
    generic map (
      C_TARGET => C_TARGET,
      Size     => Size)
    port map (
      Carry_In  => Enable,
      In_Vec    => Requests,            -- in  
      Carry_Out => new_granted);        -- out

  Valid_Sel <= new_granted;

  -----------------------------------------------------------------------------
  -- Generate Carry-Chain structure
  -----------------------------------------------------------------------------

  Chain: for I in Size_Log2-1 downto 0 generate
    signal carry : std_logic_vector(Size downto 0);  -- Assumes 2 bit/muxcy
  begin  -- generate Bits

    carry(Size) <= '0';

    Bits: for J in Size-1 downto 0 generate
      constant sel1 : std_logic := index_table(2*J+1)(I);
      constant sel0 : std_logic := index_table(2*J)(I);
      
      attribute keep_hierarchy : string;
      attribute keep_hierarchy of Select_bits : label is "yes";
    begin  -- generate Bits
      Select_bits : select_bit
        generic map (
            C_TARGET => C_TARGET,
            sel_value => sel1 & sel0)
        port map (
            Mask      => mask(2*J+1 downto 2*J),      -- in  
            Request   => long_req(2*J+1 downto 2*J),  -- in  
            Carry_In  => carry(J+1),                  -- in  
            Carry_Out => carry(J));                   -- out
    end generate Bits;

    grant_sel(I) <= carry(0);
  end generate Chain;

  Selected <= grant_sel;

  -----------------------------------------------------------------------------
  -- Handling Mask value
  -----------------------------------------------------------------------------

  -- if (Reset = '1') or ((new_granted and mask(1)) = '1') then
  Reset_loop_and : carry_and
    generic map (
        C_TARGET => C_TARGET)
    port map (
        Carry_IN  => new_granted,       -- in  
        A         => mask(1),           -- in  
        Carry_OUT => reset_loop);       -- out

  Mask_Reset_carry : carry_or
    generic map (
        C_TARGET => C_TARGET)
    port map (
        Carry_IN  => reset_loop,        -- in  
        A         => Reset,             -- in  
        Carry_OUT => mask_reset);       -- out

  Mask_Handler : process (Clk) is
  begin  -- process Mask_Handler
    if Clk'event and Clk = '1' then     -- rising clock edge
      if (mask_reset = '1') then        -- synchronous reset (active high)
        mask(2*Size-1 downto Size) <= (others => '1');
        mask(Size-1 downto 0)      <= (others => '0');
      else        
        if (new_granted = '1') then
          mask(2*Size-1 downto 1) <= mask(1) & mask(2*Size-1 downto 2);
        end if;
      end if;
    end if;
  end process Mask_Handler;

  -----------------------------------------------------------------------------
  -- Generate grant signal
  -----------------------------------------------------------------------------

  Grant_Signals: for K in Size-1 downto 1 generate
    signal tmp : std_logic;
    attribute keep : string;
    attribute keep of tmp : signal is "true";
  begin  -- generate Grant_Signals
    tmp <=  '1' when (K = to_integer(unsigned(grant_sel))) else '0';
    granted(K) <= tmp;
  end generate Grant_Signals;

  Granted(0) <= Requests(0) when to_integer(unsigned(grant_sel)) = 0 else '0';    

end architecture IMP;


-------------------------------------------------------------------------------
-- srl_fifo.vhd
-------------------------------------------------------------------------------
--
-- (c) Copyright 2022-2023 Advanced Micro Devices, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of AMD and is protected under U.S. and international copyright
-- and other intellectual property laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- AMD, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) AMD shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or AMD had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- AMD products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of AMD products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
--
-------------------------------------------------------------------------------
-- Filename:        srl_fifo.vhd
--
-- Description:     
--                  
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
-- Structure:   
--              srl_fifo.vhd
--
-------------------------------------------------------------------------------
-- Author:          stefana
--
-- History:
--   stefana  2019-11-04    First Version
--
-------------------------------------------------------------------------------
-- Naming Conventions:
--      active low signals:                     "*_n"
--      clock signals:                          "clk", "clk_div#", "clk_#x" 
--      reset signals:                          "rst", "rst_n" 
--      generics:                               "C_*" 
--      user defined types:                     "*_TYPE" 
--      state machine next state:               "*_ns" 
--      state machine current state:            "*_cs" 
--      combinatorial signals:                  "*_com" 
--      pipelined or register delay signals:    "*_d#" 
--      counter signals:                        "*cnt*"
--      clock enable signals:                   "*_ce" 
--      internal version of output port         "*_i"
--      device pins:                            "*_pin" 
--      ports:                                  - Names begin with Uppercase 
--      processes:                              "*_PROCESS" 
--      component instantiations:               "<ENTITY_>I_<#|FUNC>
-------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;

library mdm_riscv_v1_0_3;
use mdm_riscv_v1_0_3.mdm_funcs.all;

entity SRL_FIFO is
  generic (
    C_TARGET    : TARGET_FAMILY_TYPE;
    C_DATA_BITS : natural := 8;
    C_DEPTH     : natural := 16;
    C_USE_SRL16 : string  := "yes"
    );
  port (
    Clk         : in  std_logic;
    Reset       : in  std_logic;
    FIFO_Write  : in  std_logic;
    Data_In     : in  std_logic_vector(0 to C_DATA_BITS-1);
    FIFO_Read   : in  std_logic;
    Data_Out    : out std_logic_vector(0 to C_DATA_BITS-1);
    FIFO_Full   : out std_logic;
    Data_Exists : out std_logic
    );

end entity SRL_FIFO;

architecture IMP of SRL_FIFO is

  component MB_MUXCY_XORCY is
    generic (
      C_TARGET : TARGET_FAMILY_TYPE
    );
    port (
      O  : out std_logic;
      LO : out std_logic;
      CI : in  std_logic;
      DI : in  std_logic;
      S  : in  std_logic
    );
  end component MB_MUXCY_XORCY;

  component MB_XORCY is
    generic (
      C_TARGET : TARGET_FAMILY_TYPE
    );
    port (
      O  : out std_logic;
      CI : in  std_logic;
      LI : in  std_logic
    );
  end component MB_XORCY;

  component MB_FDRE is
    generic (
      C_TARGET : TARGET_FAMILY_TYPE;
      INIT : bit := '0'
    );
    port(
      Q  : out std_logic;
      C  : in  std_logic;
      CE : in  std_logic;
      D  : in  std_logic;
      R  : in  std_logic
    );
  end component MB_FDRE;

  component MB_SRL16E is
    generic(
      C_TARGET    : TARGET_FAMILY_TYPE;
      C_STATIC    : boolean    := false;
      C_USE_SRL16 : string     := "yes";
      INIT        : bit_vector := X"0000");
    port(
      Config_Reset : in  std_logic;
      Q        : out std_logic;
      A0       : in  std_logic;
      A1       : in  std_logic;
      A2       : in  std_logic;
      A3       : in  std_logic;
      CE       : in  std_logic;
      CLK      : in  std_logic;
      D        : in  std_logic
    );
  end component MB_SRL16E;

  component MB_SRLC32E
    generic (
      C_TARGET        : TARGET_FAMILY_TYPE;
      C_USE_SRL16     : string     := "yes";
      INIT            : bit_vector := X"00000000";
      IS_CLK_INVERTED : bit := '0'
    );
    port (
       Config_Reset   : in  std_logic;
       Q              : out STD_LOGIC;
       Q31            : out STD_LOGIC;
       A              : in  STD_LOGIC_VECTOR (4 downto 0) := "00000";
   