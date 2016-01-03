@echo off
set connection=tmp
set /P connection=Connection name: 
set wait=2
set /P wait=Delay: 
cd..
IF NOT %connection% EQU tmp (
  COPY %dire%\connection\%connection% tmp /Y
)

IF EXIST tmp.bat (
  DEL tmp.bat
)

COPY %dire%\Script\vbs + tmp tmp.bat

COPY tmp.bat + %dire%\Script\connect + %dire%\Script\vbe tmp.bat

cd %dire%
start tmp.bat
swandle
