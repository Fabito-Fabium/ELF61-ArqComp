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
entity ULARegs is
port( 	clk, rst, wr_en, IorR:	in std_logic;
	      A1, A2, A3:		          in unsigned (4 downto 0);
	      op:			                in unsigned (5 downto 0);
	      Cext:			              in unsigned (15 downto 0)
	);
end entity;
------------------------------------------------------------------------
architecture op_ULARegs of ULARegs is
------------------------------------------------------------------------
  component ULA is
	  port( 
--input signal
	  in_A: 		in unsigned (15 downto 0);
	  in_B: 		in unsigned (15 downto 0);
	  op: 			in unsigned (5 downto 0);
--output signal		
	  out_ULA: 	out unsigned (15 downto 0);
	  zero: 		out std_logic;
	  LT: 		  out std_logic);
  end component;
------------------------------------------------------------------------
  component RegFile is
  port( 	clk, rst, wr_en:	in std_logic;
	        A1, A2, A3:		    in unsigned (4 downto 0);
	        WD3:			        in unsigned (15 downto 0);
	        RD1, RD2:		      out unsigned (15 downto 0) 	:= x"0000"
	  );
  end component;
------------------------------------------------------------------------
  signal out_ULA, RD1, RD2, in_B:	unsigned (15 downto 0);
  signal zero, LT:		            std_logic;
------------------------------------------------------------------------
begin

	Bank:	RegFile port map(clk, rst, wr_en, A1, A2, A3, out_ULA, RD1, RD2);
	ULA0:	ULA	port map(RD1, in_B, op, out_ULA, zero, LT);
--mux:
	in_B <= RD2 	when IorR='0' else
		      Cext 	when IorR='1' else
		      x"0000";
	
end architecture;

-- FIM DO CODIGO
