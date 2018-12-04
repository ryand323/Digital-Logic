--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2.04i
--  \   \         Application : sch2vhdl
--  /   /         Filename : schem.vhf
-- /___/   /\     Timestamp : 03/21/2017 12:27:32
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx\92i\bin\nt\sch2vhdl.exe -intstyle ise -family spartan3e -flat -suppress -w "U:/ECE 241/lab8/schem.sch" schem.vhf
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
   port ( clk       : in    std_logic; 
          reset     : in    std_logic; 
          Up_Down_B : in    std_logic; 
          S0        : out   std_logic; 
          S1        : out   std_logic; 
          S2        : out   std_logic);
end schem;

architecture BEHAVIORAL of schem is
   attribute INIT       : string ;
   attribute BOX_TYPE   : string ;
   signal XLXN_8    : std_logic;
   signal XLXN_9    : std_logic;
   signal XLXN_10   : std_logic;
   signal XLXN_11   : std_logic;
   signal XLXN_12   : std_logic;
   signal XLXN_13   : std_logic;
   signal XLXN_24   : std_logic;
   signal XLXN_25   : std_logic;
   signal XLXN_26   : std_logic;
   signal XLXN_29   : std_logic;
   signal XLXN_32   : std_logic;
   signal XLXN_33   : std_logic;
   signal XLXN_34   : std_logic;
   signal XLXN_35   : std_logic;
   signal XLXN_36   : std_logic;
   signal XLXN_44   : std_logic;
   signal XLXN_45   : std_logic;
   signal S0_DUMMY  : std_logic;
   signal S1_DUMMY  : std_logic;
   signal S2_DUMMY  : std_logic;
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
   
   component OR3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR3 : component is "BLACK_BOX";
   
   component OR5
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR5 : component is "BLACK_BOX";
   
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
   
   component AND4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND4 : component is "BLACK_BOX";
   
begin
   S0 <= S0_DUMMY;
   S1 <= S1_DUMMY;
   S2 <= S2_DUMMY;
   XLXI_1 : FDR
      port map (C=>clk,
                D=>XLXN_13,
                R=>reset,
                Q=>S2_DUMMY);
   
   XLXI_2 : FDR
      port map (C=>clk,
                D=>XLXN_12,
                R=>reset,
                Q=>S1_DUMMY);
   
   XLXI_3 : FDR
      port map (C=>clk,
                D=>XLXN_11,
                R=>reset,
                Q=>S0_DUMMY);
   
   XLXI_8 : INV
      port map (I=>S0_DUMMY,
                O=>XLXN_8);
   
   XLXI_9 : INV
      port map (I=>S1_DUMMY,
                O=>XLXN_9);
   
   XLXI_11 : INV
      port map (I=>S2_DUMMY,
                O=>XLXN_10);
   
   XLXI_15 : OR2
      port map (I0=>XLXN_36,
                I1=>XLXN_35,
                O=>XLXN_11);
   
   XLXI_16 : OR3
      port map (I0=>XLXN_34,
                I1=>XLXN_33,
                I2=>XLXN_32,
                O=>XLXN_12);
   
   XLXI_17 : OR5
      port map (I0=>XLXN_45,
                I1=>XLXN_29,
                I2=>XLXN_26,
                I3=>XLXN_25,
                I4=>XLXN_24,
                O=>XLXN_13);
   
   XLXI_19 : AND3
      port map (I0=>XLXN_44,
                I1=>S1_DUMMY,
                I2=>S2_DUMMY,
                O=>XLXN_25);
   
   XLXI_20 : AND3
      port map (I0=>XLXN_8,
                I1=>S1_DUMMY,
                I2=>S2_DUMMY,
                O=>XLXN_26);
   
   XLXI_21 : AND3
      port map (I0=>Up_Down_B,
                I1=>XLXN_9,
                I2=>S2_DUMMY,
                O=>XLXN_29);
   
   XLXI_33 : AND3
      port map (I0=>Up_Down_B,
                I1=>XLXN_8,
                I2=>S1_DUMMY,
                O=>XLXN_32);
   
   XLXI_34 : AND2
      port map (I0=>XLXN_44,
                I1=>XLXN_9,
                O=>XLXN_33);
   
   XLXI_35 : AND2
      port map (I0=>S0_DUMMY,
                I1=>XLXN_9,
                O=>XLXN_34);
   
   XLXI_36 : AND2
      port map (I0=>Up_Down_B,
                I1=>XLXN_8,
                O=>XLXN_35);
   
   XLXI_37 : AND2
      port map (I0=>XLXN_44,
                I1=>S0_DUMMY,
                O=>XLXN_36);
   
   XLXI_45 : INV
      port map (I=>Up_Down_B,
                O=>XLXN_44);
   
   XLXI_46 : AND4
      port map (I0=>Up_Down_B,
                I1=>S0_DUMMY,
                I2=>S1_DUMMY,
                I3=>XLXN_10,
                O=>XLXN_45);
   
   XLXI_69 : AND3
      port map (I0=>XLXN_44,
                I1=>XLXN_9,
                I2=>XLXN_10,
                O=>XLXN_24);
   
end BEHAVIORAL;


