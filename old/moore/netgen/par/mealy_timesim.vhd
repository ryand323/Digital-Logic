--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: J.40
--  \   \         Application: netgen
--  /   /         Filename: mealy_timesim.vhd
-- /___/   /\     Timestamp: Tue Apr 04 13:03:08 2017
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 5 -pcf mealy.pcf -rpw 100 -tpw 0 -ar Structure -tm mealy -insert_pp_buffers false -w -dir netgen/par -ofmt vhdl -sim mealy.ncd mealy_timesim.vhd 
-- Device	: 3s100ecp132-5 (PRODUCTION 1.27 2007-10-19)
-- Input file	: mealy.ncd
-- Output file	: \\users.uidaho.edu\users\d\dona1865\ECE 241\moore\netgen\par\mealy_timesim.vhd
-- # of Entities	: 1
-- Design Name	: mealy
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

entity mealy is
  port (
    CLK : in STD_LOGIC := 'X'; 
    Reset : out STD_LOGIC; 
    X : in STD_LOGIC := 'X'; 
    Y : out STD_LOGIC 
  );
end mealy;

architecture Structure of mealy is
  signal GLOBAL_LOGIC0 : STD_LOGIC; 
  signal X_IBUF_0 : STD_LOGIC; 
  signal GLOBAL_LOGIC1 : STD_LOGIC; 
  signal CLK_BUFGP : STD_LOGIC; 
  signal XLXN_4 : STD_LOGIC; 
  signal XLXN_2 : STD_LOGIC; 
  signal Reset_O : STD_LOGIC; 
  signal X_INBUF : STD_LOGIC; 
  signal Y_O : STD_LOGIC; 
  signal CLK_INBUF : STD_LOGIC; 
  signal CLK_BUFGP_BUFG_S_INVNOT : STD_LOGIC; 
  signal CLK_BUFGP_BUFG_I0_INV : STD_LOGIC; 
  signal XLXN_4_DXMUX_1 : STD_LOGIC; 
  signal XLXN_20 : STD_LOGIC; 
  signal XLXN_4_DYMUX_2 : STD_LOGIC; 
  signal XLXN_45 : STD_LOGIC; 
  signal XLXN_4_CLKINV_3 : STD_LOGIC; 
  signal Y_OBUF_4 : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
begin
  Reset_OBUF : X_OBUF
    generic map(
      LOC => "PAD83"
    )
    port map (
      I => Reset_O,
      O => Reset
    );
  X_IBUF : X_BUF
    generic map(
      LOC => "PAD39",
      PATHPULSE => 694 ps
    )
    port map (
      I => X,
      O => X_INBUF
    );
  X_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD39",
      PATHPULSE => 694 ps
    )
    port map (
      I => X_INBUF,
      O => X_IBUF_0
    );
  Y_OBUF : X_OBUF
    generic map(
      LOC => "PAD40"
    )
    port map (
      I => Y_O,
      O => Y
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
  XLXN_4_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X28Y25",
      PATHPULSE => 694 ps
    )
    port map (
      I => XLXN_20,
      O => XLXN_4_DXMUX_1
    );
  XLXN_4_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X28Y25",
      PATHPULSE => 694 ps
    )
    port map (
      I => XLXN_45,
      O => XLXN_4_DYMUX_2
    );
  XLXN_4_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X28Y25",
      PATHPULSE => 694 ps
    )
    port map (
      I => CLK_BUFGP,
      O => XLXN_4_CLKINV_3
    );
  XLXI_12 : X_LUT4
    generic map(
      INIT => X"0300",
      LOC => "SLICE_X28Y24"
    )
    port map (
      ADR0 => VCC,
      ADR1 => X_IBUF_0,
      ADR2 => XLXN_2,
      ADR3 => XLXN_4,
      O => Y_OBUF_4
    );
  XLXI_20 : X_LUT4
    generic map(
      INIT => X"0333",
      LOC => "SLICE_X28Y25"
    )
    port map (
      ADR0 => VCC,
      ADR1 => X_IBUF_0,
      ADR2 => XLXN_2,
      ADR3 => XLXN_4,
      O => XLXN_45
    );
  XLXI_2 : X_SFF
    generic map(
      LOC => "SLICE_X28Y25",
      INIT => '0'
    )
    port map (
      I => XLXN_4_DYMUX_2,
      CE => VCC,
      CLK => XLXN_4_CLKINV_3,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => GND,
      O => XLXN_2
    );
  XLXI_15 : X_LUT4
    generic map(
      INIT => X"00C0",
      LOC => "SLICE_X28Y25"
    )
    port map (
      ADR0 => VCC,
      ADR1 => X_IBUF_0,
      ADR2 => XLXN_2,
      ADR3 => XLXN_4,
      O => XLXN_20
    );
  XLXI_1 : X_SFF
    generic map(
      LOC => "SLICE_X28Y25",
      INIT => '0'
    )
    port map (
      I => XLXN_4_DXMUX_1,
      CE => VCC,
      CLK => XLXN_4_CLKINV_3,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => GND,
      O => XLXN_4
    );
  GLOBAL_LOGIC0_GND : X_ZERO
    port map (
      O => GLOBAL_LOGIC0
    );
  GLOBAL_LOGIC1_VCC : X_ONE
    port map (
      O => GLOBAL_LOGIC1
    );
  Reset_OUTPUT_O1_GND : X_ZERO
    port map (
      O => GLOBAL_LOGIC0
    );
  Reset_OUTPUT_OFF_O1_GND : X_ZERO
    port map (
      O => GLOBAL_LOGIC0
    );
  Reset_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD83",
      PATHPULSE => 694 ps
    )
    port map (
      I => GLOBAL_LOGIC0,
      O => Reset_O
    );
  Y_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD40",
      PATHPULSE => 694 ps
    )
    port map (
      I => Y_OBUF_4,
      O => Y_O
    );
  NlwBlock_mealy_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlock_mealy_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

