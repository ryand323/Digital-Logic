--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: J.40
--  \   \         Application: netgen
--  /   /         Filename: comparator_timesim.vhd
-- /___/   /\     Timestamp: Tue Mar 07 12:49:42 2017
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 5 -pcf comparator.pcf -rpw 100 -tpw 0 -ar Structure -tm comparator -insert_pp_buffers false -w -dir netgen/par -ofmt vhdl -sim comparator.ncd comparator_timesim.vhd 
-- Device	: 3s100ecp132-5 (PRODUCTION 1.27 2007-10-19)
-- Input file	: comparator.ncd
-- Output file	: \\users.uidaho.edu\users\d\dona1865\ECE 241\lab7\netgen\par\comparator_timesim.vhd
-- # of Entities	: 1
-- Design Name	: comparator
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

entity comparator is
  port (
    A0 : in STD_LOGIC := 'X'; 
    A1 : in STD_LOGIC := 'X'; 
    A2 : in STD_LOGIC := 'X'; 
    A3 : in STD_LOGIC := 'X'; 
    B0 : in STD_LOGIC := 'X'; 
    B1 : in STD_LOGIC := 'X'; 
    B2 : in STD_LOGIC := 'X'; 
    B3 : in STD_LOGIC := 'X'; 
    EQ : inout STD_LOGIC_VECTOR ( 3 downto 0 ); 
    LT : inout STD_LOGIC_VECTOR ( 3 downto 0 ); 
    GRT : inout STD_LOGIC_VECTOR ( 3 downto 0 ) 
  );
end comparator;

architecture Structure of comparator is
  signal GRT_1_OBUF_0 : STD_LOGIC; 
  signal GRT_2_OBUF_0 : STD_LOGIC; 
  signal EQ_1_OBUF_1 : STD_LOGIC; 
  signal EQ_2_OBUF_0 : STD_LOGIC; 
  signal LT_1_OBUF_2 : STD_LOGIC; 
  signal LT_2_OBUF_0 : STD_LOGIC; 
  signal A0_IBUF_3 : STD_LOGIC; 
  signal A1_IBUF_4 : STD_LOGIC; 
  signal B0_IBUF_5 : STD_LOGIC; 
  signal A2_IBUF_6 : STD_LOGIC; 
  signal B1_IBUF_7 : STD_LOGIC; 
  signal A3_IBUF_8 : STD_LOGIC; 
  signal B2_IBUF_9 : STD_LOGIC; 
  signal B3_IBUF_10 : STD_LOGIC; 
  signal GRT_0_O : STD_LOGIC; 
  signal GRT_1_O : STD_LOGIC; 
  signal GRT_2_O : STD_LOGIC; 
  signal GRT_3_O : STD_LOGIC; 
  signal EQ_0_O : STD_LOGIC; 
  signal EQ_1_O : STD_LOGIC; 
  signal EQ_2_O : STD_LOGIC; 
  signal EQ_3_O : STD_LOGIC; 
  signal LT_0_O : STD_LOGIC; 
  signal LT_1_O : STD_LOGIC; 
  signal LT_2_O : STD_LOGIC; 
  signal LT_3_O : STD_LOGIC; 
  signal A0_INBUF : STD_LOGIC; 
  signal A1_INBUF : STD_LOGIC; 
  signal B0_INBUF : STD_LOGIC; 
  signal A2_INBUF : STD_LOGIC; 
  signal B1_INBUF : STD_LOGIC; 
  signal A3_INBUF : STD_LOGIC; 
  signal B2_INBUF : STD_LOGIC; 
  signal B3_INBUF : STD_LOGIC; 
  signal EQ_3_OBUF_11 : STD_LOGIC; 
  signal GRT_3_OBUF_12 : STD_LOGIC; 
  signal LT_0_OBUF_13 : STD_LOGIC; 
  signal LT_1_OBUF_pack_1 : STD_LOGIC; 
  signal EQ_0_OBUF_14 : STD_LOGIC; 
  signal EQ_1_OBUF_pack_1 : STD_LOGIC; 
  signal GRT_0_OBUF_15 : STD_LOGIC; 
  signal GRT_1_OBUF_pack_1 : STD_LOGIC; 
  signal GRT_2_OBUF_16 : STD_LOGIC; 
  signal EQ_2_OBUF_17 : STD_LOGIC; 
  signal LT_3_OBUF_18 : STD_LOGIC; 
  signal LT_2_OBUF_19 : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
