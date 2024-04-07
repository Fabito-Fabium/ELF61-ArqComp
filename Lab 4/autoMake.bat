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

set /p time="Insira o tempo de execucao em ns: "
REM Pedir arquivos VHDL


for %%i in (Eq01*tb.vhd) do set "main=%%~i" 
set main=%main:~5,-7%

for %%f in (Eq01*.vhd) do (
    ghdl -a %%f
)

ghdl -e %main%_tb

ghdl -r %main%_tb --stop-time=%time%ns --wave=Eq01-%main%.ghw

set count=0
for %%x in (Eq01*.gtkw) do set /a count+=1

if %count%==1 (gtkwave Eq01-%main%.gtkw) else (gtkwave Eq01-%main%.ghw)

endlocal
