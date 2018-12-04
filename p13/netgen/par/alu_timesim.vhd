--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: J.40
--  \   \         Application: netgen
--  /   /         Filename: alu_timesim.vhd
-- /___/   /\     Timestamp: Tue Apr 25 14:07:51 2017
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 5 -pcf alu.pcf -rpw 100 -tpw 0 -ar Structure -tm alu -insert_pp_buffers false -w -dir netgen/par -ofmt vhdl -sim alu.ncd alu_timesim.vhd 
-- Device	: 3s100ecp132-5 (PRODUCTION 1.27 2007-10-19)
-- Input file	: alu.ncd
-- Output file	: \\users.uidaho.edu\users\d\dona1865\ECE 241\lab13\netgen\par\alu_timesim.vhd
-- # of Entities	: 1
-- Design Name	: alu
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

entity alu is
  port (
    ccr_out : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    alu_out : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    rega : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    regb : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    controls : in STD_LOGIC_VECTOR ( 3 downto 0 ) 
  );
end alu;

architecture Structure of alu is
  signal rega_0_IBUF_0 : STD_LOGIC; 
  signal rega_1_IBUF_1 : STD_LOGIC; 
  signal rega_2_IBUF_2 : STD_LOGIC; 
  signal rega_3_IBUF_3 : STD_LOGIC; 
  signal regb_0_IBUF_4 : STD_LOGIC; 
  signal regb_1_IBUF_5 : STD_LOGIC; 
  signal ccr_out_0_not0001_0 : STD_LOGIC; 
  signal regb_2_IBUF_6 : STD_LOGIC; 
  signal GLOBAL_LOGIC0 : STD_LOGIC; 
  signal regb_3_IBUF_7 : STD_LOGIC; 
  signal controls_0_IBUF_8 : STD_LOGIC; 
  signal controls_1_IBUF_9 : STD_LOGIC; 
  signal controls_2_IBUF_10 : STD_LOGIC; 
  signal controls_3_IBUF_11 : STD_LOGIC; 
  signal alu_out_1_map29 : STD_LOGIC; 
  signal N603_0 : STD_LOGIC; 
  signal ccr_out_0_mux0002_map18_0 : STD_LOGIC; 
  signal ccr_out_0_mux0002_map21 : STD_LOGIC; 
  signal ccr_out_2_mux0002_map49_0 : STD_LOGIC; 
  signal ccr_out_2_mux0002_map40_0 : STD_LOGIC; 
  signal ccr_out_2_mux0002_map67_0 : STD_LOGIC; 
  signal ccr_out_2_mux0002_map69 : STD_LOGIC; 
  signal ccr_out_2_mux0002_map22_0 : STD_LOGIC; 
  signal ccr_out_2_mux0002_map28_0 : STD_LOGIC; 
  signal alu_out_1_map34 : STD_LOGIC; 
  signal alu_out_3_map35_0 : STD_LOGIC; 
  signal alu_out_2_map5_0 : STD_LOGIC; 
  signal alu_out_2_map38 : STD_LOGIC; 
  signal N599_0 : STD_LOGIC; 
  signal alu_out_2_map35_0 : STD_LOGIC; 
  signal ccr_out_2_mux0002_map27 : STD_LOGIC; 
  signal alu_out_3_map5_0 : STD_LOGIC; 
  signal alu_out_3_map38 : STD_LOGIC; 
  signal N597_0 : STD_LOGIC; 
  signal Madd_alu_out_add00004_0 : STD_LOGIC; 
  signal N39_0 : STD_LOGIC; 
  signal N38 : STD_LOGIC; 
  signal ccr_out_2_mux0002_map66_0 : STD_LOGIC; 
  signal N27 : STD_LOGIC; 
  signal N601_0 : STD_LOGIC; 
  signal ccr_out_2_mux0002_map39 : STD_LOGIC; 
  signal alu_out_add0000_1_0 : STD_LOGIC; 
  signal alu_out_1_map35_0 : STD_LOGIC; 
  signal alu_out_1_map8 : STD_LOGIC; 
  signal N605 : STD_LOGIC; 
  signal alu_out_0_O : STD_LOGIC; 
  signal rega_0_INBUF : STD_LOGIC; 
  signal rega_1_INBUF : STD_LOGIC; 
  signal rega_2_INBUF : STD_LOGIC; 
  signal rega_3_INBUF : STD_LOGIC; 
  signal regb_0_INBUF : STD_LOGIC; 
  signal regb_1_INBUF : STD_LOGIC; 
  signal ccr_out_0_O : STD_LOGIC; 
  signal ccr_out_0_OUTPUT_OTCLK1INVNOT : STD_LOGIC; 
  signal ccr_out_0_12 : STD_LOGIC; 
  signal ccr_out_0_OUTPUT_OFF_ODDRIN1_MUX : STD_LOGIC; 
  signal regb_2_INBUF : STD_LOGIC; 
  signal ccr_out_1_O : STD_LOGIC; 
  signal regb_3_INBUF : STD_LOGIC; 
  signal ccr_out_2_O : STD_LOGIC; 
  signal ccr_out_2_OUTPUT_OTCLK1INVNOT : STD_LOGIC; 
  signal ccr_out_2_13 : STD_LOGIC; 
  signal ccr_out_2_OUTPUT_OFF_ODDRIN1_MUX : STD_LOGIC; 
  signal ccr_out_3_O : STD_LOGIC; 
  signal alu_out_1_O : STD_LOGIC; 
  signal controls_0_INBUF : STD_LOGIC; 
  signal alu_out_2_O : STD_LOGIC; 
  signal controls_1_INBUF : STD_LOGIC; 
  signal alu_out_3_O : STD_LOGIC; 
  signal controls_2_INBUF : STD_LOGIC; 
  signal controls_3_INBUF : STD_LOGIC; 
  signal alu_out_1_map29_F5MUX_14 : STD_LOGIC; 
  signal N612 : STD_LOGIC; 
  signal alu_out_1_map29_BXINV_15 : STD_LOGIC; 
  signal N613 : STD_LOGIC; 
  signal N599 : STD_LOGIC; 
  signal Msub_alu_out_addsub0000_cy_1_pack_1 : STD_LOGIC; 
  signal N597 : STD_LOGIC; 
  signal Msub_alu_out_addsub0000_cy_2_pack_1 : STD_LOGIC; 
  signal alu_out_2_map35 : STD_LOGIC; 
  signal Madd_alu_out_add0000_cy_1_pack_1 : STD_LOGIC; 
  signal ccr_out_0_mux0002_map21_F5MUX_16 : STD_LOGIC; 
  signal N610 : STD_LOGIC; 
  signal ccr_out_0_mux0002_map21_BXINV_17 : STD_LOGIC; 
  signal N611 : STD_LOGIC; 
  signal ccr_out_2_mux0002_map69_F5MUX_18 : STD_LOGIC; 
  signal N608 : STD_LOGIC; 
  signal ccr_out_2_mux0002_map69_BXINV_19 : STD_LOGIC; 
  signal N607 : STD_LOGIC; 
  signal ccr_out_2_mux0002_F5MUX_20 : STD_LOGIC; 
  signal ccr_out_2_mux0002_F : STD_LOGIC; 
  signal ccr_out_2_mux0002_BXINV_21 : STD_LOGIC; 
  signal N616 : STD_LOGIC; 
  signal alu_out_1_map34_F5MUX_22 : STD_LOGIC; 
  signal N614 : STD_LOGIC; 
  signal alu_out_1_map34_BXINV_23 : STD_LOGIC; 
  signal N615 : STD_LOGIC; 
  signal alu_out_3_map35 : STD_LOGIC; 
  signal Madd_alu_out_add0000_cy_2_pack_1 : STD_LOGIC; 
  signal alu_out_2_OBUF_24 : STD_LOGIC; 
  signal alu_out_2_map38_pack_1 : STD_LOGIC; 
  signal ccr_out_2_mux0002_map28 : STD_LOGIC; 
  signal ccr_out_2_mux0002_map27_pack_1 : STD_LOGIC; 
  signal alu_out_3_OBUF_25 : STD_LOGIC; 
  signal alu_out_3_map38_pack_1 : STD_LOGIC; 
  signal N603 : STD_LOGIC; 
  signal Madd_alu_out_add00004 : STD_LOGIC; 
  signal alu_out_0_OBUF_26 : STD_LOGIC; 
  signal N38_pack_1 : STD_LOGIC; 
  signal ccr_out_0_not0001 : STD_LOGIC; 
  signal N39 : STD_LOGIC; 
  signal ccr_out_2_mux0002_map49 : STD_LOGIC; 
  signal ccr_out_2_mux0002_map66 : STD_LOGIC; 
  signal N601 : STD_LOGIC; 
  signal ccr_out_2_mux0002_map67 : STD_LOGIC; 
  signal ccr_out_2_mux0002_map40 : STD_LOGIC; 
  signal ccr_out_2_mux0002_map39_pack_1 : STD_LOGIC; 
  signal alu_out_1_OBUF_27 : STD_LOGIC; 
  signal alu_out_1_map8_pack_1 : STD_LOGIC; 
  signal alu_out_1_map35 : STD_LOGIC; 
  signal N27_pack_1 : STD_LOGIC; 
  signal alu_out_3_map5 : STD_LOGIC; 
  signal alu_out_2_map5 : STD_LOGIC; 
  signal ccr_out_2_mux0002_map22 : STD_LOGIC; 
  signal N605_pack_1 : STD_LOGIC; 
  signal ccr_out_0_mux0002_map18 : STD_LOGIC; 
  signal ccr_out_0_mux0002 : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal NlwInverterSignal_ccr_out_0_CLK : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal NlwInverterSignal_ccr_out_2_CLK : STD_LOGIC; 
  signal Msub_alu_out_addsub0000_cy : STD_LOGIC_VECTOR ( 2 downto 1 ); 
  signal Madd_alu_out_add0000_cy : STD_LOGIC_VECTOR ( 2 downto 1 ); 
  signal alu_out_add0000 : STD_LOGIC_VECTOR ( 1 downto 1 ); 
