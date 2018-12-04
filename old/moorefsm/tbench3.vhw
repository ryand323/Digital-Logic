--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2.04i
--  \   \         Application : ISE
--  /   /         Filename : tbench3.vhw
-- /___/   /\     Timestamp : Tue Apr 04 13:20:53 2017
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: tbench3
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

ENTITY tbench3 IS
END tbench3;

ARCHITECTURE testbench_arch OF tbench3 IS
    FILE RESULTS: TEXT OPEN WRITE_MODE IS "results.txt";

    COMPONENT schematic
        PORT (
            CLK : In std_logic;
            Reset : In std_logic;
            X : In std_logic;
            Y : Out std_logic
        );
    END COMPONENT;

    SIGNAL CLK : std_logic := '0';
    SIGNAL Reset : std_logic := '0';
    SIGNAL X : std_logic := '0';
    SIGNAL Y : std_logic := '0';

    constant PERIOD : time := 200 ns;
    constant DUTY_CYCLE : real := 0.5;
    constant OFFSET : time := 100 ns;

    BEGIN
        UUT : schematic
        PORT MAP (
            CLK => CLK,
            Reset => Reset,
            X => X,
            Y => Y
        );

        PROCESS    -- clock process for CLK
        BEGIN
            WAIT for OFFSET;
            CLOCK_LOOP : LOOP
                CLK <= '0';
                WAIT FOR (PERIOD - (PERIOD * DUTY_CYCLE));
                CLK <= '1';
                WAIT FOR (PERIOD * DUTY_CYCLE);
            END LOOP CLOCK_LOOP;
        END PROCESS;

        PROCESS    -- Process for Asynchronous Signals
            BEGIN
                -- -------------  Current Time:  729ns
                WAIT FOR 729 ns;
                X <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  1143ns
                WAIT FOR 414 ns;
                X <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  1367ns
                WAIT FOR 224 ns;
                X <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  1557ns
                WAIT FOR 189 ns;
                X <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  2157ns
                WAIT FOR 600 ns;
                X <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  2349ns
                WAIT FOR 191 ns;
                X <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  2749ns
                WAIT FOR 400 ns;
                X <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  3122ns
                WAIT FOR 373 ns;
                X <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  3165ns
                WAIT FOR 42 ns;
                Reset <= '1';
                -- -------------------------------------
                WAIT FOR 534 ns;

            END PROCESS;

    END testbench_arch;

