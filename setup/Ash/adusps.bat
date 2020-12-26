@echo off
mode 57,16
color 0a
title Change Password utility
setlocal enabledelayedexpansion
"%~dp0Exo.exe" /M:2:1 /C:0b /T:-[*]Change Password Utility by Zeeshan azeem.
echo.
"%~dp0Exo.exe" /M:2:1 /C:0b /T:-[*]Password Input is masked..
echo.
set /p Username=Enter User:
call :getPassword user_password "Enter password: "

net user /add %Username% %user_password%
ping localhost -n 2 >nul

:: The user's password has been stored in the variable %user_password%

exit /b

:: Password-masking code based on http://www.dostips.com/forum/viewtopic.php?p=33538#p33538
:getPassword
set "_password="

:: We need a backspace to handle character removal
for /f %%a in ('"prompt;$H&for %%b in (0) do rem"') do set "BS=%%a"

:: Prompt the user 
set /p "=%~2" <nul 

:keyLoop
:: Retrieve a keypress
set "key="
for /f "delims=" %%a in ('xcopy /l /w "%~f0" "%~f0" 2^>nul') do if not defined key set "key=%%a"
set "key=%key:~-1%"

:: If No keypress (enter), then exit
:: If backspace, remove character from password and console
:: Otherwise, add a character to password and go ask for next one
if defined key (
    if "%key%"=="%BS%" (
        if defined _password (
            set "_password=%_password:~0,-1%"
            set /p "=!BS! !BS!"<nul
        )
    ) else (
        set "_password=%_password%%key%"
        set /p "="<nul
    )
    goto :keyLoop
)
echo/

:: Return password to caller
set "%~1=%_password%"
goto :eof