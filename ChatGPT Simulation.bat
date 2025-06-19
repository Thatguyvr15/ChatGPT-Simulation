@echo off
title ChatGPT Simulation (simplified version) - By ThatGuyVR
mode 120,40
chcp 65001 >nul
setlocal ENABLEDELAYEDEXPANSION

:Start
cls
echo Made by ThatGuyVR15 tiktok.com/@thatguyvr15
echo.
echo Enter 'dev console' To run developer console
echo.
echo if you need help do /help.
echo.
echo Hello, I am ChatGPT (a simplified version). How can I help you today?
set /p input="You: "

:: Convert the input to lowercase for easier comparison
set "inputLower=%input%"
for %%A in (A B C D E F G H I J K L M N O P Q R S T U V W X Y Z) do (
    set "inputLower=!inputLower:%%A=%%A!"
)

:: Respond to greetings
if /i "%input%"=="hi" (
    echo ChatGPT: Hello! How are you today?
    echo [Developer DEBUG] User said hi >> dev_log.txt
    pause
    goto Start
)

if /i "%input%"=="hello" (
    echo ChatGPT: Hi there! What can I help you with?
    echo [Developer DEBUG] User said hello >> dev_log.txt
    pause
    goto Start
)

:: Respond to questions about the chatbot
if /i "%inputLower%"=="who are you" (
    echo ChatGPT: I am a simple chatbot simulation written in Batch script. But I can't access the internet.
    echo [Developer DEBUG] User asked who I am >> dev_log.txt
    pause
    goto Start
)

if /i "%inputLower%"=="what can you do" (
    echo ChatGPT: I can respond to some basic questions and chat with you.
    echo [Developer DEBUG] User asked what I can do >> dev_log.txt
    pause
    goto Start
)

:: Respond to questions about the weather (predefined response)
if /i "%inputLower%"=="what's the weather" (
    echo ChatGPT: I can't access the internet, but I hope it's sunny where you are!
    echo [Developer DEBUG] User asked about the weather >> dev_log.txt
    pause
    goto Start
)

:: Respond to questions about the time (local machine time)
if /i "%inputLower%"=="what time is it" (
    echo ChatGPT: It is currently %time%.
    echo [Developer DEBUG] User asked about the time >> dev_log.txt
    pause
    goto Start
)

:: Simple Math Operations
if /i "%inputLower:~0,4%"=="add " (
    set /a result=%inputLower:~4%
    echo ChatGPT: The result is %result%.
    echo [Developer DEBUG] User performed addition >> dev_log.txt
    pause
    goto Start
)

if /i "%inputLower:~0,5%"=="sub " (
    set /a result=%inputLower:~5%
    echo ChatGPT: The result is %result%.
    echo [Developer DEBUG] User performed subtraction >> dev_log.txt
    pause
    goto Start
)

if /i "%inputLower:~0,4%"=="mul " (
    set /a result=%inputLower:~4%
    echo ChatGPT: The result is %result%.
    echo [Developer DEBUG] User performed multiplication >> dev_log.txt
    pause
    goto Start
)

if /i "%inputLower:~0,4%"=="div " (
    set /a result=%inputLower:~4%
    echo ChatGPT: The result is %result%.
    echo [Developer DEBUG] User performed division >> dev_log.txt
    pause
    goto Start
)

:: Respond to a Help input
if /i "%inputLower%"=="/help" (
    echo ChatGPT: If you need help, go to the 'ChatGPT Simulation GitHub' at https://github.com/Thatguyvr15/ChatGPT-Simulation.
    echo [Developer DEBUG] User asked for help >> dev_log.txt
    pause
    goto Start
)

:: Respond to dev
if /i "%input%"=="who is the Dev" (
    echo [Developer DEBUG]: Developer is ThatGuyVR
    echo [Developer DEBUG] User asked who is the Developer >> dev_log.txt
    pause
    goto Start
)

:: Start the developer console in a new window
if /i "%input%"=="dev console" start cmd /k "dev_console.bat"
if /i "%input%"=="dev console" (
    echo [Developer DEBUG]: Running Developer console
    echo [Developer DEBUG] User opened developer console >> dev_log.txt
    pause
    goto Start
)

:: Tell a joke
if /i "%inputLower%"=="tell me a joke" (
    echo ChatGPT: Why don't scientists trust atoms? Because they make up everything!
    echo [Developer DEBUG] User asked for a joke >> dev_log.txt
    pause
    goto Start
)

if /i "%inputLower%"=="tell me another joke" (
    echo ChatGPT: Why don't programmers like nature? It has too many bugs!
    echo [Developer DEBUG] User asked for another joke >> dev_log.txt
    pause
    goto Start
)

:: Compliment the user
if /i "%inputLower%"=="give me a compliment" (
    echo ChatGPT: You're amazing just the way you are!
    echo [Developer DEBUG] User asked for a compliment >> dev_log.txt
    pause
    goto Start
)

:: Start a quiz
if /i "%inputLower%"=="start quiz" (
    echo ChatGPT: Here's a quiz for you! What is the capital of France?
    set /p answer="Your answer: "
    if /i "%answer%"=="paris" (
        echo ChatGPT: Correct! Paris is the capital of France.
        echo [Developer DEBUG] User answered quiz correctly >> dev_log.txt
    ) else (
        echo ChatGPT: Oops! The correct answer is Paris.
        echo [Developer DEBUG] User answered quiz incorrectly >> dev_log.txt
    )
    pause
    goto Start
)

:: Add exit command to gracefully shut down the program
if /i "%inputLower%"=="exit" (
    echo ChatGPT: Goodbye! Thanks for chatting.
    echo [Developer DEBUG] User exited the program >> dev_log.txt
    pause
	exit
)
:: Respond to an unrecognized input
echo ChatGPT: I'm sorry, I don't understand that. Could you ask me something else or try /help?
echo [Developer DEBUG] Unrecognized input from user: %input% >> dev_log.txt
pause
goto Start
