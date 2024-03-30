@echo off
setlocal
REM ELF61 -> ARQUITETURA E ORGANIZACAO DE COMPUTADORES
REM UNIVERSIDADE TECNOLOGICA FEDERAL DO PARANA
REM DEPARTAMENTO ACADEMICO DE ENGENHARIA ELETRONICA
REM O SEGUINTE CODIGO FOI DESENVOLVIDO PELOS ALUNOS:
REM ACYR EDUARDO MARCONATTO : 2358263
REM FABIO ZHAO YUAN WANG : 2358310
REM VICTOR AUGUSTO DEL MONEGO : 2378345
REM INICIO DO CODIGO

REM Change directory to the location of the batch file
cd /d %~dp0 

echo Bem Vindo ao processo de criacao makefile!
echo Certifique-se que os programas GDHL e GTKWAVE estao inseridos no PATH do sistema.

REM Pedir arquivos VHDL
set /p VHDL_FILES="Insira os arquivos VHDL (separados por espaco e sem extensao): "
REM Pedir arquivo Testbench
set /p TESTBENCH="Insira o arquivo Testbench: "
REM Pedir o nome da arquitetura Testbench
set /p TESTBENCH_ARCH="Insira o nome da arquitetura do Testbench: "
REM Pedir o nome do output
set /p WAVEFORM_FILE="Insira o nome desejado para o arquivo de onda (sem extensao): "

REM Compilar arquivos VHDL
for %%f in (%VHDL_FILES%) do (
    ghdl -a %%f.vhd
)

REM Compilar testbench
ghdl -a %TESTBENCH%.vhd

REM Elaborar o circuito
ghdl -e %TESTBENCH_ARCH%

REM rodar a simulação e gerar o arquivo .ghw
ghdl -r %TESTBENCH_ARCH% --wave=%WAVEFORM_FILE%.ghw

echo Simulacao Feita!

REM Open waveform using GTKWave
gtkwave %WAVEFORM_FILE%.ghw


REM FIM DO CODIGO

endlocal
