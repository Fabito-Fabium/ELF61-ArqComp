-- ELF61 -> ARQUITETURA E ORGANIZACAO DE COMPUTADORES --
-- UNIVERSIDADE TECNOLOGICA FEDERAL DO PARANA
-- DEPARTAMENTO ACADEMICO DE ENGENHARIA ELETRONICA
-- O SEGUINTE CODIGO FOI DESENVOLVIDO PELOS ALUNOS:
-- ACYR EDUARDO MARCONATO : 2358263
-- FABIO ZHAO YUAN WANG : 2358310
-- VICTOR AUGUSTO DEL MONEGO : 2378345

-- INICIO DO CODIGO
library ieee ;
use ieee.std_logic_1164.all ;
use ieee.numeric_std.all;

ENTITY toplevel IS
PORT (   
		  -- sinais que sao usados no toplevel (substituem o que vinha do testbench)
		  CLK_H_HW : in std_logic;               -- PIN_N14 (50 MHz)
		  RST_HW   : in std_logic;               -- KEY0 PIN_B8
		  
        -- sinais que sao a interface de teste no HW fisico
        
		  KEY1_HW:    in std_logic;				   -- KEY1 PIN_A7
		  SWITCH_HW : in unsigned (9 downto 8);   --SW9 a SW8
		  SWITCH_HW2: in unsigned (4 downto 0); 
        -- displays da placa conectados na FPGA
        HEX0_HW: out std_logic_vector(6 downto 0);   -- display 7 segmentos (LSd)
        HEX1_HW: out std_logic_vector(6 downto 0);   -- display 7 segmentos
        HEX2_HW: out std_logic_vector(6 downto 0);   -- display 7 segmentos
        HEX3_HW: out std_logic_vector(6 downto 0);   -- display 7 segmentos 
		  HEX4_HW: out std_logic_vector(6 downto 0);   -- display 7 segmentos 
		  HEX5_HW: out std_logic_vector(6 downto 0)    -- display 7 segmentos (MSd)	 
		  );
		  
END toplevel;

ARCHITECTURE LogicFunction OF toplevel IS

		COMPONENT ramdisp is
		PORT ( 	
					clk : in std_logic;
					endereco : in unsigned(15 downto 0);
					wr_en : in std_logic;
					dado_in : in unsigned(15 downto 0);
					dado_out : out unsigned(15 downto 0);
					
					--- sinais adicionais da RAMDisp
					-- decodificacao 7seg
					HEX0 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
					HEX1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0); --(max 99)
					HEX2 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
					HEX3 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
					HEX4 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
					HEX5 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
					
					
					-- divisaoo de clock 
					rst    : in std_logic;
					clk_h  : in std_logic;
					turbo  : in std_logic;
					halt   : in std_logic;
					clk_div: out std_logic
				);
		END COMPONENT ramdisp;

		COMPONENT Prime is
		port( 	clk, rst:		  in std_logic;
				  debug_reg:    in unsigned(4 downto 0);
				  debug_val:    out unsigned (15 downto 0)
		);
		end COMPONENT Prime;
		
		
	-- Sinais do MikroP declarados apenas para nao deixar sinais de entrada da RAM flutuando
	SIGNAL enderecoRAMDisp: unsigned(15 downto 0);
	SIGNAL wr_enRAMDisp: std_logic;
	SIGNAL dado_inRAMDisp: unsigned(15 downto 0):="0000000000000000";
	SIGNAL dado_adRAMDisp: unsigned(15 downto 0):="0000000000000000";
	SIGNAL ram_out:  unsigned(15 downto 0);
	SIGNAL clk_div_s: std_logic;  -- esse é o clock divido de maneira variável pelas teclas TURBO e HALT
	SIGNAL rst_proc: std_logic; -- esse é o reset que deve ser ligado nos blocos do processador
	SIGNAL C_debug_reg: unsigned(4 downto 0):="00000";  -- register
	SIGNAL C_debug_val: unsigned(15 downto 0); -- data
		
BEGIN

	-- layout do RAMDisp
	RAMeDISP: ramdisp
	PORT MAP (	
					clk        => clk_div_s,
					endereco   => enderecoRAMDisp,
					dado_in    => dado_inRAMDisp,
					dado_out   => ram_out, -- sinal a ser ligado ao processador
					wr_en      => wr_enRAMDisp,
					
					HEX0=>HEX0_HW, 
					HEX1=>HEX1_HW, 
					HEX2=>HEX2_HW, 
					HEX3=>HEX3_HW,
					HEX4=>HEX4_HW,
					HEX5=>HEX5_HW,
					
					halt => SWITCH_HW(9),
					turbo => SWITCH_HW(8),
					clk_h  => CLK_H_HW,  
					clk_div => clk_div_s,
					rst    => rst_proc
				);

	Controller: Prime
	PORT MAP(
				clk 	  		=> clk_div_s,
				rst 	  		=> rst_proc,
				debug_reg 	=> C_debug_reg,
				debug_val	=> C_debug_val
	);

	-- Parte combincional assí­ncrona
	rst_proc  <= not RST_HW;

   -- Sinais ligados ao RAMDisp
	enderecoRAMDisp <= "0000000001111111"; -- endereço 127
	wr_enRAMDisp <= '1';
	dado_inRAMDisp <= C_debug_val;
	
	
	-- Input da placa
	C_debug_reg <= SWITCH_HW2(4 downto 0);
	
END LogicFunction;
-- FIM DO CODIGO