----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:22:53 04/18/2017 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
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

entity ALU is
    Port ( a : in  STD_LOGIC_VECTOR (2 downto 0);
           b : in  STD_LOGIC_VECTOR (2 downto 0);
           switch : in  STD_LOGIC_VECTOR (1 downto 0);
           y : out  STD_LOGIC_VECTOR (2 downto 0));
end ALU;

architecture Behavioral of ALU is

signal x1, x2, a1, a2, a3, a4 : std_logic_vector(2 downto 0);

COMPONENT MUX2_1_3b
	PORT(
		I1 : IN std_logic_vector(2 downto 0);
		I0 : IN std_logic_vector(2 downto 0);
		SEL : IN std_logic;          
		Y : OUT std_logic_vector(2 downto 0)
		);
	END COMPONENT; 

begin
	a1 <= a+b;
	a2 <= a-b;
	a3 <= a and b;
	a4 <= a or b;

	m1: MUX2_1_3b PORT MAP(
		I1 => a2,
		I0 => a1,
		SEL => switch(0) ,
		Y => x1
	);

	m2: MUX2_1_3b PORT MAP(
		I1 => a4,
		I0 => a3,
		SEL => switch(0),
		Y => x2
	);

	m3: MUX2_1_3b PORT MAP(
		I1 => x2,
		I0 => x1,
		SEL => switch(1),
		Y => y
	);


end Behavioral;

