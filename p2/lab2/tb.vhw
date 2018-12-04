--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2.04i
--  \   \         Application : ISE
--  /   /         Filename : tb.vhw
-- /___/   /\     Timestamp : Tue Jan 31 12:33:41 2017
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: tb
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

ENTITY tb IS
END tb;

ARCHITECTURE testbench_arch OF tb IS
    FILE RESULTS: TEXT OPEN WRITE_MODE IS "results.txt";

    COMPONENT schem
        PORT (
            A0 : In std_logic;
            A1 : In std_logic;
            B0 : In std_logic;
            B1 : In std_logic;
            A_big : Out std_logic;
            B_big : Out std_logic;
            Equal : Out std_logic
        );
    END COMPONENT;

    SIGNAL A0 : std_logic := '0';
    SIGNAL A1 : std_logic := '0';
    SIGNAL B0 : std_logic := '0';
    SIGNAL B1 : std_logic := '0';
    SIGNAL A_big : std_logic := '0';
    SIGNAL B_big : std_logic := '0';
    SIGNAL Equal : std_logic := '0';

    BEGIN
        UUT : schem
        PORT MAP (
            A0 => A0,
            A1 => A1,
            B0 => B0,
            B1 => B1,
            A_big => A_big,
            B_big => B_big,
            Equal => Equal
        );

        PROCESS
            BEGIN
                -- -------------  Current Time:  300ns
                WAIT FOR 300 ns;
                A0 <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  400ns
                WAIT FOR 100 ns;
                A0 <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  600ns
                WAIT FOR 200 ns;
                B0 <= '1';
                B1 <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  700ns
                WAIT FOR 100 ns;
                B0 <= '0';
                B1 <= '0';
                -- -------------------------------------
                WAIT FOR 300 ns;

            END PROCESS;

    END testbench_arch;

