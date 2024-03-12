library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ULA is
	port( 
		A: in unsigned (15 downto 0);
		B: in unsigned (15 downto 0);
		OP: in unsigned (2 downto 0);
		S: out unsigned (15 downto 0);
		zero: out std_logic;
		LT: out std_logic);
end entity;

architecture ULA_arch of ULA is
 begin
	s <=    A + B when OP="000" else
			A - B when OP="001" else
			A / B when OP="010" else
			A + B when OP="011" else
			A and B when OP="100" else
			A or B when OP="101" else
			not A when OP="110" else
			not B when OP="111" else
			"0000000000000000";
			
	LT <=	'1' when A < B else
			'0' when A >= B else
			'0';
			
end architecture;		