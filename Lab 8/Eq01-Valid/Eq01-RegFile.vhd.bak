-- ELF61 -> ARQUITETURA E ORGANIZACAO DE COMPUTADORES --
-- UNIVERSIDADE TECNOLOGICA FEDERAL DO PARANA
-- DEPARTAMENTO ACADEMICO DE ENGENHARIA ELETRONICA
-- O SEGUINTE CODIGO FOI DESENVOLVIDO PELOS ALUNOS:
-- ACYR EDUARDO MARCONATTO : 2358263
-- FABIO ZHAO YUAN WANG : 2358310
-- VICTOR AUGUSTO DEL MONEGO : 2378345

-- DISCLAIMER: O CODIGO A SEGUIR E BASEADO FORTEMENTE NO CODIGO "RAMDisp.vhd" fornecido pelo professor RAFAEL ELEODORO DE GOES


-- INICIO DO CODIGO

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

------------------------------------------------------------------------
entity RegFile is
	port(
		clk, rst :    in std_logic;
		wr_en :       in std_logic;
		A1, A2, A3 :  in unsigned(4 downto 0);
    WD3:          in unsigned(15 downto 0);
		RD1, RD2 :    out unsigned(15 downto 0);
    debug_reg:    in unsigned(4 downto 0);
    debug_val:    out unsigned (15 downto 0)
	);
end entity;
------------------------------------------------------------------------
architecture a_ram of RegFile is
------------------------------------------------------------------------
	type mem is array (0 to 31) of unsigned(15 downto 0);
	signal conteudo_ram : mem:=(others => (others => '1'));
------------------------------------------------------------------------	
begin
  process(clk, rst, wr_en, conteudo_ram, A1, A2, A3)
	begin
    if rst = '1' then
      conteudo_ram <= (others => (others => '0'));
      conteudo_ram(2) <= x"fe00";
		elsif rising_edge(clk) then
			if wr_en = '1' then
				conteudo_ram(to_integer(A3)) <= WD3; 
		  end if;
		end if;
    RD1 <= conteudo_ram(to_integer(A1));
    RD2 <= conteudo_ram(to_integer(A2));
    debug_val <= conteudo_ram(to_integer(debug_reg));
    end process;
end architecture;

-- FIM DO CODIGO
