@echo off
cd %cd%
set dire=%cd%
set creation=false
set PATH=%PATH%;%cd%;%cd%\expect\bin;%cd%\expect;%cd%\Script
:loop
set /P swan=Swandle# 
cd Script
%swan%
cd..
goto loop
