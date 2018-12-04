--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: J.40
--  \   \         Application: netgen
--  /   /         Filename: lights_timesim.vhd
-- /___/   /\     Timestamp: Tue Apr 11 12:44:05 2017
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 5 -pcf lights.pcf -rpw 100 -tpw 0 -ar Structure -tm lights -insert_pp_buffers false -w -dir netgen/par -ofmt vhdl -sim lights.ncd lights_timesim.vhd 
-- Device	: 3s100ecp132-5 (PRODUCTION 1.27 2007-10-19)
-- Input file	: lights.ncd
-- Output file	: \\users.uidaho.edu\users\d\dona1865\ECE 241\lab10\netgen\par\lights_timesim.vhd
-- # of Entities	: 1
-- Design Name	: lights
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

entity lights is
  port (
    CLK : in STD_LOGIC := 'X'; 
    RST : in STD_LOGIC := 'X'; 
    X : in STD_LOGIC := 'X'; 
    Z : out STD_LOGIC_VECTOR ( 2 downto 0 ) 
  );
end lights;

architecture Structure of lights is
  signal state_FFd3_0 : STD_LOGIC; 
  signal RST_IBUF_1 : STD_LOGIC; 
  signal X_IBUF_2 : STD_LOGIC; 
  signal GLOBAL_LOGIC1 : STD_LOGIC; 
  signal CLK_BUFGP : STD_LOGIC; 
  signal state_FFd2_3 : STD_LOGIC; 
  signal state_FFd1_4 : STD_LOGIC; 
  signal Z_0_O : STD_LOGIC; 
  signal Z_1_O : STD_LOGIC; 
  signal Z_2_O : STD_LOGIC; 
  signal RST_INBUF : STD_LOGIC; 
  signal X_INBUF : STD_LOGIC; 
  signal CLK_INBUF : STD_LOGIC; 
  signal CLK_BUFGP_BUFG_S_INVNOT : STD_LOGIC; 
  signal CLK_BUFGP_BUFG_I0_INV : STD_LOGIC; 
  signal state_FFd2_DXMUX_5 : STD_LOGIC; 
  signal state_FFd2_In : STD_LOGIC; 
  signal state_FFd2_DYMUX_6 : STD_LOGIC; 
  signal state_FFd1_In : STD_LOGIC; 
  signal state_FFd2_SRINV_7 : STD_LOGIC; 
  signal state_FFd2_CLKINV_8 : STD_LOGIC; 
  signal Z_2_OBUF_9 : STD_LOGIC; 
  signal state_FFd3_REVUSED_10 : STD_LOGIC; 
  signal state_FFd3_DYMUX_11 : STD_LOGIC; 
  signal N9 : STD_LOGIC; 
  signal state_FFd3_SRINV_12 : STD_LOGIC; 
  signal state_FFd3_CLKINV_13 : STD_LOGIC; 
  signal Z_1_OBUF_14 : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
