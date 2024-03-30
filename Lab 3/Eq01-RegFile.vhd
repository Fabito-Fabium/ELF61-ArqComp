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

entity RegFile is
port( 	clk, rst, wr_en:	in std_logic;
	A1, A2, A3:		in unsigned(2 downto 0);
	WD3:			in unsigned(15 downto 0);
	RD1, RD2:		out unsigned(15 downto 0) 	:= x"0000"
	);
end entity;
architecture op_RegFile of RegFile is

component reg16bits is
port( 	clk:		in std_logic;
	rst:		in std_logic;
	wr_en:		in std_logic;
	data_in:	in unsigned(15 downto 0);
	data_out:	out unsigned(15 downto 0)
	);
end component;

--output from register
signal o0, o1, o2, o3, o4, o5, o6, o7:	unsigned(15 downto 0):=x"0000";
--write enable register
signal wr:				std_logic_vector(7 downto 0);

begin

rg0:	reg16bits port map(clk, rst, wr(0), WD3, o0);
rg1:	reg16bits port map(clk, rst, wr(1), WD3, o1);
rg2:	reg16bits port map(clk, rst, wr(2), WD3, o2);
rg3:	reg16bits port map(clk, rst, wr(3), WD3, o3);
rg4:	reg16bits port map(clk, rst, wr(4), WD3, o4);
rg5:	reg16bits port map(clk, rst, wr(5), WD3, o5);
rg6:	reg16bits port map(clk, rst, wr(6), WD3, o6);
rg7:	reg16bits port map(clk, rst, wr(7), WD3, o7);
	
wr <= 	x"01" when A3="000" and wr_en='1' else
	x"02" when A3="001" and wr_en='1' else
	x"04" when A3="010" and wr_en='1' else
	x"08" when A3="011" and wr_en='1' else
	x"10" when A3="100" and wr_en='1' else
	x"20" when A3="101" and wr_en='1' else
	x"40" when A3="110" and wr_en='1' else
	x"80" when A3="111" and wr_en='1' else
	x"00";

RD1 <= 	o0 when A1="000" else
	o1 when A1="001" else
	o2 when A1="010" else
	o3 when A1="011" else
	o4 when A1="100" else
	o5 when A1="101" else
	o6 when A1="110" else
	o7 when A1="111" else
	x"0000";

RD2 <= 	o0 when A2="000" else
	o1 when A2="001" else
	o2 when A2="010" else
	o3 when A2="011" else
	o4 when A2="100" else
	o5 when A2="101" else
	o6 when A2="110" else
	o7 when A2="111" else
	x"0000";

end architecture;

-- FIM DO CODIGO