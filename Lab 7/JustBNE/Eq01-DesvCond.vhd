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
entity DesvCond is
port( 	clk, rst:		in std_logic);
end entity;
------------------------------------------------------------------------
architecture calculate of DesvCond is
------------------------------------------------------------------------
  type List is array(0 to 3) of unsigned(5 downto 0);
  constant opImmList: List :=(
    0  => "110000", 1 => "110011", 2 => "001011", others => (others => '0') 
  );
  constant opBncList: List :=(
    0  => "001010", others => (others => '0')
);
------------------------------------------------------------------------
  component ROM_PC_UC is
  port( 	clk, rst:		in std_logic;
          bnch_en:    in std_logic;
          FetDecEx:   out unsigned(1 downto 0);
          instr_en:   out unsigned(9 downto 0);
          instr:      out unsigned(15 downto 0));
  end component;
------------------------------------------------------------------------
  component ULARegs is
  port( 	clk, rst, wr_en, IorR:	in std_logic;
          FetDecEx:               in unsigned (1 downto 0);
	        A1, A2, A3:		          in unsigned (4 downto 0);
	        op:			                in unsigned (5 downto 0);
	        Cext:			              in unsigned (15 downto 0);
          flgZ, flgLT:            out std_logic);
  end component;
------------------------------------------------------------------------
  signal FetDecEx:      unsigned(1 downto 0);
  signal instr_en:      unsigned(9 downto 0):=(others => '0');
  signal instr, Cext:   unsigned(15 downto 0):=(others => '0');

  signal ULA_en, IorR:  std_logic;
  signal A1, A2, A3:    unsigned(4 downto 0):=(others => '0');
  signal op:            unsigned(5 downto 0):=(others => '0');
  signal bnch_en:       std_logic:='0';
  signal flgZ, flgLT:   std_logic:='0';
------------------------------------------------------------------------
begin
  
  pcall:  ROM_PC_UC port map(clk, rst, bnch_en, FetDecEx, instr_en, instr);
  ulaRg:  ULARegs   port map(clk, rst, ULA_en, IorR, FetDecEx, 
                    A1, A2, A3, op, Cext, flgZ, flgLT);
  --todos menos a instrucao (3), jmp, utilizam a ULARegs
  ULA_en <= '1' when std_logic_vector(FetDecEx) = "10" 
                   and instr_en(3) /= '1'
                   and instr_en(9) /= '1' 
                   else '0'; 

  IorR    <= '1'when op = opImmList(0) 
                  or op = opImmList(1)
                  or op = opImmList(2)
                  else '0';
  --sabendo que nessa arquitetura, a3 = instr(15::11) = a1 e (add a3, a1, a2):=(a3 <= a1 + a2)
  --decidimos codificar o mov entre reg como um add onde a3 /= a1 = a0 = 0, resultando em:
  --(add a3, a0, a2) <=> (a3 <= a0 + a2) <=> (a3 <= 0 + a2) => (a3 <= a2) => (mov a3, a2)
  -- por isso, temos a condicao op/=0 em A1
  A1 <= instr(15 downto 11)   when (std_logic_vector(FetDecEx) = "01" 
                                  or std_logic_vector(FetDecEx) = "10") and (op /= 0)
                              else (others => '0');

  A2 <= instr(4 downto 0)     when  (std_logic_vector(FetDecEx) = "01" 
                                 or std_logic_vector(FetDecEx) = "10") and (op /= opBncList(0)) else
        "00001"               when (op = opBncList(0))
                              else (others => '0');

  A3 <= instr(15 downto 11)   when std_logic_vector(FetDecEx) = "01" 
                                  or std_logic_vector(FetDecEx) = "10" 
                              else (others => '0'); --referente a arquitetura. 
  
  op <= instr(10 downto 5)    when std_logic_vector(FetDecEx) = "01" 
                                  or std_logic_vector(FetDecEx) = "10"
                              else (others => '0');
  
  Cext <= resize(instr(4 downto 0), Cext'length) when std_logic_vector(FetDecEx) /= "00" 
          else (others => '0');
  
  bnch_en <= '1' when op = opBncList(0) and flgZ /= '1'
              else '0';
end architecture;

