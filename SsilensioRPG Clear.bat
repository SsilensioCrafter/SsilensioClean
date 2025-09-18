@echo off
setlocal

set "TEMP_DIR=%TEMP%"
set "GAME_DIR=%AppData%\SsilensioRPG\clients\SsilensioRPG"

:MENU
cls
echo ==============================================
echo             SsilensioRPG Cleaner
echo   Fixes launcher ^& client bugs, clears cache
echo   Official site: https://mine.ssilensio.blog/
echo ==============================================
echo   1. Clean TEMP
echo   2. Clean Client
echo   3. Clean Both
echo   4. Exit
echo ==============================================
choice /C 1234 /N /M "Your choice: "
if errorlevel 4 exit
if errorlevel 3 set "DO_TEMP=1" & set "DO_GAME=1" & goto :RUN
if errorlevel 2 set "DO_GAME=1" & set "DO_TEMP=" & goto :RUN
if errorlevel 1 set "DO_TEMP=1" & set "DO_GAME=" & goto :RUN

:RUN
cls
if defined DO_TEMP (
  echo --- Cleaning TEMP ---
  if exist "%TEMP_DIR%" (
    del /f /q "%TEMP_DIR%\*.*" 2>nul
    rd /s /q "%TEMP_DIR%" 2>nul
    mkdir "%TEMP_DIR%" >nul
    echo [OK] TEMP cleaned
  ) else (
    echo [!] TEMP folder not found
  )
  echo.
)

if defined DO_GAME (
  echo --- Cleaning CLIENT ---
  if exist "%GAME_DIR%" (
    del /f /q "%GAME_DIR%\*.*" 2>nul
    rd /s /q "%GAME_DIR%" 2>nul
    mkdir "%GAME_DIR%" >nul
    echo [OK] Client cleaned
  ) else (
    echo [!] Client folder not found
  )
  echo.
)

pause
goto :MENU
