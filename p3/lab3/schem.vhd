--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2.04i
--  \   \         Application : sch2vhdl
--  /   /         Filename : schem.vhf
-- /___/   /\     Timestamp : 02/07/2017 12:12:29
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx\92i\bin\nt\sch2vhdl.exe -intstyle ise -family spartan3e -flat -suppress -w "U:/ECE 241/lab 3/lab3/schem.sch" schem.vhf
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
   port ( A_0   : in    std_logic; 
          A_1   : in    std_logic; 
          B_0   : in    std_logic; 
          B_1   : in    std_logic; 
          C_in  : in    std_logic; 
          C_Out : out   std_logic; 
          S_0   : out   std_logic; 
          S_1   : out   std_logic);
end schem;

architecture BEHAVIORAL of schem is
   attribute BOX_TYPE   : string ;
   signal XLXN_9  : std_logic;
   signal XLXN_11 : std_logic;
   signal XLXN_13 : std_logic;
   signal XLXN_26 : std_logic;
   signal XLXN_27 : std_logic;
   signal XLXN_28 : std_logic;
   signal XLXN_29 : std_logic;
   signal XLXN_34 : std_logic;
   signal XLXN_35 : std_logic;
   signal XLXN_36 : std_logic;
   signal XLXN_54 : std_logic;
   signal XLXN_56 : std_logic;
   signal XLXN_58 : std_logic;
   signal XLXN_59 : std_logic;
   signal XLXN_60 : std_logic;
   signal XLXN_61 : std_logic;
   signal XLXN_63 : std_logic;
   signal XLXN_64 : std_logic;
   signal XLXN_65 : std_logic;
   signal XLXN_66 : std_logic;
   signal XLXN_68 : std_logic;
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
   
   component OR3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR3 : component is "BLACK_BOX";
   
   component OR4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR4 : component is "BLACK_BOX";
   
begin
   XLXI_5 : INV
      port map (I=>C_in,
                O=>XLXN_9);
   
   XLXI_6 : INV
      port map (I=>A_0,
                O=>XLXN_11);
   
   XLXI_7 : INV
      port map (I=>B_0,
                O=>XLXN_13);
   
   XLXI_10 : AND3
      port map (I0=>B_0,
                I1=>A_0,
                I2=>XLXN_9,
                O=>XLXN_34);
   
   XLXI_11 : AND3
      port map (I0=>B_0,
                I1=>XLXN_11,
                I2=>XLXN_9,
                O=>XLXN_27);
   
   XLXI_12 : AND3
      port map (I0=>XLXN_13,
                I1=>A_0,
                I2=>XLXN_9,
                O=>XLXN_26);
   
   XLXI_13 : AND3
      port map (I0=>XLXN_13,
                I1=>XLXN_11,
                I2=>C_in,
                O=>XLXN_28);
   
   XLXI_14 : AND3
      port map (I0=>B_0,
                I1=>A_0,
                I2=>C_in,
                O=>XLXN_29);
   
   XLXI_15 : AND2
      port map (I0=>B_0,
                I1=>C_in,
                O=>XLXN_36);
   
   XLXI_16 : AND2
      port map (I0=>A_0,
                I1=>C_in,
                O=>XLXN_35);
   
   XLXI_27 : OR3
      port map (I0=>XLXN_35,
                I1=>XLXN_36,
                I2=>XLXN_34,
                O=>XLXN_68);
   
   XLXI_28 : OR4
      port map (I0=>XLXN_29,
                I1=>XLXN_28,
                I2=>XLXN_26,
                I3=>XLXN_27,
                O=>S_0);
   
   XLXI_41 : INV
      port map (I=>XLXN_68,
                O=>XLXN_54);
   
   XLXI_42 : INV
      port map (I=>B_1,
                O=>XLXN_56);
   
   XLXI_43 : INV
      port map (I=>A_1,
                O=>XLXN_58);
   
   XLXI_44 : AND3
      port map (I0=>B_1,
                I1=>A_1,
                I2=>XLXN_54,
                O=>XLXN_64);
   
   XLXI_45 : AND3
      port map (I0=>B_1,
                I1=>XLXN_58,
                I2=>XLXN_54,
                O=>XLXN_59);
   
   XLXI_46 : AND3
      port map (I0=>XLXN_56,
                I1=>A_1,
                I2=>XLXN_54,
                O=>XLXN_61);
   
   XLXI_47 : AND3
      port map (I0=>XLXN_56,
                I1=>XLXN_58,
                I2=>XLXN_68,
                O=>XLXN_63);
   
   XLXI_48 : AND3
      port map (I0=>B_1,
                I1=>A_1,
                I2=>XLXN_68,
                O=>XLXN_60);
   
   XLXI_49 : AND2
      port map (I0=>B_1,
                I1=>XLXN_68,
                O=>XLXN_66);
   
   XLXI_50 : AND2
      port map (I0=>A_1,
                I1=>XLXN_68,
                O=>XLXN_65);
   
   XLXI_51 : OR4
      port map (I0=>XLXN_60,
                I1=>XLXN_63,
                I2=>XLXN_61,
                I3=>XLXN_59,
                O=>S_1);
   
   XLXI_52 : OR3
      port map (I0=>XLXN_65,
                I1=>XLXN_66,
                I2=>XLXN_64,
                O=>C_Out);
   
end BEHAVIORAL;


