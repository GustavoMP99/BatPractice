@echo off
color A
Title Open Url
echo This is going to open Gustavo Mendez's Portfolio(if you have chrome)
pause
REM Set the program name
set program=chrome.exe

REM Check if the program exists in the PATH
where %program% >nul 2>&1
if %errorlevel% equ 0 (
    start chrome.exe https://gustavomp99.github.io/Portfolio/
) else (
    echo %program% is not installed.
)
pause