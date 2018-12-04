--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: J.40
--  \   \         Application: netgen
--  /   /         Filename: ALU_timesim.vhd
-- /___/   /\     Timestamp: Tue Apr 18 13:00:48 2017
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 5 -pcf ALU.pcf -rpw 100 -tpw 0 -ar Structure -tm ALU -insert_pp_buffers false -w -dir netgen/par -ofmt vhdl -sim ALU.ncd ALU_timesim.vhd 
-- Device	: 3s100ecp132-5 (PRODUCTION 1.27 2007-10-19)
-- Input file	: ALU.ncd
-- Output file	: \\users.uidaho.edu\users\d\dona1865\ECE 241\lab12\netgen\par\ALU_timesim.vhd
-- # of Entities	: 1
-- Design Name	: ALU
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

entity ALU is
  port (
    y : out STD_LOGIC_VECTOR ( 2 downto 0 ); 
    a : in STD_LOGIC_VECTOR ( 2 downto 0 ); 
    b : in STD_LOGIC_VECTOR ( 2 downto 0 ); 
    switch : in STD_LOGIC_VECTOR ( 1 downto 0 ) 
  );
end ALU;

architecture Structure of ALU is
  signal switch_0_IBUF_0 : STD_LOGIC; 
  signal switch_1_IBUF_1 : STD_LOGIC; 
  signal a_0_IBUF_2 : STD_LOGIC; 
  signal a_1_IBUF_3 : STD_LOGIC; 
  signal a_2_IBUF_4 : STD_LOGIC; 
  signal b_0_IBUF_5 : STD_LOGIC; 
  signal b_1_IBUF_6 : STD_LOGIC; 
  signal b_2_IBUF_7 : STD_LOGIC; 
  signal Msub_a2_cy_0_0 : STD_LOGIC; 
  signal Madd_a1_cy_0_0 : STD_LOGIC; 
  signal Msub_a2_cy_1_0 : STD_LOGIC; 
  signal Madd_a1_cy_1_0 : STD_LOGIC; 
  signal switch_0_INBUF : STD_LOGIC; 
  signal switch_1_INBUF : STD_LOGIC; 
  signal y_0_O : STD_LOGIC; 
  signal y_1_O : STD_LOGIC; 
  signal y_2_O : STD_LOGIC; 
  signal a_0_INBUF : STD_LOGIC; 
  signal a_1_INBUF : STD_LOGIC; 
  signal a_2_INBUF : STD_LOGIC; 
  signal b_0_INBUF : STD_LOGIC; 
  signal b_1_INBUF : STD_LOGIC; 
  signal b_2_INBUF : STD_LOGIC; 
  signal y_1_OBUF_F5MUX_8 : STD_LOGIC; 
  signal N30 : STD_LOGIC; 
  signal y_1_OBUF_BXINV_9 : STD_LOGIC; 
  signal N29 : STD_LOGIC; 
  signal y_2_OBUF_F5MUX_10 : STD_LOGIC; 
  signal N28 : STD_LOGIC; 
  signal y_2_OBUF_BXINV_11 : STD_LOGIC; 
  signal N27 : STD_LOGIC; 
  signal y_0_OBUF_12 : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal Msub_a2_cy : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal Madd_a1_cy : STD_LOGIC_VECTOR ( 1 downto 0 ); 
