--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2.04i
--  \   \         Application : sch2vhdl
--  /   /         Filename : mealy.vhf
-- /___/   /\     Timestamp : 04/04/2017 12:57:04
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx\92i\bin\nt\sch2vhdl.exe -intstyle ise -family spartan3e -flat -suppress -w "U:/ECE 241/moore/mealy.sch" mealy.vhf
--Design Name: mealy
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

entity mealy is
   port ( CLK   : in    std_logic; 
          X     : in    std_logic; 
          Reset : out   std_logic; 
          Y     : out   std_logic);
end mealy;

architecture BEHAVIORAL of mealy is
   attribute INIT       : string ;
   attribute BOX_TYPE   : string ;
   signal XLXN_2      : std_logic;
   signal XLXN_4      : std_logic;
   signal XLXN_8      : std_logic;
   signal XLXN_9      : std_logic;
   signal XLXN_20     : std_logic;
   signal XLXN_23     : std_logic;
   signal XLXN_24     : std_logic;
   signal XLXN_37     : std_logic;
   signal XLXN_41     : std_logic;
   signal XLXN_42     : std_logic;
   signal XLXN_45     : std_logic;
   signal Reset_DUMMY : std_logic;
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
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
begin
   Reset <= Reset_DUMMY;
   XLXI_1 : FDR
      port map (C=>CLK,
                D=>XLXN_20,
                R=>Reset_DUMMY,
                Q=>XLXN_4);
   
   XLXI_2 : FDR
      port map (C=>CLK,
                D=>XLXN_45,
                R=>Reset_DUMMY,
                Q=>XLXN_2);
   
   XLXI_3 : INV
      port map (I=>X,
                O=>XLXN_37);
   
   XLXI_4 : INV
      port map (I=>XLXN_4,
                O=>XLXN_9);
   
   XLXI_5 : INV
      port map (I=>XLXN_2,
                O=>XLXN_8);
   
   XLXI_12 : AND3
      port map (I0=>XLXN_23,
                I1=>XLXN_24,
                I2=>XLXN_4,
                O=>Y);
   
   XLXI_13 : INV
      port map (I=>X,
                O=>XLXN_23);
   
   XLXI_14 : INV
      port map (I=>XLXN_2,
                O=>XLXN_24);
   
   XLXI_15 : AND3
      port map (I0=>X,
                I1=>XLXN_2,
                I2=>XLXN_9,
                O=>XLXN_20);
   
   XLXI_17 : AND2
      port map (I0=>XLXN_9,
                I1=>XLXN_37,
                O=>XLXN_41);
   
   XLXI_18 : AND2
      port map (I0=>XLXN_8,
                I1=>XLXN_37,
                O=>XLXN_42);
   
   XLXI_20 : OR2
      port map (I0=>XLXN_42,
                I1=>XLXN_41,
                O=>XLXN_45);
   
end BEHAVIORAL;


