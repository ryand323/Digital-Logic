--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: J.40
--  \   \         Application: netgen
--  /   /         Filename: schem_timesim.vhd
-- /___/   /\     Timestamp: Tue Mar 21 12:09:00 2017
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 5 -pcf schem.pcf -rpw 100 -tpw 0 -ar Structure -tm schem -insert_pp_buffers false -w -dir netgen/par -ofmt vhdl -sim schem.ncd schem_timesim.vhd 
-- Device	: 3s100ecp132-5 (PRODUCTION 1.27 2007-10-19)
-- Input file	: schem.ncd
-- Output file	: \\users.uidaho.edu\users\d\dona1865\ECE 241\lab8\netgen\par\schem_timesim.vhd
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
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity schem is
  port (
    S0 : out STD_LOGIC; 
    S1 : out STD_LOGIC; 
    S2 : out STD_LOGIC; 
    Up_Down_B : in STD_LOGIC := 'X' 
  );
end schem;

architecture Structure of schem is
  signal GLOBAL_LOGIC0 : STD_LOGIC; 
  signal S0_O : STD_LOGIC; 
  signal S1_O : STD_LOGIC; 
  signal S2_O : STD_LOGIC; 
begin
  S0_OBUF : X_OBUF
    generic map(
      LOC => "PAD83"
    )
    port map (
      I => S0_O,
      O => S0
    );
  S1_OBUF : X_OBUF
    generic map(
      LOC => "PAD82"
    )
    port map (
      I => S1_O,
      O => S1
    );
  S2_OBUF : X_OBUF
    generic map(
      LOC => "PAD85"
    )
    port map (
      I => S2_O,
      O => S2
    );
  GLOBAL_LOGIC0_GND : X_ZERO
    port map (
      O => GLOBAL_LOGIC0
    );
  S0_OUTPUT_O1_GND : X_ZERO
    port map (
      O => GLOBAL_LOGIC0
    );
  S0_OUTPUT_OFF_O1_GND : X_ZERO
    port map (
      O => GLOBAL_LOGIC0
    );
  S0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD83",
      PATHPULSE => 694 ps
    )
    port map (
      I => GLOBAL_LOGIC0,
      O => S0_O
    );
  S1_OUTPUT_O1_GND : X_ZERO
    port map (
      O => GLOBAL_LOGIC0
    );
  S1_OUTPUT_OFF_O1_GND : X_ZERO
    port map (
      O => GLOBAL_LOGIC0
    );
  S1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD82",
      PATHPULSE => 694 ps
    )
    port map (
      I => GLOBAL_LOGIC0,
      O => S1_O
    );
  S2_OUTPUT_O1_GND : X_ZERO
    port map (
      O => GLOBAL_LOGIC0
    );
  S2_OUTPUT_OFF_O1_GND : X_ZERO
    port map (
      O => GLOBAL_LOGIC0
    );
  S2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD85",
      PATHPULSE => 694 ps
    )
    port map (
      I => GLOBAL_LOGIC0,
      O => S2_O
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

