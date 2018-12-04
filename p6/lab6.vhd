----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:38:53 02/28/2017 
-- Design Name: 
-- Module Name:    lab6 - Behavioral 
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

entity lab6 is
    Port(	x: in std_logic_vector(1 downto 0);
				y: in std_logic_vector(1 downto 0);
				cin: in std_logic;
				sum: out std_logic_vector(1 downto 0);
				cout: out std_logic
);
end lab6;

begin
architecture Behavioral of lab6 is

component add_1_bit
port (
x: in std_logic;
y: in std_logic;
cin: in std_logic;
sum: out std_logic;
cout: out std_logic
);
end component;

signal i_carry: std_logic_vector(2 downto 0);
begin
cell_1: add_1_bit
port map (x(0), y(0), cin, sum(0), i_carry(0));
cell_2: add_1_bit
port map (x(1), y(1), i_carry(0), sum(1), i_carry(1));




end Behavioral;

