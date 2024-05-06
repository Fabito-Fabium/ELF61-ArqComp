-- Copyright (C) 2023  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "05/05/2024 19:48:39"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          toplevel
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY toplevel_vhd_vec_tst IS
END toplevel_vhd_vec_tst;
ARCHITECTURE toplevel_arch OF toplevel_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK_H_HW : STD_LOGIC;
SIGNAL HEX0_HW : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX1_HW : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX2_HW : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX3_HW : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX4_HW : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX5_HW : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL KEY1_HW : STD_LOGIC;
SIGNAL RST_HW : STD_LOGIC;
SIGNAL SWITCH_HW : STD_LOGIC_VECTOR(9 DOWNTO 8);
COMPONENT toplevel
	PORT (
	CLK_H_HW : IN STD_LOGIC;
	HEX0_HW : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX1_HW : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX2_HW : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX3_HW : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX4_HW : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX5_HW : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	KEY1_HW : IN STD_LOGIC;
	RST_HW : IN STD_LOGIC;
	SWITCH_HW : IN STD_LOGIC_VECTOR(9 DOWNTO 8)
	);
END COMPONENT;
BEGIN
	i1 : toplevel
	PORT MAP (
-- list connections between master ports and signals
	CLK_H_HW => CLK_H_HW,
	HEX0_HW => HEX0_HW,
	HEX1_HW => HEX1_HW,
	HEX2_HW => HEX2_HW,
	HEX3_HW => HEX3_HW,
	HEX4_HW => HEX4_HW,
	HEX5_HW => HEX5_HW,
	KEY1_HW => KEY1_HW,
	RST_HW => RST_HW,
	SWITCH_HW => SWITCH_HW
	);

-- KEY1_HW
t_prcs_KEY1_HW: PROCESS
BEGIN
	KEY1_HW <= '0';
WAIT;
END PROCESS t_prcs_KEY1_HW;

-- RST_HW
t_prcs_RST_HW: PROCESS
BEGIN
	RST_HW <= '0';
WAIT;
END PROCESS t_prcs_RST_HW;

-- CLK_H_HW
t_prcs_CLK_H_HW: PROCESS
BEGIN
LOOP
	CLK_H_HW <= '0';
	WAIT FOR 5000 ps;
	CLK_H_HW <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK_H_HW;

-- SWITCH_HW[8]
t_prcs_SWITCH_HW_8: PROCESS
BEGIN
	SWITCH_HW(8) <= '0';
WAIT;
END PROCESS t_prcs_SWITCH_HW_8;

-- SWITCH_HW[9]
t_prcs_SWITCH_HW_9: PROCESS
BEGIN
	SWITCH_HW(9) <= '0';
WAIT;
END PROCESS t_prcs_SWITCH_HW_9;
END toplevel_arch;
