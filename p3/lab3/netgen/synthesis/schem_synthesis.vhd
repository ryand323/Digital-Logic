--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: J.40
--  \   \         Application: netgen
--  /   /         Filename: schem_synthesis.vhd
-- /___/   /\     Timestamp: Tue Feb 07 12:46:14 2017
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm schem -w -dir netgen/synthesis -ofmt vhdl -sim schem.ngc schem_synthesis.vhd 
-- Device	: xc3s100e-5-cp132
-- Input file	: schem.ngc
-- Output file	: \\users.uidaho.edu\users\d\dona1865\ECE 241\lab 3\lab3\netgen\synthesis\schem_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: schem
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

entity schem is
  port (
    A_0 : in STD_LOGIC := 'X'; 
    A_1 : in STD_LOGIC := 'X'; 
    B_0 : in STD_LOGIC := 'X'; 
    B_1 : in STD_LOGIC := 'X'; 
    C_Out : out STD_LOGIC; 
    S_0 : out STD_LOGIC; 
    S_1 : out STD_LOGIC; 
    C_in : in STD_LOGIC := 'X' 
  );
end schem;

architecture Structure of schem is
  signal A_0_IBUF_0 : STD_LOGIC; 
  signal A_1_IBUF_1 : STD_LOGIC; 
  signal B_0_IBUF_2 : STD_LOGIC; 
  signal B_1_IBUF_3 : STD_LOGIC; 
  signal C_Out_OBUF_4 : STD_LOGIC; 
  signal S_0_OBUF_5 : STD_LOGIC; 
  signal S_1_OBUF_6 : STD_LOGIC; 
  signal C_in_IBUF_7 : STD_LOGIC; 
  signal XLXN_11 : STD_LOGIC; 
  signal XLXN_13 : STD_LOGIC; 
  signal XLXN_26 : STD_LOGIC; 
  signal XLXN_27 : STD_LOGIC; 
  signal XLXN_28 : STD_LOGIC; 
  signal XLXN_34 : STD_LOGIC; 
  signal XLXN_29 : STD_LOGIC; 
  signal XLXN_35 : STD_LOGIC; 
  signal XLXN_36 : STD_LOGIC; 
  signal XLXN_54 : STD_LOGIC; 
  signal XLXN_60 : STD_LOGIC; 
  signal XLXN_61 : STD_LOGIC; 
  signal XLXN_56 : STD_LOGIC; 
  signal XLXN_63 : STD_LOGIC; 
  signal XLXN_58 : STD_LOGIC; 
  signal XLXN_64 : STD_LOGIC; 
  signal XLXN_59 : STD_LOGIC; 
  signal XLXN_65 : STD_LOGIC; 
  signal XLXN_66 : STD_LOGIC; 
  signal XLXN_68 : STD_LOGIC; 
  signal XLXN_9 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal N5 : STD_LOGIC; 
