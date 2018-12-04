--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2.04i
--  \   \         Application : ISE
--  /   /         Filename : tbwf.vhw
-- /___/   /\     Timestamp : Tue Apr 04 12:57:09 2017
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: tbwf
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

ENTITY tbwf IS
END tbwf;

ARCHITECTURE testbench_arch OF tbwf IS
    FILE RESULTS: TEXT OPEN WRITE_MODE IS "results.txt";

    COMPONENT mealy
        PORT (
            CLK : In std_logic;
            X : In std_logic;
            Reset : Out std_logic;
            Y : Out std_logic
        );
    END COMPONENT;

    SIGNAL CLK : std_logic := '0';
    SIGNAL X : std_logic := '0';
    SIGNAL Reset : std_logic := '0';
    SIGNAL Y : std_logic := '0';

    constant PERIOD : time := 200 ns;
    constant DUTY_CYCLE : real := 0.5;
    constant OFFSET : time := 100 ns;

    BEGIN
        UUT : mealy
        PORT MAP (
            CLK => CLK,
            X => X,
            Reset => Reset,
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

        PROCESS    -- Process for CLK
            BEGIN
                WAIT FOR 5200 ns;

            END PROCESS;

            PROCESS    -- Process for Asynchronous Signals
                BEGIN
                    -- -------------  Current Time:  649ns
                    WAIT FOR 649 ns;
                    X <= '1';
                    -- -------------------------------------
                    -- -------------  Current Time:  1063ns
                    WAIT FOR 414 ns;
                    X <= '0';
                    -- -------------------------------------
                    -- -------------  Current Time:  1259ns
                    WAIT FOR 195 ns;
                    X <= '1';
                    -- -------------------------------------
                    -- -------------  Current Time:  1424ns
                    WAIT FOR 164 ns;
                    X <= '0';
                    -- -------------------------------------
                    -- -------------  Current Time:  1979ns
                    WAIT FOR 555 ns;
                    X <= '1';
                    -- -------------------------------------
                    -- -------------  Current Time:  2158ns
                    WAIT FOR 178 ns;
                    X <= '0';
                    -- -------------------------------------
                    -- -------------  Current Time:  2350ns
                    WAIT FOR 191 ns;
                    X <= '1';
                    -- -------------------------------------
                    -- -------------  Current Time:  2558ns
                    WAIT FOR 208 ns;
                    X <= '0';
                    -- -------------------------------------
                    -- -------------  Current Time:  2959ns
                    WAIT FOR 400 ns;
                    X <= '1';
                    -- -------------------------------------
                    -- -------------  Current Time:  3350ns
                    WAIT FOR 390 ns;
                    X <= '0';
                    -- -------------------------------------
                    WAIT FOR 1849 ns;

                END PROCESS;

        END testbench_arch;

