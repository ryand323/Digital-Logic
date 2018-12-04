----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:25:20 04/18/2017 
-- Design Name: 
-- Module Name:    MUX2_1_3b - Behavioral 
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

entity MUX2_1_3b is
    Port ( I1 : in  STD_LOGIC_VECTOR (2 downto 0);
           I0 : in  STD_LOGIC_VECTOR (2 downto 0);
           SEL : in  STD_LOGIC;
           Y : out  STD_LOGIC_VECTOR (2 downto 0));
end MUX2_1_3b;

architecture Behavioral of MUX2_1_3b is

begin

Y <= I1 when SEL='1' else I0;

end Behavioral;

