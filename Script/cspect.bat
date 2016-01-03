@echo off

set /P type=File Type: 

cd..
cd %type%

set /P name=%type% name: 
set wait=2

set /P wait=Delay: 

:loop
set /P send=Send:

IF %send% EQU endfile goto end
IF %send% EQU expcm goto exp
IF %send% EQU wait goto delay

echo set /P "=" ^< NUL>>%name%
echo ping -n %wait% -w 1 127.0.0.1 ^> NUL>>%name%

echo %%SendKeys%% "%send%{ENTER}">>%name%

goto loop

:exp

set /P expm=Command: 
echo %expm%>> %name%

goto loop

:delay
set /P time=Wait: 

echo set /P "=" ^< NUL>>%name%
echo ping -n %time% -w 1 127.0.0.1 ^> NUL>>%name%

goto loop

:end

cd %dire%
swandle
