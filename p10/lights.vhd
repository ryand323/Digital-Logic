----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:57:53 04/11/2017 
-- Design Name: 
-- Module Name:    lights - Behavioral 
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

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity lights is
    Port ( X : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
			  Z : out STD_LOGIC_VECTOR(2 downto 0));
end lights;

architecture Behavioral of lights is

type state_type is (s0, s1, s2, s3, s4);
signal state, next_state : state_type;

begin

FF_PROC: process (CLK)
begin
if rising_edge (CLK) then
	if (RST = '1') then 
		state <= s0;
	else 
		state <= next_state;
	end if;
end if;
end process;

NS_PROC: process (state, x)
begin
next_state <= state;
case(state) is
	when s0=>
		if (x = '1') then
			next_state <= s1;
		else
			next_state <= s4;
		end if;
	when s1=>
		if (x = '1') then
			next_state <= s2;
		else
			next_state <= s4;
		end if;
	when s2=>
		if (x = '1') then
			next_state <= s3;
		else
			next_state <= s4;
		end if;
	when s3=>
		if (x = '1') then
			next_state <= s1;
		else
			next_state <= s4;
		end if;
	when s4=>
		next_state <= s0;
end case;
end process;

OUT_PROC: process (state)
begin
case(state) is
	when s0=>
		Z(0) <= '0';
		Z(1) <= '0';
		Z(2) <= '0';
	when s1=>
		Z(0) <= '1';
		Z(1) <= '0';
		Z(2) <= '0';
	when s2=>
		Z(0) <= '0';
		Z(1) <= '1';
		Z(2) <= '0';
	when s3=>
		Z(0) <= '0';
		Z(1) <= '0';
		Z(2) <= '1';
	when s4 =>
		Z(0) <= '1';
		Z(1) <= '1';
		Z(2) <= '1';
end case;
end process;

end Behavioral;

