--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: J.40
--  \   \         Application: netgen
--  /   /         Filename: schem_synthesis.vhd
-- /___/   /\     Timestamp: Tue Jan 17 13:17:21 2017
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm schem -w -dir netgen/synthesis -ofmt vhdl -sim schem.ngc schem_synthesis.vhd 
-- Device	: xc3s100e-5-cp132
-- Input file	: schem.ngc
-- Output file	: \\users.uidaho.edu\users\d\dona1865\ECE 241\lab1.1\lab1.1\netgen\synthesis\schem_synthesis.vhd
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
    my_out : out STD_LOGIC; 
    my_in : in STD_LOGIC := 'X' 
  );
end schem;

architecture Structure of schem is
  signal my_out_OBUF_0 : STD_LOGIC; 
  signal my_in_IBUF_1 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal N5 : STD_LOGIC; 
begin
  XLXI_1 : INV
    port map (
      I => my_in_IBUF_1,
      O => my_out_OBUF_0
    );
  my_in_IBUF : IBUF
    port map (
      I => my_in,
      O => my_in_IBUF_1
    );
  my_out_OBUF : OBUF
    port map (
      I => my_out_OBUF_0,
      O => my_out
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

