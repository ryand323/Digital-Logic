--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2.04i
--  \   \         Application : ISE
--  /   /         Filename : tbtestmoo.vhw
-- /___/   /\     Timestamp : Tue Apr 04 13:02:32 2017
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: tbtestmoo
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

ENTITY tbtestmoo IS
END tbtestmoo;

ARCHITECTURE testbench_arch OF tbtestmoo IS
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
                -- -------------  Current Time:  285ns
                WAIT FOR 285 ns;
                X <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  485ns
                WAIT FOR 200 ns;
                X <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  685ns
                WAIT FOR 200 ns;
                X <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  885ns
                WAIT FOR 200 ns;
                X <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  1285ns
                WAIT FOR 400 ns;
                X <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  1685ns
                WAIT FOR 400 ns;
                X <= '0';
                -- -------------------------------------
                WAIT FOR 1515 ns;

            END PROCESS;

    END testbench_arch;

