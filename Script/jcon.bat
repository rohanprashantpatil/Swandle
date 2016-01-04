@echo off
set name=jtmp
IF %creation% EQU true (
  set /P name=Jcon name: 
)

IF EXIST jtmp.bat (
DEL jtmp.bat
)

IF EXIST tmp.bat (
del tmp.bat
)

IF NOT %name% EQU jtmp cd Jcon

echo cd /D %dire%>>%name%.bat
echo COPY %dire%\Script\vbs tmp.bat>>%name%.bat

set connection=null
set /P connection=Connection: 
IF %connection% EQU null goto loop

echo COPY tmp.bat + %dire%\Script\empty + %dire%\connection\%connection% + %dire%\Script\jconnect tmp.bat>>%name%.bat

:loop
set /P type=File Type: 

IF %type% EQU jcon goto jcon
IF %type% EQU connection goto connection
IF %type% EQU endfile goto end

set /P file=File Name: 

echo COPY tmp.bat  + %dire%\Script\empty + %dire%\%type%\%file% tmp.bat>>%name%.bat

goto loop

:jcon

set /P file=Jcon Name: 

COPY %name%.bat + %dire%\Script\empty + %dire%\Jcon\%file%.bat %name%.bat

:connection

set /P connection=Connection: 

echo COPY tmp.bat + %dire%\Script\empty + %dire%\connection\%connection% + %dire%\Script\jcon tmp.bat>>%name%.bat

:end

echo COPY tmp.bat + %dire%\Script\jend + %dire%\Script\vbe tmp.bat>>%name%.bat
echo start tmp.bat>>%name%.bat
echo swandle>>%name%.bat

cd %dire%
swandle
