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

entity maq_estados_tb is
end entity;

architecture Run_tb of maq_estados_tb is

component maq_estados is
port( 	clk, rst:		in std_logic;
	      state:	    out unsigned(1 downto 0)
	);
end component;

signal clk, rst:	std_logic:='0';
signal fetchDec:	unsigned(1 downto 0):="00";
--RA: 2358263 => 8263
--RA: 2358310 => 8310
--RA: 2378345 => 8345

begin
	tb: 	maq_estados port map(clk, rst, fetchDec);
	
	process begin
		clk <='0'; 	wait for 50 ns;
		clk <='1'; 	wait for 50 ns;
	end process;
	
end architecture;


-- FIM DO CODIGO
