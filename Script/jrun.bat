@echo off
set name=jtmp
set /P name=Jcon Name: 
set wait=2
set /P wait=Delay: 

cd %dire%

IF NOT %name% EQU jtmp (
  COPY %dire%\jcon\%name%.bat jtmp.bat /Y
)

jtmp
swandle
