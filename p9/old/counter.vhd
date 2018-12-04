----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:39:44 03/28/2017 
-- Design Name: 
-- Module Name:    counter - Behavioral 
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

entity counter is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           count : inout  STD_LOGIC_VECTOR(2 downto 0);
			  updown : in STD_LOGIC);
end counter;

architecture Behavioral of counter is
signal count_int : std_logic_vector(2 downto 0);
begin
process (reset, clk)
begin
  if rising_edge (clk) then
		if reset = '1' then
			count <= "000";
		elsif reset = '0' then
			if updown = '1' then	--logic for count up
				if count = "111" then
					count <= "000";
				else 
					count <= count + "001";
				end if;	
			elsif updown = '0' then --logic for count down
				if count /= ("000" or "001") then
					count <= count - "010";
				elsif count = "000" then
					count <= "101";
				elsif count = "001" then
					count <= "111";
				end if;	
			end if;
		end if;
end if;
end process;

end Behavioral;

