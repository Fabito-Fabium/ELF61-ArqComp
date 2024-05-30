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
entity RegWrite is
	port(
		clk :         in std_logic;
		wr_en :       in std_logic;
		A1, A2, A3 :  in unsigned(2 downto 0);
    WD3:          in unsigned(15 downto 0);
		RD1, RD2 :    out unsigned(15 downto 0)
	);
end entity;
------------------------------------------------------------------------
architecture a_ram of RegWrite is
	type mem is array (0 to 31) of unsigned(15 downto 0);
	signal endereco_interno: unsigned(6 downto 0);
	signal conteudo_ram : mem:=(others => x"0000");
	
  signal ID1, ID2:  unsigned(15 downto 0);

begin
	process(clk,wr_en, A3, WD3)
	begin
		if rising_edge(clk) then
			if wr_en='1' and A3 /= b"00000"  then
				conteudo_ram(to_integer(A3)) <= WD3; 
      else 
        ID1 <= conteudo_ram(to_integer(A1));
        ID2 <= conteudo_ram(to_integer(A2));
			end if;
		end if;
	end process;
  RD1 <= ID1;
  RD2 <= ID2;
end architecture;
