--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2.04i
--  \   \         Application : ISE
--  /   /         Filename : TB.vhw
-- /___/   /\     Timestamp : Tue Mar 07 12:48:51 2017
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: TB
--Device: Xilinx
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE STD.TEXTIO.ALL;

ENTITY TB IS
END TB;

ARCHITECTURE testbench_arch OF TB IS
    FILE RESULTS: TEXT OPEN WRITE_MODE IS "results.txt";

    COMPONENT comparator
        PORT (
            A3 : In std_logic;
            A2 : In std_logic;
            A1 : In std_logic;
            A0 : In std_logic;
            B3 : In std_logic;
            B2 : In std_logic;
            B1 : In std_logic;
            B0 : In std_logic;
            GRT : InOut std_logic_vector (3 DownTo 0);
            EQ : InOut std_logic_vector (3 DownTo 0);
            LT : InOut std_logic_vector (3 DownTo 0)
        );
    END COMPONENT;

    SIGNAL A3 : std_logic := '0';
    SIGNAL A2 : std_logic := '0';
    SIGNAL A1 : std_logic := '0';
    SIGNAL A0 : std_logic := '0';
    SIGNAL B3 : std_logic := '0';
    SIGNAL B2 : std_logic := '0';
    SIGNAL B1 : std_logic := '0';
    SIGNAL B0 : std_logic := '0';
    SIGNAL GRT : std_logic_vector (3 DownTo 0) := "ZZZZ";
    SIGNAL EQ : std_logic_vector (3 DownTo 0) := "ZZZZ";
    SIGNAL LT : std_logic_vector (3 DownTo 0) := "ZZZZ";

    BEGIN
        UUT : comparator
        PORT MAP (
            A3 => A3,
            A2 => A2,
            A1 => A1,
            A0 => A0,
            B3 => B3,
            B2 => B2,
            B1 => B1,
            B0 => B0,
            GRT => GRT,
            EQ => EQ,
            LT => LT
        );

        PROCESS
            BEGIN
                -- -------------  Current Time:  100ns
                WAIT FOR 100 ns;
                A0 <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  200ns
                WAIT FOR 100 ns;
                A0 <= '0';
                B0 <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  300ns
                WAIT FOR 100 ns;
                B0 <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  400ns
                WAIT FOR 100 ns;
                A3 <= '1';
                B3 <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  500ns
                WAIT FOR 100 ns;
                B2 <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  600ns
                WAIT FOR 100 ns;
                B3 <= '0';
                -- -------------------------------------
                WAIT FOR 400 ns;

            END PROCESS;

    END testbench_arch;