begin
  GRT_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD96"
    )
    port map (
      I => GRT_0_O,
      O => GRT(0)
    );
  GRT_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD84"
    )
    port map (
      I => GRT_1_O,
      O => GRT(1)
    );
  GRT_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD92"
    )
    port map (
      I => GRT_2_O,
      O => GRT(2)
    );
  GRT_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD97"
    )
    port map (
      I => GRT_3_O,
      O => GRT(3)
    );
  EQ_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD70"
    )
    port map (
      I => EQ_0_O,
      O => EQ(0)
    );
  EQ_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD82"
    )
    port map (
      I => EQ_1_O,
      O => EQ(1)
    );
  EQ_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD85"
    )
    port map (
      I => EQ_2_O,
      O => EQ(2)
    );
  EQ_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD93"
    )
    port map (
      I => EQ_3_O,
      O => EQ(3)
    );
  LT_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD71"
    )
    port map (
      I => LT_0_O,
      O => LT(0)
    );
  LT_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD78"
    )
    port map (
      I => LT_1_O,
      O => LT(1)
    );
  LT_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD87"
    )
    port map (
      I => LT_2_O,
      O => LT(2)
    );
  LT_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD91"
    )
    port map (
      I => LT_3_O,
      O => LT(3)
    );
  A0_IBUF : X_BUF
    generic map(
      LOC => "PAD94",
      PATHPULSE => 694 ps
    )
    port map (
      I => A0,
      O => A0_INBUF
    );
  A0_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD94",
      PATHPULSE => 694 ps
    )
    port map (
      I => A0_INBUF,
      O => A0_IBUF_3
    );
  A1_IBUF : X_BUF
    generic map(
      LOC => "PAD99",
      PATHPULSE => 694 ps
    )
    port map (
      I => A1,
      O => A1_INBUF
    );
  A1_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD99",
      PATHPULSE => 694 ps
    )
    port map (
      I => A1_INBUF,
      O => A1_IBUF_4
    );
  B0_IBUF : X_BUF
    generic map(
      LOC => "PAD72",
      PATHPULSE => 694 ps
    )
    port map (
      I => B0,
      O => B0_INBUF
    );
  B0_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD72",
      PATHPULSE => 694 ps
    )
    port map (
      I => B0_INBUF,
      O => B0_IBUF_5
    );
  A2_IBUF : X_BUF
    generic map(
      LOC => "IPAD100",
      PATHPULSE => 694 ps
    )
    port map (
      I => A2,
      O => A2_INBUF
    );
  A2_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD100",
      PATHPULSE => 694 ps
    )
    port map (
      I => A2_INBUF,
      O => A2_IBUF_6
    );
  B1_IBUF : X_BUF
    generic map(
      LOC => "PAD83",
      PATHPULSE => 694 ps
    )
    port map (
      I => B1,
      O => B1_INBUF
    );
  B1_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD83",
      PATHPULSE => 694 ps
    )
    port map (
      I => B1_INBUF,
      O => B1_IBUF_7
    );
  A3_IBUF : X_BUF
    generic map(
      LOC => "IPAD73",
      PATHPULSE => 694 ps
    )
    port map (
      I => A3,
      O => A3_INBUF
    );
  A3_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD73",
      PATHPULSE => 694 ps
    )
    port map (
      I => A3_INBUF,
      O => A3_IBUF_8
    );
  B2_IBUF : X_BUF
    generic map(
      LOC => "IPAD86",
      PATHPULSE => 694 ps
    )
    port map (
      I => B2,
      O => B2_INBUF
    );
  B2_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD86",
      PATHPULSE => 694 ps
    )
    port map (
      I => B2_INBUF,
      O => B2_IBUF_9
    );
  B3_IBUF : X_BUF
    generic map(
      LOC => "IPAD3",
      PATHPULSE => 694 ps
    )
    port map (
      I => B3,
      O => B3_INBUF
    );
  B3_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD3",
      PATHPULSE => 694 ps
    )
    port map (
      I => B3_INBUF,
      O => B3_IBUF_10
    );
  GRT_3_and00001 : X_LUT4
    generic map(
      INIT => X"0F00",
      LOC => "SLICE_X0Y20"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => B3_IBUF_10,
      ADR3 => A3_IBUF_8,
      O => GRT_3_OBUF_12
    );
  LT_0_OBUF_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y8",
      PATHPULSE => 694 ps
    )
    port map (
      I => LT_1_OBUF_pack_1,
      O => LT_1_OBUF_2
    );
  LT_1_or00001 : X_LUT4
    generic map(
      INIT => X"CCEC",
      LOC => "SLICE_X3Y8"
    )
    port map (
      ADR0 => B1_IBUF_7,
      ADR1 => LT_2_OBUF_0,
      ADR2 => EQ_2_OBUF_0,
      ADR3 => A1_IBUF_4,
      O => LT_1_OBUF_pack_1
    );
  EQ_0_OBUF_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y9",
      PATHPULSE => 694 ps
    )
    port map (
      I => EQ_1_OBUF_pack_1,
      O => EQ_1_OBUF_1
    );
  EQ_1_1 : X_LUT4
    generic map(
      INIT => X"C030",
      LOC => "SLICE_X3Y9"
    )
    port map (
      ADR0 => VCC,
      ADR1 => B1_IBUF_7,
      ADR2 => EQ_2_OBUF_0,
      ADR3 => A1_IBUF_4,
      O => EQ_1_OBUF_pack_1
    );
  GRT_0_OBUF_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X0Y8",
      PATHPULSE => 694 ps
    )
    port map (
      I => GRT_1_OBUF_pack_1,
      O => GRT_1_OBUF_0
    );
  GRT_1_or00001 : X_LUT4
    generic map(
      INIT => X"AAEA",
      LOC => "SLICE_X0Y8"
    )
    port map (
      ADR0 => GRT_2_OBUF_0,
      ADR1 => EQ_2_OBUF_0,
      ADR2 => A1_IBUF_4,
      ADR3 => B1_IBUF_7,
      O => GRT_1_OBUF_pack_1
    );
  GRT_2_OBUF_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X0Y16",
      PATHPULSE => 694 ps
    )
    port map (
      I => GRT_2_OBUF_16,
      O => GRT_2_OBUF_0
    );
  GRT_2_OBUF_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X0Y16",
      PATHPULSE => 694 ps
    )
    port map (
      I => EQ_2_OBUF_17,
      O => EQ_2_OBUF_0
    );
  EQ_2_1 : X_LUT4
    generic map(
      INIT => X"8421",
      LOC => "SLICE_X0Y16"
    )
    port map (
      ADR0 => A3_IBUF_8,
      ADR1 => A2_IBUF_6,
      ADR2 => B3_IBUF_10,
      ADR3 => B2_IBUF_9,
      O => EQ_2_OBUF_17
    );
  LT_3_OBUF_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X1Y16",
      PATHPULSE => 694 ps
    )
    port map (
      I => LT_2_OBUF_19,
      O => LT_2_OBUF_0
    );
  LT_2_or00001 : X_LUT4
    generic map(
      INIT => X"0C8E",
      LOC => "SLICE_X1Y16"
    )
    port map (
      ADR0 => B2_IBUF_9,
      ADR1 => B3_IBUF_10,
      ADR2 => A3_IBUF_8,
      ADR3 => A2_IBUF_6,
      O => LT_2_OBUF_19
    );
  LT_3_and00001 : X_LUT4
    generic map(
      INIT => X"4444",
      LOC => "SLICE_X1Y16"
    )
    port map (
      ADR0 => A3_IBUF_8,
      ADR1 => B3_IBUF_10,
      ADR2 => VCC,
      ADR3 => VCC,
      O => LT_3_OBUF_18
    );
  EQ_3_1 : X_LUT4
    generic map(
      INIT => X"F00F",
      LOC => "SLICE_X0Y20"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => B3_IBUF_10,
      ADR3 => A3_IBUF_8,
      O => EQ_3_OBUF_11
    );
  LT_0_or00001 : X_LUT4
    generic map(
      INIT => X"F4F0",
      LOC => "SLICE_X3Y8"
    )
    port map (
      ADR0 => A0_IBUF_3,
      ADR1 => B0_IBUF_5,
      ADR2 => LT_1_OBUF_2,
      ADR3 => EQ_1_OBUF_1,
      O => LT_0_OBUF_13
    );
  EQ_0_1 : X_LUT4
    generic map(
      INIT => X"A500",
      LOC => "SLICE_X3Y9"
    )
    port map (
      ADR0 => B0_IBUF_5,
      ADR1 => VCC,
      ADR2 => A0_IBUF_3,
      ADR3 => EQ_1_OBUF_1,
      O => EQ_0_OBUF_14
    );
  GRT_0_or00001 : X_LUT4
    generic map(
      INIT => X"BAAA",
      LOC => "SLICE_X0Y8"
    )
    port map (
      ADR0 => GRT_1_OBUF_0,
      ADR1 => B0_IBUF_5,
      ADR2 => A0_IBUF_3,
      ADR3 => EQ_1_OBUF_1,
      O => GRT_0_OBUF_15
    );
  GRT_2_or00001 : X_LUT4
    generic map(
      INIT => X"0C8E",
      LOC => "SLICE_X0Y16"
    )
    port map (
      ADR0 => A2_IBUF_6,
      ADR1 => A3_IBUF_8,
      ADR2 => B3_IBUF_10,
      ADR3 => B2_IBUF_9,
      O => GRT_2_OBUF_16
    );
  GRT_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD96",
      PATHPULSE => 694 ps
    )
    port map (
      I => GRT_0_OBUF_15,
      O => GRT_0_O
    );
  GRT_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD84",
      PATHPULSE => 694 ps
    )
    port map (
      I => GRT_1_OBUF_0,
      O => GRT_1_O
    );
  GRT_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD92",
      PATHPULSE => 694 ps
    )
    port map (
      I => GRT_2_OBUF_0,
      O => GRT_2_O
    );
  GRT_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD97",
      PATHPULSE => 694 ps
    )
    port map (
      I => GRT_3_OBUF_12,
      O => GRT_3_O
    );
  EQ_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD70",
      PATHPULSE => 694 ps
    )
    port map (
      I => EQ_0_OBUF_14,
      O => EQ_0_O
    );
  EQ_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD82",
      PATHPULSE => 694 ps
    )
    port map (
      I => EQ_1_OBUF_1,
      O => EQ_1_O
    );
  EQ_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD85",
      PATHPULSE => 694 ps
    )
    port map (
      I => EQ_2_OBUF_0,
      O => EQ_2_O
    );
  EQ_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD93",
      PATHPULSE => 694 ps
    )
    port map (
      I => EQ_3_OBUF_11,
      O => EQ_3_O
    );
  LT_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD71",
      PATHPULSE => 694 ps
    )
    port map (
      I => LT_0_OBUF_13,
      O => LT_0_O
    );
  LT_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD78",
      PATHPULSE => 694 ps
    )
    port map (
      I => LT_1_OBUF_2,
      O => LT_1_O
    );
  LT_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD87",
      PATHPULSE => 694 ps
    )
    port map (
      I => LT_2_OBUF_0,
      O => LT_2_O
    );
  LT_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD91",
      PATHPULSE => 694 ps
    )
    port map (
      I => LT_3_OBUF_18,
      O => LT_3_O
    );
  NlwBlock_comparator_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

