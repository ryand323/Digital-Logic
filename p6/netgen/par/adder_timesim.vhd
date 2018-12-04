--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: J.40
--  \   \         Application: netgen
--  /   /         Filename: adder_timesim.vhd
-- /___/   /\     Timestamp: Tue Feb 28 13:19:48 2017
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 5 -pcf adder.pcf -rpw 100 -tpw 0 -ar Structure -tm adder -insert_pp_buffers false -w -dir netgen/par -ofmt vhdl -sim adder.ncd adder_timesim.vhd 
-- Device	: 3s100ecp132-5 (PRODUCTION 1.27 2007-10-19)
-- Input file	: adder.ncd
-- Output file	: \\users.uidaho.edu\users\d\dona1865\ECE 241\lab6\netgen\par\adder_timesim.vhd
-- # of Entities	: 1
-- Design Name	: adder
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

entity adder is
  port (
    Cout : out STD_LOGIC; 
    S0 : out STD_LOGIC; 
    S1 : out STD_LOGIC; 
    A0 : in STD_LOGIC := 'X'; 
    A1 : in STD_LOGIC := 'X'; 
    B0 : in STD_LOGIC := 'X'; 
    B1 : in STD_LOGIC := 'X' 
  );
end adder;

architecture Structure of adder is
  signal A0_IBUF_0 : STD_LOGIC; 
  signal A1_IBUF_1 : STD_LOGIC; 
  signal B0_IBUF_2 : STD_LOGIC; 
  signal B1_IBUF_3 : STD_LOGIC; 
  signal S0_O : STD_LOGIC; 
  signal S1_O : STD_LOGIC; 
  signal Cout_O : STD_LOGIC; 
  signal A0_INBUF : STD_LOGIC; 
  signal A1_INBUF : STD_LOGIC; 
  signal B0_INBUF : STD_LOGIC; 
  signal B1_INBUF : STD_LOGIC; 
  signal S1_OBUF_4 : STD_LOGIC; 
  signal S0_OBUF_5 : STD_LOGIC; 
  signal Cout_OBUF_6 : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
begin
  S0_OBUF : X_OBUF
    generic map(
      LOC => "PAD71"
    )
    port map (
      I => S0_O,
      O => S0
    );
  S1_OBUF : X_OBUF
    generic map(
      LOC => "PAD70"
    )
    port map (
      I => S1_O,
      O => S1
    );
  Cout_OBUF : X_OBUF
    generic map(
      LOC => "PAD96"
    )
    port map (
      I => Cout_O,
      O => Cout
    );
  A0_IBUF : X_BUF
    generic map(
      LOC => "IPAD100",
      PATHPULSE => 694 ps
    )
    port map (
      I => A0,
      O => A0_INBUF
    );
  A0_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD100",
      PATHPULSE => 694 ps
    )
    port map (
      I => A0_INBUF,
      O => A0_IBUF_0
    );
  A1_IBUF : X_BUF
    generic map(
      LOC => "IPAD73",
      PATHPULSE => 694 ps
    )
    port map (
      I => A1,
      O => A1_INBUF
    );
  A1_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD73",
      PATHPULSE => 694 ps
    )
    port map (
      I => A1_INBUF,
      O => A1_IBUF_1
    );
  B0_IBUF : X_BUF
    generic map(
      LOC => "PAD94",
      PATHPULSE => 694 ps
    )
    port map (
      I => B0,
      O => B0_INBUF
    );
  B0_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD94",
      PATHPULSE => 694 ps
    )
    port map (
      I => B0_INBUF,
      O => B0_IBUF_2
    );
  B1_IBUF : X_BUF
    generic map(
      LOC => "PAD99",
      PATHPULSE => 694 ps
    )
    port map (
      I => B1,
      O => B1_INBUF
    );
  B1_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD99",
      PATHPULSE => 694 ps
    )
    port map (
      I => B1_INBUF,
      O => B1_IBUF_3
    );
  Mxor_S0_Result1 : X_LUT4
    generic map(
      INIT => X"6666",
      LOC => "SLICE_X1Y20"
    )
    port map (
      ADR0 => B0_IBUF_2,
      ADR1 => A0_IBUF_0,
      ADR2 => VCC,
      ADR3 => VCC,
      O => S0_OBUF_5
    );
  Cout1 : X_LUT4
    generic map(
      INIT => X"E888",
      LOC => "SLICE_X0Y20"
    )
    port map (
      ADR0 => B1_IBUF_3,
      ADR1 => A1_IBUF_1,
      ADR2 => A0_IBUF_0,
      ADR3 => B0_IBUF_2,
      O => Cout_OBUF_6
    );
  Mxor_S1_xo_1_1 : X_LUT4
    generic map(
      INIT => X"8778",
      LOC => "SLICE_X1Y20"
    )
    port map (
      ADR0 => B0_IBUF_2,
      ADR1 => A0_IBUF_0,
      ADR2 => A1_IBUF_1,
      ADR3 => B1_IBUF_3,
      O => S1_OBUF_4
    );
  S0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD71",
      PATHPULSE => 694 ps
    )
    port map (
      I => S0_OBUF_5,
      O => S0_O
    );
  S1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD70",
      PATHPULSE => 694 ps
    )
    port map (
      I => S1_OBUF_4,
      O => S1_O
    );
  Cout_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD96",
      PATHPULSE => 694 ps
    )
    port map (
      I => Cout_OBUF_6,
      O => Cout_O
    );
  NlwBlock_adder_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

