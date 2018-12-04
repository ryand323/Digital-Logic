--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: J.40
--  \   \         Application: netgen
--  /   /         Filename: schem_timesim.vhd
-- /___/   /\     Timestamp: Tue Jan 31 12:46:54 2017
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 5 -pcf schem.pcf -rpw 100 -tpw 0 -ar Structure -tm schem -insert_pp_buffers false -w -dir netgen/par -ofmt vhdl -sim schem.ncd schem_timesim.vhd 
-- Device	: 3s100ecp132-5 (PRODUCTION 1.27 2007-10-19)
-- Input file	: schem.ncd
-- Output file	: \\users.uidaho.edu\users\d\dona1865\ECE 241\lab 2\lab2\netgen\par\schem_timesim.vhd
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
    B_big : out STD_LOGIC; 
    A_big : out STD_LOGIC; 
    A0 : in STD_LOGIC := 'X'; 
    A1 : in STD_LOGIC := 'X'; 
    B0 : in STD_LOGIC := 'X'; 
    B1 : in STD_LOGIC := 'X'; 
    Equal : out STD_LOGIC 
  );
end schem;

architecture Structure of schem is
  signal A0_IBUF_0 : STD_LOGIC; 
  signal A1_IBUF_1 : STD_LOGIC; 
  signal B0_IBUF_2 : STD_LOGIC; 
  signal B1_IBUF_3 : STD_LOGIC; 
  signal Equal_O : STD_LOGIC; 
  signal A0_INBUF : STD_LOGIC; 
  signal A1_INBUF : STD_LOGIC; 
  signal B0_INBUF : STD_LOGIC; 
  signal B1_INBUF : STD_LOGIC; 
  signal A_big_O : STD_LOGIC; 
  signal B_big_O : STD_LOGIC; 
  signal A_big_OBUF_4 : STD_LOGIC; 
  signal Equal_OBUF_5 : STD_LOGIC; 
  signal B_big_OBUF_6 : STD_LOGIC; 
begin
  Equal_OBUF : X_OBUF
    generic map(
      LOC => "PAD70"
    )
    port map (
      I => Equal_O,
      O => Equal
    );
  A0_IBUF : X_BUF
    generic map(
      LOC => "IPAD73",
      PATHPULSE => 694 ps
    )
    port map (
      I => A0,
      O => A0_INBUF
    );
  A0_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD73",
      PATHPULSE => 694 ps
    )
    port map (
      I => A0_INBUF,
      O => A0_IBUF_0
    );
  A1_IBUF : X_BUF
    generic map(
      LOC => "IPAD100",
      PATHPULSE => 694 ps
    )
    port map (
      I => A1,
      O => A1_INBUF
    );
  A1_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD100",
      PATHPULSE => 694 ps
    )
    port map (
      I => A1_INBUF,
      O => A1_IBUF_1
    );
  B0_IBUF : X_BUF
    generic map(
      LOC => "PAD99",
      PATHPULSE => 694 ps
    )
    port map (
      I => B0,
      O => B0_INBUF
    );
  B0_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD99",
      PATHPULSE => 694 ps
    )
    port map (
      I => B0_INBUF,
      O => B0_IBUF_2
    );
  B1_IBUF : X_BUF
    generic map(
      LOC => "PAD94",
      PATHPULSE => 694 ps
    )
    port map (
      I => B1,
      O => B1_INBUF
    );
  B1_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD94",
      PATHPULSE => 694 ps
    )
    port map (
      I => B1_INBUF,
      O => B1_IBUF_3
    );
  A_big_OBUF : X_OBUF
    generic map(
      LOC => "PAD96"
    )
    port map (
      I => A_big_O,
      O => A_big
    );
  B_big_OBUF : X_OBUF
    generic map(
      LOC => "PAD92"
    )
    port map (
      I => B_big_O,
      O => B_big
    );
  XLXI_10 : X_LUT4
    generic map(
      INIT => X"9009",
      LOC => "SLICE_X1Y18"
    )
    port map (
      ADR0 => A1_IBUF_1,
      ADR1 => B1_IBUF_3,
      ADR2 => B0_IBUF_2,
      ADR3 => A0_IBUF_0,
      O => Equal_OBUF_5
    );
  XLXI_25 : X_LUT4
    generic map(
      INIT => X"50D4",
      LOC => "SLICE_X0Y18"
    )
    port map (
      ADR0 => A1_IBUF_1,
      ADR1 => B0_IBUF_2,
      ADR2 => B1_IBUF_3,
      ADR3 => A0_IBUF_0,
      O => B_big_OBUF_6
    );
  XLXI_26 : X_LUT4
    generic map(
      INIT => X"2B22",
      LOC => "SLICE_X1Y18"
    )
    port map (
      ADR0 => A1_IBUF_1,
      ADR1 => B1_IBUF_3,
      ADR2 => B0_IBUF_2,
      ADR3 => A0_IBUF_0,
      O => A_big_OBUF_4
    );
  Equal_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD70",
      PATHPULSE => 694 ps
    )
    port map (
      I => Equal_OBUF_5,
      O => Equal_O
    );
  A_big_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD96",
      PATHPULSE => 694 ps
    )
    port map (
      I => A_big_OBUF_4,
      O => A_big_O
    );
  B_big_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD92",
      PATHPULSE => 694 ps
    )
    port map (
      I => B_big_OBUF_6,
      O => B_big_O
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

