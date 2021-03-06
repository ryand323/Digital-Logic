--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2.04i
--  \   \         Application : ISE
--  /   /         Filename : tb2.vhw
-- /___/   /\     Timestamp : Tue Apr 25 14:07:05 2017
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: tb2_tb_0
--Device: Xilinx
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE STD.TEXTIO.ALL;

ENTITY tb2_tb_0 IS
END tb2_tb_0;

ARCHITECTURE testbench_arch OF tb2_tb_0 IS
    FILE RESULTS: TEXT OPEN WRITE_MODE IS "results.txt";

    COMPONENT alu
        PORT (
            rega : In std_logic_vector (3 DownTo 0);
            regb : In std_logic_vector (3 DownTo 0);
            controls : In std_logic_vector (3 DownTo 0);
            alu_out : Out std_logic_vector (3 DownTo 0);
            ccr_out : Out std_logic_vector (3 DownTo 0)
        );
    END COMPONENT;

    SIGNAL rega : std_logic_vector (3 DownTo 0) := "0000";
    SIGNAL regb : std_logic_vector (3 DownTo 0) := "0000";
    SIGNAL controls : std_logic_vector (3 DownTo 0) := "0000";
    SIGNAL alu_out : std_logic_vector (3 DownTo 0) := "0000";
    SIGNAL ccr_out : std_logic_vector (3 DownTo 0) := "0000";

    BEGIN
        UUT : alu
        PORT MAP (
            rega => rega,
            regb => regb,
            controls => controls,
            alu_out => alu_out,
            ccr_out => ccr_out
        );

        PROCESS
            BEGIN
                -- -------------  Current Time:  100ns
                WAIT FOR 100 ns;
                rega <= "0001";
                -- -------------------------------------
                -- -------------  Current Time:  200ns
                WAIT FOR 100 ns;
                rega <= "0011";
                -- -------------------------------------
                -- -------------  Current Time:  300ns
                WAIT FOR 100 ns;
                rega <= "0111";
                -- -------------------------------------
                -- -------------  Current Time:  400ns
                WAIT FOR 100 ns;
                rega <= "1111";
                -- -------------------------------------
                -- -------------  Current Time:  500ns
                WAIT FOR 100 ns;
                regb <= "0001";
                -- -------------------------------------
                -- -------------  Current Time:  600ns
                WAIT FOR 100 ns;
                regb <= "0011";
                -- -------------------------------------
                -- -------------  Current Time:  700ns
                WAIT FOR 100 ns;
                regb <= "0111";
                -- -------------------------------------
                -- -------------  Current Time:  800ns
                WAIT FOR 100 ns;
                regb <= "1111";
                -- -------------------------------------
                -- -------------  Current Time:  900ns
                WAIT FOR 100 ns;
                regb <= "1110";
                -- -------------------------------------
                WAIT FOR 100 ns;

            END PROCESS;

    END testbench_arch;

