@echo off
title Multi-Configurator by ARNE v0.7
color A
echo                           ------------------------------
echo                           Welcome to Multi-configurator! 
echo                           ------------------------------
echo.
:top 
echo Option 1:Direct Edit hosts 2:Check VPN List 3:Retrieve hosts and Open Location
echo ------------------------------------------------------------------------------
echo Option 4:Ping razerzone 5:Open shared server 6:Force terminate OSVR
echo ------------------------------------------------------------------------------
set currentdir=%CD%
set /P user_input=Run:
if %user_input%==1 (
cd C:\
cd Windows
cd System32
cd drivers
cd etc
start notepad.exe hosts
cd %currentdir%
goto top
)
if %user_input%==2 (
echo --------
echo VPN List
echo --------
echo QA-1: 10.8.11.1
echo QA-2: 10.8.14.1
echo QA-3: 10.8.15.1
echo.
echo Server: \\192.168.0.99
echo --------
goto top
)
if %user_input%==3 (
cd C:\
cd Windows
cd System32
cd drivers
cd etc
copy hosts %currentdir%
%SystemRoot%\explorer.exe "C:\Windows\System32\Drivers\etc"
goto top
)
if %user_input%==4 (
ping ec.razerzone.com
echo.
goto top
)
if %user_input%==5 (
%SystemRoot%\explorer.exe "\\192.168.0.99"
goto top
)
if %user_input%==6 (
taskkill /f /t /im RzOSVRWizard.exe
goto top
)
echo Not a valid option! . . . Exiting . . .
pause