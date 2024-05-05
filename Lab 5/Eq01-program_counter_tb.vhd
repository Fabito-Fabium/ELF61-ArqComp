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

entity RegFile_tb is
end entity;

architecture Run_tb of RegFile_tb is

component RegFile is
port( 	clk, rst, wr_en:	in std_logic;
	A1, A2, A3:		in unsigned(2 downto 0);
	WD3:			in unsigned(15 downto 0);
	RD1, RD2:		out unsigned(15 downto 0)
	);
end component;

signal clk, rst, wr_en: std_logic		:='0';
signal A1, A2, A3:	unsigned(2 downto 0)	:="000";
signal WD3:		unsigned(15 downto 0)	:=x"0000";
signal RD1, RD2:	unsigned(15 downto 0);
--RA: 2358263 => 8263
--RA: 2358310 => 8310
--RA: 2378345 => 8345

begin
	tb: 	RegFile port map(clk, rst, wr_en, A1, A2, A3, WD3, RD1, RD2);
	
	process begin
		clk <='0'; 	wait for 50 ns;
		clk <='1'; 	wait for 50 ns;
	end process;

	process begin
		wait for 10 ns;
		rst <='1'; 	wait for 190 ns;
		rst <='0';	wait;
	end process;
	
	process begin
		wait for 200 ns;
		A3	<= "001";	wait for 50 ns;
		WD3	<= to_unsigned(10#008263#, WD3'length); wait for 25 ns;	
		wr_en	<= '1';		wait for 75 ns;
		wr_en	<= '0';		wait for 50 ns;
		A3	<= "010";
		WD3	<= to_unsigned(10#008310#, WD3'length); wait for 25 ns; 
		wr_en	<= '1';		wait for 75 ns;
		wr_en	<= '0';		wait for 50 ns;
		A3	<= "011";
		WD3	<= to_unsigned(10#008345#, WD3'length); wait for 25 ns; 
		wr_en	<= '1';		wait for 75 ns;
		wr_en	<= '0';		wait for 50 ns;
		A2	<= "001"; 	wait for 100 ns;
		A2	<= "010"; 	wait for 100 ns;
		A2	<= "011"; 	wait for 100 ns;
		A2	<= "000";
		A1	<= "001"; 	wait for 100 ns;
		A1	<= "010"; 	wait for 100 ns;
		A1	<= "011"; 	wait for 100 ns;
		A1	<= "000";
		wait;
	end process;
	
end architecture;


-- FIM DO CODIGO
