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

entity ULARegs_tb is
end entity;

architecture testBench of ULARegs_tb is
component ULARegs is
port( 	clk, rst, wr_en, RoExt:	in std_logic;
	A1, A2, A3:		in unsigned (2 downto 0);
	op:			in std_logic_vector (2 downto 0);
	Cext:			in unsigned (15 downto 0)
	);
end component;

signal 	clk, rst, wr_en, RoExt:	std_logic			:='0';
signal	A1, A2, A3:		unsigned (2 downto 0)		:="000";
signal	op:			std_logic_vector (2 downto 0) 	:="000";
signal 	Cext:			unsigned (15 downto 0)		:=x"0000";

begin
	tB:	ULARegs port map(clk, rst, wr_en, RoExt, A1, A2, A3, op, Cext);
	process begin
		--reset explicito
		rst 	<= '0'; 	wait for 50 ns;
		rst	<= '1';		wait for 50 ns;
		rst	<= '0';		wait for 50 ns;
		
		RoExt 	<='1';		wait for 50 ns;
		Cext 	<=x"1234";	wait for 50 ns;
		op	<="000";	wait for 50 ns;
		A3	<="000";	wait for 50 ns;
		wr_en	<= '1';		wait for 50 ns;
		clk 	<= '1'; 	wait for 50 ns;
		clk 	<= '0';		wait for 50 ns;
		wr_en	<= '0';		wait for 50 ns;
		
		RoExt	<='0';		wait for 50 ns;
		A2 	<="001";	wait for 50 ns;
		
		wait;
	
	end process;
	
end architecture;

-- FIM DO CODIGO
