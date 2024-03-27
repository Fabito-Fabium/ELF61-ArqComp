library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity RegFile is
port( 	clk, rst, wr_en:	in std_logic;
	A1, A2, A3:		in unsigned(2 downto 0);
	WD3:			in unsigned(15 downto 0);
	RD1, RD2:		out unsigned(15 downto 0)
	);
end entity;
architecture op_RegFile of RegFile is

component reg16bits is
port( 	clk:		in std_logic;
	rst:		in std_logic;
	wr_en:		in std_logic;
	data_in:	in unsigned(15 downto 0);
	data_out:	out unsigned(15 downto 0)
	);
end component;

--output from register
signal o0, o1:	unsigned(15 downto 0);
--write enable register
signal w0, w1:	std_logic;

begin
rg0:	reg16bits port map(clk, rst, w0, WD3, o0);
rg1:	reg16bits port map(clk, rst, w1, WD3, o1);

w0 <=  	'1' when A3="000" and wr_en='1' else
	'0';

w1 <=	'1' when A3="001" and wr_en='1' else
	'0';

RD1 <= 	o0 when A1="000" else
	o1 when A1="001" else
	x"0000";

RD2 <= 	o0 when A2="000" else
	o1 when A2="001" else
	x"0000";


end architecture;
