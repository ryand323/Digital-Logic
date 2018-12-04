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
-- /___/   /\     Timestamp : Tue Feb 07 12:13:40 2017
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
            A_0 : In std_logic;
            A_1 : In std_logic;
            B_0 : In std_logic;
            B_1 : In std_logic;
            C_in : In std_logic;
            C_Out : Out std_logic;
            S_0 : Out std_logic;
            S_1 : Out std_logic
        );
    END COMPONENT;

    SIGNAL A_0 : std_logic := '0';
    SIGNAL A_1 : std_logic := '0';
    SIGNAL B_0 : std_logic := '0';
    SIGNAL B_1 : std_logic := '0';
    SIGNAL C_in : std_logic := '0';
    SIGNAL C_Out : std_logic := '0';
    SIGNAL S_0 : std_logic := '0';
    SIGNAL S_1 : std_logic := '0';

    BEGIN
        UUT : schem
        PORT MAP (
            A_0 => A_0,
            A_1 => A_1,
            B_0 => B_0,
            B_1 => B_1,
            C_in => C_in,
            C_Out => C_Out,
            S_0 => S_0,
            S_1 => S_1
        );

        PROCESS
            BEGIN
                -- -------------  Current Time:  200ns
                WAIT FOR 200 ns;
                A_1 <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  300ns
                WAIT FOR 100 ns;
                B_1 <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  400ns
                WAIT FOR 100 ns;
                B_0 <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  500ns
                WAIT FOR 100 ns;
                A_0 <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  700ns
                WAIT FOR 200 ns;
                A_0 <= '0';
                A_1 <= '0';
                -- -------------------------------------
                WAIT FOR 300 ns;

            END PROCESS;

    END testbench_arch;

