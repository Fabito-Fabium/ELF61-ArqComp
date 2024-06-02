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

------------------------------------------------------------------------
architecture testBench of ULARegs_tb is
component ULARegs is
port( 	clk, rst, wr_en, IorR:	in std_logic;
	      A1, A2, A3:		          in unsigned (4 downto 0);
	      op:	                		in unsigned (5 downto 0);
	      Cext:	              		in unsigned (15 downto 0)
	);
end component;

signal 	clk, rst, wr_en, IorR:	std_logic			:='0';
signal	A1, A2, A3:		          unsigned (4 downto 0)		:="00000";
signal	op:			                unsigned (5 downto 0) 	:="000000";
signal 	Cext:			              unsigned (15 downto 0)		:=x"0000";
------------------------------------------------------------------------
begin
	tB:	ULARegs port map(clk, rst, wr_en, IorR, A1, A2, A3, op, Cext);
	process begin
    wait for 10 ns;
    rst <= '1'; wait for 200 ns;
		rst <= '0'; wait;
	end process;
	
	process begin
		clk <= '0'; wait for 50 ns;
		clk <= '1'; wait for 50 ns;
	end process;
	
	process begin
		wait for 200 ns;
    op  <= "001110";
    A3 	<= "00110";
		Cext 	<= to_unsigned(16#008263#, Cext'length);
		wr_en 	<= '1'; 	wait for 75 ns;
		wr_en 	<= '0';
		
		A3 	<= "00111"; 	wait for 25 ns;
		Cext 	<= to_unsigned(16#008345#, Cext'length);
		wr_en 	<= '1'; 	wait for 75 ns;
		wr_en 	<= '0';
		
		A3	<= "00110";
		IorR <= '1';
		A1	<= "00111";	
		A2	<= "00110";	wait for 125 ns;
		op	<= "000010";
		wr_en	<= '1';		wait for 75 ns;
		wr_en	<= '0';
		
		A1	<= "00110";
		A2	<= "00000";	wait for 25 ns;
		
		wait;
	
	end process;
	
end architecture;

-- FIM DO CODIGO
