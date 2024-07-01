-- UTFPR - DAELN
-- Professor Rafael E. de Góes
-- Disciplina de Arquitetura e Organização de Computadores - ELF61
-- Arquivo TopLevel do Microprocessador para substituir o test_bech
-- versão 1.0 - 2018-10-15
-- versão 2.0 - 2019-09-07: criação do sinal 'rst_proc' que correspode Ã  not(KEY0) e deve ser usado para o processador e RAMDisp
-- versão 3.0 - 2022-03-11: adaptação para a placa DE10-Lite

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY MikroP IS
	PORT (
		-- sinais que sao usados no toplevel (substituem o que vinha do testbench)
		CLK_H_HW : IN STD_LOGIC; -- PIN_N14 (50 MHz)
		RST_HW : IN STD_LOGIC; -- KEY0 PIN_B8

		-- sinais que sao a interface de teste no HW fisico

		KEY1_HW : IN STD_LOGIC; -- KEY1 PIN_A7

		SWITCH_HW : IN unsigned (9 DOWNTO 0); --SW9 a SW0  (PINS F15, B14, A14, A13, B12, A12, C12, D12, C11, C10) 
		LED_HW : OUT unsigned (9 DOWNTO 0); -- LED9..LED0 (PINS B11, A11, D14, E14, C13, D13, B10, A10, A9, A8)

		-- displays da placa conectados na FPGA
		HEX0_HW : OUT STD_LOGIC_VECTOR(6 DOWNTO 0); -- display 7 segmentos (LSd)
		HEX1_HW : OUT STD_LOGIC_VECTOR(6 DOWNTO 0); -- display 7 segmentos
		HEX2_HW : OUT STD_LOGIC_VECTOR(6 DOWNTO 0); -- display 7 segmentos
		HEX3_HW : OUT STD_LOGIC_VECTOR(6 DOWNTO 0); -- display 7 segmentos 
		HEX4_HW : OUT STD_LOGIC_VECTOR(6 DOWNTO 0); -- display 7 segmentos 
		HEX5_HW : OUT STD_LOGIC_VECTOR(6 DOWNTO 0) -- display 7 segmentos (MSd)	 
	);
END MikroP;
ARCHITECTURE LogicFunction OF MikroP IS

	COMPONENT RAMDisp IS
		PORT (
			clk : IN STD_LOGIC;
			endereco : IN unsigned(15 DOWNTO 0);
			wr_en : IN STD_LOGIC;
			dado_in : IN unsigned(15 DOWNTO 0);
			dado_out : OUT unsigned(15 DOWNTO 0);

			--- sinais adicionais da RAMDisp
			-- decodificaÃ§Ã£o 7seg
			HEX0 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
			HEX1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0); --(max 99)
			HEX2 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
			HEX3 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
			HEX4 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
			HEX5 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
			-- divisÃ£o de clock 
			rst : IN STD_LOGIC;
			clk_h : IN STD_LOGIC;
			turbo : IN STD_LOGIC;
			halt : IN STD_LOGIC;
			clk_div : OUT STD_LOGIC
		);
	END COMPONENT RAMDisp;
	
	component Prime is
	port( 	clk, rst:		  in std_logic;
				debug_reg:    in unsigned(4 downto 0);
				debug_val:    out unsigned (15 downto 0));
	end component;

	-- Sinais do MikroP declarados apenas para nÃ£o deixar sinais de entrada da RAM flutuando
	SIGNAL enderecoRAMDisp : unsigned(15 DOWNTO 0);
	SIGNAL wr_enRAMDisp : STD_LOGIC;
	SIGNAL dado_inRAMDisp : unsigned(15 DOWNTO 0) := "0000000000000000";
	SIGNAL ram_out : unsigned(15 DOWNTO 0);
	SIGNAL CONT : unsigned (15 DOWNTO 0);
	SIGNAL clk_div_s : STD_LOGIC; -- esse é o clock divido de maneira variável pelas teclas TURBO e HALT
	SIGNAL rst_proc : STD_LOGIC; -- esse é o reset que deve ser ligado nos blocos do processador 
	SIGNAL pcDisp : unsigned (6 DOWNTO 0);
	SIGNAL romDisp : unsigned (7 DOWNTO 0);

BEGIN

	RAMeDISP : RAMDisp
	PORT MAP(
		clk => clk_div_s,
		endereco => enderecoRAMDisp,
		dado_in => dado_inRAMDisp,
		dado_out => ram_out, -- sinal a ser ligado ao processador
		wr_en => wr_enRAMDisp,

		HEX0 => HEX0_HW,
		HEX1 => HEX1_HW,
		HEX2 => HEX2_HW,
		HEX3 => HEX3_HW,
		HEX4 => HEX4_HW,
		HEX5 => HEX5_HW,

		halt => SWITCH_HW(9),
		turbo => SWITCH_HW(8),
		clk_h => CLK_H_HW,
		clk_div => clk_div_s,
		rst => rst_proc
	);
	
	PRIMEcomp:	Prime
	port map(
		clk_div_s, rst_proc, SWITCH_HW(4 DOWNTO 0), dado_inRAMDisp
	);

	-- Processo Exemplo que roda na cadência de clk_div
	PROCESS (clk_div_s, rst_proc)
	BEGIN
		IF rst_proc = '1' THEN
			CONT <= b"0000_0000_0000_0000";
		ELSIF clk_div_s' event AND clk_div_S = '1' THEN -- sintaxe equivalente a "rising_edge()"
			CONT <= CONT + 1;
		END IF;
	END PROCESS;

	-- Parte combincional assí­ncrona
	rst_proc <= NOT RST_HW;

	-- Sinais ligados ao RAMDisp
	enderecoRAMDisp <= "0000000001111111"; -- endereço 127
	wr_enRAMDisp <= '1';

	LED_HW(9) <= cont(0); -- LED9  pino R17 
	LED_HW(8) <= '0'; -- apenas para ficar apagado
	LED_HW(7 DOWNTO 0) <= CONT(7 DOWNTO 0);

END LogicFunction;