-- ELF61 -> ARQUITETURA E ORGANIZACAO DE COMPUTADORES --
-- UNIVERSIDADE TECNOLOGICA FEDERAL DO PARANA
-- DEPARTAMENTO ACADEMICO DE ENGENHARIA ELETRONICA
-- O SEGUINTE CODIGO FOI DESENVOLVIDO PELOS ALUNOS:
-- ACYR EDUARDO MARCONATTO : 2358263
-- FABIO ZHAO YUAN WANG : 2358310
-- VICTOR AUGUSTO DEL MONEGO : 2378345

-- DISCLAIMER: O CODIGO A SEGUIR E BASEADO FORTEMENTE NO CODIGO "RAMDisp.vhd" fornecido pelo professor RAFAEL ELEODORO DE GOES


-- INICIO DO CODIGO

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

------------------------------------------------------------------------
entity rom is
port( clk :       in std_logic;
	    endereco :  in unsigned(15 downto 0);
	    instr :     out unsigned(15 downto 0)
);
end entity;
------------------------------------------------------------------------
architecture a_rom of rom is
------------------------------------------------------------------------
	type mem is array (0 to 128) of unsigned(15 downto 0);
  constant conteudo_rom : mem := (
    --Decidimos colocar R2 <= 'N' diretamente pelo RegFile.
    
    --O algoritmo eh baseado no seguinte teorema:
    --Para todo inteiro n>2, se 'n' nao eh primo, entao
    --'n' possui um divisor d tal que 1<d<=sqrt(n);

    --note tambem que, no laco checkPrime eh feito a verificacao
    --somente dos numeros impares, ja que para n>2, se 'n' eh primo
    -- entao 'n' nao eh par.
	
	--e como nao implementamos sqrt(n), eh feito o teste i*i<n
	--limitando nosso alcance para 0xFE00, ao inves de 0xFFFF.
	--Ja que (floor(sqrt(0xFFFF)))^2=0xFE01=255^2, e para verificar
	--se 0xFE01 eh primo o algoritmo checa se 257^2<0xFE01, o que 
	--"destroi" o registrador, ja que um reg de 16 suporta no max
	--um valor igual a 256^2.

    2  => b"00001_110000_00001", --addi R1, 1;
    3  => b"00011_110000_00011", --addi R3, 3;
    4  => b"00100_110000_00010", --addi R4, 2;
    5  => b"00100_011100_00010", --jle R4, R2, pc+2;
    6  => b"00000_000011_11110", --jmp end;
  --newCycle:
    7  => b"00101_000000_00011", --mov R5, R3;
    8  => b"01000_000000_00000", --mov R8, R0;
    9  => b"00101_011101_00100", --jlt R5, R4, pc+2;
    10 => b"00000_000011_10101", --jmp isPrime; (it is a prime num!)
  --checkPrime:
    11 => b"01001_000000_00100", --mov R9, R4;
    12 => b"01001_111111_00101", --div R9, R5;
    13 => b"01001_010001_00101", --mul R9, R5;
    14 => b"01001_011001_00100", --jne R9, R4, pc+2;
    15 => b"00000_000011_10111", --jmp nextNum; (it is not a prime num! update R4)
    16 => b"00101_110000_00010", --addi R5, 2;
    17 => b"01010_000000_00101", --mov R10, R5;
    18 => b"01010_010001_01010", --mul R10, R10;  
    19 => b"00100_011101_01010", --jlt R4, R10, pc+2;
    20 => b"00000_000011_01011", --jmp checkPrime;
  --isPrime:
    21 => b"00110_110000_00001", --addi R6, 1;
    22 => b"00111_000000_00100", --mov R7, R4;
  --nextNum:
    23 => b"00100_110000_00001", --addi R4, 1;
    24 => b"00110_011100_00001", --jle R6, R1, pc+2;
    25 => b"00100_110000_00001", --addi R4, 1;
    26 => b"00010_011101_00100", --jlt R2, R4, pc+2;
    27 => b"00000_000011_00111", --jmp newCycle;
  --loop:
    28 => b"00000_000011_11100", --jmp loop;


    others => (others=>'0')
  );
------------------------------------------------------------------------
begin

process(clk)
	begin
		if(rising_edge(clk)) then
			instr <= conteudo_rom(to_integer(endereco));
		end if;
end process;

end architecture;

--FIM DO CODIGO
