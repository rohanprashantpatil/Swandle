@echo off

cd /d %dire%

set type=null
set /P type=File Type: 
set /P file=File Name: 

set output=tmp
set /P output=Output File Name: 

IF NOT %output% EQU tmp (
  cd %dire%\%type%
)

COPY %dire%\Script\vbs + %dire%\%type%\%file% + %dire%\Script\vbe %output%.bat

echo Compiled %file% to %output%

cd %dire%
swandle
