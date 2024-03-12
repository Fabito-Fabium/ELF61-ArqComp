library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ULA is
	port( 
		in_A: 		in unsigned (15 downto 0);
		in_B: 		in unsigned (15 downto 0);
		op: 		in unsigned (2 downto 0);
		out_ULA: 	out unsigned (15 downto 0);
		zero: 		out std_logic;
		LT: 		out std_logic);
end entity;

architecture ULA_arch of ULA is
 begin
	out_ULA <=    	in_A + in_B when op="000" else
			in_A - in_B when op="001" else
			in_A / in_B when op="010" else
			in_A + in_B when op="011" else
			in_A and in_B when op="100" else
			in_A or in_B when op="101" else
			not in_A when op="110" else
			not in_B when op="111" else
			"0000000000000000";
			
	LT <=	'1' when in_A < in_B else
			'0' when in_A >= in_B else
			'0';
			
end architecture;		
