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
entity un_atom is
port( 	op_rom, opcode:     in unsigned(5 downto 0);
	      FetDecEx:           in unsigned(1 downto 0);
        instr_en:	          out std_logic;
        instr_sel:          out unsigned(1 downto 0)
	);
end entity;
------------------------------------------------------------------------
architecture a_un_atom of un_atom is

begin

instr_en <= 	'1' when std_logic_vector(opcode) = std_logic_vector(op_rom) and FetDecEx = "10" else '0';

instr_sel <=  "00" when std_logic_vector(opcode) = std_logic_vector(op_rom) and FetDecEx = "00" else
              "01" when std_logic_vector(opcode) = std_logic_vector(op_rom) and FetDecEx = "01" else "11";              

end architecture;

-- FIM DO CODIGO