begin
  Z_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD96"
    )
    port map (
      I => Z_0_O,
      O => Z(0)
    );
  Z_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD70"
    )
    port map (
      I => Z_1_O,
      O => Z(1)
    );
  Z_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD71"
    )
    port map (
      I => Z_2_O,
      O => Z(2)
    );
  RST_IBUF : X_BUF
    generic map(
      LOC => "IPAD100",
      PATHPULSE => 694 ps
    )
    port map (
      I => RST,
      O => RST_INBUF
    );
  RST_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD100",
      PATHPULSE => 694 ps
    )
    port map (
      I => RST_INBUF,
      O => RST_IBUF_1
    );
  X_IBUF : X_BUF
    generic map(
      LOC => "IPAD73",
      PATHPULSE => 694 ps
    )
    port map (
      I => X,
      O => X_INBUF
    );
  X_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD73",
      PATHPULSE => 694 ps
    )
    port map (
      I => X_INBUF,
      O => X_IBUF_2
    );
  CLK_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "IPAD12",
      PATHPULSE => 694 ps
    )
    port map (
      I => CLK,
      O => CLK_INBUF
    );
  CLK_BUFGP_BUFG : X_BUFGMUX
    generic map(
      LOC => "BUFGMUX_X2Y10"
    )
    port map (
      I0 => CLK_BUFGP_BUFG_I0_INV,
      I1 => GND,
      S => CLK_BUFGP_BUFG_S_INVNOT,
      O => CLK_BUFGP
    );
  CLK_BUFGP_BUFG_SINV : X_INV
    generic map(
      LOC => "BUFGMUX_X2Y10",
      PATHPULSE => 694 ps
    )
    port map (
      I => GLOBAL_LOGIC1,
      O => CLK_BUFGP_BUFG_S_INVNOT
    );
  CLK_BUFGP_BUFG_I0_USED : X_BUF
    generic map(
      LOC => "BUFGMUX_X2Y10",
      PATHPULSE => 694 ps
    )
    port map (
      I => CLK_INBUF,
      O => CLK_BUFGP_BUFG_I0_INV
    );
  state_FFd2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X13Y21",
      PATHPULSE => 694 ps
    )
    port map (
      I => state_FFd2_In,
      O => state_FFd2_DXMUX_5
    );
  state_FFd2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X13Y21",
      PATHPULSE => 694 ps
    )
    port map (
      I => state_FFd1_In,
      O => state_FFd2_DYMUX_6
    );
  state_FFd2_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y21",
      PATHPULSE => 694 ps
    )
    port map (
      I => RST_IBUF_1,
      O => state_FFd2_SRINV_7
    );
  state_FFd2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y21",
      PATHPULSE => 694 ps
    )
    port map (
      I => CLK_BUFGP,
      O => state_FFd2_CLKINV_8
    );
  state_FFd1_In1 : X_LUT4
    generic map(
      INIT => X"0200",
      LOC => "SLICE_X13Y21"
    )
    port map (
      ADR0 => X_IBUF_2,
      ADR1 => state_FFd3_0,
      ADR2 => state_FFd1_4,
      ADR3 => state_FFd2_3,
      O => state_FFd1_In
    );
  state_FFd3_REVUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y20",
      PATHPULSE => 694 ps
    )
    port map (
      I => state_FFd1_4,
      O => state_FFd3_REVUSED_10
    );
  state_FFd3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X12Y20",
      PATHPULSE => 694 ps
    )
    port map (
      I => N9,
      O => state_FFd3_DYMUX_11
    );
  state_FFd3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y20",
      PATHPULSE => 694 ps
    )
    port map (
      I => RST_IBUF_1,
      O => state_FFd3_SRINV_12
    );
  state_FFd3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y20",
      PATHPULSE => 694 ps
    )
    port map (
      I => CLK_BUFGP,
      O => state_FFd3_CLKINV_13
    );
  state_Out11 : X_LUT4
    generic map(
      INIT => X"CC0C",
      LOC => "SLICE_X17Y20"
    )
    port map (
      ADR0 => VCC,
      ADR1 => state_FFd2_3,
      ADR2 => state_FFd1_4,
      ADR3 => state_FFd3_0,
      O => Z_1_OBUF_14
    );
  state_FFd3_In11 : X_LUT4
    generic map(
      INIT => X"1177",
      LOC => "SLICE_X12Y20"
    )
    port map (
      ADR0 => state_FFd2_3,
      ADR1 => X_IBUF_2,
      ADR2 => VCC,
      ADR3 => state_FFd3_0,
      O => N9
    );
  state_FFd1 : X_SFF
    generic map(
      LOC => "SLICE_X13Y21",
      INIT => '0'
    )
    port map (
      I => state_FFd2_DYMUX_6,
      CE => VCC,
      CLK => state_FFd2_CLKINV_8,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => state_FFd2_SRINV_7,
      O => state_FFd1_4
    );
  state_FFd2_In1 : X_LUT4
    generic map(
      INIT => X"26F7",
      LOC => "SLICE_X13Y21"
    )
    port map (
      ADR0 => state_FFd3_0,
      ADR1 => state_FFd2_3,
      ADR2 => state_FFd1_4,
      ADR3 => X_IBUF_2,
      O => state_FFd2_In
    );
  state_FFd2 : X_SFF
    generic map(
      LOC => "SLICE_X13Y21",
      INIT => '0'
    )
    port map (
      I => state_FFd2_DXMUX_5,
      CE => VCC,
      CLK => state_FFd2_CLKINV_8,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => state_FFd2_SRINV_7,
      O => state_FFd2_3
    );
  state_FFd3 : X_SFF
    generic map(
      LOC => "SLICE_X12Y20",
      INIT => '0'
    )
    port map (
      I => state_FFd3_DYMUX_11,
      CE => VCC,
      CLK => state_FFd3_CLKINV_13,
      SET => GND,
      RST => GND,
      SSET => state_FFd3_REVUSED_10,
      SRST => state_FFd3_SRINV_12,
      O => state_FFd3_0
    );
  state_Out01 : X_LUT4
    generic map(
      INIT => X"FFA0",
      LOC => "SLICE_X12Y20"
    )
    port map (
      ADR0 => state_FFd2_3,
      ADR1 => VCC,
      ADR2 => state_FFd3_0,
      ADR3 => state_FFd1_4,
      O => Z_2_OBUF_9
    );
  GLOBAL_LOGIC1_VCC : X_ONE
    port map (
      O => GLOBAL_LOGIC1
    );
  Z_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD96",
      PATHPULSE => 694 ps
    )
    port map (
      I => state_FFd3_0,
      O => Z_0_O
    );
  Z_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD70",
      PATHPULSE => 694 ps
    )
    port map (
      I => Z_1_OBUF_14,
      O => Z_1_O
    );
  Z_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD71",
      PATHPULSE => 694 ps
    )
    port map (
      I => Z_2_OBUF_9,
      O => Z_2_O
    );
  NlwBlock_lights_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlock_lights_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

