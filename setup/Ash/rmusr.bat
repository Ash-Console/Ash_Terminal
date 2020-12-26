@echo off
title Remove User
color 0a
mode 57,14
echo Current Users
net user 
echo Setting Input..
set/p Input=Enter the Username:
echo Are you sure you want to remove %Input%.Note that
echo all the data will be deleted from %Input%.
set/p Conf=Are you Sure?(Yes/No):
if '%Conf%'=='Yes' goto yesconf
if '%Conf%'=='No' goto noconf
if '%Conf%'=='no' goto yesconf
if '%Conf%'=='yes' goto yesconf
:yesconf'
echo Checking for %Input%..
net user /delete %Input% 
echo Exit..
ping localhost -n 2 >nul

exit
:noconf
exit