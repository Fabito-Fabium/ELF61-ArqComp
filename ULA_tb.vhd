library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ULA_test is
end entity;

architecture ULA_tb of ULA_test is
component ULA
	port (
		A: in unsigned (15 downto 0);
		B: in unsigned (15 downto 0);
		OP: in unsigned (2 downto 0);
		S: out unsigned (15 downto 0);
		zero: out std_logic;
		LT: out std_logic);
end component;

signal A_in: unsigned (15 downto 0);
signal B_in: unsigned (15 downto 0);
signal OP_in: unsigned (2 downto 0);
signal S_out: unsigned (15 downto 0);
signal zero_out: std_logic;
signal LT_out: std_logic;

begin
	uut: ULA port map ( A => A_in,
						B => B_in,
						OP => OP_in,
						S => S_out,
						zero => zero_out,
						LT => LT_out);
	
	process begin
		A_in <= "0000000000001000";
		B_in <= "0000000000000010";
		OP_in <= "000"; wait for 50 ns;
		OP_in <= "001"; wait for 50 ns;
		OP_in <= "010"; wait for 50 ns;
		OP_in <= "011"; wait for 50 ns;
		OP_in <= "100"; wait for 50 ns;
		OP_in <= "101"; wait for 50 ns;
		OP_in <= "110"; wait for 50 ns;
		OP_in <= "111"; wait for 50 ns;
		wait;
	end process;
end architecture;
