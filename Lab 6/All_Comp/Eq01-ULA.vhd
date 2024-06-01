-- ELF61 -> ARQUITETURA E ORGANIZACAO DE COMPUTADORES --
-- UNIVERSIDADE TECNOLOGICA FEDERAL DO PARANA
-- DEPARTAMENTO ACADEMICO DE ENGENHARIA ELETRONICA
-- O SEGUINTE CODIGO FOI DESENVOLVIDO PELOS ALUNOS:
-- ACYR EDUARDO MARCONATTO : 2358263
-- FABIO ZHAO YUAN WANG : 2358310
-- VICTOR AUGUSTO DEL MONEGO : 2378345
-- O SEGUINTE CIRCUITO VHDL, JUNTAMENTE COM O CIRCUITO DE TOP LEVEL, CONTEM UM TOTAL DE 469 ELEMENTOS LOGICOS, DE ACORDO COM O RELATORIO DE COMPILACAO DO QUARTUS PRIME

-- INICIO DO CODIGO

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

------------------------------------------------------------------------
entity ULA is
	port( 
--input signal
		in_A: 		in unsigned (15 downto 0);
		in_B: 		in unsigned (15 downto 0);
		op: 			in unsigned (5 downto 0);
--output signal		
		out_ULA: 	out unsigned (15 downto 0);
		zero: 		out std_logic;
		LT: 		  out std_logic);
end entity;
------------------------------------------------------------------------
architecture ULA_arch of ULA is
------------------------------------------------------------------------
  signal inter_out: 		unsigned(15 downto 0);
------------------------------------------------------------------------
begin

	inter_out <=   	
      in_A + in_B 				when  op="001110" or op="110000" or op="000000" else
      in_A - in_B 				when  op="001101" or op="110011"  else
			in_A / in_B  				when (op="111111" or op="000010" ) and (in_B /= x"0000") else
			"0000000000000000";
	out_ULA		<= inter_out;
			
	LT 	<= 	'1' when std_logic_vector(in_A) < std_logic_vector(in_B) else 
			    '0';
	
	zero 	 <=	'1' when std_logic_vector(inter_out) = "0000000000000000" else 
			      '0';
	
end architecture;		


-- FIM DO CODIGO
