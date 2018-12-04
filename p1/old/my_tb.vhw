--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2.04i
--  \   \         Application : ISE
--  /   /         Filename : my_tb.vhw
-- /___/   /\     Timestamp : Tue Jan 17 12:02:58 2017
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: my_tb
--Device: Xilinx
--

library UNISIM;
use UNISIM.Vcomponents.ALL;
library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE STD.TEXTIO.ALL;

ENTITY my_tb IS
END my_tb;

ARCHITECTURE testbench_arch OF my_tb IS
    COMPONENT my_schematic
        PORT (
            my_in : In std_logic;
            my_out : Out std_logic
        );
    END COMPONENT;

    SIGNAL my_in : std_logic := '0';
    SIGNAL my_out : std_logic := '0';

    BEGIN
        UUT : my_schematic
        PORT MAP (
            my_in => my_in,
            my_out => my_out
        );

        PROCESS
            BEGIN
                -- -------------  Current Time:  200ns
                WAIT FOR 200 ns;
                my_in <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  300ns
                WAIT FOR 100 ns;
                my_in <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  600ns
                WAIT FOR 300 ns;
                my_in <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  900ns
                WAIT FOR 300 ns;
                my_in <= '0';
                -- -------------------------------------
                WAIT FOR 100 ns;

            END PROCESS;

    END testbench_arch;

