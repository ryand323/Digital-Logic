--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2.04i
--  \   \         Application : sch2vhdl
--  /   /         Filename : schem.vhf
-- /___/   /\     Timestamp : 01/31/2017 12:31:06
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx\92i\bin\nt\sch2vhdl.exe -intstyle ise -family spartan3e -flat -suppress -w "U:/ECE 241/lab 2/lab2/schem.sch" schem.vhf
--Design Name: schem
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

entity schem is
   port ( A0    : in    std_logic; 
          A1    : in    std_logic; 
          B0    : in    std_logic; 
          B1    : in    std_logic; 
          A_big : out   std_logic; 
          B_big : out   std_logic; 
          Equal : out   std_logic);
end schem;

architecture BEHAVIORAL of schem is
   attribute BOX_TYPE   : string ;
   signal XLXN_4  : std_logic;
   signal XLXN_7  : std_logic;
   signal XLXN_9  : std_logic;
   signal XLXN_11 : std_logic;
   signal XLXN_13 : std_logic;
   signal XLXN_14 : std_logic;
   signal XLXN_17 : std_logic;
   signal XLXN_18 : std_logic;
   signal XLXN_19 : std_logic;
   signal XLXN_20 : std_logic;
   signal XLXN_27 : std_logic;
   signal XLXN_28 : std_logic;
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   component XNOR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of XNOR2 : component is "BLACK_BOX";
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component AND3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3 : component is "BLACK_BOX";
   
   component OR3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR3 : component is "BLACK_BOX";
   
begin
   XLXI_3 : INV
      port map (I=>A1,
                O=>XLXN_4);
   
   XLXI_5 : INV
      port map (I=>A0,
                O=>XLXN_7);
   
   XLXI_6 : INV
      port map (I=>B1,
                O=>XLXN_9);
   
   XLXI_7 : INV
      port map (I=>B0,
                O=>XLXN_11);
   
   XLXI_8 : XNOR2
      port map (I0=>B0,
                I1=>A0,
                O=>XLXN_14);
   
   XLXI_9 : XNOR2
      port map (I0=>B1,
                I1=>A1,
                O=>XLXN_13);
   
   XLXI_10 : AND2
      port map (I0=>XLXN_13,
                I1=>XLXN_14,
                O=>Equal);
   
   XLXI_11 : AND2
      port map (I0=>XLXN_9,
                I1=>A1,
                O=>XLXN_19);
   
   XLXI_12 : AND2
      port map (I0=>B1,
                I1=>XLXN_4,
                O=>XLXN_27);
   
   XLXI_13 : AND3
      port map (I0=>XLXN_11,
                I1=>A0,
                I2=>A1,
                O=>XLXN_17);
   
   XLXI_14 : AND3
      port map (I0=>XLXN_11,
                I1=>XLXN_9,
                I2=>A0,
                O=>XLXN_18);
   
   XLXI_15 : AND3
      port map (I0=>B0,
                I1=>B1,
                I2=>XLXN_7,
                O=>XLXN_20);
   
   XLXI_16 : AND3
      port map (I0=>B0,
                I1=>XLXN_4,
                I2=>XLXN_7,
                O=>XLXN_28);
   
   XLXI_25 : OR3
      port map (I0=>XLXN_28,
                I1=>XLXN_20,
                I2=>XLXN_27,
                O=>B_big);
   
   XLXI_26 : OR3
      port map (I0=>XLXN_19,
                I1=>XLXN_17,
                I2=>XLXN_18,
                O=>A_big);
   
end BEHAVIORAL;


