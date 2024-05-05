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

entity ROM_PC_UC is
port( 	clk, rst:		in std_logic
	);
end entity;


architecture integration of ROM_PC_UC is

component un_controle is
port( 	instr:		in unsigned(7 downto 0);
	jump_en:	out std_logic
	);
end component;

component maq_estados is
port( 	clk, rst:		in std_logic;
	fetchDec:	out std_logic
	);
end component;

component program_counter is
port( 	clk, rst, wr_en, jump:		in std_logic;
	data_in:	in unsigned(15 downto 0);
	data_out:	out unsigned(15 downto 0)
	);
end component;

component rom is
port( clk : in std_logic;
	endereco : in unsigned(15 downto 0);
	dado : out unsigned(7 downto 0)
);
end component;

signal fetchDec, jump_en:	std_logic:='0';
signal addrs, data_out:		unsigned(15 downto 0):=x"0000";
signal instr:			unsigned(7 downto 0):=x"00";


begin

feDe:	maq_estados 	port map(clk, rst, fetchDec);
pc:	program_counter	port map(clk, rst, fetchDec, jump_en, addrs, data_out);
r0m:	rom		port map(clk, data_out, instr);
uctl:	un_controle	port map(instr, jump_en);

addrs <= resize(instr(5 downto 0), 16);

end architecture;

-- FIM DO CODIGO
