@echo off
color A
Title Kill a process after sometime
start notepad.exe
timeout /t 20 /nobreak
taskkill /f /im notepad.exe
pause