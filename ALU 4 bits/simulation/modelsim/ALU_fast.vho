-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Web Edition"

-- DATE "06/06/2018 08:43:22"

-- 
-- Device: Altera EP2C20F484C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ALU IS
    PORT (
	A : IN std_logic_vector(3 DOWNTO 0);
	B : IN std_logic_vector(3 DOWNTO 0);
	Op : IN std_logic_vector(3 DOWNTO 0);
	Ci : IN std_logic;
	R : OUT std_logic_vector(3 DOWNTO 0);
	Zo : OUT std_logic;
	Co : OUT std_logic
	);
END ALU;

-- Design Ports Information
-- R[0]	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R[1]	=>  Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R[2]	=>  Location: PIN_U19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R[3]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Zo	=>  Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Co	=>  Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Op[1]	=>  Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[0]	=>  Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[0]	=>  Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Op[0]	=>  Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Op[3]	=>  Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Op[2]	=>  Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[1]	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Ci	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[1]	=>  Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[2]	=>  Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[3]	=>  Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[2]	=>  Location: PIN_U11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[3]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF ALU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Op : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Ci : std_logic;
SIGNAL ww_R : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Zo : std_logic;
SIGNAL ww_Co : std_logic;
SIGNAL \Add4~3_combout\ : std_logic;
SIGNAL \Add4~7_combout\ : std_logic;
SIGNAL \Add4~11_combout\ : std_logic;
SIGNAL \Mux5~3_combout\ : std_logic;
SIGNAL \Mux5~4_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Mux4~3_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Ci~combout\ : std_logic;
SIGNAL \Add2~1_cout\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \Add4~5_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux5~5_combout\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \Mux5~6_combout\ : std_logic;
SIGNAL \Add4~6_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~4_combout\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \Add4~9_combout\ : std_logic;
SIGNAL \Add4~10_combout\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \Add4~13_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \Mux3~4_combout\ : std_logic;
SIGNAL \Add4~14_combout\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \Add4~2_cout\ : std_logic;
SIGNAL \Add4~4\ : std_logic;
SIGNAL \Add4~8\ : std_logic;
SIGNAL \Add4~12\ : std_logic;
SIGNAL \Add4~15_combout\ : std_logic;
SIGNAL \Add4~17_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~4_combout\ : std_logic;
SIGNAL \Mux2~5_combout\ : std_logic;
SIGNAL \Add4~18_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL preR : std_logic_vector(4 DOWNTO 0);
SIGNAL \Op~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \B~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \A~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_LessThan0~0_combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
ww_Op <= Op;
ww_Ci <= Ci;
R <= ww_R;
Zo <= ww_Zo;
Co <= ww_Co;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_LessThan0~0_combout\ <= NOT \LessThan0~0_combout\;

