--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2.04i
--  \   \         Application : sch2vhdl
--  /   /         Filename : my_schematic.vhf
-- /___/   /\     Timestamp : 01/17/2017 12:01:05
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx\92i\bin\nt\sch2vhdl.exe -intstyle ise -family spartan3e -flat -suppress -w "U:/ECE 241/lab1/my_schematic.sch" my_schematic.vhf
--Design Name: my_schematic
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

entity my_schematic is
   port ( my_in  : in    std_logic; 
          my_out : out   std_logic);
end my_schematic;

architecture BEHAVIORAL of my_schematic is
   attribute BOX_TYPE   : string ;
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
begin
   XLXI_1 : INV
      port map (I=>my_in,
                O=>my_out);
   
end BEHAVIORAL;


