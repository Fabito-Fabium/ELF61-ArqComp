-- ELF61 -> ARQUITETURA E ORGANIZAÇÃO DE COMPUTADORES --
-- UNIVERSIDADE TECNOLÓGICA FEDERAL DO PARANÁ
-- DEPARTAMENTO ACADÊMICO DE ENGENHARIA ELETRÔNICA
-- O SEGUINTE CÓDIGO FOI DESENVOLVIDO PELOS ALUNOS:
-- ACYR EDUARTO MARCONATTO : 2358263
-- FABIO ZHAO YUAN WANG : 2358310
-- VICTOR AUGUSTO DEL MONEGO : 2378345

-- INÍCIO DO CÓDIGO

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ULA is
	port( 
--input signal
		in_A: 		in unsigned (15 downto 0);
		in_B: 		in unsigned (15 downto 0);
		op: 		in std_logic_vector (2 downto 0);
--output signal		
		out_ULA: 	out unsigned (15 downto 0);
		zero: 		out std_logic;
		LT: 		out std_logic);
end entity;

architecture ULA_arch of ULA is

signal inter_out: 		unsigned(15 downto 0);

begin

	inter_out <=   	in_A + in_B 		when op="000" else
			in_A - in_B 						when op="001" else
			in_A / in_B 						when op="010" and in_b /= x"0000" else
			resize(in_A * in_B, 16)			when op="011" else
			in_A and in_B 						when op="100" else
			in_A or in_B 						when op="101" else
			not in_A 							when op="110" else
			not in_B 							when op="111" else
			"0000000000000000";
	out_ULA		<= inter_out;
			
	LT 	<= 	'1' when std_logic_vector(in_A) < std_logic_vector(in_B) else 
			'0';
	
	zero 	 <=	'1' when std_logic_vector(inter_out) = "0000000000000000" else 
			'0';
	
end architecture;		


-- FIM DO CÓDIGO