begin
  alu_out_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD62"
    )
    port map (
      I => alu_out_0_O,
      O => alu_out(0)
    );
  rega_0_IBUF : X_BUF
    generic map(
      LOC => "PAD48",
      PATHPULSE => 694 ps
    )
    port map (
      I => rega(0),
      O => rega_0_INBUF
    );
  rega_0_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD48",
      PATHPULSE => 694 ps
    )
    port map (
      I => rega_0_INBUF,
      O => rega_0_IBUF_0
    );
  rega_1_IBUF : X_BUF
    generic map(
      LOC => "PAD49",
      PATHPULSE => 694 ps
    )
    port map (
      I => rega(1),
      O => rega_1_INBUF
    );
  rega_1_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD49",
      PATHPULSE => 694 ps
    )
    port map (
      I => rega_1_INBUF,
      O => rega_1_IBUF_1
    );
  rega_2_IBUF : X_BUF
    generic map(
      LOC => "PAD37",
      PATHPULSE => 694 ps
    )
    port map (
      I => rega(2),
      O => rega_2_INBUF
    );
  rega_2_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD37",
      PATHPULSE => 694 ps
    )
    port map (
      I => rega_2_INBUF,
      O => rega_2_IBUF_2
    );
  rega_3_IBUF : X_BUF
    generic map(
      LOC => "PAD38",
      PATHPULSE => 694 ps
    )
    port map (
      I => rega(3),
      O => rega_3_INBUF
    );
  rega_3_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD38",
      PATHPULSE => 694 ps
    )
    port map (
      I => rega_3_INBUF,
      O => rega_3_IBUF_3
    );
  regb_0_IBUF : X_BUF
    generic map(
      LOC => "PAD52",
      PATHPULSE => 694 ps
    )
    port map (
      I => regb(0),
      O => regb_0_INBUF
    );
  regb_0_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD52",
      PATHPULSE => 694 ps
    )
    port map (
      I => regb_0_INBUF,
      O => regb_0_IBUF_4
    );
  regb_1_IBUF : X_BUF
    generic map(
      LOC => "PAD45",
      PATHPULSE => 694 ps
    )
    port map (
      I => regb(1),
      O => regb_1_INBUF
    );
  regb_1_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD45",
      PATHPULSE => 694 ps
    )
    port map (
      I => regb_1_INBUF,
      O => regb_1_IBUF_5
    );
  ccr_out_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD59"
    )
    port map (
      I => ccr_out_0_O,
      O => ccr_out(0)
    );
  ccr_out_0_OUTPUT_OTCLK1INV : X_INV
    generic map(
      LOC => "PAD59",
      PATHPULSE => 694 ps
    )
    port map (
      I => ccr_out_0_not0001_0,
      O => ccr_out_0_OUTPUT_OTCLK1INVNOT
    );
  ccr_out_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD59",
      PATHPULSE => 694 ps
    )
    port map (
      I => ccr_out_0_12,
      O => ccr_out_0_O
    );
  ccr_out_0_OUTPUT_OFF_O1_DDRMUX : X_BUF
    generic map(
      LOC => "PAD59",
      PATHPULSE => 694 ps
    )
    port map (
      I => ccr_out_0_mux0002,
      O => ccr_out_0_OUTPUT_OFF_ODDRIN1_MUX
    );
  regb_2_IBUF : X_BUF
    generic map(
      LOC => "PAD40",
      PATHPULSE => 694 ps
    )
    port map (
      I => regb(2),
      O => regb_2_INBUF
    );
  regb_2_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD40",
      PATHPULSE => 694 ps
    )
    port map (
      I => regb_2_INBUF,
      O => regb_2_IBUF_6
    );
  ccr_out_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD83"
    )
    port map (
      I => ccr_out_1_O,
      O => ccr_out(1)
    );
  regb_3_IBUF : X_BUF
    generic map(
      LOC => "PAD39",
      PATHPULSE => 694 ps
    )
    port map (
      I => regb(3),
      O => regb_3_INBUF
    );
  regb_3_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD39",
      PATHPULSE => 694 ps
    )
    port map (
      I => regb_3_INBUF,
      O => regb_3_IBUF_7
    );
  ccr_out_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD58"
    )
    port map (
      I => ccr_out_2_O,
      O => ccr_out(2)
    );
  ccr_out_2_OUTPUT_OTCLK1INV : X_INV
    generic map(
      LOC => "PAD58",
      PATHPULSE => 694 ps
    )
    port map (
      I => ccr_out_0_not0001_0,
      O => ccr_out_2_OUTPUT_OTCLK1INVNOT
    );
  ccr_out_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD58",
      PATHPULSE => 694 ps
    )
    port map (
      I => ccr_out_2_13,
      O => ccr_out_2_O
    );
  ccr_out_2_OUTPUT_OFF_O1_DDRMUX : X_BUF
    generic map(
      LOC => "PAD58",
      PATHPULSE => 694 ps
    )
    port map (
      I => ccr_out_2_mux0002_F5MUX_20,
      O => ccr_out_2_OUTPUT_OFF_ODDRIN1_MUX
    );
  ccr_out_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD82"
    )
    port map (
      I => ccr_out_3_O,
      O => ccr_out(3)
    );
  alu_out_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD47"
    )
    port map (
      I => alu_out_1_O,
      O => alu_out(1)
    );
  controls_0_IBUF : X_BUF
    generic map(
      LOC => "PAD61",
      PATHPULSE => 694 ps
    )
    port map (
      I => controls(0),
      O => controls_0_INBUF
    );
  controls_0_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD61",
      PATHPULSE => 694 ps
    )
    port map (
      I => controls_0_INBUF,
      O => controls_0_IBUF_8
    );
  alu_out_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD44"
    )
    port map (
      I => alu_out_2_O,
      O => alu_out(2)
    );
  controls_1_IBUF : X_BUF
    generic map(
      LOC => "PAD63",
      PATHPULSE => 694 ps
    )
    port map (
      I => controls(1),
      O => controls_1_INBUF
    );
  controls_1_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD63",
      PATHPULSE => 694 ps
    )
    port map (
      I => controls_1_INBUF,
      O => controls_1_IBUF_9
    );
  alu_out_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD43"
    )
    port map (
      I => alu_out_3_O,
      O => alu_out(3)
    );
  controls_2_IBUF : X_BUF
    generic map(
      LOC => "PAD42",
      PATHPULSE => 694 ps
    )
    port map (
      I => controls(2),
      O => controls_2_INBUF
    );
  controls_2_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD42",
      PATHPULSE => 694 ps
    )
    port map (
      I => controls_2_INBUF,
      O => controls_2_IBUF_10
    );
  controls_3_IBUF : X_BUF
    generic map(
      LOC => "IPAD60",
      PATHPULSE => 694 ps
    )
    port map (
      I => controls(3),
      O => controls_3_INBUF
    );
  controls_3_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD60",
      PATHPULSE => 694 ps
    )
    port map (
      I => controls_3_INBUF,
      O => controls_3_IBUF_11
    );
  alu_out_1_map29_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X31Y17",
      PATHPULSE => 694 ps
    )
    port map (
      I => alu_out_1_map29_F5MUX_14,
      O => alu_out_1_map29
    );
  alu_out_1_map29_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X31Y17"
    )
    port map (
      IA => N613,
      IB => N612,
      SEL => alu_out_1_map29_BXINV_15,
      O => alu_out_1_map29_F5MUX_14
    );
  alu_out_1_map29_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X31Y17",
      PATHPULSE => 694 ps
    )
    port map (
      I => regb_1_IBUF_5,
      O => alu_out_1_map29_BXINV_15
    );
  ccr_out_0 : X_LATCHE
    generic map(
      LOC => "PAD59",
      INIT => '0'
    )
    port map (
      I => ccr_out_0_OUTPUT_OFF_ODDRIN1_MUX,
      GE => VCC,
      CLK => NlwInverterSignal_ccr_out_0_CLK,
      SET => GND,
      RST => GND,
      O => ccr_out_0_12
    );
  ccr_out_2 : X_LATCHE
    generic map(
      LOC => "PAD58",
      INIT => '0'
    )
    port map (
      I => ccr_out_2_OUTPUT_OFF_ODDRIN1_MUX,
      GE => VCC,
      CLK => NlwInverterSignal_ccr_out_2_CLK,
      SET => GND,
      RST => GND,
      O => ccr_out_2_13
    );
  alu_out_1_981 : X_LUT4
    generic map(
      INIT => X"BA45",
      LOC => "SLICE_X31Y17"
    )
    port map (
      ADR0 => controls_2_IBUF_10,
      ADR1 => rega_0_IBUF_0,
      ADR2 => regb_0_IBUF_4,
      ADR3 => rega_1_IBUF_1,
      O => N612
    );
  N599_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y19",
      PATHPULSE => 694 ps
    )
    port map (
      I => N599,
      O => N599_0
    );
  N599_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y19",
      PATHPULSE => 694 ps
    )
    port map (
      I => Msub_alu_out_addsub0000_cy_1_pack_1,
      O => Msub_alu_out_addsub0000_cy(1)
    );
  Msub_alu_out_addsub0000_cy_1_1 : X_LUT4
    generic map(
      INIT => X"F571",
      LOC => "SLICE_X29Y19"
    )
    port map (
      ADR0 => regb_1_IBUF_5,
      ADR1 => regb_0_IBUF_4,
      ADR2 => rega_1_IBUF_1,
      ADR3 => rega_0_IBUF_0,
      O => Msub_alu_out_addsub0000_cy_1_pack_1
    );
  N597_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X28Y19",
      PATHPULSE => 694 ps
    )
    port map (
      I => N597,
      O => N597_0
    );
  N597_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X28Y19",
      PATHPULSE => 694 ps
    )
    port map (
      I => Msub_alu_out_addsub0000_cy_2_pack_1,
      O => Msub_alu_out_addsub0000_cy(2)
    );
  Msub_alu_out_addsub0000_cy_2_1 : X_LUT4
    generic map(
      INIT => X"88EE",
      LOC => "SLICE_X28Y19"
    )
    port map (
      ADR0 => Msub_alu_out_addsub0000_cy(1),
      ADR1 => rega_2_IBUF_2,
      ADR2 => VCC,
      ADR3 => regb_2_IBUF_6,
      O => Msub_alu_out_addsub0000_cy_2_pack_1
    );
  alu_out_2_map35_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X30Y19",
      PATHPULSE => 694 ps
    )
    port map (
      I => alu_out_2_map35,
      O => alu_out_2_map35_0
    );
  alu_out_2_map35_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X30Y19",
      PATHPULSE => 694 ps
    )
    port map (
      I => Madd_alu_out_add0000_cy_1_pack_1,
      O => Madd_alu_out_add0000_cy(1)
    );
  Madd_alu_out_add0000_cy_1_1 : X_LUT4
    generic map(
      INIT => X"E8A0",
      LOC => "SLICE_X30Y19"
    )
    port map (
      ADR0 => rega_1_IBUF_1,
      ADR1 => regb_0_IBUF_4,
      ADR2 => regb_1_IBUF_5,
      ADR3 => rega_0_IBUF_0,
      O => Madd_alu_out_add0000_cy_1_pack_1
    );
  alu_out_1_982 : X_LUT4
    generic map(
      INIT => X"EF10",
      LOC => "SLICE_X31Y17"
    )
    port map (
      ADR0 => controls_2_IBUF_10,
      ADR1 => rega_0_IBUF_0,
      ADR2 => regb_0_IBUF_4,
      ADR3 => rega_1_IBUF_1,
      O => N613
    );
  ccr_out_0_mux0002591 : X_LUT4
    generic map(
      INIT => X"DD55",
      LOC => "SLICE_X29Y21"
    )
    port map (
      ADR0 => N603_0,
      ADR1 => ccr_out_0_mux0002_map18_0,
      ADR2 => VCC,
      ADR3 => regb_3_IBUF_7,
      O => N610
    );
  ccr_out_0_mux0002_map21_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y21",
      PATHPULSE => 694 ps
    )
    port map (
      I => ccr_out_0_mux0002_map21_F5MUX_16,
      O => ccr_out_0_mux0002_map21
    );
  ccr_out_0_mux0002_map21_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X29Y21"
    )
    port map (
      IA => N611,
      IB => N610,
      SEL => ccr_out_0_mux0002_map21_BXINV_17,
      O => ccr_out_0_mux0002_map21_F5MUX_16
    );
  ccr_out_0_mux0002_map21_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y21",
      PATHPULSE => 694 ps
    )
    port map (
      I => rega_3_IBUF_3,
      O => ccr_out_0_mux0002_map21_BXINV_17
    );
  ccr_out_0_mux0002592 : X_LUT4
    generic map(
      INIT => X"88F8",
      LOC => "SLICE_X29Y21"
    )
    port map (
      ADR0 => regb_3_IBUF_7,
      ADR1 => ccr_out_0_mux0002_map18_0,
      ADR2 => controls_0_IBUF_8,
      ADR3 => Msub_alu_out_addsub0000_cy(2),
      O => N611
    );
  ccr_out_2_mux0002237_G : X_LUT4
    generic map(
      INIT => X"C0E0",
      LOC => "SLICE_X30Y20"
    )
    port map (
      ADR0 => controls_2_IBUF_10,
      ADR1 => ccr_out_2_mux0002_map40_0,
      ADR2 => ccr_out_2_mux0002_map49_0,
      ADR3 => controls_1_IBUF_9,
      O => N608
    );
  ccr_out_2_mux0002_map69_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X30Y20",
      PATHPULSE => 694 ps
    )
    port map (
      I => ccr_out_2_mux0002_map69_F5MUX_18,
      O => ccr_out_2_mux0002_map69
    );
  ccr_out_2_mux0002_map69_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X30Y20"
    )
    port map (
      IA => N607,
      IB => N608,
      SEL => ccr_out_2_mux0002_map69_BXINV_19,
      O => ccr_out_2_mux0002_map69_F5MUX_18
    );
  ccr_out_2_mux0002_map69_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X30Y20",
      PATHPULSE => 694 ps
    )
    port map (
      I => controls_0_IBUF_8,
      O => ccr_out_2_mux0002_map69_BXINV_19
    );
  ccr_out_2_mux0002237_F : X_LUT4
    generic map(
      INIT => X"2A2A",
      LOC => "SLICE_X30Y20"
    )
    port map (
      ADR0 => ccr_out_2_mux0002_map67_0,
      ADR1 => regb_0_IBUF_4,
      ADR2 => rega_0_IBUF_0,
      ADR3 => VCC,
      O => N607
    );
  ccr_out_2_mux0002_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X28Y16"
    )
    port map (
      IA => N616,
      IB => ccr_out_2_mux0002_F,
      SEL => ccr_out_2_mux0002_BXINV_21,
      O => ccr_out_2_mux0002_F5MUX_20
    );
  ccr_out_2_mux0002_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X28Y16",
      PATHPULSE => 694 ps
    )
    port map (
      I => controls_3_IBUF_11,
      O => ccr_out_2_mux0002_BXINV_21
    );
  ccr_out_2_mux00022671 : X_LUT4
    generic map(
      INIT => X"BBBA",
      LOC => "SLICE_X28Y16"
    )
    port map (
      ADR0 => ccr_out_2_mux0002_map69,
      ADR1 => controls_1_IBUF_9,
      ADR2 => ccr_out_2_mux0002_map22_0,
      ADR3 => ccr_out_2_mux0002_map28_0,
      O => N616
    );
  alu_out_1_1361 : X_LUT4
    generic map(
      INIT => X"3020",
      LOC => "SLICE_X31Y16"
    )
    port map (
      ADR0 => regb_1_IBUF_5,
      ADR1 => controls_2_IBUF_10,
      ADR2 => controls_0_IBUF_8,
      ADR3 => rega_1_IBUF_1,
      O => N614
    );
  alu_out_1_map34_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X31Y16",
      PATHPULSE => 694 ps
    )
    port map (
      I => alu_out_1_map34_F5MUX_22,
      O => alu_out_1_map34
    );
  alu_out_1_map34_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X31Y16"
    )
    port map (
      IA => N615,
      IB => N614,
      SEL => alu_out_1_map34_BXINV_23,
      O => alu_out_1_map34_F5MUX_22
    );
  alu_out_1_map34_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X31Y16",
      PATHPULSE => 694 ps
    )
    port map (
      I => controls_1_IBUF_9,
      O => alu_out_1_map34_BXINV_23
    );
  alu_out_1_1362 : X_LUT4
    generic map(
      INIT => X"A0A0",
      LOC => "SLICE_X31Y16"
    )
    port map (
      ADR0 => alu_out_1_map29,
      ADR1 => VCC,
      ADR2 => controls_0_IBUF_8,
      ADR3 => VCC,
      O => N615
    );
  alu_out_3_map35_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X31Y18",
      PATHPULSE => 694 ps
    )
    port map (
      I => alu_out_3_map35,
      O => alu_out_3_map35_0
    );
  alu_out_3_map35_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X31Y18",
      PATHPULSE => 694 ps
    )
    port map (
      I => Madd_alu_out_add0000_cy_2_pack_1,
      O => Madd_alu_out_add0000_cy(2)
    );
  Madd_alu_out_add0000_cy_2_1 : X_LUT4
    generic map(
      INIT => X"E8E8",
      LOC => "SLICE_X31Y18"
    )
    port map (
      ADR0 => regb_2_IBUF_6,
      ADR1 => Madd_alu_out_add0000_cy(1),
      ADR2 => rega_2_IBUF_2,
      ADR3 => VCC,
      O => Madd_alu_out_add0000_cy_2_pack_1
    );
  alu_out_2_OBUF_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X30Y16",
      PATHPULSE => 694 ps
    )
    port map (
      I => alu_out_2_map38_pack_1,
      O => alu_out_2_map38
    );
  alu_out_2_158 : X_LUT4
    generic map(
      INIT => X"00B8",
      LOC => "SLICE_X30Y16"
    )
    port map (
      ADR0 => N599_0,
      ADR1 => controls_0_IBUF_8,
      ADR2 => alu_out_2_map35_0,
      ADR3 => controls_1_IBUF_9,
      O => alu_out_2_map38_pack_1
    );
  ccr_out_2_mux0002_map28_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y17",
      PATHPULSE => 694 ps
    )
    port map (
      I => ccr_out_2_mux0002_map28,
      O => ccr_out_2_mux0002_map28_0
    );
  ccr_out_2_mux0002_map28_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y17",
      PATHPULSE => 694 ps
    )
    port map (
      I => ccr_out_2_mux0002_map27_pack_1,
      O => ccr_out_2_mux0002_map27
    );
  ccr_out_2_mux000279 : X_LUT4
    generic map(
      INIT => X"8000",
      LOC => "SLICE_X29Y17"
    )
    port map (
      ADR0 => rega_0_IBUF_0,
      ADR1 => rega_2_IBUF_2,
      ADR2 => rega_3_IBUF_3,
      ADR3 => rega_1_IBUF_1,
      O => ccr_out_2_mux0002_map27_pack_1
    );
  alu_out_3_OBUF_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X28Y18",
      PATHPULSE => 694 ps
    )
    port map (
      I => alu_out_3_map38_pack_1,
      O => alu_out_3_map38
    );
  alu_out_3_158 : X_LUT4
    generic map(
      INIT => X"00D8",
      LOC => "SLICE_X28Y18"
    )
    port map (
      ADR0 => controls_0_IBUF_8,
      ADR1 => N597_0,
      ADR2 => alu_out_3_map35_0,
      ADR3 => controls_1_IBUF_9,
      O => alu_out_3_map38_pack_1
    );
  N603_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X31Y19",
      PATHPULSE => 694 ps
    )
    port map (
      I => N603,
      O => N603_0
    );
  N603_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X31Y19",
      PATHPULSE => 694 ps
    )
    port map (
      I => Madd_alu_out_add00004,
      O => Madd_alu_out_add00004_0
    );
  Madd_alu_out_add000041 : X_LUT4
    generic map(
      INIT => X"5A5A",
      LOC => "SLICE_X31Y19"
    )
    port map (
      ADR0 => regb_2_IBUF_6,
      ADR1 => VCC,
      ADR2 => rega_2_IBUF_2,
      ADR3 => VCC,
      O => Madd_alu_out_add00004
    );
  alu_out_0_OBUF_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X24Y2",
      PATHPULSE => 694 ps
    )
    port map (
      I => N38_pack_1,
      O => N38
    );
  alu_out_0_SW0 : X_LUT4
    generic map(
      INIT => X"8FEB",
      LOC => "SLICE_X24Y2"
    )
    port map (
      ADR0 => controls_1_IBUF_9,
      ADR1 => controls_2_IBUF_10,
      ADR2 => rega_0_IBUF_0,
      ADR3 => controls_0_IBUF_8,
      O => N38_pack_1
    );
  ccr_out_0_not0001_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X25Y2",
      PATHPULSE => 694 ps
    )
    port map (
      I => ccr_out_0_not0001,
      O => ccr_out_0_not0001_0
    );
  ccr_out_0_not0001_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X25Y2",
      PATHPULSE => 694 ps
    )
    port map (
      I => N39,
      O => N39_0
    );
  alu_out_0_SW1 : X_LUT4
    generic map(
      INIT => X"F16C",
      LOC => "SLICE_X25Y2"
    )
    port map (
      ADR0 => controls_0_IBUF_8,
      ADR1 => rega_0_IBUF_0,
      ADR2 => controls_2_IBUF_10,
      ADR3 => controls_1_IBUF_9,
      O => N39
    );
  ccr_out_2_mux0002_map49_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X31Y20",
      PATHPULSE => 694 ps
    )
    port map (
      I => ccr_out_2_mux0002_map49,
      O => ccr_out_2_mux0002_map49_0
    );
  ccr_out_2_mux0002_map49_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X31Y20",
      PATHPULSE => 694 ps
    )
    port map (
      I => ccr_out_2_mux0002_map66,
      O => ccr_out_2_mux0002_map66_0
    );
  ccr_out_2_mux0002212 : X_LUT4
    generic map(
      INIT => X"135F",
      LOC => "SLICE_X31Y20"
    )
    port map (
      ADR0 => rega_2_IBUF_2,
      ADR1 => regb_3_IBUF_7,
      ADR2 => regb_2_IBUF_6,
      ADR3 => rega_3_IBUF_3,
      O => ccr_out_2_mux0002_map66
    );
  N601_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X31Y21",
      PATHPULSE => 694 ps
    )
    port map (
      I => N601,
      O => N601_0
    );
  N601_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X31Y21",
      PATHPULSE => 694 ps
    )
    port map (
      I => ccr_out_2_mux0002_map67,
      O => ccr_out_2_mux0002_map67_0
    );
  ccr_out_2_mux0002216 : X_LUT4
    generic map(
      INIT => X"20A0",
      LOC => "SLICE_X31Y21"
    )
    port map (
      ADR0 => ccr_out_2_mux0002_map66_0,
      ADR1 => regb_1_IBUF_5,
      ADR2 => N27,
      ADR3 => rega_1_IBUF_1,
      O => ccr_out_2_mux0002_map67
    );
  ccr_out_2_mux0002_map40_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X30Y21",
      PATHPULSE => 694 ps
    )
    port map (
      I => ccr_out_2_mux0002_map40,
      O => ccr_out_2_mux0002_map40_0
    );
  ccr_out_2_mux0002_map40_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X30Y21",
      PATHPULSE => 694 ps
    )
    port map (
      I => ccr_out_2_mux0002_map39_pack_1,
      O => ccr_out_2_mux0002_map39
    );
  ccr_out_2_mux0002129 : X_LUT4
    generic map(
      INIT => X"0100",
      LOC => "SLICE_X30Y21"
    )
    port map (
      ADR0 => controls_2_IBUF_10,
      ADR1 => regb_2_IBUF_6,
      ADR2 => regb_1_IBUF_5,
      ADR3 => controls_1_IBUF_9,
      O => ccr_out_2_mux0002_map39_pack_1
    );
  alu_out_add0000_1_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X28Y13",
      PATHPULSE => 694 ps
    )
    port map (
      I => alu_out_add0000(1),
      O => alu_out_add0000_1_0
    );
  Madd_alu_out_add0000_xor_1_11 : X_LUT4
    generic map(
      INIT => X"963C",
      LOC => "SLICE_X28Y13"
    )
    port map (
      ADR0 => rega_0_IBUF_0,
      ADR1 => regb_1_IBUF_5,
      ADR2 => rega_1_IBUF_1,
      ADR3 => regb_0_IBUF_4,
      O => alu_out_add0000(1)
    );
  alu_out_1_OBUF_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X28Y12",
      PATHPULSE => 694 ps
    )
    port map (
      I => alu_out_1_map8_pack_1,
      O => alu_out_1_map8
    );
  alu_out_1_20 : X_LUT4
    generic map(
      INIT => X"0454",
      LOC => "SLICE_X28Y12"
    )
    port map (
      ADR0 => controls_1_IBUF_9,
      ADR1 => alu_out_add0000_1_0,
      ADR2 => controls_2_IBUF_10,
      ADR3 => rega_1_IBUF_1,
      O => alu_out_1_map8_pack_1
    );
  alu_out_1_map35_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y16",
      PATHPULSE => 694 ps
    )
    port map (
      I => alu_out_1_map35,
      O => alu_out_1_map35_0
    );
  alu_out_1_map35_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y16",
      PATHPULSE => 694 ps
    )
    port map (
      I => N27_pack_1,
      O => N27
    );
  alu_out_0_411 : X_LUT4
    generic map(
      INIT => X"3030",
      LOC => "SLICE_X29Y16"
    )
    port map (
      ADR0 => VCC,
      ADR1 => controls_2_IBUF_10,
      ADR2 => controls_1_IBUF_9,
      ADR3 => VCC,
      O => N27_pack_1
    );
  alu_out_3_map5_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y18",
      PATHPULSE => 694 ps
    )
    port map (
      I => alu_out_3_map5,
      O => alu_out_3_map5_0
    );
  alu_out_3_map5_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y18",
      PATHPULSE => 694 ps
    )
    port map (
      I => alu_out_2_map5,
      O => alu_out_2_map5_0
    );
  alu_out_2_13 : X_LUT4
    generic map(
      INIT => X"E800",
      LOC => "SLICE_X29Y18"
    )
    port map (
      ADR0 => regb_2_IBUF_6,
      ADR1 => controls_0_IBUF_8,
      ADR2 => rega_2_IBUF_2,
      ADR3 => N27,
      O => alu_out_2_map5
    );
  ccr_out_2_mux0002_map22_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X30Y18",
      PATHPULSE => 694 ps
    )
    port map (
      I => ccr_out_2_mux0002_map22,
      O => ccr_out_2_mux0002_map22_0
    );
  ccr_out_2_mux0002_map22_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X30Y18",
      PATHPULSE => 694 ps
    )
    port map (
      I => N605_pack_1,
      O => N605
    );
  ccr_out_2_mux000263_SW0 : X_LUT4
    generic map(
      INIT => X"FFDE",
      LOC => "SLICE_X30Y18"
    )
    port map (
      ADR0 => Madd_alu_out_add00004_0,
      ADR1 => N601_0,
      ADR2 => Madd_alu_out_add0000_cy(1),
      ADR3 => controls_2_IBUF_10,
      O => N605_pack_1
    );
  ccr_out_0_mux0002_map18_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y20",
      PATHPULSE => 694 ps
    )
    port map (
      I => ccr_out_0_mux0002_map18,
      O => ccr_out_0_mux0002_map18_0
    );
  ccr_out_0_mux000235 : X_LUT4
    generic map(
      INIT => X"76FE",
      LOC => "SLICE_X29Y20"
    )
    port map (
      ADR0 => controls_0_IBUF_8,
      ADR1 => rega_3_IBUF_3,
      ADR2 => Madd_alu_out_add0000_cy(2),
      ADR3 => Msub_alu_out_addsub0000_cy(2),
      O => ccr_out_0_mux0002_map18
    );
  ccr_out_0_mux000290 : X_LUT4
    generic map(
      INIT => X"0002",
      LOC => "SLICE_X26Y2"
    )
    port map (
      ADR0 => ccr_out_0_mux0002_map21,
      ADR1 => controls_1_IBUF_9,
      ADR2 => controls_3_IBUF_11,
      ADR3 => controls_2_IBUF_10,
      O => ccr_out_0_mux0002
    );
  alu_out_3_127 : X_LUT4
    generic map(
      INIT => X"6336",
      LOC => "SLICE_X31Y18"
    )
    port map (
      ADR0 => controls_2_IBUF_10,
      ADR1 => rega_3_IBUF_3,
      ADR2 => Madd_alu_out_add0000_cy(2),
      ADR3 => regb_3_IBUF_7,
      O => alu_out_3_map35
    );
  alu_out_2_185 : X_LUT4
    generic map(
      INIT => X"3330",
      LOC => "SLICE_X30Y16"
    )
    port map (
      ADR0 => VCC,
      ADR1 => controls_3_IBUF_11,
      ADR2 => alu_out_2_map5_0,
      ADR3 => alu_out_2_map38,
      O => alu_out_2_OBUF_24
    );
  alu_out_1_181 : X_LUT4
    generic map(
      INIT => X"3130",
      LOC => "SLICE_X28Y12"
    )
    port map (
      ADR0 => controls_0_IBUF_8,
      ADR1 => controls_3_IBUF_11,
      ADR2 => alu_out_1_map35_0,
      ADR3 => alu_out_1_map8,
      O => alu_out_1_OBUF_27
    );
  alu_out_1_150 : X_LUT4
    generic map(
      INIT => X"ECCC",
      LOC => "SLICE_X29Y16"
    )
    port map (
      ADR0 => regb_1_IBUF_5,
      ADR1 => alu_out_1_map34,
      ADR2 => N27,
      ADR3 => rega_1_IBUF_1,
      O => alu_out_1_map35
    );
  alu_out_3_13 : X_LUT4
    generic map(
      INIT => X"E080",
      LOC => "SLICE_X29Y18"
    )
    port map (
      ADR0 => regb_3_IBUF_7,
      ADR1 => rega_3_IBUF_3,
      ADR2 => N27,
      ADR3 => controls_0_IBUF_8,
      O => alu_out_3_map5
    );
  ccr_out_2_mux000263 : X_LUT4
    generic map(
      INIT => X"0069",
      LOC => "SLICE_X30Y18"
    )
    port map (
      ADR0 => regb_3_IBUF_7,
      ADR1 => Madd_alu_out_add0000_cy(2),
      ADR2 => rega_3_IBUF_3,
      ADR3 => N605,
      O => ccr_out_2_mux0002_map22
    );
  alu_out_2_158_SW0 : X_LUT4
    generic map(
      INIT => X"D2E1",
      LOC => "SLICE_X29Y19"
    )
    port map (
      ADR0 => regb_2_IBUF_6,
      ADR1 => controls_2_IBUF_10,
      ADR2 => rega_2_IBUF_2,
      ADR3 => Msub_alu_out_addsub0000_cy(1),
      O => N599
    );
  alu_out_3_158_SW0 : X_LUT4
    generic map(
      INIT => X"BE41",
      LOC => "SLICE_X28Y19"
    )
    port map (
      ADR0 => controls_2_IBUF_10,
      ADR1 => regb_3_IBUF_7,
      ADR2 => Msub_alu_out_addsub0000_cy(2),
      ADR3 => rega_3_IBUF_3,
      O => N597
    );
  alu_out_2_127 : X_LUT4
    generic map(
      INIT => X"6336",
      LOC => "SLICE_X30Y19"
    )
    port map (
      ADR0 => controls_2_IBUF_10,
      ADR1 => rega_2_IBUF_2,
      ADR2 => Madd_alu_out_add0000_cy(1),
      ADR3 => regb_2_IBUF_6,
      O => alu_out_2_map35
    );
  ccr_out_2_mux000282 : X_LUT4
    generic map(
      INIT => X"0C00",
      LOC => "SLICE_X29Y17"
    )
    port map (
      ADR0 => VCC,
      ADR1 => controls_2_IBUF_10,
      ADR2 => controls_0_IBUF_8,
      ADR3 => ccr_out_2_mux0002_map27,
      O => ccr_out_2_mux0002_map28
    );
  alu_out_3_185 : X_LUT4
    generic map(
      INIT => X"3330",
      LOC => "SLICE_X28Y18"
    )
    port map (
      ADR0 => VCC,
      ADR1 => controls_3_IBUF_11,
      ADR2 => alu_out_3_map5_0,
      ADR3 => alu_out_3_map38,
      O => alu_out_3_OBUF_25
    );
  ccr_out_0_mux000247_SW0 : X_LUT4
    generic map(
      INIT => X"F1F7",
      LOC => "SLICE_X31Y19"
    )
    port map (
      ADR0 => regb_2_IBUF_6,
      ADR1 => Madd_alu_out_add0000_cy(1),
      ADR2 => controls_0_IBUF_8,
      ADR3 => rega_2_IBUF_2,
      O => N603
    );
  alu_out_0_Q : X_LUT4
    generic map(
      INIT => X"1015",
      LOC => "SLICE_X24Y2"
    )
    port map (
      ADR0 => controls_3_IBUF_11,
      ADR1 => N39_0,
      ADR2 => regb_0_IBUF_4,
      ADR3 => N38,
      O => alu_out_0_OBUF_26
    );
  ccr_out_0_not00011 : X_LUT4
    generic map(
      INIT => X"003F",
      LOC => "SLICE_X25Y2"
    )
    port map (
      ADR0 => VCC,
      ADR1 => controls_1_IBUF_9,
      ADR2 => controls_2_IBUF_10,
      ADR3 => controls_3_IBUF_11,
      O => ccr_out_0_not0001
    );
  ccr_out_2_mux0002167 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X31Y20"
    )
    port map (
      ADR0 => rega_2_IBUF_2,
      ADR1 => rega_0_IBUF_0,
      ADR2 => rega_1_IBUF_1,
      ADR3 => rega_3_IBUF_3,
      O => ccr_out_2_mux0002_map49
    );
  ccr_out_2_mux000247_SW0 : X_LUT4
    generic map(
      INIT => X"BD7E",
      LOC => "SLICE_X31Y21"
    )
    port map (
      ADR0 => regb_1_IBUF_5,
      ADR1 => rega_0_IBUF_0,
      ADR2 => regb_0_IBUF_4,
      ADR3 => rega_1_IBUF_1,
      O => N601
    );
  ccr_out_2_mux0002132 : X_LUT4
    generic map(
      INIT => X"1010",
      LOC => "SLICE_X30Y21"
    )
    port map (
      ADR0 => regb_3_IBUF_7,
      ADR1 => regb_0_IBUF_4,
      ADR2 => ccr_out_2_mux0002_map39,
      ADR3 => VCC,
      O => ccr_out_2_mux0002_map40
    );
  GLOBAL_LOGIC0_GND : X_ZERO
    port map (
      O => GLOBAL_LOGIC0
    );
  alu_out_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD62",
      PATHPULSE => 694 ps
    )
    port map (
      I => alu_out_0_OBUF_26,
      O => alu_out_0_O
    );
  ccr_out_1_OUTPUT_O1_GND : X_ZERO
    port map (
      O => GLOBAL_LOGIC0
    );
  ccr_out_1_OUTPUT_OFF_O1_GND : X_ZERO
    port map (
      O => GLOBAL_LOGIC0
    );
  ccr_out_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD83",
      PATHPULSE => 694 ps
    )
    port map (
      I => GLOBAL_LOGIC0,
      O => ccr_out_1_O
    );
  ccr_out_3_OUTPUT_O1_GND : X_ZERO
    port map (
      O => GLOBAL_LOGIC0
    );
  ccr_out_3_OUTPUT_OFF_O1_GND : X_ZERO
    port map (
      O => GLOBAL_LOGIC0
    );
  ccr_out_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD82",
      PATHPULSE => 694 ps
    )
    port map (
      I => GLOBAL_LOGIC0,
      O => ccr_out_3_O
    );
  alu_out_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD47",
      PATHPULSE => 694 ps
    )
    port map (
      I => alu_out_1_OBUF_27,
      O => alu_out_1_O
    );
  alu_out_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD44",
      PATHPULSE => 694 ps
    )
    port map (
      I => alu_out_2_OBUF_24,
      O => alu_out_2_O
    );
  alu_out_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD43",
      PATHPULSE => 694 ps
    )
    port map (
      I => alu_out_3_OBUF_25,
      O => alu_out_3_O
    );
  ccr_out_2_mux0002_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X28Y16"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => ccr_out_2_mux0002_F
    );
  NlwBlock_alu_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwInverterBlock_ccr_out_0_CLK : X_INV
    port map (
      I => ccr_out_0_OUTPUT_OTCLK1INVNOT,
      O => NlwInverterSignal_ccr_out_0_CLK
    );
  NlwBlock_alu_GND : X_ZERO
    port map (
      O => GND
    );
  NlwInverterBlock_ccr_out_2_CLK : X_INV
    port map (
      I => ccr_out_2_OUTPUT_OTCLK1INVNOT,
      O => NlwInverterSignal_ccr_out_2_CLK
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

