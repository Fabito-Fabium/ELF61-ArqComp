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
entity un_controle is
port( 	clk, rst:	          in std_logic;
	      instr:		          in unsigned(15 downto 0);
	      instr_en:	          out unsigned(3 downto 0);
        FetDecEx:           out unsigned(1 downto 0)
	);
end entity;
------------------------------------------------------------------------
architecture a_un_controle of un_controle is
------------------------------------------------------------------------
  component maq_estados is
  port( 	clk,rst:      	in std_logic;
	        state:	        out unsigned(1 downto 0)
	  );
  end component;
------------------------------------------------------------------------
  component un_atom is
  port( 	op_rom, opcode:     in unsigned(5 downto 0);
          FetDecEx:           in unsigned(1 downto 0);
          instr_en:	          out std_logic;
          instr_sel:          out unsigned(1 downto 0)
	  );
  end component;
------------------------------------------------------------------------
  type List is array (0 to instr_en'length-1) of unsigned(5 DOWNTO 0);
------------------------------------------------------------------------  
  constant opList : List := (
	  0  => "001110", 1  => "001101", 2  => "000010", 
    3  => "000011",others => (others => '0')
  );
------------------------------------------------------------------------
  type data is array(0 to instr_en'length-1) of unsigned(1 downto 0);
------------------------------------------------------------------------
  signal instr_sel:     data:=(others => (others => '0'));
  signal opcode:	      unsigned(5 downto 0):="000000";
  signal state:         unsigned(1 downto 0):="00";
------------------------------------------------------------------------
begin

  opcode <= instr(10 downto 5);
  mq:	  maq_estados port map(clk, rst, state);

  add:  un_atom     port map(opList(0), opcode, state, instr_en(0), instr_sel(0));
  jump: un_atom     port map(opList(3), opcode, state, instr_en(3), instr_sel(3)); 

  FetDecEx <= state;

end architecture;

-- FIM DO CODIGO
