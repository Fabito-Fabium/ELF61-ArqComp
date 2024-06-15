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
entity ROM_PC_UC is
port( 	clk, rst:		in std_logic:='0';
        bnch_en:    in std_logic;
        FetDecEx:   out unsigned(1 downto 0);
        instr_en:   out unsigned(10 downto 0):=(others => '0');
        instr:      out unsigned(15 downto 0));
end entity;
------------------------------------------------------------------------
architecture integration of ROM_PC_UC is
------------------------------------------------------------------------
  component un_controle is
  port( 	clk, rst:	          in std_logic;
	        instr:		          in unsigned(15 downto 0);
	        instr_en:	          out unsigned(10 downto 0);
          FetDecEx:           out unsigned(1 downto 0)
	);
  end component;
------------------------------------------------------------------------
  component program_counter is
  port( 	clk, rst, wr_en, jump:		in std_logic;
          bnch_en:                  in std_logic;
  	      pcImm:	                  in unsigned(15 downto 0);
  	      pc_out:	                  out unsigned(15 downto 0)
  	);
  end component;
------------------------------------------------------------------------
  component rom is
  port( 	clk : 		    in std_logic;
  	      endereco : 	  in unsigned(15 downto 0);
  	      instr : 		  out unsigned(15 downto 0)
  );
  end component;
------------------------------------------------------------------------
  signal wr_en_pc, jump_en:     std_logic;
  signal interm_en:             unsigned(10 downto 0):=(others => '0');
  signal FDEinterm:             unsigned(1  downto 0):=(others => '0');
  signal pcImm, pc_out: 		    unsigned(15 downto 0):=(others => '0');
  signal instrSgnl:			        unsigned(15 downto 0):=(others => '0');
------------------------------------------------------------------------
begin

  pc:	  program_counter	port map(clk, rst, wr_en_pc, jump_en, bnch_en, pcImm, pc_out);
  r0m:	rom		          port map(clk, pc_out, instrSgnl);
  uctl:	un_controle	    port map(clk, rst, instrSgnl, interm_en, FDEinterm);
  
  instr_en  <= interm_en;
  jump_en   <= interm_en(3);

  FetDecEx  <= FDEinterm;
  wr_en_pc  <= FDEinterm(1);
  pcImm     <= "000000" & instrSgnl(15 downto 11) & instrSgnl(4 downto 0);

  instr <= instrSgnl;

end architecture;

-- FIM DO CODIGO
