--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: J.40
--  \   \         Application: netgen
--  /   /         Filename: ccounter_synthesis.vhd
-- /___/   /\     Timestamp: Tue Mar 28 13:08:07 2017
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm ccounter -w -dir netgen/synthesis -ofmt vhdl -sim ccounter.ngc ccounter_synthesis.vhd 
-- Device	: xc3s100e-5-cp132
-- Input file	: ccounter.ngc
-- Output file	: \\users.uidaho.edu\users\d\dona1865\ECE 241\counter2\netgen\synthesis\ccounter_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: ccounter
-- Xilinx	: C:\Xilinx\92i
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Development System Reference Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity ccounter is
  port (
    clk : in STD_LOGIC := 'X'; 
    Reset : in STD_LOGIC := 'X'; 
    updown : in STD_LOGIC := 'X'; 
    count : inout STD_LOGIC_VECTOR ( 2 downto 0 ) 
  );
end ccounter;

architecture Structure of ccounter is
  signal clk_BUFGP_0 : STD_LOGIC; 
  signal Reset_IBUF_1 : STD_LOGIC; 
  signal updown_IBUF_2 : STD_LOGIC; 
  signal count_2_3 : STD_LOGIC; 
  signal count_0_4 : STD_LOGIC; 
  signal count_1_5 : STD_LOGIC; 
  signal N9 : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal Result : STD_LOGIC_VECTOR ( 2 downto 0 ); 
begin
  count_0 : FDR
    port map (
      C => clk_BUFGP_0,
      D => Result(0),
      R => Reset_IBUF_1,
      Q => count_0_4
    );
  count_1 : FDR
    port map (
      C => clk_BUFGP_0,
      D => Result(1),
      R => Reset_IBUF_1,
      Q => count_1_5
    );
  count_2 : FDR
    port map (
      C => clk_BUFGP_0,
      D => Result(2),
      R => Reset_IBUF_1,
      Q => count_2_3
    );
  Maccum_count_xor_0_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => updown_IBUF_2,
      I1 => count_0_4,
      O => Result(0)
    );
  Maccum_count_xor_1_11 : LUT3
    generic map(
      INIT => X"39"
    )
    port map (
      I0 => updown_IBUF_2,
      I1 => count_1_5,
      I2 => count_0_4,
      O => Result(1)
    );
  Maccum_count_xor_2_11 : LUT4
    generic map(
      INIT => X"6A99"
    )
    port map (
      I0 => count_2_3,
      I1 => updown_IBUF_2,
      I2 => count_0_4,
      I3 => count_1_5,
      O => Result(2)
    );
  Reset_IBUF : IBUF
    port map (
      I => Reset,
      O => Reset_IBUF_1
    );
  updown_IBUF : IBUF
    port map (
      I => updown,
      O => updown_IBUF_2
    );
  count_2_OBUF : OBUF
    port map (
      I => count_2_3,
      O => count(2)
    );
  count_1_OBUF : OBUF
    port map (
      I => count_1_5,
      O => count(1)
    );
  count_0_OBUF : OBUF
    port map (
      I => count_0_4,
      O => count(0)
    );
  clk_BUFGP : BUFGP
    port map (
      I => clk,
      O => clk_BUFGP_0
    );
  XST_GND : GND
    port map (
      G => N9
    );
  XST_VCC : VCC
    port map (
      P => N10
    );

end Structure;

