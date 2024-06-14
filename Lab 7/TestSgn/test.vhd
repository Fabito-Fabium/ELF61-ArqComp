library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

------------------------------------------------------------------------
entity test is
end entity;

architecture smt of test is
  
  signal a1:  unsigned(15 downto 0);
  signal a:   unsigned(15 downto 0);
  signal a2:  unsigned(15 downto 0);
begin
  
  dude: process
  begin
    a1 <= x"fff1";
    a <= x"fffe";
    wait for 5 ns;
    a2 <= a1 - (("0" & not(a(14 downto 0))) + 1);
    wait for 5 ns;
    wait;
  end process dude;
  
  
end architecture smt;
