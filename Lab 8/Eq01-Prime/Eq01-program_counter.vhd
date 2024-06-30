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
entity program_counter is
port( 	clk:		in std_logic;
	rst:		      in std_logic;
	wr_en:		    in std_logic;
	jump:		      in std_logic;
  bnch_en:      in std_logic;
  notit_en:     in std_logic;
	pcImm:	      in unsigned(15 downto 0);
	pc_out:	      out unsigned(15 downto 0)
	);
end entity;

------------------------------------------------------------------------
architecture counting of program_counter is
------------------------------------------------------------------------
  component reg16bits is
  port( 	clk:		in std_logic;
	      rst:		      in std_logic;
	      wr_en:		    in std_logic;
	      data_in:	    in unsigned(15 downto 0);
	      data_out:	    out unsigned(15 downto 0)
	  );
  end component;
------------------------------------------------------------------------
  signal dt_in, dt_out:	unsigned(15 downto 0):=x"0000";
  signal bnch_ct:       unsigned(15 downto 0):=x"0000";
------------------------------------------------------------------------
begin

  count: reg16bits port map(clk, rst, wr_en, dt_in, dt_out);

  dt_in <=	pcImm             when jump = '1' else
            (others => '0')	  when rst  = '1' else
            dt_out + 2        when notit_en = '1' else
            dt_out + bnch_ct  when bnch_en = '1' and pcImm(4) = '0' else
            dt_out - bnch_ct  when bnch_en = '1' and pcImm(4) = '1' else
		        dt_out + 1;

  pc_out <= dt_out;
  
  bnch_ct <= resize(pcImm(3 downto 0), bnch_ct'length) + 1 
             when pcImm(4) = '0' else
             resize(not(pcImm(3 downto 0)), bnch_ct'length);
end architecture;

-- FIM DO CODIGO
