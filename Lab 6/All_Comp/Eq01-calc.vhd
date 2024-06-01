-- ELF61 -> ARQUITETURA E ORGANIZACAO DE COMPUTADORES --
-- UNIVERSIDADE TECNOLOGICA FEDERAL DO PARANA
-- DEPARTAMENTO ACADEMICO DE ENGENHARIA ELETRONICA
-- O SEGUINTE CODIGO FOI DESENVOLVIDO PELOS ALUNOS:
-- ACYR EDUARDO MARCONATTO : 2358263
-- FABIO ZHAO YUAN WANG : 2358310
-- VICTOR AUGUSTO DEL MONEGO : 2378345

-- INICIO DO CODIGO
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

------------------------------------------------------------------------
entity calc is
port( 	clk, rst:		in std_logic);
end entity;
------------------------------------------------------------------------
architecture calculate of calc is
------------------------------------------------------------------------
  type List is array(0 to 3) of unsigned(5 downto 0);
  constant opImmList: List :=(
    0  => "110000", 1 => "110011", 2 => "000010", others => (others => '0') 
  );
------------------------------------------------------------------------
  component ROM_PC_UC is
  port( 	clk, rst:		in std_logic:='0';
          FetDecEx:   out unsigned(1 downto 0);
          instr_en:   out unsigned(6 downto 0);
          instr:      out unsigned(15 downto 0));
  end component;
------------------------------------------------------------------------
  component ULARegs is
  port( 	clk, rst, wr_en, IorR:	in std_logic;
	        A1, A2, A3:		          in unsigned (4 downto 0);
	        op:			                in unsigned (5 downto 0);
	        Cext:			              in unsigned (15 downto 0));
  end component;
------------------------------------------------------------------------
  signal FetDecEx:      unsigned(1 downto 0);
  signal instr_en:      unsigned(6 downto 0):=(others => '0');
  signal instr, Cext:   unsigned(15 downto 0):=(others => '0');

  signal ULA_en, IorR:  std_logic;
  signal A1, A2, A3:    unsigned(4 downto 0):=(others => '0');
  signal op:            unsigned(5 downto 0):=(others => '0');
------------------------------------------------------------------------
begin
  
  pcall:  ROM_PC_UC port map(clk, rst, FetDecEx, instr_en, instr);
  ulaRg:  ULARegs   port map(clk, rst, ULA_en, IorR, A1, A2, A3, op, Cext);
  
  ULA_en  <= instr_en(0) or instr_en(1) or instr_en(2) or instr_en(3) 
             or instr_en(4) or instr_en(5) or instr_en(6);

  IorR    <= '1'when op = opImmList(0) 
                  or op = opImmList(1)
                  or op = opImmList(2)
                  else '0';
  
  A1 <= instr(15 downto 11)   when (std_logic_vector(FetDecEx) = "01" 
                                or std_logic_vector(FetDecEx) = "10")
                              and (std_logic_vector(op) /= "000000")
                              else (others => '0');
  A2 <= instr(4 downto 0)     when  std_logic_vector(FetDecEx) = "01" 
                                  or std_logic_vector(FetDecEx) = "10"
                              else (others => '0');
  A3 <= instr(15 downto 11)   when std_logic_vector(FetDecEx) = "01" 
                                or std_logic_vector(FetDecEx) = "10" 
                              else (others => '0'); --referente a arquitetura. 
  op <= instr(10 downto 5)    when std_logic_vector(FetDecEx) = "01" 
                                or std_logic_vector(FetDecEx) = "10"
                              else (others => '0');
  
  Cext <= x"00" & "000" & instr(4 downto 0);


end architecture;