begin
  switch_0_IBUF : X_BUF
    generic map(
      LOC => "PAD11",
      PATHPULSE => 694 ps
    )
    port map (
      I => switch(0),
      O => switch_0_INBUF
    );
  switch_0_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD11",
      PATHPULSE => 694 ps
    )
    port map (
      I => switch_0_INBUF,
      O => switch_0_IBUF_0
    );
  switch_1_IBUF : X_BUF
    generic map(
      LOC => "PAD83",
      PATHPULSE => 694 ps
    )
    port map (
      I => switch(1),
      O => switch_1_INBUF
    );
  switch_1_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD83",
      PATHPULSE => 694 ps
    )
    port map (
      I => switch_1_INBUF,
      O => switch_1_IBUF_1
    );
  y_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD71"
    )
    port map (
      I => y_0_O,
      O => y(0)
    );
  y_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD70"
    )
    port map (
      I => y_1_O,
      O => y(1)
    );
  y_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD96"
    )
    port map (
      I => y_2_O,
      O => y(2)
    );
  a_0_IBUF : X_BUF
    generic map(
      LOC => "PAD99",
      PATHPULSE => 694 ps
    )
    port map (
      I => a(0),
      O => a_0_INBUF
    );
  a_0_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD99",
      PATHPULSE => 694 ps
    )
    port map (
      I => a_0_INBUF,
      O => a_0_IBUF_2
    );
  a_1_IBUF : X_BUF
    generic map(
      LOC => "IPAD100",
      PATHPULSE => 694 ps
    )
    port map (
      I => a(1),
      O => a_1_INBUF
    );
  a_1_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD100",
      PATHPULSE => 694 ps
    )
    port map (
      I => a_1_INBUF,
      O => a_1_IBUF_3
    );
  a_2_IBUF : X_BUF
    generic map(
      LOC => "IPAD73",
      PATHPULSE => 694 ps
    )
    port map (
      I => a(2),
      O => a_2_INBUF
    );
  a_2_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD73",
      PATHPULSE => 694 ps
    )
    port map (
      I => a_2_INBUF,
      O => a_2_IBUF_4
    );
  b_0_IBUF : X_BUF
    generic map(
      LOC => "IPAD86",
      PATHPULSE => 694 ps
    )
    port map (
      I => b(0),
      O => b_0_INBUF
    );
  b_0_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD86",
      PATHPULSE => 694 ps
    )
    port map (
      I => b_0_INBUF,
      O => b_0_IBUF_5
    );
  b_1_IBUF : X_BUF
    generic map(
      LOC => "IPAD3",
      PATHPULSE => 694 ps
    )
    port map (
      I => b(1),
      O => b_1_INBUF
    );
  b_1_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD3",
      PATHPULSE => 694 ps
    )
    port map (
      I => b_1_INBUF,
      O => b_1_IBUF_6
    );
  b_2_IBUF : X_BUF
    generic map(
      LOC => "PAD94",
      PATHPULSE => 694 ps
    )
    port map (
      I => b(2),
      O => b_2_INBUF
    );
  b_2_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD94",
      PATHPULSE => 694 ps
    )
    port map (
      I => b_2_INBUF,
      O => b_2_IBUF_7
    );
  y_1_OBUF_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X3Y20"
    )
    port map (
      IA => N29,
      IB => N30,
      SEL => y_1_OBUF_BXINV_9,
      O => y_1_OBUF_F5MUX_8
    );
  y_1_OBUF_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y20",
      PATHPULSE => 694 ps
    )
    port map (
      I => switch_0_IBUF_0,
      O => y_1_OBUF_BXINV_9
    );
  m3_Y_1_F : X_LUT4
    generic map(
      INIT => X"C096",
      LOC => "SLICE_X3Y20"
    )
    port map (
      ADR0 => Madd_a1_cy_0_0,
      ADR1 => b_1_IBUF_6,
      ADR2 => a_1_IBUF_3,
      ADR3 => switch_1_IBUF_1,
      O => N29
    );
  y_2_OBUF_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X1Y20"
    )
    port map (
      IA => N27,
      IB => N28,
      SEL => y_2_OBUF_BXINV_11,
      O => y_2_OBUF_F5MUX_10
    );
  y_2_OBUF_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X1Y20",
      PATHPULSE => 694 ps
    )
    port map (
      I => switch_0_IBUF_0,
      O => y_2_OBUF_BXINV_11
    );
  m3_Y_2_F : X_LUT4
    generic map(
      INIT => X"C906",
      LOC => "SLICE_X1Y20"
    )
    port map (
      ADR0 => Madd_a1_cy_1_0,
      ADR1 => b_2_IBUF_7,
      ADR2 => switch_1_IBUF_1,
      ADR3 => a_2_IBUF_4,
      O => N27
    );
  Msub_a2_cy_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X2Y20",
      PATHPULSE => 694 ps
    )
    port map (
      I => Msub_a2_cy(0),
      O => Msub_a2_cy_0_0
    );
  Msub_a2_cy_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X2Y20",
      PATHPULSE => 694 ps
    )
    port map (
      I => Madd_a1_cy(0),
      O => Madd_a1_cy_0_0
    );
  Madd_a1_cy_0_11 : X_LUT4
    generic map(
      INIT => X"F000",
      LOC => "SLICE_X2Y20"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => b_0_IBUF_5,
      ADR3 => a_0_IBUF_2,
      O => Madd_a1_cy(0)
    );
  Msub_a2_cy_1_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X0Y20",
      PATHPULSE => 694 ps
    )
    port map (
      I => Msub_a2_cy(1),
      O => Msub_a2_cy_1_0
    );
  Msub_a2_cy_1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X0Y20",
      PATHPULSE => 694 ps
    )
    port map (
      I => Madd_a1_cy(1),
      O => Madd_a1_cy_1_0
    );
  Madd_a1_cy_1_11 : X_LUT4
    generic map(
      INIT => X"EA80",
      LOC => "SLICE_X0Y20"
    )
    port map (
      ADR0 => a_1_IBUF_3,
      ADR1 => a_0_IBUF_2,
      ADR2 => b_0_IBUF_5,
      ADR3 => b_1_IBUF_6,
      O => Madd_a1_cy(1)
    );
  m3_Y_0_1 : X_LUT4
    generic map(
      INIT => X"E83C",
      LOC => "SLICE_X2Y21"
    )
    port map (
      ADR0 => switch_0_IBUF_0,
      ADR1 => a_0_IBUF_2,
      ADR2 => b_0_IBUF_5,
      ADR3 => switch_1_IBUF_1,
      O => y_0_OBUF_12
    );
  m3_Y_1_G : X_LUT4
    generic map(
      INIT => X"BCE9",
      LOC => "SLICE_X3Y20"
    )
    port map (
      ADR0 => switch_1_IBUF_1,
      ADR1 => b_1_IBUF_6,
      ADR2 => a_1_IBUF_3,
      ADR3 => Msub_a2_cy_0_0,
      O => N30
    );
  m3_Y_2_G : X_LUT4
    generic map(
      INIT => X"BCE9",
      LOC => "SLICE_X1Y20"
    )
    port map (
      ADR0 => switch_1_IBUF_1,
      ADR1 => b_2_IBUF_7,
      ADR2 => a_2_IBUF_4,
      ADR3 => Msub_a2_cy_1_0,
      O => N28
    );
  Msub_a2_cy_0_11 : X_LUT4
    generic map(
      INIT => X"FF0F",
      LOC => "SLICE_X2Y20"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => b_0_IBUF_5,
      ADR3 => a_0_IBUF_2,
      O => Msub_a2_cy(0)
    );
  Msub_a2_cy_1_11 : X_LUT4
    generic map(
      INIT => X"8AEF",
      LOC => "SLICE_X0Y20"
    )
    port map (
      ADR0 => a_1_IBUF_3,
      ADR1 => a_0_IBUF_2,
      ADR2 => b_0_IBUF_5,
      ADR3 => b_1_IBUF_6,
      O => Msub_a2_cy(1)
    );
  y_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD71",
      PATHPULSE => 694 ps
    )
    port map (
      I => y_0_OBUF_12,
      O => y_0_O
    );
  y_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD70",
      PATHPULSE => 694 ps
    )
    port map (
      I => y_1_OBUF_F5MUX_8,
      O => y_1_O
    );
  y_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD96",
      PATHPULSE => 694 ps
    )
    port map (
      I => y_2_OBUF_F5MUX_10,
      O => y_2_O
    );
  NlwBlock_ALU_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

