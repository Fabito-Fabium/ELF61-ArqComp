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
entity rom is
port( clk :   in std_logic;
	endereco :  in unsigned(15 downto 0);
	instr :      out unsigned(15 downto 0)
);
end entity;
------------------------------------------------------------------------
architecture a_rom of rom is
------------------------------------------------------------------------
	type mem is array (0 to 127) of unsigned(15 downto 0);
  constant conteudo_rom : mem := (
	  0  => b"01000_110000_00100",  1  => b"01001_110000_00110",  2  => b"01010_000000_01001",
	  3  => b"01010_001110_01000",  4  => b"01010_001101_00010",  5  => b"00000_000000_00000",
	  6  => b"00000_000000_00000",  7  => b"00000_000000_00000",  8  => b"00000_000000_00000",
	  9  => b"00000_000000_00000",  10 => b"00000_000000_00000",  11 => b"00000_000000_00000",
	  12 => b"00000_000000_00000",  13 => b"00000_000000_00000",  14 => b"00000_000000_00000",
	  15 => b"00000_000000_00000",  16 => b"00000_000000_00000",  17 => b"00000_000000_00000",
	  18 => b"00000_000011_11111",  19 => b"00000_000000_00000",  20 => b"00000_000000_00000",
	  21 => b"00000_000000_00000",  22 => b"00000_000000_00000",  23 => b"00000_000000_00000",
	  24 => b"00000_000000_00000",  25 => b"00000_000000_00000",  26 => b"00000_000000_00000",
	  27 => b"00000_000000_00000",  28 => b"00000_000000_00000",  29 => b"00000_000000_00000",
	  30 => b"00000_000000_00000",  31 => b"00000_000000_00000",  32 => b"00000_000011_00000",
    others => (others=>'0')
  );
------------------------------------------------------------------------
begin

process(clk)
	begin
		if(rising_edge(clk)) then
			instr <= conteudo_rom(to_integer(endereco));
		end if;
end process;

end architecture;

--FIM DO CODIGO
