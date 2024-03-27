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

entity RegFile_tb is
end entity;

architecture Run_tb of RegFile_tb is

component RegFile is
port( 	clk, rst, wr_en:	in std_logic;
	A1, A2, A3:		in unsigned(2 downto 0);
	WD3:			in unsigned(15 downto 0);
	RD1, RD2:		out unsigned(15 downto 0) 	:= x"0000"
	);
end component;

signal clk, rst, wr_en: std_logic;
signal A1, A2, A3:	unsigned(2 downto 0);
signal WD3, RD1, RD2:	unsigned(15 downto 0);
--RA: 2358263 => 8263
--RA: 2358310 => 8310
--RA: 2378345 => 8345

begin
	tb: 	RegFile port map(clk, rst, wr_en, A1, A2, A3, WD3, RD1, RD2);
	
	process begin
		--config inicial p/ deixar o ghw mais legivel
		rst	<= '0';
		clk 	<= '0';
		wr_en 	<= '0';
		WD3	<= x"0000";
		A3	<= "000";	wait for 50 ns; --para explicitar reset
		
		--reset explicito
		rst 	<= '1'; 	wait for 50 ns;
		rst	<= '0';		wait for 50 ns;
		
		
		WD3	<= x"1111"; 	wait for 50 ns;
		wr_en 	<= '1';		wait for 50 ns;
		A3	<= "000";	wait for 50 ns;
		clk 	<= '1'; 	wait for 50 ns;
		clk 	<= '0';		wait for 50 ns;
		wr_en	<= '0';		wait for 50 ns;
		
		
		WD3	<= x"4567"; 	wait for 50 ns;
		wr_en 	<= '1';		wait for 50 ns;
		A3	<= "001";	wait for 50 ns;
		clk 	<= '1'; 	wait for 50 ns;
		clk 	<= '0';		wait for 50 ns;
		wr_en	<= '0';		wait for 50 ns;
		
		
		WD3	<= x"89AB"; 	wait for 50 ns;
		wr_en 	<= '1';		wait for 50 ns;
		A3	<= "010";	wait for 50 ns;
		clk 	<= '1'; 	wait for 50 ns;
		clk 	<= '0';		wait for 50 ns;
		wr_en	<= '0';		wait for 50 ns;
		
		
		WD3	<= x"CDEF"; 	wait for 50 ns;
		wr_en 	<= '1';		wait for 50 ns;
		A3	<= "011";	wait for 50 ns;
		clk 	<= '1'; 	wait for 50 ns;
		clk 	<= '0';		wait for 50 ns;
		wr_en	<= '0';		wait for 50 ns;
		
		A1	<= "000";	wait for 50 ns;
		A2	<= "001";	wait for 50 ns;
		A1	<= "010";	wait for 50 ns;
		A2	<= "011";	wait for 50 ns;
		wait;
		
	end process;
	
end architecture;


-- FIM DO CÓDIGO
