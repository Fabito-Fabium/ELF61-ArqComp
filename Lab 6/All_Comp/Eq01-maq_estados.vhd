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

------------------------------------------------------------------------
entity maq_estados is
port( 	clk, rst:		in std_logic;
	      state:	    out unsigned(1 downto 0)
	);
end entity;
------------------------------------------------------------------------
architecture change_state of maq_estados is
------------------------------------------------------------------------
  signal state_s:	unsigned(1 downto 0):="00";
------------------------------------------------------------------------
begin

process(clk, rst, state_s)
  begin
	  if rst='1' then
		  state <= "00";
	  elsif rising_edge(clk) then -- fazendo assim so para treinar
		  state_s <= (state_s(0)) & (state_s(1) xnor state_s(0));
	  end if;
	  state <= state_s;
end process;

end architecture;

-- FIM DO CODIGO
