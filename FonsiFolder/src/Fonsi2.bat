@echo off
:: Ukrycie okna konsoli przy pomocy PowerShell
powershell -WindowStyle Hidden -Command "Start-Process '%~dp0nircmd.exe' -ArgumentList 'blockinput', '1'"

:: Wyłączenie myszy i klawiatury
set nircmdPath=%~dp0nircmd.exe
if not exist "%nircmdPath%" (
    echo nircmd.exe nie znaleziono! Upewnij się, że jest w tym samym folderze co ten skrypt.
    exit /b
)

:: Ukrycie kursora myszy
%nircmdPath% setcursor 0 0

:: Zapętlenie nieskończone
:loop
timeout /t 9999 > nul
goto loop
