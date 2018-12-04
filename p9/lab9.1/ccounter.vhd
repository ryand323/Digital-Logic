----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:25:59 03/28/2017 
-- Design Name: 
-- Module Name:    ccounter - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity ccounter is
Port(clk : in STD_LOGIC;
     Reset : in STD_LOGIC;
	  updown : in STD_LOGIC;
     count : inout STD_LOGIC_VECTOR (2 downto 0));
end ccounter;

architecture Behavioral of ccounter is
begin	
process (clk)
begin
	if rising_edge (clk) then
	if reset = '1' then count <= "000";
	else
		if updown = '1' then
			count <= count + "001";
		else 
			count <= count - "010";
		end if;
   end if;
end if;
end process;
end Behavioral;
