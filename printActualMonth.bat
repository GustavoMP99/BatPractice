@echo off
set m=%date:~4,2%
set "m=%m:/=%"
echo %m%
pause
if %m% ==1 set m=Jan
if %m% ==2 set m=Feb
if %m% ==3 set m=Mar
if %m% ==4 set m=Apr
if %m% ==5 set m=May
if %m% ==6 set m=Jun
if %m% ==7 set m=Jul
if %m% ==8 set m=Aug
if %m% ==9 set m=Sep
if %m% ==10 set m=Oct
if %m% ==11 set m=Nov
if %m% ==12 set m=Dec
echo %m%
pause