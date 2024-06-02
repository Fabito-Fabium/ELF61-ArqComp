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
port( clk :       in std_logic;
	    endereco :  in unsigned(15 downto 0);
	    instr :     out unsigned(15 downto 0)
);
end entity;
------------------------------------------------------------------------
architecture a_rom of rom is
------------------------------------------------------------------------
	type mem is array (0 to 127) of unsigned(15 downto 0);
  constant conteudo_rom : mem := (
    -- 0 => (others => '0') p/ diminuir as confusoes ao vizualizar os dados no gtkw;
    -- E os comandos em assembly estao no formato usual, e.g:
    -- ((sub r1, r2) <=> (r1 <= r1 - r2)) ; ((mov r10, r9) <=> (r10 <= r9))
    -- para facilitar a leitura. (a Renesas inverte a ordem dos registradores)
    1  => b"01000_110000_00100", -- ADDI R8 , 4;   (foi utilizado addi por simplicidade)
    2  => b"01001_110000_00110", -- ADDI R9 , 6; 
    3  => b"01010_000000_01001", -- MOV  R10, R9;  (ADD R10, R8, R9 é uma pseudo-instr.)
    4  => b"01010_001110_01000", -- ADD  R10, R8;
    5  => b"01010_110011_00010", -- SUBI R10, 2;
    6  => b"00000_000011_01111", -- JMP  15 ;      PC <= 15; 
	  15 => b"01000_000000_01010", -- MOV  R8 , R10;
    16 => b"01010_000010_00011", -- DIVI R10, R3;
    17 => b"01011_000000_01010", -- MOV  R11, R10;
	  18 => b"00000_000011_00011", -- JMP  3;
    19 => b"00000_000000_00000", -- NOP
    20 => b"00000_000000_00000", -- NOP
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
