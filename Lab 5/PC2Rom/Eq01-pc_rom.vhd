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

entity pc_rom is
port( 	clk:		in std_logic;
	rst:		in std_logic;
	dado:		out unsigned(7 downto 0)
	);
end entity;


architecture Processing of pc_rom is

component program_counter is
port( 	clk:		in std_logic;
	rst:		in std_logic;
	wr_en:		in std_logic;
	data_out:	out unsigned(15 downto 0)
	);
end component;

component rom is
port( 	clk : in std_logic;
	endereco : in unsigned(15 downto 0);
	dado : out unsigned(7 downto 0)
);
end component;

signal endereco:	unsigned(15 downto 0);

begin

pc:		program_counter port map(clk, rst, '1', endereco);
rom_mem:	rom		port map(clk, endereco, dado);

end architecture;

-- FIM DO CODIGO