-- Location: LCCOMB_X47_Y9_N8
\Add4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~3_combout\ = (\A~combout\(0) & ((\B~combout\(0) & (!\Add4~2_cout\)) # (!\B~combout\(0) & (\Add4~2_cout\ & VCC)))) # (!\A~combout\(0) & ((\B~combout\(0) & ((\Add4~2_cout\) # (GND))) # (!\B~combout\(0) & (!\Add4~2_cout\))))
-- \Add4~4\ = CARRY((\A~combout\(0) & (\B~combout\(0) & !\Add4~2_cout\)) # (!\A~combout\(0) & ((\B~combout\(0)) # (!\Add4~2_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(0),
	datab => \B~combout\(0),
	datad => VCC,
	cin => \Add4~2_cout\,
	combout => \Add4~3_combout\,
	cout => \Add4~4\);

-- Location: LCCOMB_X47_Y9_N10
\Add4~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~7_combout\ = ((\A~combout\(1) $ (\B~combout\(1) $ (\Add4~4\)))) # (GND)
-- \Add4~8\ = CARRY((\A~combout\(1) & ((!\Add4~4\) # (!\B~combout\(1)))) # (!\A~combout\(1) & (!\B~combout\(1) & !\Add4~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(1),
	datab => \B~combout\(1),
	datad => VCC,
	cin => \Add4~4\,
	combout => \Add4~7_combout\,
	cout => \Add4~8\);

-- Location: LCCOMB_X47_Y9_N12
\Add4~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~11_combout\ = (\B~combout\(2) & ((\A~combout\(2) & (!\Add4~8\)) # (!\A~combout\(2) & ((\Add4~8\) # (GND))))) # (!\B~combout\(2) & ((\A~combout\(2) & (\Add4~8\ & VCC)) # (!\A~combout\(2) & (!\Add4~8\))))
-- \Add4~12\ = CARRY((\B~combout\(2) & ((!\Add4~8\) # (!\A~combout\(2)))) # (!\B~combout\(2) & (!\A~combout\(2) & !\Add4~8\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(2),
	datab => \A~combout\(2),
	datad => VCC,
	cin => \Add4~8\,
	combout => \Add4~11_combout\,
	cout => \Add4~12\);

-- Location: LCCOMB_X47_Y9_N2
\Mux5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~3_combout\ = (\Op~combout\(1) & ((\Op~combout\(0) & ((\A~combout\(0)))) # (!\Op~combout\(0) & (\B~combout\(0))))) # (!\Op~combout\(1) & (((!\A~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op~combout\(0),
	datab => \B~combout\(0),
	datac => \A~combout\(0),
	datad => \Op~combout\(1),
	combout => \Mux5~3_combout\);

-- Location: LCCOMB_X48_Y9_N20
\Mux5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~4_combout\ = (\Mux5~2_combout\ & (((\Mux5~1_combout\) # (\A~combout\(1))))) # (!\Mux5~2_combout\ & (\Mux5~3_combout\ & (!\Mux5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~3_combout\,
	datab => \Mux5~2_combout\,
	datac => \Mux5~1_combout\,
	datad => \A~combout\(1),
	combout => \Mux5~4_combout\);

-- Location: LCCOMB_X49_Y9_N30
\Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = \Op~combout\(0) $ (((!\Op~combout\(1) & (\A~combout\(0) $ (!\A~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011011001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(0),
	datab => \Op~combout\(0),
	datac => \Op~combout\(1),
	datad => \A~combout\(1),
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X48_Y9_N28
\Mux4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (\Mux4~1_combout\ & ((\A~combout\(1)) # ((!\Op~combout\(1))))) # (!\Mux4~1_combout\ & (((\B~combout\(1) & \Op~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(1),
	datab => \Mux4~1_combout\,
	datac => \B~combout\(1),
	datad => \Op~combout\(1),
	combout => \Mux4~2_combout\);

-- Location: LCCOMB_X48_Y9_N2
\Mux4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~3_combout\ = (\Mux5~1_combout\ & (((\Mux5~2_combout\)))) # (!\Mux5~1_combout\ & ((\Mux5~2_combout\ & ((\A~combout\(2)))) # (!\Mux5~2_combout\ & (\Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~2_combout\,
	datab => \Mux5~1_combout\,
	datac => \A~combout\(2),
	datad => \Mux5~2_combout\,
	combout => \Mux4~3_combout\);

-- Location: LCCOMB_X49_Y10_N10
\Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\Op~combout\(0) & (\A~combout\(0) & (\A~combout\(1) & !\Op~combout\(1)))) # (!\Op~combout\(0) & ((\Op~combout\(1)) # ((!\A~combout\(0) & !\A~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(0),
	datab => \Op~combout\(0),
	datac => \A~combout\(1),
	datad => \Op~combout\(1),
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X48_Y9_N24
\Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\Op~combout\(0) & (\A~combout\(0) & (\A~combout\(2) & \A~combout\(1)))) # (!\Op~combout\(0) & (!\A~combout\(0) & (!\A~combout\(2) & !\A~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op~combout\(0),
	datab => \A~combout\(0),
	datac => \A~combout\(2),
	datad => \A~combout\(1),
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X48_Y9_N10
\Mux2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (\Op~combout\(0) & ((\A~combout\(3)))) # (!\Op~combout\(0) & (\B~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(3),
	datab => \A~combout\(3),
	datac => \Op~combout\(0),
	combout => \Mux2~2_combout\);

-- Location: LCCOMB_X48_Y9_N16
\Mux2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = (\Op~combout\(1) & (\Mux2~2_combout\)) # (!\Op~combout\(1) & ((\A~combout\(3) $ (\Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~2_combout\,
	datab => \A~combout\(3),
	datac => \Mux2~1_combout\,
	datad => \Op~combout\(1),
	combout => \Mux2~3_combout\);

-- Location: LCCOMB_X49_Y10_N12
\Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\Op~combout\(2) & (\Op~combout\(0) $ (!\A~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Op~combout\(0),
	datac => \A~combout\(1),
	datad => \Op~combout\(2),
	combout => \Mux1~0_combout\);

-- Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(0),
	combout => \B~combout\(0));

-- Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Ci~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Ci,
	combout => \Ci~combout\);

-- Location: LCCOMB_X47_Y9_N22
\Add2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~1_cout\ = CARRY(\Ci~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ci~combout\,
	datad => VCC,
	cout => \Add2~1_cout\);

-- Location: LCCOMB_X47_Y9_N24
\Add2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (\A~combout\(0) & ((\B~combout\(0) & (\Add2~1_cout\ & VCC)) # (!\B~combout\(0) & (!\Add2~1_cout\)))) # (!\A~combout\(0) & ((\B~combout\(0) & (!\Add2~1_cout\)) # (!\B~combout\(0) & ((\Add2~1_cout\) # (GND)))))
-- \Add2~3\ = CARRY((\A~combout\(0) & (!\B~combout\(0) & !\Add2~1_cout\)) # (!\A~combout\(0) & ((!\Add2~1_cout\) # (!\B~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(0),
	datab => \B~combout\(0),
	datad => VCC,
	cin => \Add2~1_cout\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Op[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Op(0),
	combout => \Op~combout\(0));

-- Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Op[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Op(1),
	combout => \Op~combout\(1));

-- Location: LCCOMB_X48_Y9_N12
\Add4~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~5_combout\ = ((\Op~combout\(0) & ((\Add2~2_combout\))) # (!\Op~combout\(0) & (\Add4~3_combout\))) # (!\Op~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~3_combout\,
	datab => \Add2~2_combout\,
	datac => \Op~combout\(0),
	datad => \Op~combout\(1),
	combout => \Add4~5_combout\);

-- Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(0),
	combout => \A~combout\(0));

-- Location: LCCOMB_X47_Y9_N16
\Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\A~combout\(0) & (\Op~combout\(1) $ (((\Op~combout\(0) & !\B~combout\(0)))))) # (!\A~combout\(0) & ((\Op~combout\(0) & (\B~combout\(0) & !\Op~combout\(1))) # (!\Op~combout\(0) & ((\B~combout\(0)) # (!\Op~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010000101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op~combout\(0),
	datab => \B~combout\(0),
	datac => \A~combout\(0),
	datad => \Op~combout\(1),
	combout => \Mux5~0_combout\);

-- Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Op[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Op(3),
	combout => \Op~combout\(3));

-- Location: LCCOMB_X49_Y10_N26
\Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\Op~combout\(3) & ((\Op~combout\(0)) # (!\Op~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op~combout\(2),
	datac => \Op~combout\(0),
	datad => \Op~combout\(3),
	combout => \Mux5~1_combout\);

-- Location: LCCOMB_X48_Y9_N6
\Mux5~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~5_combout\ = (\Mux5~4_combout\ & (((\Ci~combout\) # (!\Mux5~1_combout\)))) # (!\Mux5~4_combout\ & (\Mux5~0_combout\ & (\Mux5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~4_combout\,
	datab => \Mux5~0_combout\,
	datac => \Mux5~1_combout\,
	datad => \Ci~combout\,
	combout => \Mux5~5_combout\);

-- Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Op[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Op(2),
	combout => \Op~combout\(2));

-- Location: LCCOMB_X49_Y9_N24
\Add4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~0_combout\ = (\Op~combout\(2) & ((!\Op~combout\(3)) # (!\Op~combout\(1)))) # (!\Op~combout\(2) & ((\Op~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Op~combout\(2),
	datac => \Op~combout\(1),
	datad => \Op~combout\(3),
	combout => \Add4~0_combout\);

-- Location: LCCOMB_X49_Y9_N2
\Mux5~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~6_combout\ = (\Op~combout\(2)) # (\Op~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Op~combout\(2),
	datad => \Op~combout\(3),
	combout => \Mux5~6_combout\);

-- Location: LCCOMB_X49_Y9_N0
\Add4~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~6_combout\ = (\Add4~5_combout\ & (((\Mux5~5_combout\ & \Add4~0_combout\)) # (!\Mux5~6_combout\))) # (!\Add4~5_combout\ & (\Mux5~5_combout\ & (\Add4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~5_combout\,
	datab => \Mux5~5_combout\,
	datac => \Add4~0_combout\,
	datad => \Mux5~6_combout\,
	combout => \Add4~6_combout\);

-- Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(1),
	combout => \B~combout\(1));

-- Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(1),
	combout => \A~combout\(1));

-- Location: LCCOMB_X48_Y9_N14
\Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\A~combout\(1) & (\Op~combout\(1) $ (((\Op~combout\(0) & !\B~combout\(1)))))) # (!\A~combout\(1) & ((\Op~combout\(0) & (\B~combout\(1) & !\Op~combout\(1))) # (!\Op~combout\(0) & ((\B~combout\(1)) # (!\Op~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010000101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op~combout\(0),
	datab => \B~combout\(1),
	datac => \A~combout\(1),
	datad => \Op~combout\(1),
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X48_Y9_N0
\Mux4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~4_combout\ = (\Mux4~3_combout\ & (((\A~combout\(0)) # (!\Mux5~1_combout\)))) # (!\Mux4~3_combout\ & (\Mux4~0_combout\ & (\Mux5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~3_combout\,
	datab => \Mux4~0_combout\,
	datac => \Mux5~1_combout\,
	datad => \A~combout\(0),
	combout => \Mux4~4_combout\);

-- Location: LCCOMB_X47_Y9_N26
\Add2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = ((\A~combout\(1) $ (\B~combout\(1) $ (!\Add2~3\)))) # (GND)
-- \Add2~5\ = CARRY((\A~combout\(1) & ((\B~combout\(1)) # (!\Add2~3\))) # (!\A~combout\(1) & (\B~combout\(1) & !\Add2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(1),
	datab => \B~combout\(1),
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X48_Y9_N22
\Add4~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~9_combout\ = ((\Op~combout\(0) & ((\Add2~4_combout\))) # (!\Op~combout\(0) & (\Add4~7_combout\))) # (!\Op~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~7_combout\,
	datab => \Add2~4_combout\,
	datac => \Op~combout\(0),
	datad => \Op~combout\(1),
	combout => \Add4~9_combout\);

-- Location: LCCOMB_X49_Y9_N16
\Add4~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~10_combout\ = (\Mux4~4_combout\ & ((\Add4~0_combout\) # ((\Add4~9_combout\ & !\Mux5~6_combout\)))) # (!\Mux4~4_combout\ & (\Add4~9_combout\ & ((!\Mux5~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~4_combout\,
	datab => \Add4~9_combout\,
	datac => \Add4~0_combout\,
	datad => \Mux5~6_combout\,
	combout => \Add4~10_combout\);

-- Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(2),
	combout => \A~combout\(2));

-- Location: LCCOMB_X47_Y9_N28
\Add2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (\B~combout\(2) & ((\A~combout\(2) & (\Add2~5\ & VCC)) # (!\A~combout\(2) & (!\Add2~5\)))) # (!\B~combout\(2) & ((\A~combout\(2) & (!\Add2~5\)) # (!\A~combout\(2) & ((\Add2~5\) # (GND)))))
-- \Add2~7\ = CARRY((\B~combout\(2) & (!\A~combout\(2) & !\Add2~5\)) # (!\B~combout\(2) & ((!\Add2~5\) # (!\A~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(2),
	datab => \A~combout\(2),
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X48_Y9_N4
\Add4~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~13_combout\ = ((\Op~combout\(0) & ((\Add2~6_combout\))) # (!\Op~combout\(0) & (\Add4~11_combout\))) # (!\Op~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~11_combout\,
	datab => \Add2~6_combout\,
	datac => \Op~combout\(0),
	datad => \Op~combout\(1),
	combout => \Add4~13_combout\);

-- Location: PIN_U11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(2),
	combout => \B~combout\(2));

-- Location: LCCOMB_X49_Y10_N18
\Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\A~combout\(2) & (\Op~combout\(1) $ (((!\B~combout\(2) & \Op~combout\(0)))))) # (!\A~combout\(2) & ((\B~combout\(2) & ((!\Op~combout\(1)) # (!\Op~combout\(0)))) # (!\B~combout\(2) & (!\Op~combout\(0) & !\Op~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111001100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(2),
	datab => \B~combout\(2),
	datac => \Op~combout\(0),
	datad => \Op~combout\(1),
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X49_Y10_N20
\Mux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (\Mux3~1_combout\ & ((\Op~combout\(1) & (\B~combout\(2))) # (!\Op~combout\(1) & ((!\A~combout\(2)))))) # (!\Mux3~1_combout\ & (((\A~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~1_combout\,
	datab => \B~combout\(2),
	datac => \Op~combout\(1),
	datad => \A~combout\(2),
	combout => \Mux3~2_combout\);

-- Location: LCCOMB_X49_Y10_N8
\Mux3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = (\Mux5~2_combout\ & (((\Mux5~1_combout\)))) # (!\Mux5~2_combout\ & ((\Mux5~1_combout\ & (\Mux3~0_combout\)) # (!\Mux5~1_combout\ & ((\Mux3~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~2_combout\,
	datab => \Mux3~0_combout\,
	datac => \Mux3~2_combout\,
	datad => \Mux5~1_combout\,
	combout => \Mux3~3_combout\);

-- Location: LCCOMB_X49_Y10_N6
\Mux5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = (\Op~combout\(2) & \Op~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op~combout\(2),
	datad => \Op~combout\(3),
	combout => \Mux5~2_combout\);

-- Location: LCCOMB_X49_Y10_N24
\Mux3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~4_combout\ = (\Mux3~3_combout\ & (((\A~combout\(1)) # (!\Mux5~2_combout\)))) # (!\Mux3~3_combout\ & (\A~combout\(3) & ((\Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(3),
	datab => \Mux3~3_combout\,
	datac => \A~combout\(1),
	datad => \Mux5~2_combout\,
	combout => \Mux3~4_combout\);

-- Location: LCCOMB_X49_Y9_N26
\Add4~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~14_combout\ = (\Add4~0_combout\ & ((\Mux3~4_combout\) # ((!\Mux5~6_combout\ & \Add4~13_combout\)))) # (!\Add4~0_combout\ & (!\Mux5~6_combout\ & (\Add4~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~0_combout\,
	datab => \Mux5~6_combout\,
	datac => \Add4~13_combout\,
	datad => \Mux3~4_combout\,
	combout => \Add4~14_combout\);

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(3),
	combout => \B~combout\(3));

-- Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(3),
	combout => \A~combout\(3));

-- Location: LCCOMB_X47_Y9_N30
\Add2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = \B~combout\(3) $ (\Add2~7\ $ (!\A~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(3),
	datad => \A~combout\(3),
	cin => \Add2~7\,
	combout => \Add2~8_combout\);

-- Location: LCCOMB_X47_Y9_N6
\Add4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~2_cout\ = CARRY(!\Ci~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ci~combout\,
	datad => VCC,
	cout => \Add4~2_cout\);

-- Location: LCCOMB_X47_Y9_N14
\Add4~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~15_combout\ = \B~combout\(3) $ (\Add4~12\ $ (\A~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(3),
	datad => \A~combout\(3),
	cin => \Add4~12\,
	combout => \Add4~15_combout\);

-- Location: LCCOMB_X48_Y9_N30
\Add4~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~17_combout\ = ((\Op~combout\(0) & (\Add2~8_combout\)) # (!\Op~combout\(0) & ((\Add4~15_combout\)))) # (!\Op~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op~combout\(1),
	datab => \Add2~8_combout\,
	datac => \Op~combout\(0),
	datad => \Add4~15_combout\,
	combout => \Add4~17_combout\);

-- Location: LCCOMB_X48_Y9_N26
\Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\A~combout\(3) & (\Op~combout\(1) $ (((!\B~combout\(3) & \Op~combout\(0)))))) # (!\A~combout\(3) & ((\B~combout\(3) & ((!\Op~combout\(1)) # (!\Op~combout\(0)))) # (!\B~combout\(3) & (!\Op~combout\(0) & !\Op~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111001100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(3),
	datab => \A~combout\(3),
	datac => \Op~combout\(0),
	datad => \Op~combout\(1),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X48_Y9_N18
\Mux2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~4_combout\ = (\Mux5~2_combout\ & (((\Mux5~1_combout\) # (\Ci~combout\)))) # (!\Mux5~2_combout\ & (\Mux2~3_combout\ & (!\Mux5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~3_combout\,
	datab => \Mux5~2_combout\,
	datac => \Mux5~1_combout\,
	datad => \Ci~combout\,
	combout => \Mux2~4_combout\);

-- Location: LCCOMB_X48_Y9_N8
\Mux2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~5_combout\ = (\Mux5~1_combout\ & ((\Mux2~4_combout\ & (\A~combout\(2))) # (!\Mux2~4_combout\ & ((\Mux2~0_combout\))))) # (!\Mux5~1_combout\ & (((\Mux2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(2),
	datab => \Mux2~0_combout\,
	datac => \Mux5~1_combout\,
	datad => \Mux2~4_combout\,
	combout => \Mux2~5_combout\);

-- Location: LCCOMB_X49_Y9_N12
\Add4~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~18_combout\ = (\Add4~0_combout\ & ((\Mux2~5_combout\) # ((!\Mux5~6_combout\ & \Add4~17_combout\)))) # (!\Add4~0_combout\ & (!\Mux5~6_combout\ & (\Add4~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~0_combout\,
	datab => \Mux5~6_combout\,
	datac => \Add4~17_combout\,
	datad => \Mux2~5_combout\,
	combout => \Add4~18_combout\);

-- Location: LCCOMB_X49_Y9_N18
\LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (\Add4~10_combout\) # ((\Add4~14_combout\) # ((\Add4~18_combout\) # (\Add4~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~10_combout\,
	datab => \Add4~14_combout\,
	datac => \Add4~18_combout\,
	datad => \Add4~6_combout\,
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X49_Y10_N2
\Mux6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\Op~combout\(0) & (\A~combout\(3))) # (!\Op~combout\(0) & ((\A~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(3),
	datab => \Op~combout\(0),
	datac => \A~combout\(0),
	combout => \Mux6~1_combout\);

-- Location: LCCOMB_X49_Y10_N16
\Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\Op~combout\(3) & (\Op~combout\(2) & !\Op~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op~combout\(3),
	datac => \Op~combout\(2),
	datad => \Op~combout\(1),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X49_Y10_N14
\Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\A~combout\(3) & (((!\A~combout\(2)) # (!\A~combout\(0))) # (!\A~combout\(1)))) # (!\A~combout\(3) & ((\A~combout\(1)) # ((\A~combout\(0)) # (\A~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(3),
	datab => \A~combout\(1),
	datac => \A~combout\(0),
	datad => \A~combout\(2),
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X49_Y10_N22
\Mux1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (\Mux1~0_combout\ & (!\Mux1~1_combout\ & !\Op~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~0_combout\,
	datac => \Mux1~1_combout\,
	datad => \Op~combout\(1),
	combout => \Mux1~2_combout\);

-- Location: LCCOMB_X49_Y10_N4
\preR[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- preR(4) = (\Mux0~0_combout\ & (preR(4))) # (!\Mux0~0_combout\ & ((\Mux1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => preR(4),
	datac => \Mux0~0_combout\,
	datad => \Mux1~2_combout\,
	combout => preR(4));

-- Location: LCCOMB_X49_Y10_N28
\Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (preR(4) & (!\Op~combout\(3) & (\Op~combout\(2) $ (\Op~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op~combout\(2),
	datab => preR(4),
	datac => \Op~combout\(1),
	datad => \Op~combout\(3),
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X49_Y10_N30
\Mux6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = (\Mux6~0_combout\) # ((\Mux5~2_combout\ & (\Mux6~1_combout\ & !\Op~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~2_combout\,
	datab => \Mux6~1_combout\,
	datac => \Op~combout\(1),
	datad => \Mux6~0_combout\,
	combout => \Mux6~2_combout\);

-- Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Add4~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R(0));

-- Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Add4~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R(1));

-- Location: PIN_U19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Add4~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R(2));

-- Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Add4~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R(3));

-- Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Zo~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Zo);

-- Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Co~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Co);
END structure;


