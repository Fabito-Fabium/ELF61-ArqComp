-- ELF61 -> ARQUITETURA E ORGANIZACAO DE COMPUTADORES --
-- UNIVERSIDADE TECNOLOGICA FEDERAL DO PARANA
-- DEPARTAMENTO ACADEMICO DE ENGENHARIA ELETRONICA
-- O SEGUINTE CODIGO FOI DESENVOLVIDO PELOS ALUNOS:
-- ACYR EDUARDO MARCONATTO : 2358263
-- FABIO ZHAO YUAN WANG : 2358310
-- VICTOR AUGUSTO DEL MONEGO : 2378345

-- DISCLAIMER: O CODIGO A SEGUIR E BASEADO FORTEMENTE NO CODIGO "MikroP.vhd" fornecido pelo professor RAFAEL ELEODORO DE GOES

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
        
		  SWITCH_HW : in unsigned (9 downto 0);   --SW9 a SW0  (PINS F15, B14, A14, A13, B12, A12, C12, D12, C11, C10) 
        LED_HW    : out unsigned (9 downto 0);  -- LED9..LED0 (PINS B11, A11, D14, E14, C13, D13, B10, A10, A9, A8)

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
	
	
		component ULA is
			port( 
		--input signal
				in_A		: 	in unsigned (7 downto 0);
				in_B		: 	in unsigned (7 downto 0);
				op			: 	in std_logic_vector (2 downto 0);
		--output signal		
				out_ULA	: 	out unsigned (7 downto 0);
				zero		: 	out std_logic;
				LT			: 	out std_logic);
		end component;
		
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
	
	-- Sinais do MikroP declarados apenas para nao deixar sinais de entrada da RAM flutuando
	SIGNAL enderecoRAMDisp: unsigned(15 downto 0);
	SIGNAL wr_enRAMDisp: std_logic;
	SIGNAL dado_inRAMDisp: unsigned(15 downto 0):="0000000000000000";
	signal operation : std_logic_vector (2 downto 0);
	SIGNAL ram_out:  unsigned(15 downto 0);
	
	
	Signal CONT: unsigned (7 downto 0);
	signal clk_div_s: std_logic;  -- esse é o clock divido de maneira variável pelas teclas TURBO e HALT
	signal rst_proc: std_logic; -- esse é o reset que deve ser ligado nos blocos do processador 
	--sinais q vao para ULA
	signal in_A		:	unsigned (7 downto 0);
	signal in_B		: 	unsigned (7 downto 0);
	--sinal referente ao display
   signal out_ULA 	: 	unsigned(7 downto 0);        -- numero a mostrar no ramdisp
	
	
BEGIN
	--definir a operação
	operation <= "010";
	
	-- layout do RAMDisp
	RAMeDISP: ramdisp
	PORT MAP (	
					clk=>clk_div_s,
					endereco => enderecoRAMDisp,
					dado_in=> dado_inRAMDisp,
					dado_out => ram_out, -- sinal a ser ligado ao processador
					wr_en=> wr_enRAMDisp,
					
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
			
	--layout da ULA
	ula_go: ULA
	port map (
					in_A => in_A,
					in_B => in_B,
					op => operation,
					out_ULA => out_ULA,
					zero => LED_HW(9),
					LT => LED_HW(8)
					
				);
				
	-- Processo Exemplo que roda na cadência de clk_div
	process (clk_div_s, rst_proc)
   Begin
		If rst_proc = '1' then
			CONT <= b"0000_0001";
		elsif rising_edge(clk_div_s)then -- sintaxe equivalente a "rising_edge()"
				CONT <= CONT + 1 ; 
		end if;
	end process;

	-- Parte combincional assí­ncrona
	rst_proc  <= not RST_HW;

   -- Sinais ligados ao RAMDisp
	enderecoRAMDisp <= "0000000001111111"; -- endereço 127
	wr_enRAMDisp <= '1';
	dado_inRAMDisp (7 downto 0 ) <= out_ULA(7 downto 0);	
	LED_HW(7 downto 0) <= out_ULA(7 downto 0);
	
	--Sinais ligados à ULA
	in_A <= SWITCH_HW(7 downto 0);
	in_B <= CONT(7 downto 0);
	
END LogicFunction ;
