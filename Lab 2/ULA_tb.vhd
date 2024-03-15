-- ELF61 -> ARQUITETURA E ORGANIZAÇÃO DE COMPUTADORES --
-- UNIVERSIDADE TECNOLÓGICA FEDERAL DO PARANÁ
-- DEPARTAMENTO ACADÊMICO DE ENGENHARIA ELETRÔNICA
-- O SEGUINTE CÓDIGO FOI DESENVOLVIDO PELOS ALUNOS:
-- ACYR EDUARTO MARCONATTO : 2358263
-- FABIO ZHAO YUAN WANG : 2358310
-- VICTOR AUGUSTO DEL MONEGO : 2378345

-- INÍCIO DO CÓDIGO


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ULA_tb is
end entity;

architecture Run_tb of ULA_tb is

component ULA
	port (
		in_A: 		in unsigned (15 downto 0);
		in_B: 		in unsigned (15 downto 0);
		op: 		in std_logic_vector (2 downto 0);
		out_ULA: 	out unsigned (15 downto 0);
		zero: 		out std_logic;
		LT:	 	out std_logic);
end component;

signal in_A: 	unsigned (15 downto 0);
signal in_B: 	unsigned (15 downto 0);
signal op: 	std_logic_vector (2 downto 0);
signal out_ULA: unsigned (15 downto 0);
signal zero: 	std_logic;
signal LT: 	std_logic;

--RA: 2358263 => 8263
--RA: 2358310 => 8310
--RA: 2378345 => 8345

begin
	tb: 	ULA port map(in_A, in_B, op, out_ULA, zero, LT);
	
	process begin
		in_A <= "0000000000000010";
		in_B <= "0000000000000100";
		op <= "000"; wait for 50 ns; --Soma
		op <= "001"; wait for 50 ns; --subtração (em módulo)
		op <= "010"; wait for 50 ns; --divisão
		op <= "011"; wait for 50 ns; --multiplicação
		op <= "100"; wait for 50 ns; --AND
		op <= "101"; wait for 50 ns; --OR
		op <= "110"; wait for 50 ns; --not(in_A)
		op <= "111"; wait for 50 ns; --not(in_B)
		in_A <= "0000000000010011";
		in_B <= "0000000000001001";
		op <= "000"; wait for 50 ns; --Soma
		op <= "001"; wait for 50 ns; --subtração (em módulo)
		op <= "010"; wait for 50 ns; --divisão
		op <= "011"; wait for 50 ns; --multiplicação
		op <= "100"; wait for 50 ns; --AND
		op <= "101"; wait for 50 ns; --OR
		op <= "110"; wait for 50 ns; --not(in_A)
		op <= "111"; wait for 50 ns; --not(in_B)
		in_A <= "0000000000000011";
		in_B <= "0000000000001001";
		op <= "000"; wait for 50 ns; --Soma
		op <= "001"; wait for 50 ns; --subtração (em módulo)
		op <= "010"; wait for 50 ns; --divisão
		op <= "011"; wait for 50 ns; --multiplicação
		op <= "100"; wait for 50 ns; --AND
		op <= "101"; wait for 50 ns; --OR
		op <= "110"; wait for 50 ns; --not(in_A)
		op <= "111"; wait for 50 ns; --not(in_B)
		in_A <= to_unsigned(10#008345#, in_A'length);
		in_B <= to_unsigned(10#008263#, in_B'length);
		op <= "000"; wait for 50 ns; --Soma
		op <= "001"; wait for 50 ns; --subtração (em módulo)
		op <= "010"; wait for 50 ns; --divisão
		op <= "011"; wait for 50 ns; --multiplicação
		op <= "100"; wait for 50 ns; --AND
		op <= "101"; wait for 50 ns; --OR
		op <= "110"; wait for 50 ns; --not(in_A)
		op <= "111"; wait for 50 ns; --not(in_B)
		wait;
	end process;
	
end architecture;


-- FIM DO CÓDIGO
