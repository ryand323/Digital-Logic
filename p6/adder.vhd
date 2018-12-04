----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:33:59 02/28/2017 
-- Design Name: 
-- Module Name:    adder - Behavioral 
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

entity adder is
    Port ( A1 : in  STD_LOGIC;
           A0 : in  STD_LOGIC;
           B1 : in  STD_LOGIC;
           B0 : in  STD_LOGIC;
           S1 : out  STD_LOGIC;
           S0 : out  STD_LOGIC;
           Cout : out  STD_LOGIC);
end adder;

architecture Behavioral of adder is
signal TempC: std_logic;
begin

S0 <= A0 xor B0;
TempC <= (A0 and B0);
S1 <= (A1 xor B1 xor TempC);
Cout <= (A1 and TempC) OR (B1 and TempC) or (A1 and B1);
end Behavioral;

