@echo off
title Speedrun Timer
mode con: cols=30 lines=5
color 0a
set /a s=0
set /a m=0

:loop
echo.
echo %m% : %s%
echo.
timeout /t 1 > nul
set /a s+=1
if %s%==60 (
	set /a s=0
	set /a m=1
)
goto loop