-- ELF61 -> ARQUITETURA E ORGANIZACAO DE COMPUTADORES --
-- UNIVERSIDADE TECNOLOGICA FEDERAL DO PARANA
-- DEPARTAMENTO ACADEMICO DE ENGENHARIA ELETRONICA
-- O SEGUINTE CODIGO FOI DESENVOLVIDO PELOS ALUNOS:
-- ACYR EDUARDO MARCONATTO : 2358263
-- FABIO ZHAO YUAN WANG : 2358310
-- VICTOR AUGUSTO DEL MONEGO : 2378345

-- INICIO DO CODIGO


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity rom_pc_uc_tb is
end entity;

architecture Run_tb of rom_pc_uc_tb is

component ROM_PC_UC is
port( 	clk:		in std_logic;
	rst:		in std_logic
	);
end component;

signal clk, rst:	std_logic:='0';
--RA: 2358263 => 8263
--RA: 2358310 => 8310
--RA: 2378345 => 8345

begin
	tb: 	ROM_PC_UC port map(clk, rst);
	
	process begin
		clk <='1'; 	wait for 50 ns;
		clk <='0'; 	wait for 50 ns;
	end process;
	process begin
		rst <= '1'; wait for 200 ns;
		rst <= '0'; wait;
	end process;
	
end architecture;


-- FIM DO CODIGO
