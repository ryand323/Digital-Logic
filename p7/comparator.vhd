----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:09:05 03/07/2017 
-- Design Name: 
-- Module Name:    comparator - Behavioral 
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

entity comparator is
    Port ( A3 : in  STD_LOGIC;
           A2 : in  STD_LOGIC;
           A1 : in  STD_LOGIC;
           A0 : in  STD_LOGIC;
           B3 : in  STD_LOGIC;
           B2 : in  STD_LOGIC;
           B1 : in  STD_LOGIC;
           B0 : in  STD_LOGIC;
           GRT : inout  STD_LOGIC_VECTOR(3 downto 0);
           EQ : inout  STD_LOGIC_VECTOR(3 downto 0);
           LT : inout  STD_LOGIC_VECTOR(3 downto 0));
end comparator;

architecture Behavioral of comparator is

begin
--first comparator
LT(3) <= (NOT A3) AND B3;
EQ(3) <= (A3 AND B3) OR ((NOT A3)AND(NOT B3));
GRT(3) <= A3 AND (NOT B3);

--second comparator
LT(2) <= LT(3) OR (EQ(3) AND (NOT A2) AND B2);
GRT(2) <= GRT(3) OR (EQ(3) AND (NOT B2) AND A2);
EQ(2) <= EQ(3) AND ((A2 AND B2) OR ((NOT A2) AND (NOT B2)));
--third comparator
LT(1) <= LT(2) OR (EQ(2) AND (NOT A1) AND B1);
GRT(1) <= GRT(2) OR (EQ(2) AND (NOT B1) AND A1);
EQ(1) <= EQ(2) AND ((A1 AND B1) OR ((NOT A1) AND (NOT B1)));
--fourth comparator
LT(0) <= LT(1) OR (EQ(1) AND (NOT A0) AND B0);
GRT(0) <= GRT(1) OR (EQ(1) AND (NOT B0) AND A0);
EQ(0) <= EQ(1) AND ((A0 AND B0) OR ((NOT A0) AND (NOT B0)));
end Behavioral;

