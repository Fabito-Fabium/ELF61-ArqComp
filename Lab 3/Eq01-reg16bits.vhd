library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity reg16bits is
port( 	clk:		in std_logic;
	rst:		in std_logic;
	wr_en:		in std_logic;
	data_in:	in unsigned(15 downto 0);
	data_out:	out unsigned(15 downto 0)
	);
end entity;
architecture a_reg8bits of reg16bits is

signal rgst:	unsigned(15 downto 0);

begin

process(clk, rst, wr_en)
begin
	if rst='1' then
		rgst <= x"0000";
	elsif wr_en='1' then
		if rising_edge(clk) then
			rgst <= data_in;
		end if;
	end if;
end process;

data_out <= rgst;

end architecture;
