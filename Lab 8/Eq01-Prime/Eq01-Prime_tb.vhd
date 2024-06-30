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

entity Prime_tb is
end entity;

architecture Run_tb of Prime_tb is

component Prime is
port( 	clk, rst:		  in std_logic;
        debug_reg:    in unsigned(4 downto 0);
        debug_val:    out unsigned (15 downto 0));
end component;

signal clk, rst:	  std_logic:='0';
signal debug_reg:   unsigned(4 downto 0):="00111";
signal debug_val:   unsigned(15 downto 0);

begin
	tb: 	Prime port map(clk, rst, debug_reg, debug_val);
	
	process begin
    wait for 0.01 ns; -- para evitar warnings do tipo meta value detected
    clk <='1'; 	wait for 50 ns;
		clk <='0'; 	wait for 50 ns;
	end process;
	process begin
    rst <= '1'; wait for 200 ns;
		rst <= '0'; wait for 200 ns;
		wait;
	end process;
	
end architecture;


-- FIM DO CODIGO
