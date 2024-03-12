library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ULA_tb is
end entity;

architecture Run_tb of ULA_tb is
component ULA
	port (
		in_A: 		in unsigned (15 downto 0);
		in_B: 		in unsigned (15 downto 0);
		op: 		in unsigned (2 downto 0);
		out_ULA: 	out unsigned (15 downto 0);
		zero: 		out std_logic;
		LT:	 	out std_logic);
end component;

signal in_A: 	unsigned (15 downto 0);
signal in_B: 	unsigned (15 downto 0);
signal op: 	unsigned (2 downto 0);
signal out_ULA: unsigned (15 downto 0);
signal zero: 	std_logic;
signal LT: 	std_logic;

begin
	tb: 	ULA port map(in_A, in_B, op, out_ULA, zero, LT);
	
	process begin
		in_A <= "0000000000001000";
		in_B <= "0000000000000010";
		op <= "000"; wait for 50 ns;
		op <= "001"; wait for 50 ns;
		op <= "010"; wait for 50 ns;
		op <= "011"; wait for 50 ns;
		op <= "100"; wait for 50 ns;
		op <= "101"; wait for 50 ns;
		op <= "110"; wait for 50 ns;
		op <= "111"; wait for 50 ns;
		wait;
	end process;
end architecture;
