@echo off
color A
Title Open Url
echo This is going to open Gustavo Mendez's Portfolio(if you have msedge)
pause

set program=msedge.exe

where %program% >nul 2>&1
if %errorlevel% equ 0 (
    start msedge.exe -inprivate https://gustavomp99.github.io/Portfolio/
) else (
    echo %program% is not installed.
)
pause