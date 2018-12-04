--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2.04i
--  \   \         Application : sch2vhdl
--  /   /         Filename : schematic.vhf
-- /___/   /\     Timestamp : 04/04/2017 13:27:58
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx\92i\bin\nt\sch2vhdl.exe -intstyle ise -family spartan3e -flat -suppress -w "U:/ECE 241/moorefsm/schematic.sch" schematic.vhf
--Design Name: schematic
--Device: spartan3e
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesis and simulted, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity schematic is
   port ( CLK   : in    std_logic; 
          Reset : in    std_logic; 
          X     : in    std_logic; 
          Y     : out   std_logic);
end schematic;

architecture BEHAVIORAL of schematic is
   attribute INIT       : string ;
   attribute BOX_TYPE   : string ;
   signal XLXN_52 : std_logic;
   signal XLXN_53 : std_logic;
   signal XLXN_54 : std_logic;
   signal XLXN_58 : std_logic;
   signal XLXN_59 : std_logic;
   signal XLXN_60 : std_logic;
   signal XLXN_79 : std_logic;
   signal XLXN_80 : std_logic;
   component FDR
      -- synopsys translate_off
      generic( INIT : bit :=  '0');
      -- synopsys translate_on
      port ( C : in    std_logic; 
             D : in    std_logic; 
             R : in    std_logic; 
             Q : out   std_logic);
   end component;
   attribute INIT of FDR : component is "0";
   attribute BOX_TYPE of FDR : component is "BLACK_BOX";
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component AND3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3 : component is "BLACK_BOX";
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
begin
   XLXI_1 : FDR
      port map (C=>CLK,
                D=>XLXN_58,
                R=>Reset,
                Q=>XLXN_79);
   
   XLXI_2 : FDR
      port map (C=>CLK,
                D=>XLXN_53,
                R=>Reset,
                Q=>XLXN_80);
   
   XLXI_23 : INV
      port map (I=>X,
                O=>XLXN_52);
   
   XLXI_24 : INV
      port map (I=>XLXN_79,
                O=>XLXN_54);
   
   XLXI_25 : INV
      port map (I=>XLXN_80,
                O=>XLXN_53);
   
   XLXI_27 : OR2
      port map (I0=>XLXN_60,
                I1=>XLXN_59,
                O=>XLXN_58);
   
   XLXI_28 : AND3
      port map (I0=>XLXN_80,
                I1=>XLXN_54,
                I2=>X,
                O=>XLXN_59);
   
   XLXI_29 : AND3
      port map (I0=>XLXN_53,
                I1=>XLXN_79,
                I2=>XLXN_52,
                O=>XLXN_60);
   
   XLXI_39 : AND2
      port map (I0=>XLXN_80,
                I1=>XLXN_79,
                O=>Y);
   
end BEHAVIORAL;


