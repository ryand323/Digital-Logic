--------------------------------------------------------------------------------
-- Company: 		ECE Dept - Univ of Idaho
-- Engineer: Jim Frenzel
--
-- Create Date:    15:07:31 11/08/05
-- Design Name:	Picoprocessor Lab    
-- Module Name:    alu - Behavioral
-- Project Name:	ECE 241 - Lab 9   
-- Target Device: Spartan 2 XC2s30-6tq144  
-- Tool versions:  
-- Description:	4-bit ALU for use with Picoprocessor
--
-- Dependencies: None
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
--------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity alu is
    Port ( rega : in std_logic_vector(3 downto 0);
           regb : in std_logic_vector(3 downto 0);
           controls : in std_logic_vector(3 downto 0);
           alu_out : out std_logic_vector(3 downto 0);
           ccr_out : out std_logic_vector(3 downto 0));
end alu;

architecture Behavioral of alu is


begin

process (controls)
begin 
case controls is
when "0000" => alu_out <= rega + regb;
	ccr_out <= "0000";
	if rega + regb < 0 then ccr_out(3) <= '1';
	elsif rega + regb = "0000" then ccr_out(2) <= '1';
	end if;
	--ccr_out(1) is always 0;
	if (('0'&rega) + ('0'&regb))>= "10000" then ccr_out(0) <= '1';
	end if;

when "0001" => alu_out <= rega - regb;
	ccr_out <= "0000";
	if rega + regb < 0 then ccr_out(3) <= '1';
	elsif rega + regb = "0000" then ccr_out(2) <= '1';
	end if;
	if (('0'&rega) - ('0'&regb)) >= "10000" then ccr_out(0) <= '1';
	end if;
	
when "0010" => alu_out <= rega AND regb;
	if (rega and regb) = "0000" then ccr_out <= "0100";
	elsif (rega and regb) < 0 then ccr_out <= "1000";
	else ccr_out <= "0000";
	end if;
	
when "0011" => alu_out <= rega OR regb;
	if (rega OR regb) = "0000" then ccr_out <= "0100";
	elsif (rega OR regb) < 0 then ccr_out <= "1000";
	else ccr_out <= "0000";
	end if;

when "0100" => alu_out <= not(rega);
	if not(rega) = "0000" then ccr_out <= "0100";
	elsif not(rega) < 0 then ccr_out  <= "1000";
	else ccr_out <= "0000";
	end if;

when "0101" => alu_out <= rega;
	if rega = "0000" then ccr_out <= "0100";
	elsif rega < 0 then ccr_out <= "1000";
	else ccr_out <= "0000";
	end if;

when others => alu_out <= "0000";
end case;
end process;

end Behavioral;
