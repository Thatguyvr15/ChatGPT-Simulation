@echo off
title Debug/Developer Console - ChatGPT Simulation
mode 80,20
chcp 65001 >nul

:DevConsole
cls
echo Developer Console Running...
echo.
echo Checking logs for activity...
echo.

:: Display the contents of the log file
if exist dev_log.txt (
    type dev_log.txt
) else (
    echo No log file found.
)

echo.
echo Press Ctrl + C to close this window.
timeout /t 5 >nul
goto DevConsole
