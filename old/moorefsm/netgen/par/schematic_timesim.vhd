--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: J.40
--  \   \         Application: netgen
--  /   /         Filename: schematic_timesim.vhd
-- /___/   /\     Timestamp: Tue Apr 04 13:30:49 2017
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 5 -pcf schematic.pcf -rpw 100 -tpw 0 -ar Structure -tm schematic -insert_pp_buffers false -w -dir netgen/par -ofmt vhdl -sim schematic.ncd schematic_timesim.vhd 
-- Device	: 3s100ecp132-5 (PRODUCTION 1.27 2007-10-19)
-- Input file	: schematic.ncd
-- Output file	: \\users.uidaho.edu\users\d\dona1865\ECE 241\moorefsm\netgen\par\schematic_timesim.vhd
-- # of Entities	: 1
-- Design Name	: schematic
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

entity schematic is
  port (
    CLK : in STD_LOGIC := 'X'; 
    Reset : in STD_LOGIC := 'X'; 
    X : in STD_LOGIC := 'X'; 
    Y : out STD_LOGIC 
  );
end schematic;

architecture Structure of schematic is
  signal X_IBUF_0 : STD_LOGIC; 
  signal GLOBAL_LOGIC1 : STD_LOGIC; 
  signal CLK_BUFGP : STD_LOGIC; 
  signal XLXN_80 : STD_LOGIC; 
  signal XLXN_79 : STD_LOGIC; 
  signal Reset_INBUF : STD_LOGIC; 
  signal X_INBUF : STD_LOGIC; 
  signal Y_O : STD_LOGIC; 
  signal CLK_INBUF : STD_LOGIC; 
  signal CLK_BUFGP_BUFG_S_INVNOT : STD_LOGIC; 
  signal CLK_BUFGP_BUFG_I0_INV : STD_LOGIC; 
  signal XLXN_80_DXMUX_1 : STD_LOGIC; 
  signal Y_OBUF_2 : STD_LOGIC; 
  signal XLXN_80_DYMUX_3 : STD_LOGIC; 
  signal XLXN_58 : STD_LOGIC; 
  signal XLXN_80_SRINV_4 : STD_LOGIC; 
  signal XLXN_80_CLKINV_5 : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
begin
  Reset_IBUF : X_BUF
    generic map(
      LOC => "PAD30",
      PATHPULSE => 694 ps
    )
    port map (
      I => Reset,
      O => Reset_INBUF
    );
  X_IBUF : X_BUF
    generic map(
      LOC => "PAD31",
      PATHPULSE => 694 ps
    )
    port map (
      I => X,
      O => X_INBUF
    );
  X_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD31",
      PATHPULSE => 694 ps
    )
    port map (
      I => X_INBUF,
      O => X_IBUF_0
    );
  Y_OBUF : X_OBUF
    generic map(
      LOC => "PAD28"
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
  XLXN_80_DXMUX : X_INV
    generic map(
      LOC => "SLICE_X30Y36",
      PATHPULSE => 694 ps
    )
    port map (
      I => XLXN_80,
      O => XLXN_80_DXMUX_1
    );
  XLXN_80_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X30Y36",
      PATHPULSE => 694 ps
    )
    port map (
      I => XLXN_58,
      O => XLXN_80_DYMUX_3
    );
  XLXN_80_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X30Y36",
      PATHPULSE => 694 ps
    )
    port map (
      I => Reset_INBUF,
      O => XLXN_80_SRINV_4
    );
  XLXN_80_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X30Y36",
      PATHPULSE => 694 ps
    )
    port map (
      I => CLK_BUFGP,
      O => XLXN_80_CLKINV_5
    );
  XLXI_27 : X_LUT4
    generic map(
      INIT => X"03C0",
      LOC => "SLICE_X30Y36"
    )
    port map (
      ADR0 => VCC,
      ADR1 => X_IBUF_0,
      ADR2 => XLXN_80,
      ADR3 => XLXN_79,
      O => XLXN_58
    );
  XLXI_1 : X_SFF
    generic map(
      LOC => "SLICE_X30Y36",
      INIT => '0'
    )
    port map (
      I => XLXN_80_DYMUX_3,
      CE => VCC,
      CLK => XLXN_80_CLKINV_5,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => XLXN_80_SRINV_4,
      O => XLXN_79
    );
  XLXI_39 : X_LUT4
    generic map(
      INIT => X"F000",
      LOC => "SLICE_X30Y36"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => XLXN_80,
      ADR3 => XLXN_79,
      O => Y_OBUF_2
    );
  XLXI_2 : X_SFF
    generic map(
      LOC => "SLICE_X30Y36",
      INIT => '0'
    )
    port map (
      I => XLXN_80_DXMUX_1,
      CE => VCC,
      CLK => XLXN_80_CLKINV_5,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => XLXN_80_SRINV_4,
      O => XLXN_80
    );
  GLOBAL_LOGIC1_VCC : X_ONE
    port map (
      O => GLOBAL_LOGIC1
    );
  Y_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD28",
      PATHPULSE => 694 ps
    )
    port map (
      I => Y_OBUF_2,
      O => Y_O
    );
  NlwBlock_schematic_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlock_schematic_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

