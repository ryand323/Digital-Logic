--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: J.40
--  \   \         Application: netgen
--  /   /         Filename: schem_timesim.vhd
-- /___/   /\     Timestamp: Tue Feb 07 12:23:49 2017
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 5 -pcf schem.pcf -rpw 100 -tpw 0 -ar Structure -tm schem -insert_pp_buffers false -w -dir netgen/par -ofmt vhdl -sim schem.ncd schem_timesim.vhd 
-- Device	: 3s100ecp132-5 (PRODUCTION 1.27 2007-10-19)
-- Input file	: schem.ncd
-- Output file	: \\users.uidaho.edu\users\d\dona1865\ECE 241\lab 3\lab3\netgen\par\schem_timesim.vhd
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
    A_0 : in STD_LOGIC := 'X'; 
    A_1 : in STD_LOGIC := 'X'; 
    B_0 : in STD_LOGIC := 'X'; 
    B_1 : in STD_LOGIC := 'X'; 
    C_Out : out STD_LOGIC; 
    S_0 : out STD_LOGIC; 
    S_1 : out STD_LOGIC; 
    C_in : in STD_LOGIC := 'X' 
  );
end schem;

architecture Structure of schem is
  signal C_in_IBUF_0 : STD_LOGIC; 
  signal A_0_IBUF_1 : STD_LOGIC; 
  signal A_1_IBUF_2 : STD_LOGIC; 
  signal B_0_IBUF_3 : STD_LOGIC; 
  signal B_1_IBUF_4 : STD_LOGIC; 
  signal XLXN_68 : STD_LOGIC; 
  signal C_in_INBUF : STD_LOGIC; 
  signal S_0_O : STD_LOGIC; 
  signal S_1_O : STD_LOGIC; 
  signal C_Out_O : STD_LOGIC; 
  signal A_0_INBUF : STD_LOGIC; 
  signal A_1_INBUF : STD_LOGIC; 
  signal B_0_INBUF : STD_LOGIC; 
  signal B_1_INBUF : STD_LOGIC; 
  signal S_1_OBUF_5 : STD_LOGIC; 
  signal XLXN_68_pack_1 : STD_LOGIC; 
  signal C_Out_OBUF_6 : STD_LOGIC; 
  signal S_0_OBUF_7 : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
begin
  C_in_IBUF : X_BUF
    generic map(
      LOC => "PAD72",
      PATHPULSE => 694 ps
    )
    port map (
      I => C_in,
      O => C_in_INBUF
    );
  C_in_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD72",
      PATHPULSE => 694 ps
    )
    port map (
      I => C_in_INBUF,
      O => C_in_IBUF_0
    );
  S_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD82"
    )
    port map (
      I => S_0_O,
      O => S_0
    );
  S_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD69"
    )
    port map (
      I => S_1_O,
      O => S_1
    );
  C_Out_OBUF : X_OBUF
    generic map(
      LOC => "PAD64"
    )
    port map (
      I => C_Out_O,
      O => C_Out
    );
  A_0_IBUF : X_BUF
    generic map(
      LOC => "PAD70",
      PATHPULSE => 694 ps
    )
    port map (
      I => A_0,
      O => A_0_INBUF
    );
  A_0_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD70",
      PATHPULSE => 694 ps
    )
    port map (
      I => A_0_INBUF,
      O => A_0_IBUF_1
    );
  A_1_IBUF : X_BUF
    generic map(
      LOC => "PAD96",
      PATHPULSE => 694 ps
    )
    port map (
      I => A_1,
      O => A_1_INBUF
    );
  A_1_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD96",
      PATHPULSE => 694 ps
    )
    port map (
      I => A_1_INBUF,
      O => A_1_IBUF_2
    );
  B_0_IBUF : X_BUF
    generic map(
      LOC => "PAD68",
      PATHPULSE => 694 ps
    )
    port map (
      I => B_0,
      O => B_0_INBUF
    );
  B_0_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD68",
      PATHPULSE => 694 ps
    )
    port map (
      I => B_0_INBUF,
      O => B_0_IBUF_3
    );
  B_1_IBUF : X_BUF
    generic map(
      LOC => "PAD71",
      PATHPULSE => 694 ps
    )
    port map (
      I => B_1,
      O => B_1_INBUF
    );
  B_1_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD71",
      PATHPULSE => 694 ps
    )
    port map (
      I => B_1_INBUF,
      O => B_1_IBUF_4
    );
  S_1_OBUF_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X11Y0",
      PATHPULSE => 694 ps
    )
    port map (
      I => XLXN_68_pack_1,
      O => XLXN_68
    );
  XLXI_27 : X_LUT4
    generic map(
      INIT => X"E8E8",
      LOC => "SLICE_X11Y0"
    )
    port map (
      ADR0 => A_0_IBUF_1,
      ADR1 => C_in_IBUF_0,
      ADR2 => B_0_IBUF_3,
      ADR3 => VCC,
      O => XLXN_68_pack_1
    );
  XLXI_52 : X_LUT4
    generic map(
      INIT => X"EE88",
      LOC => "SLICE_X10Y1"
    )
    port map (
      ADR0 => B_1_IBUF_4,
      ADR1 => XLXN_68,
      ADR2 => VCC,
      ADR3 => A_1_IBUF_2,
      O => C_Out_OBUF_6
    );
  XLXI_28 : X_LUT4
    generic map(
      INIT => X"C33C",
      LOC => "SLICE_X10Y0"
    )
    port map (
      ADR0 => VCC,
      ADR1 => B_0_IBUF_3,
      ADR2 => C_in_IBUF_0,
      ADR3 => A_0_IBUF_1,
      O => S_0_OBUF_7
    );
  XLXI_51 : X_LUT4
    generic map(
      INIT => X"A55A",
      LOC => "SLICE_X11Y0"
    )
    port map (
      ADR0 => A_1_IBUF_2,
      ADR1 => VCC,
      ADR2 => XLXN_68,
      ADR3 => B_1_IBUF_4,
      O => S_1_OBUF_5
    );
  S_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD82",
      PATHPULSE => 694 ps
    )
    port map (
      I => S_0_OBUF_7,
      O => S_0_O
    );
  S_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD69",
      PATHPULSE => 694 ps
    )
    port map (
      I => S_1_OBUF_5,
      O => S_1_O
    );
  C_Out_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD64",
      PATHPULSE => 694 ps
    )
    port map (
      I => C_Out_OBUF_6,
      O => C_Out_O
    );
  NlwBlock_schem_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

