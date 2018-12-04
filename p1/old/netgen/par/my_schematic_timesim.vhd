--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: J.40
--  \   \         Application: netgen
--  /   /         Filename: my_schematic_timesim.vhd
-- /___/   /\     Timestamp: Tue Jan 17 12:26:05 2017
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 5 -pcf my_schematic.pcf -rpw 100 -tpw 0 -ar Structure -tm my_schematic -insert_pp_buffers false -w -dir netgen/par -ofmt vhdl -sim my_schematic.ncd my_schematic_timesim.vhd 
-- Device	: 3s100ecp132-5 (PRODUCTION 1.27 2007-10-19)
-- Input file	: my_schematic.ncd
-- Output file	: \\users.uidaho.edu\users\d\dona1865\ECE 241\lab1\netgen\par\my_schematic_timesim.vhd
-- # of Entities	: 1
-- Design Name	: my_schematic
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
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity my_schematic is
  port (
    my_out : out STD_LOGIC; 
    my_in : in STD_LOGIC := 'X' 
  );
end my_schematic;

architecture Structure of my_schematic is
  signal my_out_O : STD_LOGIC; 
  signal my_in_INBUF : STD_LOGIC; 
begin
  my_out_OBUF : X_OBUF
    generic map(
      LOC => "PAD96"
    )
    port map (
      I => my_out_O,
      O => my_out
    );
  my_in_IBUF : X_BUF
    generic map(
      LOC => "IPAD73",
      PATHPULSE => 694 ps
    )
    port map (
      I => my_in,
      O => my_in_INBUF
    );
  my_out_OUTPUT_OFF_OMUX : X_INV
    generic map(
      LOC => "PAD96",
      PATHPULSE => 694 ps
    )
    port map (
      I => my_in_INBUF,
      O => my_out_O
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

