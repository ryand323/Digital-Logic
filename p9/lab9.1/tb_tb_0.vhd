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
-- /___/   /\     Timestamp : Tue Mar 28 13:04:30 2017
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: tb_tb_0
--Device: Xilinx
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE STD.TEXTIO.ALL;

ENTITY tb_tb_0 IS
END tb_tb_0;

ARCHITECTURE testbench_arch OF tb_tb_0 IS
    FILE RESULTS: TEXT OPEN WRITE_MODE IS "results.txt";

    COMPONENT ccounter
        PORT (
            clk : In std_logic;
            Reset : In std_logic;
            updown : In std_logic;
            count : InOut std_logic_vector (2 DownTo 0)
        );
    END COMPONENT;

    SIGNAL clk : std_logic := '0';
    SIGNAL Reset : std_logic := '0';
    SIGNAL updown : std_logic := '0';
    SIGNAL count : std_logic_vector (2 DownTo 0) := "ZZZ";

    BEGIN
        UUT : ccounter
        PORT MAP (
            clk => clk,
            Reset => Reset,
            updown => updown,
            count => count
        );

        PROCESS
            BEGIN
                -- -------------  Current Time:  200ns
                WAIT FOR 200 ns;
                updown <= '1';
                -- -------------------------------------
                WAIT FOR 800 ns;

            END PROCESS;

    END testbench_arch;

