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
entity reg16bits is
port( 	clk:		in std_logic;
	rst:		in std_logic;
	wr_en:		in std_logic;
	data_in:	in unsigned(15 downto 0);
	data_out:	out unsigned(15 downto 0)
	);
end entity;
------------------------------------------------------------------------
architecture a_reg8bits of reg16bits is
------------------------------------------------------------------------
  signal rgst:	unsigned(15 downto 0);
------------------------------------------------------------------------
begin

  process(clk, rst, wr_en)
  begin
	  if rst='1' then
		  rgst <= x"0000";
	  elsif wr_en='1' then
		  if rising_edge(clk) then
			  rgst <= data_in;
		  end if;
	  end if;
    data_out <= rgst;
  end process;

end architecture;

-- FIM DO CODIGO
