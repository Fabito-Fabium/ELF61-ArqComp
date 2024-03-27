library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity RegFile is
port( 	clk, rst, wr_en:	in std_logic;
	A1, A2, A3:		in unsigned(2 downto 0);
	WD3:			in unsigned(15 downto 0);
	RD1, RD2:		out unsigned(15 downto 0) 	:= x"0000"
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
signal o0, o1, o2, o3, o4, o5, o6, o7:	unsigned(15 downto 0);
--write enable register
signal w0, w1, w2, w3, w4, w5, w6, w7:	std_logic;

begin
rg0:	reg16bits port map(clk, rst, w0, WD3, o0);
rg1:	reg16bits port map(clk, rst, w1, WD3, o1);
rg2:	reg16bits port map(clk, rst, w2, WD3, o2);
rg3:	reg16bits port map(clk, rst, w3, WD3, o3);
rg4:	reg16bits port map(clk, rst, w4, WD3, o4);
rg5:	reg16bits port map(clk, rst, w5, WD3, o5);
rg6:	reg16bits port map(clk, rst, w6, WD3, o6);
rg7:	reg16bits port map(clk, rst, w7, WD3, o7);


w0 <=  	'1' when A3="000" and wr_en='1' else
	'0';
w1 <=	'1' when A3="001" and wr_en='1' else
	'0';
w2 <=  	'1' when A3="010" and wr_en='1' else
	'0';
w3 <=	'1' when A3="011" and wr_en='1' else
	'0';
w4 <=  	'1' when A3="100" and wr_en='1' else
	'0';
w5 <=	'1' when A3="101" and wr_en='1' else
	'0';
w6 <=  	'1' when A3="110" and wr_en='1' else
	'0';
w7 <=	'1' when A3="111" and wr_en='1' else
	'0';

RD1 <= 	o0 when A1="000" else
	o1 when A1="001" else
	o2 when A1="010" else
	o3 when A1="011" else
	o4 when A1="100" else
	o5 when A1="101" else
	o6 when A1="110" else
	o7 when A1="111" else
	x"0000";

RD2 <= 	o0 when A2="000" else
	o1 when A2="001" else
	o2 when A2="010" else
	o3 when A2="011" else
	o4 when A2="100" else
	o5 when A2="101" else
	o6 when A2="110" else
	o7 when A2="111" else
	x"0000";


end architecture;
