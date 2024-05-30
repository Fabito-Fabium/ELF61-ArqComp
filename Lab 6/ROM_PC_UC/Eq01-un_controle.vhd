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

entity un_controle is
port( 	clk, rst:	        in std_logic;
	      instr:		        in unsigned(15 downto 0);
	      jump_en,FoDec:	  out std_logic
	);
end entity;

architecture a_un_controle of un_controle is

signal opcode:	unsigned(5 downto 0):="000000";

component maq_estados is
port( 	clk:		    in std_logic;
	rst:		          in std_logic;
	fetchDec:	        out std_logic
	);
end component;

begin

mq:	maq_estados port map(clk, rst, FoDec);

opcode <= instr(10 downto 5);

jump_en <= 	'1' when opcode="000011" else
		'0';

end architecture;

-- FIM DO CODIGO