begin
  XLXI_5 : INV
    port map (
      I => C_in_IBUF_7,
      O => XLXN_9
    );
  XLXI_6 : INV
    port map (
      I => A_0_IBUF_0,
      O => XLXN_11
    );
  XLXI_7 : INV
    port map (
      I => B_0_IBUF_2,
      O => XLXN_13
    );
  XLXI_10 : AND3
    port map (
      I0 => B_0_IBUF_2,
      I1 => A_0_IBUF_0,
      I2 => XLXN_9,
      O => XLXN_34
    );
  XLXI_11 : AND3
    port map (
      I0 => B_0_IBUF_2,
      I1 => XLXN_11,
      I2 => XLXN_9,
      O => XLXN_27
    );
  XLXI_12 : AND3
    port map (
      I0 => XLXN_13,
      I1 => A_0_IBUF_0,
      I2 => XLXN_9,
      O => XLXN_26
    );
  XLXI_13 : AND3
    port map (
      I0 => XLXN_13,
      I1 => XLXN_11,
      I2 => C_in_IBUF_7,
      O => XLXN_28
    );
  XLXI_14 : AND3
    port map (
      I0 => B_0_IBUF_2,
      I1 => A_0_IBUF_0,
      I2 => C_in_IBUF_7,
      O => XLXN_29
    );
  XLXI_15 : AND2
    port map (
      I0 => B_0_IBUF_2,
      I1 => C_in_IBUF_7,
      O => XLXN_36
    );
  XLXI_16 : AND2
    port map (
      I0 => A_0_IBUF_0,
      I1 => C_in_IBUF_7,
      O => XLXN_35
    );
  XLXI_27 : OR3
    port map (
      I0 => XLXN_35,
      I1 => XLXN_36,
      I2 => XLXN_34,
      O => XLXN_68
    );
  XLXI_28 : OR4
    port map (
      I0 => XLXN_29,
      I1 => XLXN_28,
      I2 => XLXN_26,
      I3 => XLXN_27,
      O => S_0_OBUF_5
    );
  XLXI_41 : INV
    port map (
      I => XLXN_68,
      O => XLXN_54
    );
  XLXI_42 : INV
    port map (
      I => B_1_IBUF_3,
      O => XLXN_56
    );
  XLXI_43 : INV
    port map (
      I => A_1_IBUF_1,
      O => XLXN_58
    );
  XLXI_44 : AND3
    port map (
      I0 => B_1_IBUF_3,
      I1 => A_1_IBUF_1,
      I2 => XLXN_54,
      O => XLXN_64
    );
  XLXI_45 : AND3
    port map (
      I0 => B_1_IBUF_3,
      I1 => XLXN_58,
      I2 => XLXN_54,
      O => XLXN_59
    );
  XLXI_46 : AND3
    port map (
      I0 => XLXN_56,
      I1 => A_1_IBUF_1,
      I2 => XLXN_54,
      O => XLXN_61
    );
  XLXI_47 : AND3
    port map (
      I0 => XLXN_56,
      I1 => XLXN_58,
      I2 => XLXN_68,
      O => XLXN_63
    );
  XLXI_48 : AND3
    port map (
      I0 => B_1_IBUF_3,
      I1 => A_1_IBUF_1,
      I2 => XLXN_68,
      O => XLXN_60
    );
  XLXI_49 : AND2
    port map (
      I0 => B_1_IBUF_3,
      I1 => XLXN_68,
      O => XLXN_66
    );
  XLXI_50 : AND2
    port map (
      I0 => A_1_IBUF_1,
      I1 => XLXN_68,
      O => XLXN_65
    );
  XLXI_51 : OR4
    port map (
      I0 => XLXN_60,
      I1 => XLXN_63,
      I2 => XLXN_61,
      I3 => XLXN_59,
      O => S_1_OBUF_6
    );
  XLXI_52 : OR3
    port map (
      I0 => XLXN_65,
      I1 => XLXN_66,
      I2 => XLXN_64,
      O => C_Out_OBUF_4
    );
  A_0_IBUF : IBUF
    port map (
      I => A_0,
      O => A_0_IBUF_0
    );
  A_1_IBUF : IBUF
    port map (
      I => A_1,
      O => A_1_IBUF_1
    );
  B_0_IBUF : IBUF
    port map (
      I => B_0,
      O => B_0_IBUF_2
    );
  B_1_IBUF : IBUF
    port map (
      I => B_1,
      O => B_1_IBUF_3
    );
  C_in_IBUF : IBUF
    port map (
      I => C_in,
      O => C_in_IBUF_7
    );
  C_Out_OBUF : OBUF
    port map (
      I => C_Out_OBUF_4,
      O => C_Out
    );
  S_0_OBUF : OBUF
    port map (
      I => S_0_OBUF_5,
      O => S_0
    );
  S_1_OBUF : OBUF
    port map (
      I => S_1_OBUF_6,
      O => S_1
    );
  XST_GND : GND
    port map (
      G => N4
    );
  XST_VCC : VCC
    port map (
      P => N5
    );

end Structure;

