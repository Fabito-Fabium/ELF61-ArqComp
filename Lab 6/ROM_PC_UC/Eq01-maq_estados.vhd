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

entity maq_estados is
port( 	clk:		in std_logic;
	rst:		in std_logic;
	fetchDec:	out std_logic
	);
end entity;


architecture Tflpping of maq_estados is

signal estado:	std_logic:='0';

begin

process(clk, rst, estado)

begin
	if rst='1' then
		fetchDec <= '0';
	elsif rising_edge(clk) then
		estado <= not(estado);
	end if;
	fetchDec <= estado;
end process;


end architecture;

-- FIM DO CODIGO
