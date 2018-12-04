--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: J.40
--  \   \         Application: netgen
--  /   /         Filename: ccounter_timesim.vhd
-- /___/   /\     Timestamp: Tue Mar 28 13:09:34 2017
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 5 -pcf ccounter.pcf -rpw 100 -tpw 0 -ar Structure -tm ccounter -insert_pp_buffers false -w -dir netgen/par -ofmt vhdl -sim ccounter.ncd ccounter_timesim.vhd 
-- Device	: 3s100ecp132-5 (PRODUCTION 1.27 2007-10-19)
-- Input file	: ccounter.ncd
-- Output file	: \\users.uidaho.edu\users\d\dona1865\ECE 241\counter2\netgen\par\ccounter_timesim.vhd
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
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity ccounter is
  port (
    clk : in STD_LOGIC := 'X'; 
    Reset : in STD_LOGIC := 'X'; 
    updown : in STD_LOGIC := 'X'; 
    count : inout STD_LOGIC_VECTOR ( 2 downto 0 ) 
  );
end ccounter;

architecture Structure of ccounter is
  signal count_0_0 : STD_LOGIC; 
  signal count_1_1 : STD_LOGIC; 
  signal count_2_2 : STD_LOGIC; 
  signal updown_IBUF_3 : STD_LOGIC; 
  signal Reset_IBUF_4 : STD_LOGIC; 
  signal GLOBAL_LOGIC1 : STD_LOGIC; 
  signal clk_BUFGP : STD_LOGIC; 
  signal clk_INBUF : STD_LOGIC; 
  signal count_0_O : STD_LOGIC; 
  signal count_1_O : STD_LOGIC; 
  signal count_2_O : STD_LOGIC; 
  signal updown_INBUF : STD_LOGIC; 
  signal Reset_INBUF : STD_LOGIC; 
  signal clk_BUFGP_BUFG_S_INVNOT : STD_LOGIC; 
  signal clk_BUFGP_BUFG_I0_INV : STD_LOGIC; 
  signal count_1_DXMUX_5 : STD_LOGIC; 
  signal count_1_DYMUX_6 : STD_LOGIC; 
  signal count_1_SRINV_7 : STD_LOGIC; 
  signal count_1_CLKINV_8 : STD_LOGIC; 
  signal count_2_DYMUX_9 : STD_LOGIC; 
  signal count_2_SRINV_10 : STD_LOGIC; 
  signal count_2_CLKINV_11 : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal Result : STD_LOGIC_VECTOR ( 2 downto 0 ); 
