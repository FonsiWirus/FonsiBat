@echo off
:: Ścieżka do nircmd.exe (zakłada, że nircmd.exe jest w tym samym folderze co skrypt)
set nircmdPath=%~dp0nircmd.exe

:: Blokowanie myszy i klawiatury
echo Blocking mouse and keyboard...
%nircmdPath% lockcursor

:: Czekanie przez 10 sekund
timeout /t 10 /nobreak > nul

:: Uruchomienie Fonsi1.bat
start "" "%~dp0Fonsi1.bat"
