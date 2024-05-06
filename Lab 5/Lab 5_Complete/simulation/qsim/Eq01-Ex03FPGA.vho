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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 23.1std.0 Build 991 11/28/2023 SC Lite Edition"

-- DATE "05/05/2024 19:48:40"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	toplevel IS
    PORT (
	CLK_H_HW : IN std_logic;
	RST_HW : IN std_logic;
	KEY1_HW : IN std_logic;
	SWITCH_HW : IN std_logic_vector(9 DOWNTO 8);
	HEX0_HW : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX1_HW : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX2_HW : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX3_HW : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX4_HW : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX5_HW : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END toplevel;

-- Design Ports Information
-- KEY1_HW	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0_HW[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0_HW[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0_HW[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0_HW[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0_HW[4]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0_HW[5]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0_HW[6]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1_HW[0]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1_HW[1]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1_HW[2]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1_HW[3]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1_HW[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1_HW[5]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1_HW[6]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2_HW[0]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2_HW[1]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2_HW[2]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2_HW[3]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2_HW[4]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2_HW[5]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2_HW[6]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3_HW[0]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3_HW[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3_HW[2]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3_HW[3]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3_HW[4]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3_HW[5]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3_HW[6]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4_HW[0]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4_HW[1]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4_HW[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4_HW[3]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4_HW[4]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4_HW[5]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4_HW[6]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5_HW[0]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5_HW[1]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5_HW[2]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5_HW[3]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5_HW[4]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5_HW[5]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5_HW[6]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK_H_HW	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST_HW	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SWITCH_HW[9]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SWITCH_HW[8]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF toplevel IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK_H_HW : std_logic;
SIGNAL ww_RST_HW : std_logic;
SIGNAL ww_KEY1_HW : std_logic;
SIGNAL ww_SWITCH_HW : std_logic_vector(9 DOWNTO 8);
SIGNAL ww_HEX0_HW : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1_HW : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2_HW : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3_HW : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4_HW : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5_HW : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \RAMeDISP|clk_div~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK_H_HW~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \KEY1_HW~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \HEX0_HW[0]~output_o\ : std_logic;
SIGNAL \HEX0_HW[1]~output_o\ : std_logic;
SIGNAL \HEX0_HW[2]~output_o\ : std_logic;
SIGNAL \HEX0_HW[3]~output_o\ : std_logic;
SIGNAL \HEX0_HW[4]~output_o\ : std_logic;
SIGNAL \HEX0_HW[5]~output_o\ : std_logic;
SIGNAL \HEX0_HW[6]~output_o\ : std_logic;
SIGNAL \HEX1_HW[0]~output_o\ : std_logic;
SIGNAL \HEX1_HW[1]~output_o\ : std_logic;
SIGNAL \HEX1_HW[2]~output_o\ : std_logic;
SIGNAL \HEX1_HW[3]~output_o\ : std_logic;
SIGNAL \HEX1_HW[4]~output_o\ : std_logic;
SIGNAL \HEX1_HW[5]~output_o\ : std_logic;
SIGNAL \HEX1_HW[6]~output_o\ : std_logic;
SIGNAL \HEX2_HW[0]~output_o\ : std_logic;
SIGNAL \HEX2_HW[1]~output_o\ : std_logic;
SIGNAL \HEX2_HW[2]~output_o\ : std_logic;
SIGNAL \HEX2_HW[3]~output_o\ : std_logic;
SIGNAL \HEX2_HW[4]~output_o\ : std_logic;
SIGNAL \HEX2_HW[5]~output_o\ : std_logic;
SIGNAL \HEX2_HW[6]~output_o\ : std_logic;
SIGNAL \HEX3_HW[0]~output_o\ : std_logic;
SIGNAL \HEX3_HW[1]~output_o\ : std_logic;
SIGNAL \HEX3_HW[2]~output_o\ : std_logic;
SIGNAL \HEX3_HW[3]~output_o\ : std_logic;
SIGNAL \HEX3_HW[4]~output_o\ : std_logic;
SIGNAL \HEX3_HW[5]~output_o\ : std_logic;
SIGNAL \HEX3_HW[6]~output_o\ : std_logic;
SIGNAL \HEX4_HW[0]~output_o\ : std_logic;
SIGNAL \HEX4_HW[1]~output_o\ : std_logic;
SIGNAL \HEX4_HW[2]~output_o\ : std_logic;
SIGNAL \HEX4_HW[3]~output_o\ : std_logic;
SIGNAL \HEX4_HW[4]~output_o\ : std_logic;
SIGNAL \HEX4_HW[5]~output_o\ : std_logic;
SIGNAL \HEX4_HW[6]~output_o\ : std_logic;
SIGNAL \HEX5_HW[0]~output_o\ : std_logic;
SIGNAL \HEX5_HW[1]~output_o\ : std_logic;
SIGNAL \HEX5_HW[2]~output_o\ : std_logic;
SIGNAL \HEX5_HW[3]~output_o\ : std_logic;
SIGNAL \HEX5_HW[4]~output_o\ : std_logic;
SIGNAL \HEX5_HW[5]~output_o\ : std_logic;
SIGNAL \HEX5_HW[6]~output_o\ : std_logic;
SIGNAL \CLK_H_HW~input_o\ : std_logic;
SIGNAL \CLK_H_HW~inputclkctrl_outclk\ : std_logic;
SIGNAL \RAMeDISP|contador[2]~25_combout\ : std_logic;
SIGNAL \RAMeDISP|Add1~0_combout\ : std_logic;
SIGNAL \RAMeDISP|contador~77_combout\ : std_logic;
SIGNAL \RST_HW~input_o\ : std_logic;
SIGNAL \SWITCH_HW[9]~input_o\ : std_logic;
SIGNAL \SWITCH_HW[8]~input_o\ : std_logic;
SIGNAL \RAMeDISP|contador[1]~76_combout\ : std_logic;
SIGNAL \RAMeDISP|Add1~1\ : std_logic;
SIGNAL \RAMeDISP|Add1~2_combout\ : std_logic;
SIGNAL \RAMeDISP|contador~75_combout\ : std_logic;
SIGNAL \RAMeDISP|Add1~3\ : std_logic;
SIGNAL \RAMeDISP|Add1~4_combout\ : std_logic;
SIGNAL \RAMeDISP|contador[2]~26\ : std_logic;
SIGNAL \RAMeDISP|contador[3]~27_combout\ : std_logic;
SIGNAL \RAMeDISP|Add1~5\ : std_logic;
SIGNAL \RAMeDISP|Add1~6_combout\ : std_logic;
SIGNAL \RAMeDISP|contador[3]~28\ : std_logic;
SIGNAL \RAMeDISP|contador[4]~29_combout\ : std_logic;
SIGNAL \RAMeDISP|Add1~7\ : std_logic;
SIGNAL \RAMeDISP|Add1~8_combout\ : std_logic;
SIGNAL \RAMeDISP|contador[4]~30\ : std_logic;
SIGNAL \RAMeDISP|contador[5]~31_combout\ : std_logic;
SIGNAL \RAMeDISP|Add1~9\ : std_logic;
SIGNAL \RAMeDISP|Add1~10_combout\ : std_logic;
SIGNAL \RAMeDISP|contador[5]~32\ : std_logic;
SIGNAL \RAMeDISP|contador[6]~33_combout\ : std_logic;
SIGNAL \RAMeDISP|Add1~11\ : std_logic;
SIGNAL \RAMeDISP|Add1~12_combout\ : std_logic;
SIGNAL \RAMeDISP|contador[6]~34\ : std_logic;
SIGNAL \RAMeDISP|contador[7]~35_combout\ : std_logic;
SIGNAL \RAMeDISP|Add1~13\ : std_logic;
SIGNAL \RAMeDISP|Add1~14_combout\ : std_logic;
SIGNAL \RAMeDISP|contador[7]~36\ : std_logic;
SIGNAL \RAMeDISP|contador[8]~37_combout\ : std_logic;
SIGNAL \RAMeDISP|Add1~15\ : std_logic;
SIGNAL \RAMeDISP|Add1~16_combout\ : std_logic;
SIGNAL \RAMeDISP|contador[8]~38\ : std_logic;
SIGNAL \RAMeDISP|contador[9]~39_combout\ : std_logic;
SIGNAL \RAMeDISP|Add1~17\ : std_logic;
SIGNAL \RAMeDISP|Add1~18_combout\ : std_logic;
SIGNAL \RAMeDISP|contador[9]~40\ : std_logic;
SIGNAL \RAMeDISP|contador[10]~41_combout\ : std_logic;
SIGNAL \RAMeDISP|Add1~19\ : std_logic;
SIGNAL \RAMeDISP|Add1~20_combout\ : std_logic;
SIGNAL \RAMeDISP|contador[10]~42\ : std_logic;
SIGNAL \RAMeDISP|contador[11]~43_combout\ : std_logic;
SIGNAL \RAMeDISP|Add1~21\ : std_logic;
SIGNAL \RAMeDISP|Add1~22_combout\ : std_logic;
SIGNAL \RAMeDISP|contador[11]~44\ : std_logic;
SIGNAL \RAMeDISP|contador[12]~45_combout\ : std_logic;
SIGNAL \RAMeDISP|Add1~23\ : std_logic;
SIGNAL \RAMeDISP|Add1~24_combout\ : std_logic;
SIGNAL \RAMeDISP|contador[12]~46\ : std_logic;
SIGNAL \RAMeDISP|contador[13]~47_combout\ : std_logic;
SIGNAL \RAMeDISP|Add1~25\ : std_logic;
SIGNAL \RAMeDISP|Add1~26_combout\ : std_logic;
SIGNAL \RAMeDISP|contador[13]~48\ : std_logic;
SIGNAL \RAMeDISP|contador[14]~49_combout\ : std_logic;
SIGNAL \RAMeDISP|Add1~27\ : std_logic;
SIGNAL \RAMeDISP|Add1~28_combout\ : std_logic;
SIGNAL \RAMeDISP|contador[14]~50\ : std_logic;
SIGNAL \RAMeDISP|contador[15]~51_combout\ : std_logic;
SIGNAL \RAMeDISP|Add1~29\ : std_logic;
SIGNAL \RAMeDISP|Add1~30_combout\ : std_logic;
SIGNAL \RAMeDISP|contador[15]~52\ : std_logic;
SIGNAL \RAMeDISP|contador[16]~53_combout\ : std_logic;
SIGNAL \RAMeDISP|Add1~31\ : std_logic;
SIGNAL \RAMeDISP|Add1~32_combout\ : std_logic;
SIGNAL \RAMeDISP|contador[16]~54\ : std_logic;
SIGNAL \RAMeDISP|contador[17]~55_combout\ : std_logic;
SIGNAL \RAMeDISP|Add1~33\ : std_logic;
SIGNAL \RAMeDISP|Add1~34_combout\ : std_logic;
SIGNAL \RAMeDISP|contador[17]~56\ : std_logic;
SIGNAL \RAMeDISP|contador[18]~57_combout\ : std_logic;
SIGNAL \RAMeDISP|Add1~35\ : std_logic;
SIGNAL \RAMeDISP|Add1~36_combout\ : std_logic;
SIGNAL \RAMeDISP|contador[18]~58\ : std_logic;
SIGNAL \RAMeDISP|contador[19]~59_combout\ : std_logic;
SIGNAL \RAMeDISP|Add1~37\ : std_logic;
SIGNAL \RAMeDISP|Add1~38_combout\ : std_logic;
SIGNAL \RAMeDISP|contador[19]~60\ : std_logic;
SIGNAL \RAMeDISP|contador[20]~61_combout\ : std_logic;
SIGNAL \RAMeDISP|Add1~39\ : std_logic;
SIGNAL \RAMeDISP|Add1~40_combout\ : std_logic;
SIGNAL \RAMeDISP|contador[20]~62\ : std_logic;
SIGNAL \RAMeDISP|contador[21]~63_combout\ : std_logic;
SIGNAL \RAMeDISP|Add1~41\ : std_logic;
SIGNAL \RAMeDISP|Add1~42_combout\ : std_logic;
SIGNAL \RAMeDISP|contador[21]~64\ : std_logic;
SIGNAL \RAMeDISP|contador[22]~65_combout\ : std_logic;
SIGNAL \RAMeDISP|Add1~43\ : std_logic;
SIGNAL \RAMeDISP|Add1~44_combout\ : std_logic;
SIGNAL \RAMeDISP|contador[22]~66\ : std_logic;
SIGNAL \RAMeDISP|contador[23]~67_combout\ : std_logic;
SIGNAL \RAMeDISP|Add1~45\ : std_logic;
SIGNAL \RAMeDISP|Add1~46_combout\ : std_logic;
SIGNAL \RAMeDISP|contador[23]~68\ : std_logic;
SIGNAL \RAMeDISP|contador[24]~69_combout\ : std_logic;
SIGNAL \RAMeDISP|Add1~47\ : std_logic;
SIGNAL \RAMeDISP|Add1~48_combout\ : std_logic;
SIGNAL \RAMeDISP|contador[24]~70\ : std_logic;
SIGNAL \RAMeDISP|contador[25]~71_combout\ : std_logic;
SIGNAL \RAMeDISP|Add1~49\ : std_logic;
SIGNAL \RAMeDISP|Add1~50_combout\ : std_logic;
SIGNAL \RAMeDISP|contador[25]~72\ : std_logic;
SIGNAL \RAMeDISP|contador[26]~73_combout\ : std_logic;
SIGNAL \RAMeDISP|Add1~51\ : std_logic;
SIGNAL \RAMeDISP|Add1~52_combout\ : std_logic;
SIGNAL \RAMeDISP|LessThan0~3_combout\ : std_logic;
SIGNAL \RAMeDISP|LessThan0~2_combout\ : std_logic;
SIGNAL \RAMeDISP|LessThan0~4_combout\ : std_logic;
SIGNAL \RAMeDISP|LessThan0~0_combout\ : std_logic;
SIGNAL \RAMeDISP|LessThan0~1_combout\ : std_logic;
SIGNAL \RAMeDISP|LessThan0~5_combout\ : std_logic;
SIGNAL \RAMeDISP|LessThan0~6_combout\ : std_logic;
SIGNAL \RAMeDISP|clk_div~q\ : std_logic;
SIGNAL \RAMeDISP|clk_div~clkctrl_outclk\ : std_logic;
SIGNAL \ROMeCOUNT|pc|count|rgst[0]~7_combout\ : std_logic;
SIGNAL \ROMeCOUNT|pc|count|rgst[2]~12\ : std_logic;
SIGNAL \ROMeCOUNT|pc|count|rgst[3]~13_combout\ : std_logic;
SIGNAL \ROMeCOUNT|feDe|estado~0_combout\ : std_logic;
SIGNAL \ROMeCOUNT|feDe|estado~q\ : std_logic;
SIGNAL \ROMeCOUNT|pc|count|rgst[3]~14\ : std_logic;
SIGNAL \ROMeCOUNT|pc|count|rgst[4]~15_combout\ : std_logic;
SIGNAL \ROMeCOUNT|pc|count|rgst[4]~16\ : std_logic;
SIGNAL \ROMeCOUNT|pc|count|rgst[5]~17_combout\ : std_logic;
SIGNAL \ROMeCOUNT|r0m|Mux0~0_combout\ : std_logic;
SIGNAL \ROMeCOUNT|pc|count|rgst[5]~18\ : std_logic;
SIGNAL \ROMeCOUNT|pc|count|rgst[6]~20_combout\ : std_logic;
SIGNAL \ROMeCOUNT|r0m|Mux0~1_combout\ : std_logic;
SIGNAL \ROMeCOUNT|pc|count|rgst[11]~19_combout\ : std_logic;
SIGNAL \ROMeCOUNT|pc|count|rgst[0]~8\ : std_logic;
SIGNAL \ROMeCOUNT|pc|count|rgst[1]~9_combout\ : std_logic;
SIGNAL \ROMeCOUNT|pc|count|rgst[1]~10\ : std_logic;
SIGNAL \ROMeCOUNT|pc|count|rgst[2]~11_combout\ : std_logic;
SIGNAL \ROMeCOUNT|r0m|Mux1~0_combout\ : std_logic;
SIGNAL \ROMeCOUNT|r0m|Mux1~1_combout\ : std_logic;
SIGNAL \RAMeDISP|add_reg[0]~feeder_combout\ : std_logic;
SIGNAL \RAMeDISP|add_reg[6]~feeder_combout\ : std_logic;
SIGNAL \RAMeDISP|H1|Display[1]~0_combout\ : std_logic;
SIGNAL \RAMeDISP|H1|Equal3~0_combout\ : std_logic;
SIGNAL \RAMeDISP|H1|Equal3~1_combout\ : std_logic;
SIGNAL \RAMeDISP|Mux6~1_combout\ : std_logic;
SIGNAL \RAMeDISP|Mux6~0_combout\ : std_logic;
SIGNAL \RAMeDISP|Mux6~2_combout\ : std_logic;
SIGNAL \RAMeDISP|Mux6~3_combout\ : std_logic;
SIGNAL \RAMeDISP|conteudo_reg[5]~feeder_combout\ : std_logic;
SIGNAL \RAMeDISP|Mux6~4_combout\ : std_logic;
SIGNAL \RAMeDISP|Mux5~3_combout\ : std_logic;
SIGNAL \RAMeDISP|Mux5~2_combout\ : std_logic;
SIGNAL \RAMeDISP|Mux5~4_combout\ : std_logic;
SIGNAL \RAMeDISP|Mux5~1_combout\ : std_logic;
SIGNAL \RAMeDISP|Mux5~5_combout\ : std_logic;
SIGNAL \RAMeDISP|conteudo_reg[0]~feeder_combout\ : std_logic;
SIGNAL \RAMeDISP|Mux5~0_combout\ : std_logic;
SIGNAL \RAMeDISP|Mux5~6_combout\ : std_logic;
SIGNAL \RAMeDISP|Mux5~7_combout\ : std_logic;
SIGNAL \RAMeDISP|Mux4~0_combout\ : std_logic;
SIGNAL \RAMeDISP|Mux4~1_combout\ : std_logic;
SIGNAL \RAMeDISP|Mux4~3_combout\ : std_logic;
SIGNAL \RAMeDISP|Mux4~2_combout\ : std_logic;
SIGNAL \RAMeDISP|Mux4~4_combout\ : std_logic;
SIGNAL \RAMeDISP|H3|Display[0]~0_combout\ : std_logic;
SIGNAL \RAMeDISP|H3|Display[1]~1_combout\ : std_logic;
SIGNAL \RAMeDISP|H3|Display[2]~2_combout\ : std_logic;
SIGNAL \RAMeDISP|H3|Display[3]~3_combout\ : std_logic;
SIGNAL \RAMeDISP|H3|Display[4]~4_combout\ : std_logic;
SIGNAL \RAMeDISP|H3|Display[5]~5_combout\ : std_logic;
SIGNAL \RAMeDISP|H3|Display[6]~6_combout\ : std_logic;
SIGNAL \RAMeDISP|H4|Display[0]~22_combout\ : std_logic;
SIGNAL \RAMeDISP|H4|Display[0]~23_combout\ : std_logic;
SIGNAL \RAMeDISP|Mux0~0_combout\ : std_logic;
SIGNAL \RAMeDISP|Mux2~0_combout\ : std_logic;
SIGNAL \RAMeDISP|Mux2~1_combout\ : std_logic;
SIGNAL \RAMeDISP|Mux1~0_combout\ : std_logic;
SIGNAL \RAMeDISP|Mux3~0_combout\ : std_logic;
SIGNAL \RAMeDISP|Mux3~2_combout\ : std_logic;
SIGNAL \RAMeDISP|Mux3~1_combout\ : std_logic;
SIGNAL \RAMeDISP|Mux3~3_combout\ : std_logic;
SIGNAL \RAMeDISP|H4|Display[1]~16_combout\ : std_logic;
SIGNAL \RAMeDISP|H4|Display[2]~4_combout\ : std_logic;
SIGNAL \RAMeDISP|H4|Display[2]~21_combout\ : std_logic;
SIGNAL \RAMeDISP|H4|Display[3]~17_combout\ : std_logic;
SIGNAL \RAMeDISP|H4|Display[4]~18_combout\ : std_logic;
SIGNAL \RAMeDISP|H4|Display[5]~19_combout\ : std_logic;
SIGNAL \RAMeDISP|H4|Display[6]~20_combout\ : std_logic;
SIGNAL \ROMeCOUNT|pc|count|rgst\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ROMeCOUNT|r0m|dado\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \RAMeDISP|contador\ : std_logic_vector(26 DOWNTO 0);
SIGNAL \RAMeDISP|add_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \RAMeDISP|conteudo_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \RAMeDISP|H1|ALT_INV_Equal3~1_combout\ : std_logic;
SIGNAL \RAMeDISP|ALT_INV_add_reg\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ALT_INV_SWITCH_HW[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_SWITCH_HW[9]~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLK_H_HW <= CLK_H_HW;
ww_RST_HW <= RST_HW;
ww_KEY1_HW <= KEY1_HW;
ww_SWITCH_HW <= SWITCH_HW;
HEX0_HW <= ww_HEX0_HW;
HEX1_HW <= ww_HEX1_HW;
HEX2_HW <= ww_HEX2_HW;
HEX3_HW <= ww_HEX3_HW;
HEX4_HW <= ww_HEX4_HW;
HEX5_HW <= ww_HEX5_HW;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\RAMeDISP|clk_div~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RAMeDISP|clk_div~q\);

\CLK_H_HW~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK_H_HW~input_o\);
\RAMeDISP|H1|ALT_INV_Equal3~1_combout\ <= NOT \RAMeDISP|H1|Equal3~1_combout\;
\RAMeDISP|ALT_INV_add_reg\(0) <= NOT \RAMeDISP|add_reg\(0);
\ALT_INV_SWITCH_HW[8]~input_o\ <= NOT \SWITCH_HW[8]~input_o\;
\ALT_INV_SWITCH_HW[9]~input_o\ <= NOT \SWITCH_HW[9]~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y42_N12
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X58_Y54_N16
\HEX0_HW[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAMeDISP|add_reg\(0),
	devoe => ww_devoe,
	o => \HEX0_HW[0]~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\HEX0_HW[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAMeDISP|add_reg\(0),
	devoe => ww_devoe,
	o => \HEX0_HW[1]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\HEX0_HW[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0_HW[2]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\HEX0_HW[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0_HW[3]~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\HEX0_HW[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0_HW[4]~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\HEX0_HW[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0_HW[5]~output_o\);

-- Location: IOOBUF_X74_Y54_N23
\HEX0_HW[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAMeDISP|ALT_INV_add_reg\(0),
	devoe => ww_devoe,
	o => \HEX0_HW[6]~output_o\);

-- Location: IOOBUF_X69_Y54_N23
\HEX1_HW[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAMeDISP|add_reg\(0),
	devoe => ww_devoe,
	o => \HEX1_HW[0]~output_o\);

-- Location: IOOBUF_X78_Y49_N9
\HEX1_HW[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAMeDISP|H1|Display[1]~0_combout\,
	devoe => ww_devoe,
	o => \HEX1_HW[1]~output_o\);

-- Location: IOOBUF_X78_Y49_N2
\HEX1_HW[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAMeDISP|H1|Display[1]~0_combout\,
	devoe => ww_devoe,
	o => \HEX1_HW[2]~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\HEX1_HW[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAMeDISP|H1|Equal3~0_combout\,
	devoe => ww_devoe,
	o => \HEX1_HW[3]~output_o\);

-- Location: IOOBUF_X64_Y54_N2
\HEX1_HW[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAMeDISP|H1|Equal3~0_combout\,
	devoe => ww_devoe,
	o => \HEX1_HW[4]~output_o\);

-- Location: IOOBUF_X66_Y54_N30
\HEX1_HW[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAMeDISP|add_reg\(0),
	devoe => ww_devoe,
	o => \HEX1_HW[5]~output_o\);

-- Location: IOOBUF_X69_Y54_N30
\HEX1_HW[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAMeDISP|H1|ALT_INV_Equal3~1_combout\,
	devoe => ww_devoe,
	o => \HEX1_HW[6]~output_o\);

-- Location: IOOBUF_X78_Y44_N9
\HEX2_HW[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2_HW[0]~output_o\);

-- Location: IOOBUF_X66_Y54_N2
\HEX2_HW[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2_HW[1]~output_o\);

-- Location: IOOBUF_X69_Y54_N16
\HEX2_HW[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2_HW[2]~output_o\);

-- Location: IOOBUF_X78_Y44_N2
\HEX2_HW[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2_HW[3]~output_o\);

-- Location: IOOBUF_X78_Y43_N2
\HEX2_HW[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2_HW[4]~output_o\);

-- Location: IOOBUF_X78_Y35_N2
\HEX2_HW[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2_HW[5]~output_o\);

-- Location: IOOBUF_X78_Y43_N9
\HEX2_HW[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2_HW[6]~output_o\);

-- Location: IOOBUF_X78_Y35_N23
\HEX3_HW[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3_HW[0]~output_o\);

-- Location: IOOBUF_X78_Y33_N9
\HEX3_HW[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3_HW[1]~output_o\);

-- Location: IOOBUF_X78_Y33_N2
\HEX3_HW[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3_HW[2]~output_o\);

-- Location: IOOBUF_X69_Y54_N9
\HEX3_HW[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3_HW[3]~output_o\);

-- Location: IOOBUF_X78_Y41_N9
\HEX3_HW[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3_HW[4]~output_o\);

-- Location: IOOBUF_X78_Y41_N2
\HEX3_HW[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3_HW[5]~output_o\);

-- Location: IOOBUF_X78_Y43_N16
\HEX3_HW[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3_HW[6]~output_o\);

-- Location: IOOBUF_X78_Y40_N16
\HEX4_HW[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAMeDISP|H3|Display[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX4_HW[0]~output_o\);

-- Location: IOOBUF_X78_Y40_N2
\HEX4_HW[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAMeDISP|H3|Display[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX4_HW[1]~output_o\);

-- Location: IOOBUF_X78_Y40_N23
\HEX4_HW[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAMeDISP|H3|Display[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX4_HW[2]~output_o\);

-- Location: IOOBUF_X78_Y42_N16
\HEX4_HW[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAMeDISP|H3|Display[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX4_HW[3]~output_o\);

-- Location: IOOBUF_X78_Y45_N23
\HEX4_HW[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAMeDISP|H3|Display[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX4_HW[4]~output_o\);

-- Location: IOOBUF_X78_Y40_N9
\HEX4_HW[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAMeDISP|H3|Display[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX4_HW[5]~output_o\);

-- Location: IOOBUF_X78_Y35_N16
\HEX4_HW[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAMeDISP|H3|Display[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX4_HW[6]~output_o\);

-- Location: IOOBUF_X78_Y45_N9
\HEX5_HW[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAMeDISP|H4|Display[0]~23_combout\,
	devoe => ww_devoe,
	o => \HEX5_HW[0]~output_o\);

-- Location: IOOBUF_X78_Y42_N2
\HEX5_HW[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAMeDISP|H4|Display[1]~16_combout\,
	devoe => ww_devoe,
	o => \HEX5_HW[1]~output_o\);

-- Location: IOOBUF_X78_Y37_N16
\HEX5_HW[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAMeDISP|H4|Display[2]~21_combout\,
	devoe => ww_devoe,
	o => \HEX5_HW[2]~output_o\);

-- Location: IOOBUF_X78_Y34_N24
\HEX5_HW[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAMeDISP|H4|Display[3]~17_combout\,
	devoe => ww_devoe,
	o => \HEX5_HW[3]~output_o\);

-- Location: IOOBUF_X78_Y34_N9
\HEX5_HW[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAMeDISP|H4|Display[4]~18_combout\,
	devoe => ww_devoe,
	o => \HEX5_HW[4]~output_o\);

-- Location: IOOBUF_X78_Y34_N16
\HEX5_HW[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAMeDISP|H4|Display[5]~19_combout\,
	devoe => ww_devoe,
	o => \HEX5_HW[5]~output_o\);

-- Location: IOOBUF_X78_Y34_N2
\HEX5_HW[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAMeDISP|H4|Display[6]~20_combout\,
	devoe => ww_devoe,
	o => \HEX5_HW[6]~output_o\);

-- Location: IOIBUF_X78_Y29_N22
\CLK_H_HW~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK_H_HW,
	o => \CLK_H_HW~input_o\);

-- Location: CLKCTRL_G9
\CLK_H_HW~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK_H_HW~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK_H_HW~inputclkctrl_outclk\);

-- Location: LCCOMB_X51_Y51_N8
\RAMeDISP|contador[2]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|contador[2]~25_combout\ = \RAMeDISP|contador\(2) $ (VCC)
-- \RAMeDISP|contador[2]~26\ = CARRY(\RAMeDISP|contador\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAMeDISP|contador\(2),
	datad => VCC,
	combout => \RAMeDISP|contador[2]~25_combout\,
	cout => \RAMeDISP|contador[2]~26\);

-- Location: LCCOMB_X52_Y51_N6
\RAMeDISP|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|Add1~0_combout\ = \RAMeDISP|contador\(0) $ (VCC)
-- \RAMeDISP|Add1~1\ = CARRY(\RAMeDISP|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAMeDISP|contador\(0),
	datad => VCC,
	combout => \RAMeDISP|Add1~0_combout\,
	cout => \RAMeDISP|Add1~1\);

-- Location: LCCOMB_X52_Y51_N2
\RAMeDISP|contador~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|contador~77_combout\ = (\RAMeDISP|Add1~0_combout\ & !\RAMeDISP|LessThan0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAMeDISP|Add1~0_combout\,
	datad => \RAMeDISP|LessThan0~6_combout\,
	combout => \RAMeDISP|contador~77_combout\);

-- Location: IOIBUF_X46_Y54_N29
\RST_HW~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RST_HW,
	o => \RST_HW~input_o\);

-- Location: IOIBUF_X69_Y54_N1
\SWITCH_HW[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SWITCH_HW(9),
	o => \SWITCH_HW[9]~input_o\);

-- Location: IOIBUF_X56_Y54_N1
\SWITCH_HW[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SWITCH_HW(8),
	o => \SWITCH_HW[8]~input_o\);

-- Location: LCCOMB_X52_Y51_N0
\RAMeDISP|contador[1]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|contador[1]~76_combout\ = (!\SWITCH_HW[9]~input_o\ & ((\RAMeDISP|LessThan0~6_combout\) # (!\SWITCH_HW[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SWITCH_HW[9]~input_o\,
	datac => \SWITCH_HW[8]~input_o\,
	datad => \RAMeDISP|LessThan0~6_combout\,
	combout => \RAMeDISP|contador[1]~76_combout\);

-- Location: FF_X52_Y51_N3
\RAMeDISP|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_H_HW~inputclkctrl_outclk\,
	d => \RAMeDISP|contador~77_combout\,
	clrn => \RST_HW~input_o\,
	ena => \RAMeDISP|contador[1]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAMeDISP|contador\(0));

-- Location: LCCOMB_X52_Y51_N8
\RAMeDISP|Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|Add1~2_combout\ = (\RAMeDISP|contador\(1) & (!\RAMeDISP|Add1~1\)) # (!\RAMeDISP|contador\(1) & ((\RAMeDISP|Add1~1\) # (GND)))
-- \RAMeDISP|Add1~3\ = CARRY((!\RAMeDISP|Add1~1\) # (!\RAMeDISP|contador\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RAMeDISP|contador\(1),
	datad => VCC,
	cin => \RAMeDISP|Add1~1\,
	combout => \RAMeDISP|Add1~2_combout\,
	cout => \RAMeDISP|Add1~3\);

-- Location: LCCOMB_X52_Y51_N4
\RAMeDISP|contador~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|contador~75_combout\ = (\RAMeDISP|Add1~2_combout\ & !\RAMeDISP|LessThan0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RAMeDISP|Add1~2_combout\,
	datad => \RAMeDISP|LessThan0~6_combout\,
	combout => \RAMeDISP|contador~75_combout\);

-- Location: FF_X52_Y51_N5
\RAMeDISP|contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_H_HW~inputclkctrl_outclk\,
	d => \RAMeDISP|contador~75_combout\,
	clrn => \RST_HW~input_o\,
	ena => \RAMeDISP|contador[1]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAMeDISP|contador\(1));

-- Location: LCCOMB_X52_Y51_N10
\RAMeDISP|Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|Add1~4_combout\ = (\RAMeDISP|contador\(2) & (\RAMeDISP|Add1~3\ $ (GND))) # (!\RAMeDISP|contador\(2) & (!\RAMeDISP|Add1~3\ & VCC))
-- \RAMeDISP|Add1~5\ = CARRY((\RAMeDISP|contador\(2) & !\RAMeDISP|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAMeDISP|contador\(2),
	datad => VCC,
	cin => \RAMeDISP|Add1~3\,
	combout => \RAMeDISP|Add1~4_combout\,
	cout => \RAMeDISP|Add1~5\);

-- Location: FF_X51_Y51_N9
\RAMeDISP|contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_H_HW~inputclkctrl_outclk\,
	d => \RAMeDISP|contador[2]~25_combout\,
	asdata => \RAMeDISP|Add1~4_combout\,
	clrn => \RST_HW~input_o\,
	sclr => \RAMeDISP|LessThan0~6_combout\,
	sload => \ALT_INV_SWITCH_HW[8]~input_o\,
	ena => \ALT_INV_SWITCH_HW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAMeDISP|contador\(2));

-- Location: LCCOMB_X51_Y51_N10
\RAMeDISP|contador[3]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|contador[3]~27_combout\ = (\RAMeDISP|contador\(3) & (!\RAMeDISP|contador[2]~26\)) # (!\RAMeDISP|contador\(3) & ((\RAMeDISP|contador[2]~26\) # (GND)))
-- \RAMeDISP|contador[3]~28\ = CARRY((!\RAMeDISP|contador[2]~26\) # (!\RAMeDISP|contador\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAMeDISP|contador\(3),
	datad => VCC,
	cin => \RAMeDISP|contador[2]~26\,
	combout => \RAMeDISP|contador[3]~27_combout\,
	cout => \RAMeDISP|contador[3]~28\);

-- Location: LCCOMB_X52_Y51_N12
\RAMeDISP|Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|Add1~6_combout\ = (\RAMeDISP|contador\(3) & (!\RAMeDISP|Add1~5\)) # (!\RAMeDISP|contador\(3) & ((\RAMeDISP|Add1~5\) # (GND)))
-- \RAMeDISP|Add1~7\ = CARRY((!\RAMeDISP|Add1~5\) # (!\RAMeDISP|contador\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAMeDISP|contador\(3),
	datad => VCC,
	cin => \RAMeDISP|Add1~5\,
	combout => \RAMeDISP|Add1~6_combout\,
	cout => \RAMeDISP|Add1~7\);

-- Location: FF_X51_Y51_N11
\RAMeDISP|contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_H_HW~inputclkctrl_outclk\,
	d => \RAMeDISP|contador[3]~27_combout\,
	asdata => \RAMeDISP|Add1~6_combout\,
	clrn => \RST_HW~input_o\,
	sclr => \RAMeDISP|LessThan0~6_combout\,
	sload => \ALT_INV_SWITCH_HW[8]~input_o\,
	ena => \ALT_INV_SWITCH_HW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAMeDISP|contador\(3));

-- Location: LCCOMB_X51_Y51_N12
\RAMeDISP|contador[4]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|contador[4]~29_combout\ = (\RAMeDISP|contador\(4) & ((GND) # (!\RAMeDISP|contador[3]~28\))) # (!\RAMeDISP|contador\(4) & (\RAMeDISP|contador[3]~28\ $ (GND)))
-- \RAMeDISP|contador[4]~30\ = CARRY((\RAMeDISP|contador\(4)) # (!\RAMeDISP|contador[3]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAMeDISP|contador\(4),
	datad => VCC,
	cin => \RAMeDISP|contador[3]~28\,
	combout => \RAMeDISP|contador[4]~29_combout\,
	cout => \RAMeDISP|contador[4]~30\);

-- Location: LCCOMB_X52_Y51_N14
\RAMeDISP|Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|Add1~8_combout\ = (\RAMeDISP|contador\(4) & (\RAMeDISP|Add1~7\ $ (GND))) # (!\RAMeDISP|contador\(4) & (!\RAMeDISP|Add1~7\ & VCC))
-- \RAMeDISP|Add1~9\ = CARRY((\RAMeDISP|contador\(4) & !\RAMeDISP|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAMeDISP|contador\(4),
	datad => VCC,
	cin => \RAMeDISP|Add1~7\,
	combout => \RAMeDISP|Add1~8_combout\,
	cout => \RAMeDISP|Add1~9\);

-- Location: FF_X51_Y51_N13
\RAMeDISP|contador[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_H_HW~inputclkctrl_outclk\,
	d => \RAMeDISP|contador[4]~29_combout\,
	asdata => \RAMeDISP|Add1~8_combout\,
	clrn => \RST_HW~input_o\,
	sclr => \RAMeDISP|LessThan0~6_combout\,
	sload => \ALT_INV_SWITCH_HW[8]~input_o\,
	ena => \ALT_INV_SWITCH_HW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAMeDISP|contador\(4));

-- Location: LCCOMB_X51_Y51_N14
\RAMeDISP|contador[5]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|contador[5]~31_combout\ = (\RAMeDISP|contador\(5) & (!\RAMeDISP|contador[4]~30\)) # (!\RAMeDISP|contador\(5) & ((\RAMeDISP|contador[4]~30\) # (GND)))
-- \RAMeDISP|contador[5]~32\ = CARRY((!\RAMeDISP|contador[4]~30\) # (!\RAMeDISP|contador\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAMeDISP|contador\(5),
	datad => VCC,
	cin => \RAMeDISP|contador[4]~30\,
	combout => \RAMeDISP|contador[5]~31_combout\,
	cout => \RAMeDISP|contador[5]~32\);

-- Location: LCCOMB_X52_Y51_N16
\RAMeDISP|Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|Add1~10_combout\ = (\RAMeDISP|contador\(5) & (!\RAMeDISP|Add1~9\)) # (!\RAMeDISP|contador\(5) & ((\RAMeDISP|Add1~9\) # (GND)))
-- \RAMeDISP|Add1~11\ = CARRY((!\RAMeDISP|Add1~9\) # (!\RAMeDISP|contador\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAMeDISP|contador\(5),
	datad => VCC,
	cin => \RAMeDISP|Add1~9\,
	combout => \RAMeDISP|Add1~10_combout\,
	cout => \RAMeDISP|Add1~11\);

-- Location: FF_X51_Y51_N15
\RAMeDISP|contador[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_H_HW~inputclkctrl_outclk\,
	d => \RAMeDISP|contador[5]~31_combout\,
	asdata => \RAMeDISP|Add1~10_combout\,
	clrn => \RST_HW~input_o\,
	sclr => \RAMeDISP|LessThan0~6_combout\,
	sload => \ALT_INV_SWITCH_HW[8]~input_o\,
	ena => \ALT_INV_SWITCH_HW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAMeDISP|contador\(5));

-- Location: LCCOMB_X51_Y51_N16
\RAMeDISP|contador[6]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|contador[6]~33_combout\ = (\RAMeDISP|contador\(6) & (\RAMeDISP|contador[5]~32\ $ (GND))) # (!\RAMeDISP|contador\(6) & (!\RAMeDISP|contador[5]~32\ & VCC))
-- \RAMeDISP|contador[6]~34\ = CARRY((\RAMeDISP|contador\(6) & !\RAMeDISP|contador[5]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RAMeDISP|contador\(6),
	datad => VCC,
	cin => \RAMeDISP|contador[5]~32\,
	combout => \RAMeDISP|contador[6]~33_combout\,
	cout => \RAMeDISP|contador[6]~34\);

-- Location: LCCOMB_X52_Y51_N18
\RAMeDISP|Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|Add1~12_combout\ = (\RAMeDISP|contador\(6) & (\RAMeDISP|Add1~11\ $ (GND))) # (!\RAMeDISP|contador\(6) & (!\RAMeDISP|Add1~11\ & VCC))
-- \RAMeDISP|Add1~13\ = CARRY((\RAMeDISP|contador\(6) & !\RAMeDISP|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAMeDISP|contador\(6),
	datad => VCC,
	cin => \RAMeDISP|Add1~11\,
	combout => \RAMeDISP|Add1~12_combout\,
	cout => \RAMeDISP|Add1~13\);

-- Location: FF_X51_Y51_N17
\RAMeDISP|contador[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_H_HW~inputclkctrl_outclk\,
	d => \RAMeDISP|contador[6]~33_combout\,
	asdata => \RAMeDISP|Add1~12_combout\,
	clrn => \RST_HW~input_o\,
	sclr => \RAMeDISP|LessThan0~6_combout\,
	sload => \ALT_INV_SWITCH_HW[8]~input_o\,
	ena => \ALT_INV_SWITCH_HW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAMeDISP|contador\(6));

-- Location: LCCOMB_X51_Y51_N18
\RAMeDISP|contador[7]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|contador[7]~35_combout\ = (\RAMeDISP|contador\(7) & (!\RAMeDISP|contador[6]~34\)) # (!\RAMeDISP|contador\(7) & ((\RAMeDISP|contador[6]~34\) # (GND)))
-- \RAMeDISP|contador[7]~36\ = CARRY((!\RAMeDISP|contador[6]~34\) # (!\RAMeDISP|contador\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RAMeDISP|contador\(7),
	datad => VCC,
	cin => \RAMeDISP|contador[6]~34\,
	combout => \RAMeDISP|contador[7]~35_combout\,
	cout => \RAMeDISP|contador[7]~36\);

-- Location: LCCOMB_X52_Y51_N20
\RAMeDISP|Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|Add1~14_combout\ = (\RAMeDISP|contador\(7) & (!\RAMeDISP|Add1~13\)) # (!\RAMeDISP|contador\(7) & ((\RAMeDISP|Add1~13\) # (GND)))
-- \RAMeDISP|Add1~15\ = CARRY((!\RAMeDISP|Add1~13\) # (!\RAMeDISP|contador\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RAMeDISP|contador\(7),
	datad => VCC,
	cin => \RAMeDISP|Add1~13\,
	combout => \RAMeDISP|Add1~14_combout\,
	cout => \RAMeDISP|Add1~15\);

-- Location: FF_X51_Y51_N19
\RAMeDISP|contador[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_H_HW~inputclkctrl_outclk\,
	d => \RAMeDISP|contador[7]~35_combout\,
	asdata => \RAMeDISP|Add1~14_combout\,
	clrn => \RST_HW~input_o\,
	sclr => \RAMeDISP|LessThan0~6_combout\,
	sload => \ALT_INV_SWITCH_HW[8]~input_o\,
	ena => \ALT_INV_SWITCH_HW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAMeDISP|contador\(7));

-- Location: LCCOMB_X51_Y51_N20
\RAMeDISP|contador[8]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|contador[8]~37_combout\ = (\RAMeDISP|contador\(8) & (\RAMeDISP|contador[7]~36\ $ (GND))) # (!\RAMeDISP|contador\(8) & (!\RAMeDISP|contador[7]~36\ & VCC))
-- \RAMeDISP|contador[8]~38\ = CARRY((\RAMeDISP|contador\(8) & !\RAMeDISP|contador[7]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RAMeDISP|contador\(8),
	datad => VCC,
	cin => \RAMeDISP|contador[7]~36\,
	combout => \RAMeDISP|contador[8]~37_combout\,
	cout => \RAMeDISP|contador[8]~38\);

-- Location: LCCOMB_X52_Y51_N22
\RAMeDISP|Add1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|Add1~16_combout\ = (\RAMeDISP|contador\(8) & (\RAMeDISP|Add1~15\ $ (GND))) # (!\RAMeDISP|contador\(8) & (!\RAMeDISP|Add1~15\ & VCC))
-- \RAMeDISP|Add1~17\ = CARRY((\RAMeDISP|contador\(8) & !\RAMeDISP|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RAMeDISP|contador\(8),
	datad => VCC,
	cin => \RAMeDISP|Add1~15\,
	combout => \RAMeDISP|Add1~16_combout\,
	cout => \RAMeDISP|Add1~17\);

-- Location: FF_X51_Y51_N21
\RAMeDISP|contador[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_H_HW~inputclkctrl_outclk\,
	d => \RAMeDISP|contador[8]~37_combout\,
	asdata => \RAMeDISP|Add1~16_combout\,
	clrn => \RST_HW~input_o\,
	sclr => \RAMeDISP|LessThan0~6_combout\,
	sload => \ALT_INV_SWITCH_HW[8]~input_o\,
	ena => \ALT_INV_SWITCH_HW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAMeDISP|contador\(8));

-- Location: LCCOMB_X51_Y51_N22
\RAMeDISP|contador[9]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|contador[9]~39_combout\ = (\RAMeDISP|contador\(9) & (!\RAMeDISP|contador[8]~38\)) # (!\RAMeDISP|contador\(9) & ((\RAMeDISP|contador[8]~38\) # (GND)))
-- \RAMeDISP|contador[9]~40\ = CARRY((!\RAMeDISP|contador[8]~38\) # (!\RAMeDISP|contador\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAMeDISP|contador\(9),
	datad => VCC,
	cin => \RAMeDISP|contador[8]~38\,
	combout => \RAMeDISP|contador[9]~39_combout\,
	cout => \RAMeDISP|contador[9]~40\);

-- Location: LCCOMB_X52_Y51_N24
\RAMeDISP|Add1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|Add1~18_combout\ = (\RAMeDISP|contador\(9) & (!\RAMeDISP|Add1~17\)) # (!\RAMeDISP|contador\(9) & ((\RAMeDISP|Add1~17\) # (GND)))
-- \RAMeDISP|Add1~19\ = CARRY((!\RAMeDISP|Add1~17\) # (!\RAMeDISP|contador\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RAMeDISP|contador\(9),
	datad => VCC,
	cin => \RAMeDISP|Add1~17\,
	combout => \RAMeDISP|Add1~18_combout\,
	cout => \RAMeDISP|Add1~19\);

-- Location: FF_X51_Y51_N23
\RAMeDISP|contador[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_H_HW~inputclkctrl_outclk\,
	d => \RAMeDISP|contador[9]~39_combout\,
	asdata => \RAMeDISP|Add1~18_combout\,
	clrn => \RST_HW~input_o\,
	sclr => \RAMeDISP|LessThan0~6_combout\,
	sload => \ALT_INV_SWITCH_HW[8]~input_o\,
	ena => \ALT_INV_SWITCH_HW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAMeDISP|contador\(9));

-- Location: LCCOMB_X51_Y51_N24
\RAMeDISP|contador[10]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|contador[10]~41_combout\ = (\RAMeDISP|contador\(10) & (\RAMeDISP|contador[9]~40\ $ (GND))) # (!\RAMeDISP|contador\(10) & (!\RAMeDISP|contador[9]~40\ & VCC))
-- \RAMeDISP|contador[10]~42\ = CARRY((\RAMeDISP|contador\(10) & !\RAMeDISP|contador[9]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RAMeDISP|contador\(10),
	datad => VCC,
	cin => \RAMeDISP|contador[9]~40\,
	combout => \RAMeDISP|contador[10]~41_combout\,
	cout => \RAMeDISP|contador[10]~42\);

-- Location: LCCOMB_X52_Y51_N26
\RAMeDISP|Add1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|Add1~20_combout\ = (\RAMeDISP|contador\(10) & (\RAMeDISP|Add1~19\ $ (GND))) # (!\RAMeDISP|contador\(10) & (!\RAMeDISP|Add1~19\ & VCC))
-- \RAMeDISP|Add1~21\ = CARRY((\RAMeDISP|contador\(10) & !\RAMeDISP|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RAMeDISP|contador\(10),
	datad => VCC,
	cin => \RAMeDISP|Add1~19\,
	combout => \RAMeDISP|Add1~20_combout\,
	cout => \RAMeDISP|Add1~21\);

-- Location: FF_X51_Y51_N25
\RAMeDISP|contador[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_H_HW~inputclkctrl_outclk\,
	d => \RAMeDISP|contador[10]~41_combout\,
	asdata => \RAMeDISP|Add1~20_combout\,
	clrn => \RST_HW~input_o\,
	sclr => \RAMeDISP|LessThan0~6_combout\,
	sload => \ALT_INV_SWITCH_HW[8]~input_o\,
	ena => \ALT_INV_SWITCH_HW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAMeDISP|contador\(10));

-- Location: LCCOMB_X51_Y51_N26
\RAMeDISP|contador[11]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|contador[11]~43_combout\ = (\RAMeDISP|contador\(11) & (!\RAMeDISP|contador[10]~42\)) # (!\RAMeDISP|contador\(11) & ((\RAMeDISP|contador[10]~42\) # (GND)))
-- \RAMeDISP|contador[11]~44\ = CARRY((!\RAMeDISP|contador[10]~42\) # (!\RAMeDISP|contador\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RAMeDISP|contador\(11),
	datad => VCC,
	cin => \RAMeDISP|contador[10]~42\,
	combout => \RAMeDISP|contador[11]~43_combout\,
	cout => \RAMeDISP|contador[11]~44\);

-- Location: LCCOMB_X52_Y51_N28
\RAMeDISP|Add1~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|Add1~22_combout\ = (\RAMeDISP|contador\(11) & (!\RAMeDISP|Add1~21\)) # (!\RAMeDISP|contador\(11) & ((\RAMeDISP|Add1~21\) # (GND)))
-- \RAMeDISP|Add1~23\ = CARRY((!\RAMeDISP|Add1~21\) # (!\RAMeDISP|contador\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAMeDISP|contador\(11),
	datad => VCC,
	cin => \RAMeDISP|Add1~21\,
	combout => \RAMeDISP|Add1~22_combout\,
	cout => \RAMeDISP|Add1~23\);

-- Location: FF_X51_Y51_N27
\RAMeDISP|contador[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_H_HW~inputclkctrl_outclk\,
	d => \RAMeDISP|contador[11]~43_combout\,
	asdata => \RAMeDISP|Add1~22_combout\,
	clrn => \RST_HW~input_o\,
	sclr => \RAMeDISP|LessThan0~6_combout\,
	sload => \ALT_INV_SWITCH_HW[8]~input_o\,
	ena => \ALT_INV_SWITCH_HW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAMeDISP|contador\(11));

-- Location: LCCOMB_X51_Y51_N28
\RAMeDISP|contador[12]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|contador[12]~45_combout\ = (\RAMeDISP|contador\(12) & (\RAMeDISP|contador[11]~44\ $ (GND))) # (!\RAMeDISP|contador\(12) & (!\RAMeDISP|contador[11]~44\ & VCC))
-- \RAMeDISP|contador[12]~46\ = CARRY((\RAMeDISP|contador\(12) & !\RAMeDISP|contador[11]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAMeDISP|contador\(12),
	datad => VCC,
	cin => \RAMeDISP|contador[11]~44\,
	combout => \RAMeDISP|contador[12]~45_combout\,
	cout => \RAMeDISP|contador[12]~46\);

-- Location: LCCOMB_X52_Y51_N30
\RAMeDISP|Add1~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|Add1~24_combout\ = (\RAMeDISP|contador\(12) & (\RAMeDISP|Add1~23\ $ (GND))) # (!\RAMeDISP|contador\(12) & (!\RAMeDISP|Add1~23\ & VCC))
-- \RAMeDISP|Add1~25\ = CARRY((\RAMeDISP|contador\(12) & !\RAMeDISP|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RAMeDISP|contador\(12),
	datad => VCC,
	cin => \RAMeDISP|Add1~23\,
	combout => \RAMeDISP|Add1~24_combout\,
	cout => \RAMeDISP|Add1~25\);

-- Location: FF_X51_Y51_N29
\RAMeDISP|contador[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_H_HW~inputclkctrl_outclk\,
	d => \RAMeDISP|contador[12]~45_combout\,
	asdata => \RAMeDISP|Add1~24_combout\,
	clrn => \RST_HW~input_o\,
	sclr => \RAMeDISP|LessThan0~6_combout\,
	sload => \ALT_INV_SWITCH_HW[8]~input_o\,
	ena => \ALT_INV_SWITCH_HW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAMeDISP|contador\(12));

-- Location: LCCOMB_X51_Y51_N30
\RAMeDISP|contador[13]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|contador[13]~47_combout\ = (\RAMeDISP|contador\(13) & (!\RAMeDISP|contador[12]~46\)) # (!\RAMeDISP|contador\(13) & ((\RAMeDISP|contador[12]~46\) # (GND)))
-- \RAMeDISP|contador[13]~48\ = CARRY((!\RAMeDISP|contador[12]~46\) # (!\RAMeDISP|contador\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAMeDISP|contador\(13),
	datad => VCC,
	cin => \RAMeDISP|contador[12]~46\,
	combout => \RAMeDISP|contador[13]~47_combout\,
	cout => \RAMeDISP|contador[13]~48\);

-- Location: LCCOMB_X52_Y50_N0
\RAMeDISP|Add1~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|Add1~26_combout\ = (\RAMeDISP|contador\(13) & (!\RAMeDISP|Add1~25\)) # (!\RAMeDISP|contador\(13) & ((\RAMeDISP|Add1~25\) # (GND)))
-- \RAMeDISP|Add1~27\ = CARRY((!\RAMeDISP|Add1~25\) # (!\RAMeDISP|contador\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RAMeDISP|contador\(13),
	datad => VCC,
	cin => \RAMeDISP|Add1~25\,
	combout => \RAMeDISP|Add1~26_combout\,
	cout => \RAMeDISP|Add1~27\);

-- Location: FF_X51_Y51_N31
\RAMeDISP|contador[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_H_HW~inputclkctrl_outclk\,
	d => \RAMeDISP|contador[13]~47_combout\,
	asdata => \RAMeDISP|Add1~26_combout\,
	clrn => \RST_HW~input_o\,
	sclr => \RAMeDISP|LessThan0~6_combout\,
	sload => \ALT_INV_SWITCH_HW[8]~input_o\,
	ena => \ALT_INV_SWITCH_HW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAMeDISP|contador\(13));

-- Location: LCCOMB_X51_Y50_N0
\RAMeDISP|contador[14]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|contador[14]~49_combout\ = (\RAMeDISP|contador\(14) & (\RAMeDISP|contador[13]~48\ $ (GND))) # (!\RAMeDISP|contador\(14) & (!\RAMeDISP|contador[13]~48\ & VCC))
-- \RAMeDISP|contador[14]~50\ = CARRY((\RAMeDISP|contador\(14) & !\RAMeDISP|contador[13]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RAMeDISP|contador\(14),
	datad => VCC,
	cin => \RAMeDISP|contador[13]~48\,
	combout => \RAMeDISP|contador[14]~49_combout\,
	cout => \RAMeDISP|contador[14]~50\);

-- Location: LCCOMB_X52_Y50_N2
\RAMeDISP|Add1~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|Add1~28_combout\ = (\RAMeDISP|contador\(14) & (\RAMeDISP|Add1~27\ $ (GND))) # (!\RAMeDISP|contador\(14) & (!\RAMeDISP|Add1~27\ & VCC))
-- \RAMeDISP|Add1~29\ = CARRY((\RAMeDISP|contador\(14) & !\RAMeDISP|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAMeDISP|contador\(14),
	datad => VCC,
	cin => \RAMeDISP|Add1~27\,
	combout => \RAMeDISP|Add1~28_combout\,
	cout => \RAMeDISP|Add1~29\);

-- Location: FF_X51_Y50_N1
\RAMeDISP|contador[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_H_HW~inputclkctrl_outclk\,
	d => \RAMeDISP|contador[14]~49_combout\,
	asdata => \RAMeDISP|Add1~28_combout\,
	clrn => \RST_HW~input_o\,
	sclr => \RAMeDISP|LessThan0~6_combout\,
	sload => \ALT_INV_SWITCH_HW[8]~input_o\,
	ena => \ALT_INV_SWITCH_HW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAMeDISP|contador\(14));

-- Location: LCCOMB_X51_Y50_N2
\RAMeDISP|contador[15]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|contador[15]~51_combout\ = (\RAMeDISP|contador\(15) & (!\RAMeDISP|contador[14]~50\)) # (!\RAMeDISP|contador\(15) & ((\RAMeDISP|contador[14]~50\) # (GND)))
-- \RAMeDISP|contador[15]~52\ = CARRY((!\RAMeDISP|contador[14]~50\) # (!\RAMeDISP|contador\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RAMeDISP|contador\(15),
	datad => VCC,
	cin => \RAMeDISP|contador[14]~50\,
	combout => \RAMeDISP|contador[15]~51_combout\,
	cout => \RAMeDISP|contador[15]~52\);

-- Location: LCCOMB_X52_Y50_N4
\RAMeDISP|Add1~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|Add1~30_combout\ = (\RAMeDISP|contador\(15) & (!\RAMeDISP|Add1~29\)) # (!\RAMeDISP|contador\(15) & ((\RAMeDISP|Add1~29\) # (GND)))
-- \RAMeDISP|Add1~31\ = CARRY((!\RAMeDISP|Add1~29\) # (!\RAMeDISP|contador\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAMeDISP|contador\(15),
	datad => VCC,
	cin => \RAMeDISP|Add1~29\,
	combout => \RAMeDISP|Add1~30_combout\,
	cout => \RAMeDISP|Add1~31\);

-- Location: FF_X51_Y50_N3
\RAMeDISP|contador[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_H_HW~inputclkctrl_outclk\,
	d => \RAMeDISP|contador[15]~51_combout\,
	asdata => \RAMeDISP|Add1~30_combout\,
	clrn => \RST_HW~input_o\,
	sclr => \RAMeDISP|LessThan0~6_combout\,
	sload => \ALT_INV_SWITCH_HW[8]~input_o\,
	ena => \ALT_INV_SWITCH_HW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAMeDISP|contador\(15));

-- Location: LCCOMB_X51_Y50_N4
\RAMeDISP|contador[16]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|contador[16]~53_combout\ = (\RAMeDISP|contador\(16) & (\RAMeDISP|contador[15]~52\ $ (GND))) # (!\RAMeDISP|contador\(16) & (!\RAMeDISP|contador[15]~52\ & VCC))
-- \RAMeDISP|contador[16]~54\ = CARRY((\RAMeDISP|contador\(16) & !\RAMeDISP|contador[15]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RAMeDISP|contador\(16),
	datad => VCC,
	cin => \RAMeDISP|contador[15]~52\,
	combout => \RAMeDISP|contador[16]~53_combout\,
	cout => \RAMeDISP|contador[16]~54\);

-- Location: LCCOMB_X52_Y50_N6
\RAMeDISP|Add1~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|Add1~32_combout\ = (\RAMeDISP|contador\(16) & (\RAMeDISP|Add1~31\ $ (GND))) # (!\RAMeDISP|contador\(16) & (!\RAMeDISP|Add1~31\ & VCC))
-- \RAMeDISP|Add1~33\ = CARRY((\RAMeDISP|contador\(16) & !\RAMeDISP|Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RAMeDISP|contador\(16),
	datad => VCC,
	cin => \RAMeDISP|Add1~31\,
	combout => \RAMeDISP|Add1~32_combout\,
	cout => \RAMeDISP|Add1~33\);

-- Location: FF_X51_Y50_N5
\RAMeDISP|contador[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_H_HW~inputclkctrl_outclk\,
	d => \RAMeDISP|contador[16]~53_combout\,
	asdata => \RAMeDISP|Add1~32_combout\,
	clrn => \RST_HW~input_o\,
	sclr => \RAMeDISP|LessThan0~6_combout\,
	sload => \ALT_INV_SWITCH_HW[8]~input_o\,
	ena => \ALT_INV_SWITCH_HW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAMeDISP|contador\(16));

-- Location: LCCOMB_X51_Y50_N6
\RAMeDISP|contador[17]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|contador[17]~55_combout\ = (\RAMeDISP|contador\(17) & (!\RAMeDISP|contador[16]~54\)) # (!\RAMeDISP|contador\(17) & ((\RAMeDISP|contador[16]~54\) # (GND)))
-- \RAMeDISP|contador[17]~56\ = CARRY((!\RAMeDISP|contador[16]~54\) # (!\RAMeDISP|contador\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAMeDISP|contador\(17),
	datad => VCC,
	cin => \RAMeDISP|contador[16]~54\,
	combout => \RAMeDISP|contador[17]~55_combout\,
	cout => \RAMeDISP|contador[17]~56\);

-- Location: LCCOMB_X52_Y50_N8
\RAMeDISP|Add1~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|Add1~34_combout\ = (\RAMeDISP|contador\(17) & (!\RAMeDISP|Add1~33\)) # (!\RAMeDISP|contador\(17) & ((\RAMeDISP|Add1~33\) # (GND)))
-- \RAMeDISP|Add1~35\ = CARRY((!\RAMeDISP|Add1~33\) # (!\RAMeDISP|contador\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RAMeDISP|contador\(17),
	datad => VCC,
	cin => \RAMeDISP|Add1~33\,
	combout => \RAMeDISP|Add1~34_combout\,
	cout => \RAMeDISP|Add1~35\);

-- Location: FF_X51_Y50_N7
\RAMeDISP|contador[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_H_HW~inputclkctrl_outclk\,
	d => \RAMeDISP|contador[17]~55_combout\,
	asdata => \RAMeDISP|Add1~34_combout\,
	clrn => \RST_HW~input_o\,
	sclr => \RAMeDISP|LessThan0~6_combout\,
	sload => \ALT_INV_SWITCH_HW[8]~input_o\,
	ena => \ALT_INV_SWITCH_HW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAMeDISP|contador\(17));

-- Location: LCCOMB_X51_Y50_N8
\RAMeDISP|contador[18]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|contador[18]~57_combout\ = (\RAMeDISP|contador\(18) & (\RAMeDISP|contador[17]~56\ $ (GND))) # (!\RAMeDISP|contador\(18) & (!\RAMeDISP|contador[17]~56\ & VCC))
-- \RAMeDISP|contador[18]~58\ = CARRY((\RAMeDISP|contador\(18) & !\RAMeDISP|contador[17]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAMeDISP|contador\(18),
	datad => VCC,
	cin => \RAMeDISP|contador[17]~56\,
	combout => \RAMeDISP|contador[18]~57_combout\,
	cout => \RAMeDISP|contador[18]~58\);

-- Location: LCCOMB_X52_Y50_N10
\RAMeDISP|Add1~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|Add1~36_combout\ = (\RAMeDISP|contador\(18) & (\RAMeDISP|Add1~35\ $ (GND))) # (!\RAMeDISP|contador\(18) & (!\RAMeDISP|Add1~35\ & VCC))
-- \RAMeDISP|Add1~37\ = CARRY((\RAMeDISP|contador\(18) & !\RAMeDISP|Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAMeDISP|contador\(18),
	datad => VCC,
	cin => \RAMeDISP|Add1~35\,
	combout => \RAMeDISP|Add1~36_combout\,
	cout => \RAMeDISP|Add1~37\);

-- Location: FF_X51_Y50_N9
\RAMeDISP|contador[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_H_HW~inputclkctrl_outclk\,
	d => \RAMeDISP|contador[18]~57_combout\,
	asdata => \RAMeDISP|Add1~36_combout\,
	clrn => \RST_HW~input_o\,
	sclr => \RAMeDISP|LessThan0~6_combout\,
	sload => \ALT_INV_SWITCH_HW[8]~input_o\,
	ena => \ALT_INV_SWITCH_HW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAMeDISP|contador\(18));

-- Location: LCCOMB_X51_Y50_N10
\RAMeDISP|contador[19]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|contador[19]~59_combout\ = (\RAMeDISP|contador\(19) & (!\RAMeDISP|contador[18]~58\)) # (!\RAMeDISP|contador\(19) & ((\RAMeDISP|contador[18]~58\) # (GND)))
-- \RAMeDISP|contador[19]~60\ = CARRY((!\RAMeDISP|contador[18]~58\) # (!\RAMeDISP|contador\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAMeDISP|contador\(19),
	datad => VCC,
	cin => \RAMeDISP|contador[18]~58\,
	combout => \RAMeDISP|contador[19]~59_combout\,
	cout => \RAMeDISP|contador[19]~60\);

-- Location: LCCOMB_X52_Y50_N12
\RAMeDISP|Add1~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|Add1~38_combout\ = (\RAMeDISP|contador\(19) & (!\RAMeDISP|Add1~37\)) # (!\RAMeDISP|contador\(19) & ((\RAMeDISP|Add1~37\) # (GND)))
-- \RAMeDISP|Add1~39\ = CARRY((!\RAMeDISP|Add1~37\) # (!\RAMeDISP|contador\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAMeDISP|contador\(19),
	datad => VCC,
	cin => \RAMeDISP|Add1~37\,
	combout => \RAMeDISP|Add1~38_combout\,
	cout => \RAMeDISP|Add1~39\);

-- Location: FF_X51_Y50_N11
\RAMeDISP|contador[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_H_HW~inputclkctrl_outclk\,
	d => \RAMeDISP|contador[19]~59_combout\,
	asdata => \RAMeDISP|Add1~38_combout\,
	clrn => \RST_HW~input_o\,
	sclr => \RAMeDISP|LessThan0~6_combout\,
	sload => \ALT_INV_SWITCH_HW[8]~input_o\,
	ena => \ALT_INV_SWITCH_HW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAMeDISP|contador\(19));

-- Location: LCCOMB_X51_Y50_N12
\RAMeDISP|contador[20]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|contador[20]~61_combout\ = (\RAMeDISP|contador\(20) & (\RAMeDISP|contador[19]~60\ $ (GND))) # (!\RAMeDISP|contador\(20) & (!\RAMeDISP|contador[19]~60\ & VCC))
-- \RAMeDISP|contador[20]~62\ = CARRY((\RAMeDISP|contador\(20) & !\RAMeDISP|contador[19]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAMeDISP|contador\(20),
	datad => VCC,
	cin => \RAMeDISP|contador[19]~60\,
	combout => \RAMeDISP|contador[20]~61_combout\,
	cout => \RAMeDISP|contador[20]~62\);

-- Location: LCCOMB_X52_Y50_N14
\RAMeDISP|Add1~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|Add1~40_combout\ = (\RAMeDISP|contador\(20) & (\RAMeDISP|Add1~39\ $ (GND))) # (!\RAMeDISP|contador\(20) & (!\RAMeDISP|Add1~39\ & VCC))
-- \RAMeDISP|Add1~41\ = CARRY((\RAMeDISP|contador\(20) & !\RAMeDISP|Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAMeDISP|contador\(20),
	datad => VCC,
	cin => \RAMeDISP|Add1~39\,
	combout => \RAMeDISP|Add1~40_combout\,
	cout => \RAMeDISP|Add1~41\);

-- Location: FF_X51_Y50_N13
\RAMeDISP|contador[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_H_HW~inputclkctrl_outclk\,
	d => \RAMeDISP|contador[20]~61_combout\,
	asdata => \RAMeDISP|Add1~40_combout\,
	clrn => \RST_HW~input_o\,
	sclr => \RAMeDISP|LessThan0~6_combout\,
	sload => \ALT_INV_SWITCH_HW[8]~input_o\,
	ena => \ALT_INV_SWITCH_HW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAMeDISP|contador\(20));

-- Location: LCCOMB_X51_Y50_N14
\RAMeDISP|contador[21]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|contador[21]~63_combout\ = (\RAMeDISP|contador\(21) & (!\RAMeDISP|contador[20]~62\)) # (!\RAMeDISP|contador\(21) & ((\RAMeDISP|contador[20]~62\) # (GND)))
-- \RAMeDISP|contador[21]~64\ = CARRY((!\RAMeDISP|contador[20]~62\) # (!\RAMeDISP|contador\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RAMeDISP|contador\(21),
	datad => VCC,
	cin => \RAMeDISP|contador[20]~62\,
	combout => \RAMeDISP|contador[21]~63_combout\,
	cout => \RAMeDISP|contador[21]~64\);

-- Location: LCCOMB_X52_Y50_N16
\RAMeDISP|Add1~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|Add1~42_combout\ = (\RAMeDISP|contador\(21) & (!\RAMeDISP|Add1~41\)) # (!\RAMeDISP|contador\(21) & ((\RAMeDISP|Add1~41\) # (GND)))
-- \RAMeDISP|Add1~43\ = CARRY((!\RAMeDISP|Add1~41\) # (!\RAMeDISP|contador\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAMeDISP|contador\(21),
	datad => VCC,
	cin => \RAMeDISP|Add1~41\,
	combout => \RAMeDISP|Add1~42_combout\,
	cout => \RAMeDISP|Add1~43\);

-- Location: FF_X51_Y50_N15
\RAMeDISP|contador[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_H_HW~inputclkctrl_outclk\,
	d => \RAMeDISP|contador[21]~63_combout\,
	asdata => \RAMeDISP|Add1~42_combout\,
	clrn => \RST_HW~input_o\,
	sclr => \RAMeDISP|LessThan0~6_combout\,
	sload => \ALT_INV_SWITCH_HW[8]~input_o\,
	ena => \ALT_INV_SWITCH_HW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAMeDISP|contador\(21));

-- Location: LCCOMB_X51_Y50_N16
\RAMeDISP|contador[22]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|contador[22]~65_combout\ = (\RAMeDISP|contador\(22) & (\RAMeDISP|contador[21]~64\ $ (GND))) # (!\RAMeDISP|contador\(22) & (!\RAMeDISP|contador[21]~64\ & VCC))
-- \RAMeDISP|contador[22]~66\ = CARRY((\RAMeDISP|contador\(22) & !\RAMeDISP|contador[21]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RAMeDISP|contador\(22),
	datad => VCC,
	cin => \RAMeDISP|contador[21]~64\,
	combout => \RAMeDISP|contador[22]~65_combout\,
	cout => \RAMeDISP|contador[22]~66\);

-- Location: LCCOMB_X52_Y50_N18
\RAMeDISP|Add1~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|Add1~44_combout\ = (\RAMeDISP|contador\(22) & (\RAMeDISP|Add1~43\ $ (GND))) # (!\RAMeDISP|contador\(22) & (!\RAMeDISP|Add1~43\ & VCC))
-- \RAMeDISP|Add1~45\ = CARRY((\RAMeDISP|contador\(22) & !\RAMeDISP|Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAMeDISP|contador\(22),
	datad => VCC,
	cin => \RAMeDISP|Add1~43\,
	combout => \RAMeDISP|Add1~44_combout\,
	cout => \RAMeDISP|Add1~45\);

-- Location: FF_X51_Y50_N17
\RAMeDISP|contador[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_H_HW~inputclkctrl_outclk\,
	d => \RAMeDISP|contador[22]~65_combout\,
	asdata => \RAMeDISP|Add1~44_combout\,
	clrn => \RST_HW~input_o\,
	sclr => \RAMeDISP|LessThan0~6_combout\,
	sload => \ALT_INV_SWITCH_HW[8]~input_o\,
	ena => \ALT_INV_SWITCH_HW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAMeDISP|contador\(22));

-- Location: LCCOMB_X51_Y50_N18
\RAMeDISP|contador[23]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|contador[23]~67_combout\ = (\RAMeDISP|contador\(23) & (!\RAMeDISP|contador[22]~66\)) # (!\RAMeDISP|contador\(23) & ((\RAMeDISP|contador[22]~66\) # (GND)))
-- \RAMeDISP|contador[23]~68\ = CARRY((!\RAMeDISP|contador[22]~66\) # (!\RAMeDISP|contador\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RAMeDISP|contador\(23),
	datad => VCC,
	cin => \RAMeDISP|contador[22]~66\,
	combout => \RAMeDISP|contador[23]~67_combout\,
	cout => \RAMeDISP|contador[23]~68\);

-- Location: LCCOMB_X52_Y50_N20
\RAMeDISP|Add1~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|Add1~46_combout\ = (\RAMeDISP|contador\(23) & (!\RAMeDISP|Add1~45\)) # (!\RAMeDISP|contador\(23) & ((\RAMeDISP|Add1~45\) # (GND)))
-- \RAMeDISP|Add1~47\ = CARRY((!\RAMeDISP|Add1~45\) # (!\RAMeDISP|contador\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RAMeDISP|contador\(23),
	datad => VCC,
	cin => \RAMeDISP|Add1~45\,
	combout => \RAMeDISP|Add1~46_combout\,
	cout => \RAMeDISP|Add1~47\);

-- Location: FF_X51_Y50_N19
\RAMeDISP|contador[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_H_HW~inputclkctrl_outclk\,
	d => \RAMeDISP|contador[23]~67_combout\,
	asdata => \RAMeDISP|Add1~46_combout\,
	clrn => \RST_HW~input_o\,
	sclr => \RAMeDISP|LessThan0~6_combout\,
	sload => \ALT_INV_SWITCH_HW[8]~input_o\,
	ena => \ALT_INV_SWITCH_HW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAMeDISP|contador\(23));

-- Location: LCCOMB_X51_Y50_N20
\RAMeDISP|contador[24]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|contador[24]~69_combout\ = (\RAMeDISP|contador\(24) & (\RAMeDISP|contador[23]~68\ $ (GND))) # (!\RAMeDISP|contador\(24) & (!\RAMeDISP|contador[23]~68\ & VCC))
-- \RAMeDISP|contador[24]~70\ = CARRY((\RAMeDISP|contador\(24) & !\RAMeDISP|contador[23]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RAMeDISP|contador\(24),
	datad => VCC,
	cin => \RAMeDISP|contador[23]~68\,
	combout => \RAMeDISP|contador[24]~69_combout\,
	cout => \RAMeDISP|contador[24]~70\);

-- Location: LCCOMB_X52_Y50_N22
\RAMeDISP|Add1~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|Add1~48_combout\ = (\RAMeDISP|contador\(24) & (\RAMeDISP|Add1~47\ $ (GND))) # (!\RAMeDISP|contador\(24) & (!\RAMeDISP|Add1~47\ & VCC))
-- \RAMeDISP|Add1~49\ = CARRY((\RAMeDISP|contador\(24) & !\RAMeDISP|Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAMeDISP|contador\(24),
	datad => VCC,
	cin => \RAMeDISP|Add1~47\,
	combout => \RAMeDISP|Add1~48_combout\,
	cout => \RAMeDISP|Add1~49\);

-- Location: FF_X51_Y50_N21
\RAMeDISP|contador[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_H_HW~inputclkctrl_outclk\,
	d => \RAMeDISP|contador[24]~69_combout\,
	asdata => \RAMeDISP|Add1~48_combout\,
	clrn => \RST_HW~input_o\,
	sclr => \RAMeDISP|LessThan0~6_combout\,
	sload => \ALT_INV_SWITCH_HW[8]~input_o\,
	ena => \ALT_INV_SWITCH_HW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAMeDISP|contador\(24));

-- Location: LCCOMB_X51_Y50_N22
\RAMeDISP|contador[25]~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|contador[25]~71_combout\ = (\RAMeDISP|contador\(25) & (!\RAMeDISP|contador[24]~70\)) # (!\RAMeDISP|contador\(25) & ((\RAMeDISP|contador[24]~70\) # (GND)))
-- \RAMeDISP|contador[25]~72\ = CARRY((!\RAMeDISP|contador[24]~70\) # (!\RAMeDISP|contador\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAMeDISP|contador\(25),
	datad => VCC,
	cin => \RAMeDISP|contador[24]~70\,
	combout => \RAMeDISP|contador[25]~71_combout\,
	cout => \RAMeDISP|contador[25]~72\);

-- Location: LCCOMB_X52_Y50_N24
\RAMeDISP|Add1~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|Add1~50_combout\ = (\RAMeDISP|contador\(25) & (!\RAMeDISP|Add1~49\)) # (!\RAMeDISP|contador\(25) & ((\RAMeDISP|Add1~49\) # (GND)))
-- \RAMeDISP|Add1~51\ = CARRY((!\RAMeDISP|Add1~49\) # (!\RAMeDISP|contador\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RAMeDISP|contador\(25),
	datad => VCC,
	cin => \RAMeDISP|Add1~49\,
	combout => \RAMeDISP|Add1~50_combout\,
	cout => \RAMeDISP|Add1~51\);

-- Location: FF_X51_Y50_N23
\RAMeDISP|contador[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_H_HW~inputclkctrl_outclk\,
	d => \RAMeDISP|contador[25]~71_combout\,
	asdata => \RAMeDISP|Add1~50_combout\,
	clrn => \RST_HW~input_o\,
	sclr => \RAMeDISP|LessThan0~6_combout\,
	sload => \ALT_INV_SWITCH_HW[8]~input_o\,
	ena => \ALT_INV_SWITCH_HW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAMeDISP|contador\(25));

-- Location: LCCOMB_X51_Y50_N24
\RAMeDISP|contador[26]~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|contador[26]~73_combout\ = \RAMeDISP|contador\(26) $ (!\RAMeDISP|contador[25]~72\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RAMeDISP|contador\(26),
	cin => \RAMeDISP|contador[25]~72\,
	combout => \RAMeDISP|contador[26]~73_combout\);

-- Location: LCCOMB_X52_Y50_N26
\RAMeDISP|Add1~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|Add1~52_combout\ = \RAMeDISP|Add1~51\ $ (!\RAMeDISP|contador\(26))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \RAMeDISP|contador\(26),
	cin => \RAMeDISP|Add1~51\,
	combout => \RAMeDISP|Add1~52_combout\);

-- Location: FF_X51_Y50_N25
\RAMeDISP|contador[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_H_HW~inputclkctrl_outclk\,
	d => \RAMeDISP|contador[26]~73_combout\,
	asdata => \RAMeDISP|Add1~52_combout\,
	clrn => \RST_HW~input_o\,
	sclr => \RAMeDISP|LessThan0~6_combout\,
	sload => \ALT_INV_SWITCH_HW[8]~input_o\,
	ena => \ALT_INV_SWITCH_HW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAMeDISP|contador\(26));

-- Location: LCCOMB_X51_Y51_N2
\RAMeDISP|LessThan0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|LessThan0~3_combout\ = (!\RAMeDISP|contador\(9) & (!\RAMeDISP|contador\(10) & (!\RAMeDISP|contador\(7) & !\RAMeDISP|contador\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAMeDISP|contador\(9),
	datab => \RAMeDISP|contador\(10),
	datac => \RAMeDISP|contador\(7),
	datad => \RAMeDISP|contador\(8),
	combout => \RAMeDISP|LessThan0~3_combout\);

-- Location: LCCOMB_X51_Y51_N0
\RAMeDISP|LessThan0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|LessThan0~2_combout\ = (((!\RAMeDISP|contador\(15)) # (!\RAMeDISP|contador\(12))) # (!\RAMeDISP|contador\(14))) # (!\RAMeDISP|contador\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAMeDISP|contador\(13),
	datab => \RAMeDISP|contador\(14),
	datac => \RAMeDISP|contador\(12),
	datad => \RAMeDISP|contador\(15),
	combout => \RAMeDISP|LessThan0~2_combout\);

-- Location: LCCOMB_X51_Y51_N4
\RAMeDISP|LessThan0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|LessThan0~4_combout\ = (\RAMeDISP|LessThan0~2_combout\) # ((!\RAMeDISP|contador\(11) & \RAMeDISP|LessThan0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAMeDISP|contador\(11),
	datac => \RAMeDISP|LessThan0~3_combout\,
	datad => \RAMeDISP|LessThan0~2_combout\,
	combout => \RAMeDISP|LessThan0~4_combout\);

-- Location: LCCOMB_X51_Y50_N28
\RAMeDISP|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|LessThan0~0_combout\ = (((!\RAMeDISP|contador\(17) & !\RAMeDISP|contador\(18))) # (!\RAMeDISP|contador\(20))) # (!\RAMeDISP|contador\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAMeDISP|contador\(17),
	datab => \RAMeDISP|contador\(18),
	datac => \RAMeDISP|contador\(19),
	datad => \RAMeDISP|contador\(20),
	combout => \RAMeDISP|LessThan0~0_combout\);

-- Location: LCCOMB_X51_Y50_N30
\RAMeDISP|LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|LessThan0~1_combout\ = (((\RAMeDISP|LessThan0~0_combout\) # (!\RAMeDISP|contador\(21))) # (!\RAMeDISP|contador\(23))) # (!\RAMeDISP|contador\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAMeDISP|contador\(22),
	datab => \RAMeDISP|contador\(23),
	datac => \RAMeDISP|contador\(21),
	datad => \RAMeDISP|LessThan0~0_combout\,
	combout => \RAMeDISP|LessThan0~1_combout\);

-- Location: LCCOMB_X51_Y51_N6
\RAMeDISP|LessThan0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|LessThan0~5_combout\ = (\RAMeDISP|LessThan0~1_combout\) # ((!\RAMeDISP|contador\(16) & (!\RAMeDISP|contador\(18) & \RAMeDISP|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAMeDISP|contador\(16),
	datab => \RAMeDISP|contador\(18),
	datac => \RAMeDISP|LessThan0~4_combout\,
	datad => \RAMeDISP|LessThan0~1_combout\,
	combout => \RAMeDISP|LessThan0~5_combout\);

-- Location: LCCOMB_X51_Y50_N26
\RAMeDISP|LessThan0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|LessThan0~6_combout\ = (\RAMeDISP|contador\(26)) # ((\RAMeDISP|contador\(25) & ((\RAMeDISP|contador\(24)) # (!\RAMeDISP|LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAMeDISP|contador\(25),
	datab => \RAMeDISP|contador\(24),
	datac => \RAMeDISP|contador\(26),
	datad => \RAMeDISP|LessThan0~5_combout\,
	combout => \RAMeDISP|LessThan0~6_combout\);

-- Location: FF_X51_Y50_N27
\RAMeDISP|clk_div\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_H_HW~inputclkctrl_outclk\,
	d => \RAMeDISP|LessThan0~6_combout\,
	clrn => \RST_HW~input_o\,
	ena => \ALT_INV_SWITCH_HW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAMeDISP|clk_div~q\);

-- Location: CLKCTRL_G10
\RAMeDISP|clk_div~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RAMeDISP|clk_div~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RAMeDISP|clk_div~clkctrl_outclk\);

-- Location: LCCOMB_X75_Y45_N8
\ROMeCOUNT|pc|count|rgst[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ROMeCOUNT|pc|count|rgst[0]~7_combout\ = \ROMeCOUNT|pc|count|rgst\(0) $ (VCC)
-- \ROMeCOUNT|pc|count|rgst[0]~8\ = CARRY(\ROMeCOUNT|pc|count|rgst\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ROMeCOUNT|pc|count|rgst\(0),
	datad => VCC,
	combout => \ROMeCOUNT|pc|count|rgst[0]~7_combout\,
	cout => \ROMeCOUNT|pc|count|rgst[0]~8\);

-- Location: LCCOMB_X75_Y45_N12
\ROMeCOUNT|pc|count|rgst[2]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ROMeCOUNT|pc|count|rgst[2]~11_combout\ = (\ROMeCOUNT|pc|count|rgst\(2) & (\ROMeCOUNT|pc|count|rgst[1]~10\ $ (GND))) # (!\ROMeCOUNT|pc|count|rgst\(2) & (!\ROMeCOUNT|pc|count|rgst[1]~10\ & VCC))
-- \ROMeCOUNT|pc|count|rgst[2]~12\ = CARRY((\ROMeCOUNT|pc|count|rgst\(2) & !\ROMeCOUNT|pc|count|rgst[1]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ROMeCOUNT|pc|count|rgst\(2),
	datad => VCC,
	cin => \ROMeCOUNT|pc|count|rgst[1]~10\,
	combout => \ROMeCOUNT|pc|count|rgst[2]~11_combout\,
	cout => \ROMeCOUNT|pc|count|rgst[2]~12\);

-- Location: LCCOMB_X75_Y45_N14
\ROMeCOUNT|pc|count|rgst[3]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ROMeCOUNT|pc|count|rgst[3]~13_combout\ = (\ROMeCOUNT|pc|count|rgst\(3) & (!\ROMeCOUNT|pc|count|rgst[2]~12\)) # (!\ROMeCOUNT|pc|count|rgst\(3) & ((\ROMeCOUNT|pc|count|rgst[2]~12\) # (GND)))
-- \ROMeCOUNT|pc|count|rgst[3]~14\ = CARRY((!\ROMeCOUNT|pc|count|rgst[2]~12\) # (!\ROMeCOUNT|pc|count|rgst\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ROMeCOUNT|pc|count|rgst\(3),
	datad => VCC,
	cin => \ROMeCOUNT|pc|count|rgst[2]~12\,
	combout => \ROMeCOUNT|pc|count|rgst[3]~13_combout\,
	cout => \ROMeCOUNT|pc|count|rgst[3]~14\);

-- Location: LCCOMB_X75_Y45_N2
\ROMeCOUNT|feDe|estado~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ROMeCOUNT|feDe|estado~0_combout\ = \ROMeCOUNT|feDe|estado~q\ $ (\RST_HW~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ROMeCOUNT|feDe|estado~q\,
	datad => \RST_HW~input_o\,
	combout => \ROMeCOUNT|feDe|estado~0_combout\);

-- Location: FF_X75_Y45_N3
\ROMeCOUNT|feDe|estado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RAMeDISP|clk_div~clkctrl_outclk\,
	d => \ROMeCOUNT|feDe|estado~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ROMeCOUNT|feDe|estado~q\);

-- Location: FF_X75_Y45_N15
\ROMeCOUNT|pc|count|rgst[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RAMeDISP|clk_div~clkctrl_outclk\,
	d => \ROMeCOUNT|pc|count|rgst[3]~13_combout\,
	clrn => \RST_HW~input_o\,
	sclr => \ROMeCOUNT|pc|count|rgst[11]~19_combout\,
	ena => \ROMeCOUNT|feDe|estado~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ROMeCOUNT|pc|count|rgst\(3));

-- Location: LCCOMB_X75_Y45_N16
\ROMeCOUNT|pc|count|rgst[4]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ROMeCOUNT|pc|count|rgst[4]~15_combout\ = (\ROMeCOUNT|pc|count|rgst\(4) & (\ROMeCOUNT|pc|count|rgst[3]~14\ $ (GND))) # (!\ROMeCOUNT|pc|count|rgst\(4) & (!\ROMeCOUNT|pc|count|rgst[3]~14\ & VCC))
-- \ROMeCOUNT|pc|count|rgst[4]~16\ = CARRY((\ROMeCOUNT|pc|count|rgst\(4) & !\ROMeCOUNT|pc|count|rgst[3]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ROMeCOUNT|pc|count|rgst\(4),
	datad => VCC,
	cin => \ROMeCOUNT|pc|count|rgst[3]~14\,
	combout => \ROMeCOUNT|pc|count|rgst[4]~15_combout\,
	cout => \ROMeCOUNT|pc|count|rgst[4]~16\);

-- Location: FF_X75_Y45_N17
\ROMeCOUNT|pc|count|rgst[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RAMeDISP|clk_div~clkctrl_outclk\,
	d => \ROMeCOUNT|pc|count|rgst[4]~15_combout\,
	clrn => \RST_HW~input_o\,
	sclr => \ROMeCOUNT|pc|count|rgst[11]~19_combout\,
	ena => \ROMeCOUNT|feDe|estado~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ROMeCOUNT|pc|count|rgst\(4));

-- Location: LCCOMB_X75_Y45_N18
\ROMeCOUNT|pc|count|rgst[5]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ROMeCOUNT|pc|count|rgst[5]~17_combout\ = (\ROMeCOUNT|pc|count|rgst\(5) & (!\ROMeCOUNT|pc|count|rgst[4]~16\)) # (!\ROMeCOUNT|pc|count|rgst\(5) & ((\ROMeCOUNT|pc|count|rgst[4]~16\) # (GND)))
-- \ROMeCOUNT|pc|count|rgst[5]~18\ = CARRY((!\ROMeCOUNT|pc|count|rgst[4]~16\) # (!\ROMeCOUNT|pc|count|rgst\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ROMeCOUNT|pc|count|rgst\(5),
	datad => VCC,
	cin => \ROMeCOUNT|pc|count|rgst[4]~16\,
	combout => \ROMeCOUNT|pc|count|rgst[5]~17_combout\,
	cout => \ROMeCOUNT|pc|count|rgst[5]~18\);

-- Location: FF_X75_Y45_N19
\ROMeCOUNT|pc|count|rgst[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RAMeDISP|clk_div~clkctrl_outclk\,
	d => \ROMeCOUNT|pc|count|rgst[5]~17_combout\,
	clrn => \RST_HW~input_o\,
	sclr => \ROMeCOUNT|pc|count|rgst[11]~19_combout\,
	ena => \ROMeCOUNT|feDe|estado~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ROMeCOUNT|pc|count|rgst\(5));

-- Location: LCCOMB_X75_Y45_N30
\ROMeCOUNT|r0m|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ROMeCOUNT|r0m|Mux0~0_combout\ = (!\ROMeCOUNT|pc|count|rgst\(0) & (!\ROMeCOUNT|pc|count|rgst\(1) & (\ROMeCOUNT|pc|count|rgst\(2) $ (\ROMeCOUNT|pc|count|rgst\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROMeCOUNT|pc|count|rgst\(0),
	datab => \ROMeCOUNT|pc|count|rgst\(1),
	datac => \ROMeCOUNT|pc|count|rgst\(2),
	datad => \ROMeCOUNT|pc|count|rgst\(5),
	combout => \ROMeCOUNT|r0m|Mux0~0_combout\);

-- Location: LCCOMB_X75_Y45_N20
\ROMeCOUNT|pc|count|rgst[6]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ROMeCOUNT|pc|count|rgst[6]~20_combout\ = \ROMeCOUNT|pc|count|rgst[5]~18\ $ (!\ROMeCOUNT|pc|count|rgst\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \ROMeCOUNT|pc|count|rgst\(6),
	cin => \ROMeCOUNT|pc|count|rgst[5]~18\,
	combout => \ROMeCOUNT|pc|count|rgst[6]~20_combout\);

-- Location: FF_X75_Y45_N21
\ROMeCOUNT|pc|count|rgst[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RAMeDISP|clk_div~clkctrl_outclk\,
	d => \ROMeCOUNT|pc|count|rgst[6]~20_combout\,
	clrn => \RST_HW~input_o\,
	sclr => \ROMeCOUNT|pc|count|rgst[11]~19_combout\,
	ena => \ROMeCOUNT|feDe|estado~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ROMeCOUNT|pc|count|rgst\(6));

-- Location: LCCOMB_X75_Y45_N6
\ROMeCOUNT|r0m|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ROMeCOUNT|r0m|Mux0~1_combout\ = (\ROMeCOUNT|r0m|Mux0~0_combout\ & (!\ROMeCOUNT|pc|count|rgst\(4) & (!\ROMeCOUNT|pc|count|rgst\(3) & !\ROMeCOUNT|pc|count|rgst\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROMeCOUNT|r0m|Mux0~0_combout\,
	datab => \ROMeCOUNT|pc|count|rgst\(4),
	datac => \ROMeCOUNT|pc|count|rgst\(3),
	datad => \ROMeCOUNT|pc|count|rgst\(6),
	combout => \ROMeCOUNT|r0m|Mux0~1_combout\);

-- Location: FF_X75_Y45_N7
\ROMeCOUNT|r0m|dado[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RAMeDISP|clk_div~clkctrl_outclk\,
	d => \ROMeCOUNT|r0m|Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ROMeCOUNT|r0m|dado\(7));

-- Location: LCCOMB_X75_Y45_N4
\ROMeCOUNT|pc|count|rgst[11]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ROMeCOUNT|pc|count|rgst[11]~19_combout\ = (\ROMeCOUNT|r0m|dado\(7)) # (!\RST_HW~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST_HW~input_o\,
	datad => \ROMeCOUNT|r0m|dado\(7),
	combout => \ROMeCOUNT|pc|count|rgst[11]~19_combout\);

-- Location: FF_X75_Y45_N9
\ROMeCOUNT|pc|count|rgst[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RAMeDISP|clk_div~clkctrl_outclk\,
	d => \ROMeCOUNT|pc|count|rgst[0]~7_combout\,
	clrn => \RST_HW~input_o\,
	sclr => \ROMeCOUNT|pc|count|rgst[11]~19_combout\,
	ena => \ROMeCOUNT|feDe|estado~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ROMeCOUNT|pc|count|rgst\(0));

-- Location: LCCOMB_X75_Y45_N10
\ROMeCOUNT|pc|count|rgst[1]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ROMeCOUNT|pc|count|rgst[1]~9_combout\ = (\ROMeCOUNT|pc|count|rgst\(1) & (!\ROMeCOUNT|pc|count|rgst[0]~8\)) # (!\ROMeCOUNT|pc|count|rgst\(1) & ((\ROMeCOUNT|pc|count|rgst[0]~8\) # (GND)))
-- \ROMeCOUNT|pc|count|rgst[1]~10\ = CARRY((!\ROMeCOUNT|pc|count|rgst[0]~8\) # (!\ROMeCOUNT|pc|count|rgst\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ROMeCOUNT|pc|count|rgst\(1),
	datad => VCC,
	cin => \ROMeCOUNT|pc|count|rgst[0]~8\,
	combout => \ROMeCOUNT|pc|count|rgst[1]~9_combout\,
	cout => \ROMeCOUNT|pc|count|rgst[1]~10\);

-- Location: FF_X75_Y45_N11
\ROMeCOUNT|pc|count|rgst[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RAMeDISP|clk_div~clkctrl_outclk\,
	d => \ROMeCOUNT|pc|count|rgst[1]~9_combout\,
	clrn => \RST_HW~input_o\,
	sclr => \ROMeCOUNT|pc|count|rgst[11]~19_combout\,
	ena => \ROMeCOUNT|feDe|estado~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ROMeCOUNT|pc|count|rgst\(1));

-- Location: FF_X75_Y45_N13
\ROMeCOUNT|pc|count|rgst[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RAMeDISP|clk_div~clkctrl_outclk\,
	d => \ROMeCOUNT|pc|count|rgst[2]~11_combout\,
	clrn => \RST_HW~input_o\,
	sclr => \ROMeCOUNT|pc|count|rgst[11]~19_combout\,
	ena => \ROMeCOUNT|feDe|estado~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ROMeCOUNT|pc|count|rgst\(2));

-- Location: LCCOMB_X75_Y45_N28
\ROMeCOUNT|r0m|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ROMeCOUNT|r0m|Mux1~0_combout\ = (!\ROMeCOUNT|pc|count|rgst\(0) & (!\ROMeCOUNT|pc|count|rgst\(4) & (!\ROMeCOUNT|pc|count|rgst\(3) & !\ROMeCOUNT|pc|count|rgst\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROMeCOUNT|pc|count|rgst\(0),
	datab => \ROMeCOUNT|pc|count|rgst\(4),
	datac => \ROMeCOUNT|pc|count|rgst\(3),
	datad => \ROMeCOUNT|pc|count|rgst\(6),
	combout => \ROMeCOUNT|r0m|Mux1~0_combout\);

-- Location: LCCOMB_X75_Y45_N22
\ROMeCOUNT|r0m|Mux1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ROMeCOUNT|r0m|Mux1~1_combout\ = (\ROMeCOUNT|pc|count|rgst\(2) & (!\ROMeCOUNT|pc|count|rgst\(5) & (!\ROMeCOUNT|pc|count|rgst\(1) & \ROMeCOUNT|r0m|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROMeCOUNT|pc|count|rgst\(2),
	datab => \ROMeCOUNT|pc|count|rgst\(5),
	datac => \ROMeCOUNT|pc|count|rgst\(1),
	datad => \ROMeCOUNT|r0m|Mux1~0_combout\,
	combout => \ROMeCOUNT|r0m|Mux1~1_combout\);

-- Location: FF_X75_Y45_N23
\ROMeCOUNT|r0m|dado[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RAMeDISP|clk_div~clkctrl_outclk\,
	d => \ROMeCOUNT|r0m|Mux1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ROMeCOUNT|r0m|dado\(4));

-- Location: LCCOMB_X75_Y45_N0
\RAMeDISP|add_reg[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|add_reg[0]~feeder_combout\ = \ROMeCOUNT|r0m|dado\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ROMeCOUNT|r0m|dado\(4),
	combout => \RAMeDISP|add_reg[0]~feeder_combout\);

-- Location: FF_X75_Y45_N1
\RAMeDISP|add_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RAMeDISP|clk_div~clkctrl_outclk\,
	d => \RAMeDISP|add_reg[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAMeDISP|add_reg\(0));

-- Location: LCCOMB_X75_Y45_N26
\RAMeDISP|add_reg[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|add_reg[6]~feeder_combout\ = \ROMeCOUNT|r0m|dado\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ROMeCOUNT|r0m|dado\(7),
	combout => \RAMeDISP|add_reg[6]~feeder_combout\);

-- Location: FF_X75_Y45_N27
\RAMeDISP|add_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RAMeDISP|clk_div~clkctrl_outclk\,
	d => \RAMeDISP|add_reg[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAMeDISP|add_reg\(6));

-- Location: LCCOMB_X75_Y49_N20
\RAMeDISP|H1|Display[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|H1|Display[1]~0_combout\ = (!\RAMeDISP|add_reg\(0) & \RAMeDISP|add_reg\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAMeDISP|add_reg\(0),
	datac => \RAMeDISP|add_reg\(6),
	combout => \RAMeDISP|H1|Display[1]~0_combout\);

-- Location: LCCOMB_X75_Y49_N14
\RAMeDISP|H1|Equal3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|H1|Equal3~0_combout\ = (\RAMeDISP|add_reg\(0) & !\RAMeDISP|add_reg\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAMeDISP|add_reg\(0),
	datac => \RAMeDISP|add_reg\(6),
	combout => \RAMeDISP|H1|Equal3~0_combout\);

-- Location: LCCOMB_X75_Y49_N0
\RAMeDISP|H1|Equal3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|H1|Equal3~1_combout\ = (\RAMeDISP|add_reg\(0) & \RAMeDISP|add_reg\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAMeDISP|add_reg\(0),
	datac => \RAMeDISP|add_reg\(6),
	combout => \RAMeDISP|H1|Equal3~1_combout\);

-- Location: FF_X75_Y41_N15
\RAMeDISP|conteudo_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RAMeDISP|clk_div~clkctrl_outclk\,
	asdata => \ROMeCOUNT|pc|count|rgst\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAMeDISP|conteudo_reg\(1));

-- Location: FF_X75_Y41_N7
\RAMeDISP|conteudo_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RAMeDISP|clk_div~clkctrl_outclk\,
	asdata => \ROMeCOUNT|pc|count|rgst\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAMeDISP|conteudo_reg\(4));

-- Location: FF_X75_Y41_N11
\RAMeDISP|conteudo_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RAMeDISP|clk_div~clkctrl_outclk\,
	asdata => \ROMeCOUNT|pc|count|rgst\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAMeDISP|conteudo_reg\(2));

-- Location: FF_X75_Y41_N1
\RAMeDISP|conteudo_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RAMeDISP|clk_div~clkctrl_outclk\,
	asdata => \ROMeCOUNT|pc|count|rgst\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAMeDISP|conteudo_reg\(6));

-- Location: FF_X75_Y41_N25
\RAMeDISP|conteudo_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RAMeDISP|clk_div~clkctrl_outclk\,
	asdata => \ROMeCOUNT|pc|count|rgst\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAMeDISP|conteudo_reg\(3));

-- Location: LCCOMB_X75_Y41_N18
\RAMeDISP|Mux6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|Mux6~1_combout\ = (\RAMeDISP|conteudo_reg\(4) & ((\RAMeDISP|conteudo_reg\(2) & (\RAMeDISP|conteudo_reg\(6))) # (!\RAMeDISP|conteudo_reg\(2) & ((!\RAMeDISP|conteudo_reg\(3)))))) # (!\RAMeDISP|conteudo_reg\(4) & (\RAMeDISP|conteudo_reg\(3) & 
-- ((\RAMeDISP|conteudo_reg\(2)) # (\RAMeDISP|conteudo_reg\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAMeDISP|conteudo_reg\(4),
	datab => \RAMeDISP|conteudo_reg\(2),
	datac => \RAMeDISP|conteudo_reg\(6),
	datad => \RAMeDISP|conteudo_reg\(3),
	combout => \RAMeDISP|Mux6~1_combout\);

-- Location: LCCOMB_X75_Y41_N16
\RAMeDISP|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|Mux6~0_combout\ = (\RAMeDISP|conteudo_reg\(2) & ((\RAMeDISP|conteudo_reg\(6) & ((!\RAMeDISP|conteudo_reg\(3)))) # (!\RAMeDISP|conteudo_reg\(6) & (\RAMeDISP|conteudo_reg\(4) & \RAMeDISP|conteudo_reg\(3))))) # (!\RAMeDISP|conteudo_reg\(2) & 
-- (\RAMeDISP|conteudo_reg\(4) $ (((!\RAMeDISP|conteudo_reg\(6) & \RAMeDISP|conteudo_reg\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAMeDISP|conteudo_reg\(4),
	datab => \RAMeDISP|conteudo_reg\(2),
	datac => \RAMeDISP|conteudo_reg\(6),
	datad => \RAMeDISP|conteudo_reg\(3),
	combout => \RAMeDISP|Mux6~0_combout\);

-- Location: LCCOMB_X75_Y41_N28
\RAMeDISP|Mux6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|Mux6~2_combout\ = (\RAMeDISP|Mux6~1_combout\ & (\RAMeDISP|conteudo_reg\(1) $ (((!\RAMeDISP|Mux6~0_combout\) # (!\RAMeDISP|conteudo_reg\(6)))))) # (!\RAMeDISP|Mux6~1_combout\ & (\RAMeDISP|conteudo_reg\(1) & ((!\RAMeDISP|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAMeDISP|conteudo_reg\(1),
	datab => \RAMeDISP|Mux6~1_combout\,
	datac => \RAMeDISP|conteudo_reg\(6),
	datad => \RAMeDISP|Mux6~0_combout\,
	combout => \RAMeDISP|Mux6~2_combout\);

-- Location: LCCOMB_X75_Y41_N30
\RAMeDISP|Mux6~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|Mux6~3_combout\ = (\RAMeDISP|conteudo_reg\(6) & (\RAMeDISP|Mux6~0_combout\ $ (((\RAMeDISP|conteudo_reg\(1) & \RAMeDISP|Mux6~1_combout\))))) # (!\RAMeDISP|conteudo_reg\(6) & (\RAMeDISP|Mux6~0_combout\ & (\RAMeDISP|conteudo_reg\(1) $ 
-- (!\RAMeDISP|Mux6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAMeDISP|conteudo_reg\(1),
	datab => \RAMeDISP|Mux6~1_combout\,
	datac => \RAMeDISP|conteudo_reg\(6),
	datad => \RAMeDISP|Mux6~0_combout\,
	combout => \RAMeDISP|Mux6~3_combout\);

-- Location: LCCOMB_X75_Y41_N20
\RAMeDISP|conteudo_reg[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|conteudo_reg[5]~feeder_combout\ = \ROMeCOUNT|pc|count|rgst\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ROMeCOUNT|pc|count|rgst\(5),
	combout => \RAMeDISP|conteudo_reg[5]~feeder_combout\);

-- Location: FF_X75_Y41_N21
\RAMeDISP|conteudo_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RAMeDISP|clk_div~clkctrl_outclk\,
	d => \RAMeDISP|conteudo_reg[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAMeDISP|conteudo_reg\(5));

-- Location: LCCOMB_X75_Y41_N4
\RAMeDISP|Mux6~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|Mux6~4_combout\ = (\RAMeDISP|Mux6~2_combout\ & (\RAMeDISP|Mux6~3_combout\ $ (!\RAMeDISP|conteudo_reg\(5)))) # (!\RAMeDISP|Mux6~2_combout\ & (!\RAMeDISP|Mux6~3_combout\ & \RAMeDISP|conteudo_reg\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAMeDISP|Mux6~2_combout\,
	datac => \RAMeDISP|Mux6~3_combout\,
	datad => \RAMeDISP|conteudo_reg\(5),
	combout => \RAMeDISP|Mux6~4_combout\);

-- Location: LCCOMB_X75_Y41_N22
\RAMeDISP|Mux5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|Mux5~3_combout\ = (\RAMeDISP|conteudo_reg\(4) & (!\RAMeDISP|conteudo_reg\(5) & (!\RAMeDISP|conteudo_reg\(2) & !\RAMeDISP|conteudo_reg\(6)))) # (!\RAMeDISP|conteudo_reg\(4) & ((\RAMeDISP|conteudo_reg\(5) & (\RAMeDISP|conteudo_reg\(2) $ 
-- (\RAMeDISP|conteudo_reg\(6)))) # (!\RAMeDISP|conteudo_reg\(5) & (\RAMeDISP|conteudo_reg\(2) & \RAMeDISP|conteudo_reg\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAMeDISP|conteudo_reg\(4),
	datab => \RAMeDISP|conteudo_reg\(5),
	datac => \RAMeDISP|conteudo_reg\(2),
	datad => \RAMeDISP|conteudo_reg\(6),
	combout => \RAMeDISP|Mux5~3_combout\);

-- Location: LCCOMB_X74_Y41_N22
\RAMeDISP|Mux5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|Mux5~2_combout\ = (\RAMeDISP|conteudo_reg\(5) & (!\RAMeDISP|conteudo_reg\(6) & ((\RAMeDISP|conteudo_reg\(2)) # (!\RAMeDISP|conteudo_reg\(4))))) # (!\RAMeDISP|conteudo_reg\(5) & (\RAMeDISP|conteudo_reg\(2) $ (\RAMeDISP|conteudo_reg\(6) $ 
-- (\RAMeDISP|conteudo_reg\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAMeDISP|conteudo_reg\(5),
	datab => \RAMeDISP|conteudo_reg\(2),
	datac => \RAMeDISP|conteudo_reg\(6),
	datad => \RAMeDISP|conteudo_reg\(4),
	combout => \RAMeDISP|Mux5~2_combout\);

-- Location: LCCOMB_X74_Y41_N24
\RAMeDISP|Mux5~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|Mux5~4_combout\ = (\RAMeDISP|conteudo_reg\(5) & ((\RAMeDISP|conteudo_reg\(4) & ((!\RAMeDISP|conteudo_reg\(6)))) # (!\RAMeDISP|conteudo_reg\(4) & (!\RAMeDISP|conteudo_reg\(2))))) # (!\RAMeDISP|conteudo_reg\(5) & (!\RAMeDISP|conteudo_reg\(2) & 
-- (\RAMeDISP|conteudo_reg\(6) & \RAMeDISP|conteudo_reg\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAMeDISP|conteudo_reg\(5),
	datab => \RAMeDISP|conteudo_reg\(2),
	datac => \RAMeDISP|conteudo_reg\(6),
	datad => \RAMeDISP|conteudo_reg\(4),
	combout => \RAMeDISP|Mux5~4_combout\);

-- Location: LCCOMB_X74_Y41_N0
\RAMeDISP|Mux5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|Mux5~1_combout\ = (\RAMeDISP|conteudo_reg\(3) & ((\RAMeDISP|conteudo_reg\(5)) # (!\RAMeDISP|conteudo_reg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAMeDISP|conteudo_reg\(1),
	datac => \RAMeDISP|conteudo_reg\(5),
	datad => \RAMeDISP|conteudo_reg\(3),
	combout => \RAMeDISP|Mux5~1_combout\);

-- Location: LCCOMB_X74_Y42_N28
\RAMeDISP|Mux5~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|Mux5~5_combout\ = (\RAMeDISP|Mux5~3_combout\ & (((!\RAMeDISP|Mux5~4_combout\ & \RAMeDISP|Mux5~1_combout\)))) # (!\RAMeDISP|Mux5~3_combout\ & (\RAMeDISP|Mux5~2_combout\ & ((!\RAMeDISP|Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAMeDISP|Mux5~3_combout\,
	datab => \RAMeDISP|Mux5~2_combout\,
	datac => \RAMeDISP|Mux5~4_combout\,
	datad => \RAMeDISP|Mux5~1_combout\,
	combout => \RAMeDISP|Mux5~5_combout\);

-- Location: LCCOMB_X75_Y45_N24
\RAMeDISP|conteudo_reg[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|conteudo_reg[0]~feeder_combout\ = \ROMeCOUNT|pc|count|rgst\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ROMeCOUNT|pc|count|rgst\(0),
	combout => \RAMeDISP|conteudo_reg[0]~feeder_combout\);

-- Location: FF_X75_Y45_N25
\RAMeDISP|conteudo_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RAMeDISP|clk_div~clkctrl_outclk\,
	d => \RAMeDISP|conteudo_reg[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAMeDISP|conteudo_reg\(0));

-- Location: LCCOMB_X74_Y41_N18
\RAMeDISP|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|Mux5~0_combout\ = (\RAMeDISP|conteudo_reg\(3) & (\RAMeDISP|conteudo_reg\(0) & (\RAMeDISP|conteudo_reg\(5) $ (!\RAMeDISP|conteudo_reg\(1))))) # (!\RAMeDISP|conteudo_reg\(3) & (((\RAMeDISP|conteudo_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAMeDISP|conteudo_reg\(3),
	datab => \RAMeDISP|conteudo_reg\(5),
	datac => \RAMeDISP|conteudo_reg\(1),
	datad => \RAMeDISP|conteudo_reg\(0),
	combout => \RAMeDISP|Mux5~0_combout\);

-- Location: LCCOMB_X74_Y42_N18
\RAMeDISP|Mux5~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|Mux5~6_combout\ = (\RAMeDISP|Mux5~3_combout\ & (!\RAMeDISP|Mux5~1_combout\ & (\RAMeDISP|Mux5~2_combout\ $ (\RAMeDISP|Mux5~4_combout\)))) # (!\RAMeDISP|Mux5~3_combout\ & (\RAMeDISP|Mux5~4_combout\ & (\RAMeDISP|Mux5~2_combout\ $ 
-- (\RAMeDISP|Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAMeDISP|Mux5~3_combout\,
	datab => \RAMeDISP|Mux5~2_combout\,
	datac => \RAMeDISP|Mux5~4_combout\,
	datad => \RAMeDISP|Mux5~1_combout\,
	combout => \RAMeDISP|Mux5~6_combout\);

-- Location: LCCOMB_X74_Y42_N8
\RAMeDISP|Mux5~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|Mux5~7_combout\ = \RAMeDISP|Mux5~5_combout\ $ (((!\RAMeDISP|Mux5~0_combout\ & \RAMeDISP|Mux5~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAMeDISP|Mux5~5_combout\,
	datac => \RAMeDISP|Mux5~0_combout\,
	datad => \RAMeDISP|Mux5~6_combout\,
	combout => \RAMeDISP|Mux5~7_combout\);

-- Location: LCCOMB_X74_Y41_N12
\RAMeDISP|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|Mux4~0_combout\ = (\RAMeDISP|conteudo_reg\(1) & (\RAMeDISP|conteudo_reg\(5) $ (((\RAMeDISP|conteudo_reg\(6) & \RAMeDISP|conteudo_reg\(3)))))) # (!\RAMeDISP|conteudo_reg\(1) & (!\RAMeDISP|conteudo_reg\(5) & (\RAMeDISP|conteudo_reg\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAMeDISP|conteudo_reg\(5),
	datab => \RAMeDISP|conteudo_reg\(1),
	datac => \RAMeDISP|conteudo_reg\(6),
	datad => \RAMeDISP|conteudo_reg\(3),
	combout => \RAMeDISP|Mux4~0_combout\);

-- Location: LCCOMB_X74_Y41_N26
\RAMeDISP|Mux4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|Mux4~1_combout\ = (\RAMeDISP|conteudo_reg\(5) & ((\RAMeDISP|conteudo_reg\(1) & (\RAMeDISP|conteudo_reg\(6))) # (!\RAMeDISP|conteudo_reg\(1) & ((\RAMeDISP|conteudo_reg\(3)) # (!\RAMeDISP|conteudo_reg\(6)))))) # (!\RAMeDISP|conteudo_reg\(5) & 
-- (\RAMeDISP|conteudo_reg\(1) & ((\RAMeDISP|conteudo_reg\(3)) # (!\RAMeDISP|conteudo_reg\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAMeDISP|conteudo_reg\(5),
	datab => \RAMeDISP|conteudo_reg\(1),
	datac => \RAMeDISP|conteudo_reg\(6),
	datad => \RAMeDISP|conteudo_reg\(3),
	combout => \RAMeDISP|Mux4~1_combout\);

-- Location: LCCOMB_X74_Y41_N2
\RAMeDISP|Mux4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|Mux4~3_combout\ = (\RAMeDISP|Mux4~1_combout\ & (\RAMeDISP|conteudo_reg\(4) & (!\RAMeDISP|conteudo_reg\(2) & !\RAMeDISP|conteudo_reg\(3)))) # (!\RAMeDISP|Mux4~1_combout\ & (\RAMeDISP|conteudo_reg\(3) & ((\RAMeDISP|conteudo_reg\(4)) # 
-- (!\RAMeDISP|conteudo_reg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAMeDISP|conteudo_reg\(4),
	datab => \RAMeDISP|conteudo_reg\(2),
	datac => \RAMeDISP|Mux4~1_combout\,
	datad => \RAMeDISP|conteudo_reg\(3),
	combout => \RAMeDISP|Mux4~3_combout\);

-- Location: LCCOMB_X74_Y41_N8
\RAMeDISP|Mux4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|Mux4~2_combout\ = (\RAMeDISP|conteudo_reg\(4) & (!\RAMeDISP|conteudo_reg\(2) & (!\RAMeDISP|Mux4~1_combout\ & \RAMeDISP|conteudo_reg\(3)))) # (!\RAMeDISP|conteudo_reg\(4) & ((\RAMeDISP|conteudo_reg\(2) & (\RAMeDISP|Mux4~1_combout\ $ 
-- (!\RAMeDISP|conteudo_reg\(3)))) # (!\RAMeDISP|conteudo_reg\(2) & (\RAMeDISP|Mux4~1_combout\ & !\RAMeDISP|conteudo_reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAMeDISP|conteudo_reg\(4),
	datab => \RAMeDISP|conteudo_reg\(2),
	datac => \RAMeDISP|Mux4~1_combout\,
	datad => \RAMeDISP|conteudo_reg\(3),
	combout => \RAMeDISP|Mux4~2_combout\);

-- Location: LCCOMB_X74_Y41_N4
\RAMeDISP|Mux4~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|Mux4~4_combout\ = (\RAMeDISP|Mux4~0_combout\ & (\RAMeDISP|Mux4~2_combout\ & ((\RAMeDISP|conteudo_reg\(0)) # (!\RAMeDISP|Mux4~3_combout\)))) # (!\RAMeDISP|Mux4~0_combout\ & (\RAMeDISP|Mux4~3_combout\ & (!\RAMeDISP|Mux4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAMeDISP|Mux4~0_combout\,
	datab => \RAMeDISP|Mux4~3_combout\,
	datac => \RAMeDISP|Mux4~2_combout\,
	datad => \RAMeDISP|conteudo_reg\(0),
	combout => \RAMeDISP|Mux4~4_combout\);

-- Location: LCCOMB_X74_Y41_N30
\RAMeDISP|H3|Display[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|H3|Display[0]~0_combout\ = (\RAMeDISP|Mux5~7_combout\ & (!\RAMeDISP|Mux6~4_combout\ & (\RAMeDISP|Mux4~4_combout\ $ (!\RAMeDISP|conteudo_reg\(0))))) # (!\RAMeDISP|Mux5~7_combout\ & (\RAMeDISP|conteudo_reg\(0) & (\RAMeDISP|Mux6~4_combout\ $ 
-- (!\RAMeDISP|Mux4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAMeDISP|Mux6~4_combout\,
	datab => \RAMeDISP|Mux5~7_combout\,
	datac => \RAMeDISP|Mux4~4_combout\,
	datad => \RAMeDISP|conteudo_reg\(0),
	combout => \RAMeDISP|H3|Display[0]~0_combout\);

-- Location: LCCOMB_X74_Y41_N28
\RAMeDISP|H3|Display[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|H3|Display[1]~1_combout\ = (\RAMeDISP|Mux6~4_combout\ & ((\RAMeDISP|conteudo_reg\(0) & ((\RAMeDISP|Mux4~4_combout\))) # (!\RAMeDISP|conteudo_reg\(0) & (\RAMeDISP|Mux5~7_combout\)))) # (!\RAMeDISP|Mux6~4_combout\ & (\RAMeDISP|Mux5~7_combout\ & 
-- (\RAMeDISP|Mux4~4_combout\ $ (\RAMeDISP|conteudo_reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAMeDISP|Mux6~4_combout\,
	datab => \RAMeDISP|Mux5~7_combout\,
	datac => \RAMeDISP|Mux4~4_combout\,
	datad => \RAMeDISP|conteudo_reg\(0),
	combout => \RAMeDISP|H3|Display[1]~1_combout\);

-- Location: LCCOMB_X74_Y41_N10
\RAMeDISP|H3|Display[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|H3|Display[2]~2_combout\ = (\RAMeDISP|Mux5~7_combout\ & (\RAMeDISP|Mux4~4_combout\ & ((\RAMeDISP|Mux6~4_combout\) # (!\RAMeDISP|conteudo_reg\(0))))) # (!\RAMeDISP|Mux5~7_combout\ & (\RAMeDISP|Mux6~4_combout\ & (!\RAMeDISP|Mux4~4_combout\ & 
-- !\RAMeDISP|conteudo_reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAMeDISP|Mux6~4_combout\,
	datab => \RAMeDISP|Mux5~7_combout\,
	datac => \RAMeDISP|Mux4~4_combout\,
	datad => \RAMeDISP|conteudo_reg\(0),
	combout => \RAMeDISP|H3|Display[2]~2_combout\);

-- Location: LCCOMB_X74_Y41_N16
\RAMeDISP|H3|Display[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|H3|Display[3]~3_combout\ = (\RAMeDISP|Mux6~4_combout\ & ((\RAMeDISP|Mux5~7_combout\ & ((\RAMeDISP|conteudo_reg\(0)))) # (!\RAMeDISP|Mux5~7_combout\ & (\RAMeDISP|Mux4~4_combout\ & !\RAMeDISP|conteudo_reg\(0))))) # (!\RAMeDISP|Mux6~4_combout\ & 
-- (!\RAMeDISP|Mux4~4_combout\ & (\RAMeDISP|Mux5~7_combout\ $ (\RAMeDISP|conteudo_reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAMeDISP|Mux6~4_combout\,
	datab => \RAMeDISP|Mux5~7_combout\,
	datac => \RAMeDISP|Mux4~4_combout\,
	datad => \RAMeDISP|conteudo_reg\(0),
	combout => \RAMeDISP|H3|Display[3]~3_combout\);

-- Location: LCCOMB_X74_Y41_N14
\RAMeDISP|H3|Display[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|H3|Display[4]~4_combout\ = (\RAMeDISP|Mux6~4_combout\ & (((!\RAMeDISP|Mux4~4_combout\ & \RAMeDISP|conteudo_reg\(0))))) # (!\RAMeDISP|Mux6~4_combout\ & ((\RAMeDISP|Mux5~7_combout\ & (!\RAMeDISP|Mux4~4_combout\)) # (!\RAMeDISP|Mux5~7_combout\ & 
-- ((\RAMeDISP|conteudo_reg\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAMeDISP|Mux6~4_combout\,
	datab => \RAMeDISP|Mux5~7_combout\,
	datac => \RAMeDISP|Mux4~4_combout\,
	datad => \RAMeDISP|conteudo_reg\(0),
	combout => \RAMeDISP|H3|Display[4]~4_combout\);

-- Location: LCCOMB_X74_Y41_N20
\RAMeDISP|H3|Display[5]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|H3|Display[5]~5_combout\ = (\RAMeDISP|Mux6~4_combout\ & (!\RAMeDISP|Mux4~4_combout\ & ((\RAMeDISP|conteudo_reg\(0)) # (!\RAMeDISP|Mux5~7_combout\)))) # (!\RAMeDISP|Mux6~4_combout\ & (\RAMeDISP|conteudo_reg\(0) & (\RAMeDISP|Mux5~7_combout\ $ 
-- (!\RAMeDISP|Mux4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAMeDISP|Mux6~4_combout\,
	datab => \RAMeDISP|Mux5~7_combout\,
	datac => \RAMeDISP|Mux4~4_combout\,
	datad => \RAMeDISP|conteudo_reg\(0),
	combout => \RAMeDISP|H3|Display[5]~5_combout\);

-- Location: LCCOMB_X74_Y41_N6
\RAMeDISP|H3|Display[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|H3|Display[6]~6_combout\ = (\RAMeDISP|conteudo_reg\(0) & (!\RAMeDISP|Mux4~4_combout\ & (\RAMeDISP|Mux6~4_combout\ $ (!\RAMeDISP|Mux5~7_combout\)))) # (!\RAMeDISP|conteudo_reg\(0) & (!\RAMeDISP|Mux6~4_combout\ & (\RAMeDISP|Mux5~7_combout\ $ 
-- (!\RAMeDISP|Mux4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100101000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAMeDISP|Mux6~4_combout\,
	datab => \RAMeDISP|Mux5~7_combout\,
	datac => \RAMeDISP|Mux4~4_combout\,
	datad => \RAMeDISP|conteudo_reg\(0),
	combout => \RAMeDISP|H3|Display[6]~6_combout\);

-- Location: LCCOMB_X75_Y41_N10
\RAMeDISP|H4|Display[0]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|H4|Display[0]~22_combout\ = (\RAMeDISP|conteudo_reg\(2) & (((!\RAMeDISP|conteudo_reg\(4))))) # (!\RAMeDISP|conteudo_reg\(2) & ((\RAMeDISP|conteudo_reg\(1) & ((!\RAMeDISP|conteudo_reg\(4)) # (!\RAMeDISP|conteudo_reg\(5)))) # 
-- (!\RAMeDISP|conteudo_reg\(1) & ((\RAMeDISP|conteudo_reg\(5)) # (\RAMeDISP|conteudo_reg\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAMeDISP|conteudo_reg\(1),
	datab => \RAMeDISP|conteudo_reg\(5),
	datac => \RAMeDISP|conteudo_reg\(2),
	datad => \RAMeDISP|conteudo_reg\(4),
	combout => \RAMeDISP|H4|Display[0]~22_combout\);

-- Location: LCCOMB_X75_Y41_N6
\RAMeDISP|H4|Display[0]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|H4|Display[0]~23_combout\ = (!\RAMeDISP|conteudo_reg\(6) & (\RAMeDISP|H4|Display[0]~22_combout\ & (\RAMeDISP|conteudo_reg\(3) $ (\RAMeDISP|conteudo_reg\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAMeDISP|conteudo_reg\(6),
	datab => \RAMeDISP|conteudo_reg\(3),
	datac => \RAMeDISP|conteudo_reg\(4),
	datad => \RAMeDISP|H4|Display[0]~22_combout\,
	combout => \RAMeDISP|H4|Display[0]~23_combout\);

-- Location: LCCOMB_X75_Y41_N8
\RAMeDISP|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|Mux0~0_combout\ = (\RAMeDISP|conteudo_reg\(6) & (\RAMeDISP|conteudo_reg\(4) $ (\RAMeDISP|conteudo_reg\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAMeDISP|conteudo_reg\(4),
	datac => \RAMeDISP|conteudo_reg\(6),
	datad => \RAMeDISP|conteudo_reg\(5),
	combout => \RAMeDISP|Mux0~0_combout\);

-- Location: LCCOMB_X75_Y41_N2
\RAMeDISP|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|Mux2~0_combout\ = (\RAMeDISP|conteudo_reg\(4) & ((\RAMeDISP|conteudo_reg\(5) & (\RAMeDISP|conteudo_reg\(2) & \RAMeDISP|conteudo_reg\(3))) # (!\RAMeDISP|conteudo_reg\(5) & ((\RAMeDISP|conteudo_reg\(2)) # (\RAMeDISP|conteudo_reg\(3)))))) # 
-- (!\RAMeDISP|conteudo_reg\(4) & (\RAMeDISP|conteudo_reg\(5) $ (((\RAMeDISP|conteudo_reg\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAMeDISP|conteudo_reg\(4),
	datab => \RAMeDISP|conteudo_reg\(5),
	datac => \RAMeDISP|conteudo_reg\(2),
	datad => \RAMeDISP|conteudo_reg\(3),
	combout => \RAMeDISP|Mux2~0_combout\);

-- Location: LCCOMB_X75_Y41_N24
\RAMeDISP|Mux2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|Mux2~1_combout\ = (\RAMeDISP|conteudo_reg\(6) & (!\RAMeDISP|conteudo_reg\(4) & (\RAMeDISP|Mux2~0_combout\ $ (!\RAMeDISP|conteudo_reg\(3))))) # (!\RAMeDISP|conteudo_reg\(6) & (\RAMeDISP|Mux2~0_combout\ & ((\RAMeDISP|conteudo_reg\(4)) # 
-- (!\RAMeDISP|conteudo_reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAMeDISP|conteudo_reg\(6),
	datab => \RAMeDISP|Mux2~0_combout\,
	datac => \RAMeDISP|conteudo_reg\(3),
	datad => \RAMeDISP|conteudo_reg\(4),
	combout => \RAMeDISP|Mux2~1_combout\);

-- Location: LCCOMB_X75_Y41_N12
\RAMeDISP|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|Mux1~0_combout\ = (\RAMeDISP|conteudo_reg\(5) & (!\RAMeDISP|conteudo_reg\(6) & ((\RAMeDISP|conteudo_reg\(4)) # (\RAMeDISP|conteudo_reg\(3))))) # (!\RAMeDISP|conteudo_reg\(5) & (!\RAMeDISP|conteudo_reg\(4) & (\RAMeDISP|conteudo_reg\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAMeDISP|conteudo_reg\(4),
	datab => \RAMeDISP|conteudo_reg\(5),
	datac => \RAMeDISP|conteudo_reg\(6),
	datad => \RAMeDISP|conteudo_reg\(3),
	combout => \RAMeDISP|Mux1~0_combout\);

-- Location: LCCOMB_X75_Y41_N26
\RAMeDISP|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|Mux3~0_combout\ = (\RAMeDISP|conteudo_reg\(2) & (((\RAMeDISP|conteudo_reg\(6) & !\RAMeDISP|conteudo_reg\(3))))) # (!\RAMeDISP|conteudo_reg\(2) & (\RAMeDISP|conteudo_reg\(4) & (\RAMeDISP|conteudo_reg\(6) $ (\RAMeDISP|conteudo_reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAMeDISP|conteudo_reg\(4),
	datab => \RAMeDISP|conteudo_reg\(2),
	datac => \RAMeDISP|conteudo_reg\(6),
	datad => \RAMeDISP|conteudo_reg\(3),
	combout => \RAMeDISP|Mux3~0_combout\);

-- Location: LCCOMB_X76_Y41_N22
\RAMeDISP|Mux3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|Mux3~2_combout\ = (\RAMeDISP|Mux3~0_combout\ & (!\RAMeDISP|conteudo_reg\(5) & (\RAMeDISP|Mux6~1_combout\ $ (!\RAMeDISP|conteudo_reg\(3))))) # (!\RAMeDISP|Mux3~0_combout\ & ((\RAMeDISP|Mux6~1_combout\ & (\RAMeDISP|conteudo_reg\(5) & 
-- !\RAMeDISP|conteudo_reg\(3))) # (!\RAMeDISP|Mux6~1_combout\ & (!\RAMeDISP|conteudo_reg\(5) & \RAMeDISP|conteudo_reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAMeDISP|Mux3~0_combout\,
	datab => \RAMeDISP|Mux6~1_combout\,
	datac => \RAMeDISP|conteudo_reg\(5),
	datad => \RAMeDISP|conteudo_reg\(3),
	combout => \RAMeDISP|Mux3~2_combout\);

-- Location: LCCOMB_X76_Y41_N28
\RAMeDISP|Mux3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|Mux3~1_combout\ = (\RAMeDISP|Mux6~1_combout\ & (!\RAMeDISP|Mux3~0_combout\ & (!\RAMeDISP|conteudo_reg\(5)))) # (!\RAMeDISP|Mux6~1_combout\ & (\RAMeDISP|conteudo_reg\(5) & (\RAMeDISP|Mux3~0_combout\ $ (!\RAMeDISP|conteudo_reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAMeDISP|Mux3~0_combout\,
	datab => \RAMeDISP|Mux6~1_combout\,
	datac => \RAMeDISP|conteudo_reg\(5),
	datad => \RAMeDISP|conteudo_reg\(3),
	combout => \RAMeDISP|Mux3~1_combout\);

-- Location: LCCOMB_X76_Y41_N12
\RAMeDISP|Mux3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|Mux3~3_combout\ = (\RAMeDISP|Mux3~2_combout\ & (\RAMeDISP|conteudo_reg\(1) & !\RAMeDISP|Mux3~1_combout\)) # (!\RAMeDISP|Mux3~2_combout\ & ((\RAMeDISP|Mux3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAMeDISP|conteudo_reg\(1),
	datac => \RAMeDISP|Mux3~2_combout\,
	datad => \RAMeDISP|Mux3~1_combout\,
	combout => \RAMeDISP|Mux3~3_combout\);

-- Location: LCCOMB_X76_Y41_N2
\RAMeDISP|H4|Display[1]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|H4|Display[1]~16_combout\ = (\RAMeDISP|Mux0~0_combout\ & ((\RAMeDISP|Mux3~3_combout\ & (\RAMeDISP|Mux2~1_combout\)) # (!\RAMeDISP|Mux3~3_combout\ & ((\RAMeDISP|Mux1~0_combout\))))) # (!\RAMeDISP|Mux0~0_combout\ & (\RAMeDISP|Mux1~0_combout\ & 
-- (\RAMeDISP|Mux2~1_combout\ $ (\RAMeDISP|Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAMeDISP|Mux0~0_combout\,
	datab => \RAMeDISP|Mux2~1_combout\,
	datac => \RAMeDISP|Mux1~0_combout\,
	datad => \RAMeDISP|Mux3~3_combout\,
	combout => \RAMeDISP|H4|Display[1]~16_combout\);

-- Location: LCCOMB_X75_Y41_N14
\RAMeDISP|H4|Display[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|H4|Display[2]~4_combout\ = (\RAMeDISP|conteudo_reg\(2) & ((!\RAMeDISP|conteudo_reg\(3)) # (!\RAMeDISP|conteudo_reg\(1)))) # (!\RAMeDISP|conteudo_reg\(2) & ((\RAMeDISP|conteudo_reg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAMeDISP|conteudo_reg\(2),
	datac => \RAMeDISP|conteudo_reg\(1),
	datad => \RAMeDISP|conteudo_reg\(3),
	combout => \RAMeDISP|H4|Display[2]~4_combout\);

-- Location: LCCOMB_X75_Y41_N0
\RAMeDISP|H4|Display[2]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|H4|Display[2]~21_combout\ = (\RAMeDISP|conteudo_reg\(4) & (\RAMeDISP|H4|Display[2]~4_combout\ & (!\RAMeDISP|conteudo_reg\(6) & !\RAMeDISP|conteudo_reg\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAMeDISP|conteudo_reg\(4),
	datab => \RAMeDISP|H4|Display[2]~4_combout\,
	datac => \RAMeDISP|conteudo_reg\(6),
	datad => \RAMeDISP|conteudo_reg\(5),
	combout => \RAMeDISP|H4|Display[2]~21_combout\);

-- Location: LCCOMB_X76_Y41_N4
\RAMeDISP|H4|Display[3]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|H4|Display[3]~17_combout\ = (\RAMeDISP|Mux2~1_combout\ & ((\RAMeDISP|Mux1~0_combout\ & ((\RAMeDISP|Mux3~3_combout\))) # (!\RAMeDISP|Mux1~0_combout\ & (\RAMeDISP|Mux0~0_combout\ & !\RAMeDISP|Mux3~3_combout\)))) # (!\RAMeDISP|Mux2~1_combout\ & 
-- (!\RAMeDISP|Mux0~0_combout\ & (\RAMeDISP|Mux1~0_combout\ $ (\RAMeDISP|Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAMeDISP|Mux0~0_combout\,
	datab => \RAMeDISP|Mux2~1_combout\,
	datac => \RAMeDISP|Mux1~0_combout\,
	datad => \RAMeDISP|Mux3~3_combout\,
	combout => \RAMeDISP|H4|Display[3]~17_combout\);

-- Location: LCCOMB_X76_Y41_N14
\RAMeDISP|H4|Display[4]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|H4|Display[4]~18_combout\ = (\RAMeDISP|Mux2~1_combout\ & (!\RAMeDISP|Mux0~0_combout\ & ((\RAMeDISP|Mux3~3_combout\)))) # (!\RAMeDISP|Mux2~1_combout\ & ((\RAMeDISP|Mux1~0_combout\ & (!\RAMeDISP|Mux0~0_combout\)) # (!\RAMeDISP|Mux1~0_combout\ & 
-- ((\RAMeDISP|Mux3~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAMeDISP|Mux0~0_combout\,
	datab => \RAMeDISP|Mux2~1_combout\,
	datac => \RAMeDISP|Mux1~0_combout\,
	datad => \RAMeDISP|Mux3~3_combout\,
	combout => \RAMeDISP|H4|Display[4]~18_combout\);

-- Location: LCCOMB_X76_Y41_N8
\RAMeDISP|H4|Display[5]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|H4|Display[5]~19_combout\ = (\RAMeDISP|Mux2~1_combout\ & (!\RAMeDISP|Mux0~0_combout\ & ((\RAMeDISP|Mux3~3_combout\) # (!\RAMeDISP|Mux1~0_combout\)))) # (!\RAMeDISP|Mux2~1_combout\ & (\RAMeDISP|Mux3~3_combout\ & (\RAMeDISP|Mux0~0_combout\ $ 
-- (!\RAMeDISP|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAMeDISP|Mux0~0_combout\,
	datab => \RAMeDISP|Mux2~1_combout\,
	datac => \RAMeDISP|Mux1~0_combout\,
	datad => \RAMeDISP|Mux3~3_combout\,
	combout => \RAMeDISP|H4|Display[5]~19_combout\);

-- Location: LCCOMB_X76_Y41_N10
\RAMeDISP|H4|Display[6]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAMeDISP|H4|Display[6]~20_combout\ = (\RAMeDISP|Mux3~3_combout\ & (!\RAMeDISP|Mux0~0_combout\ & (\RAMeDISP|Mux2~1_combout\ $ (!\RAMeDISP|Mux1~0_combout\)))) # (!\RAMeDISP|Mux3~3_combout\ & (!\RAMeDISP|Mux2~1_combout\ & (\RAMeDISP|Mux0~0_combout\ $ 
-- (!\RAMeDISP|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAMeDISP|Mux0~0_combout\,
	datab => \RAMeDISP|Mux2~1_combout\,
	datac => \RAMeDISP|Mux1~0_combout\,
	datad => \RAMeDISP|Mux3~3_combout\,
	combout => \RAMeDISP|H4|Display[6]~20_combout\);

-- Location: IOIBUF_X49_Y54_N29
\KEY1_HW~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY1_HW,
	o => \KEY1_HW~input_o\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_HEX0_HW(0) <= \HEX0_HW[0]~output_o\;

ww_HEX0_HW(1) <= \HEX0_HW[1]~output_o\;

ww_HEX0_HW(2) <= \HEX0_HW[2]~output_o\;

ww_HEX0_HW(3) <= \HEX0_HW[3]~output_o\;

ww_HEX0_HW(4) <= \HEX0_HW[4]~output_o\;

ww_HEX0_HW(5) <= \HEX0_HW[5]~output_o\;

ww_HEX0_HW(6) <= \HEX0_HW[6]~output_o\;

ww_HEX1_HW(0) <= \HEX1_HW[0]~output_o\;

ww_HEX1_HW(1) <= \HEX1_HW[1]~output_o\;

ww_HEX1_HW(2) <= \HEX1_HW[2]~output_o\;

ww_HEX1_HW(3) <= \HEX1_HW[3]~output_o\;

ww_HEX1_HW(4) <= \HEX1_HW[4]~output_o\;

ww_HEX1_HW(5) <= \HEX1_HW[5]~output_o\;

ww_HEX1_HW(6) <= \HEX1_HW[6]~output_o\;

ww_HEX2_HW(0) <= \HEX2_HW[0]~output_o\;

ww_HEX2_HW(1) <= \HEX2_HW[1]~output_o\;

ww_HEX2_HW(2) <= \HEX2_HW[2]~output_o\;

ww_HEX2_HW(3) <= \HEX2_HW[3]~output_o\;

ww_HEX2_HW(4) <= \HEX2_HW[4]~output_o\;

ww_HEX2_HW(5) <= \HEX2_HW[5]~output_o\;

ww_HEX2_HW(6) <= \HEX2_HW[6]~output_o\;

ww_HEX3_HW(0) <= \HEX3_HW[0]~output_o\;

ww_HEX3_HW(1) <= \HEX3_HW[1]~output_o\;

ww_HEX3_HW(2) <= \HEX3_HW[2]~output_o\;

ww_HEX3_HW(3) <= \HEX3_HW[3]~output_o\;

ww_HEX3_HW(4) <= \HEX3_HW[4]~output_o\;

ww_HEX3_HW(5) <= \HEX3_HW[5]~output_o\;

ww_HEX3_HW(6) <= \HEX3_HW[6]~output_o\;

ww_HEX4_HW(0) <= \HEX4_HW[0]~output_o\;

ww_HEX4_HW(1) <= \HEX4_HW[1]~output_o\;

ww_HEX4_HW(2) <= \HEX4_HW[2]~output_o\;

ww_HEX4_HW(3) <= \HEX4_HW[3]~output_o\;

ww_HEX4_HW(4) <= \HEX4_HW[4]~output_o\;

ww_HEX4_HW(5) <= \HEX4_HW[5]~output_o\;

ww_HEX4_HW(6) <= \HEX4_HW[6]~output_o\;

ww_HEX5_HW(0) <= \HEX5_HW[0]~output_o\;

ww_HEX5_HW(1) <= \HEX5_HW[1]~output_o\;

ww_HEX5_HW(2) <= \HEX5_HW[2]~output_o\;

ww_HEX5_HW(3) <= \HEX5_HW[3]~output_o\;

ww_HEX5_HW(4) <= \HEX5_HW[4]~output_o\;

ww_HEX5_HW(5) <= \HEX5_HW[5]~output_o\;

ww_HEX5_HW(6) <= \HEX5_HW[6]~output_o\;
END structure;