begin
  clk_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "IPAD12",
      PATHPULSE => 694 ps
    )
    port map (
      I => clk,
      O => clk_INBUF
    );
  count_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD71"
    )
    port map (
      I => count_0_O,
      O => count(0)
    );
  count_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD70"
    )
    port map (
      I => count_1_O,
      O => count(1)
    );
  count_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD96"
    )
    port map (
      I => count_2_O,
      O => count(2)
    );
  updown_IBUF : X_BUF
    generic map(
      LOC => "IPAD73",
      PATHPULSE => 694 ps
    )
    port map (
      I => updown,
      O => updown_INBUF
    );
  updown_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD73",
      PATHPULSE => 694 ps
    )
    port map (
      I => updown_INBUF,
      O => updown_IBUF_3
    );
  Reset_IBUF : X_BUF
    generic map(
      LOC => "PAD99",
      PATHPULSE => 694 ps
    )
    port map (
      I => Reset,
      O => Reset_INBUF
    );
  Reset_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD99",
      PATHPULSE => 694 ps
    )
    port map (
      I => Reset_INBUF,
      O => Reset_IBUF_4
    );
  clk_BUFGP_BUFG : X_BUFGMUX
    generic map(
      LOC => "BUFGMUX_X2Y10"
    )
    port map (
      I0 => clk_BUFGP_BUFG_I0_INV,
      I1 => GND,
      S => clk_BUFGP_BUFG_S_INVNOT,
      O => clk_BUFGP
    );
  clk_BUFGP_BUFG_SINV : X_INV
    generic map(
      LOC => "BUFGMUX_X2Y10",
      PATHPULSE => 694 ps
    )
    port map (
      I => GLOBAL_LOGIC1,
      O => clk_BUFGP_BUFG_S_INVNOT
    );
  clk_BUFGP_BUFG_I0_USED : X_BUF
    generic map(
      LOC => "BUFGMUX_X2Y10",
      PATHPULSE => 694 ps
    )
    port map (
      I => clk_INBUF,
      O => clk_BUFGP_BUFG_I0_INV
    );
  count_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X12Y20",
      PATHPULSE => 694 ps
    )
    port map (
      I => Result(1),
      O => count_1_DXMUX_5
    );
  count_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X12Y20",
      PATHPULSE => 694 ps
    )
    port map (
      I => Result(0),
      O => count_1_DYMUX_6
    );
  count_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y20",
      PATHPULSE => 694 ps
    )
    port map (
      I => Reset_IBUF_4,
      O => count_1_SRINV_7
    );
  count_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y20",
      PATHPULSE => 694 ps
    )
    port map (
      I => clk_BUFGP,
      O => count_1_CLKINV_8
    );
  count_2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X12Y21",
      PATHPULSE => 694 ps
    )
    port map (
      I => Result(2),
      O => count_2_DYMUX_9
    );
  count_2_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y21",
      PATHPULSE => 694 ps
    )
    port map (
      I => Reset_IBUF_4,
      O => count_2_SRINV_10
    );
  count_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y21",
      PATHPULSE => 694 ps
    )
    port map (
      I => clk_BUFGP,
      O => count_2_CLKINV_11
    );
  Maccum_count_xor_0_11 : X_LUT4
    generic map(
      INIT => X"33CC",
      LOC => "SLICE_X12Y20"
    )
    port map (
      ADR0 => VCC,
      ADR1 => updown_IBUF_3,
      ADR2 => VCC,
      ADR3 => count_0_0,
      O => Result(0)
    );
  Maccum_count_xor_2_11 : X_LUT4
    generic map(
      INIT => X"7C83",
      LOC => "SLICE_X12Y21"
    )
    port map (
      ADR0 => count_0_0,
      ADR1 => updown_IBUF_3,
      ADR2 => count_1_1,
      ADR3 => count_2_2,
      O => Result(2)
    );
  count_0 : X_SFF
    generic map(
      LOC => "SLICE_X12Y20",
      INIT => '0'
    )
    port map (
      I => count_1_DYMUX_6,
      CE => VCC,
      CLK => count_1_CLKINV_8,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => count_1_SRINV_7,
      O => count_0_0
    );
  Maccum_count_xor_1_11 : X_LUT4
    generic map(
      INIT => X"0FC3",
      LOC => "SLICE_X12Y20"
    )
    port map (
      ADR0 => VCC,
      ADR1 => updown_IBUF_3,
      ADR2 => count_1_1,
      ADR3 => count_0_0,
      O => Result(1)
    );
  count_1 : X_SFF
    generic map(
      LOC => "SLICE_X12Y20",
      INIT => '0'
    )
    port map (
      I => count_1_DXMUX_5,
      CE => VCC,
      CLK => count_1_CLKINV_8,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => count_1_SRINV_7,
      O => count_1_1
    );
  count_2 : X_SFF
    generic map(
      LOC => "SLICE_X12Y21",
      INIT => '0'
    )
    port map (
      I => count_2_DYMUX_9,
      CE => VCC,
      CLK => count_2_CLKINV_11,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => count_2_SRINV_10,
      O => count_2_2
    );
  GLOBAL_LOGIC1_VCC : X_ONE
    port map (
      O => GLOBAL_LOGIC1
    );
  count_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD71",
      PATHPULSE => 694 ps
    )
    port map (
      I => count_0_0,
      O => count_0_O
    );
  count_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD70",
      PATHPULSE => 694 ps
    )
    port map (
      I => count_1_1,
      O => count_1_O
    );
  count_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD96",
      PATHPULSE => 694 ps
    )
    port map (
      I => count_2_2,
      O => count_2_O
    );
  NlwBlock_ccounter_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlock_ccounter_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

