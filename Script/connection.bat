@echo off
set name=tmp
IF %creation% EQU true (
  set /P name=Connection name: 
)
set /P host=Host: 
set /P user=Username: 
set /P pass=Password: 
set /P port=Port: 
set /P protocol=Protocol: 
set creation=f
cd..
IF EXIST tmp (
del tmp
)
IF NOT %name% EQU tmp cd connection
IF NOT %host% EQU define (
  echo set host=%host%>>%name%
  echo echo Host: %host%>>%name%
) ELSE (
  echo set /P host=Host: >>%name%
)
IF NOT %user% EQU define (
  echo set user=%user%>>%name%
  echo echo Username: %user%>>%name%
) ELSE (
  echo set /P user=Username: >>%name%
)
IF NOT %pass% EQU define (
  echo set pass=%pass%>>%name%
  echo echo Password: %pass%>>%name%
) ELSE (
  echo set /P pass=Password: >>%name%
)
IF NOT %port% EQU define (
  echo set port=%port%>>%name%
  echo echo Port: %port%>>%name%
) ELSE (
  echo set /P port=Port: >>%name%
)
IF NOT %protocol% EQU define (
  echo set protocol=%protocol%>>%name%
  echo echo Protocol: %protocol%>>%name%
) ELSE (
  echo set /P protocol=Protocol: >>%name%
)
IF NOT %name% EQU tmp cd..
swandle
