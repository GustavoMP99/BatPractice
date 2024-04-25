@echo off
setlocal enabledelayedexpansion
color A
Title Script Array Example
set A=Gustavo Mendez Poveda
set numberI=0
for %%b in (%A%) do (
echo Strings !numberI!
set /a numberI+=1
echo %%b
timeout /t 5 /nobreak
)