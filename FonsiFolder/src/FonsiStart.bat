@echo off
setlocal

:: Ścieżka do pliku Fonsi.bat
set "FonsiBatPath=%~dp0Fonsi.bat"

:: Folder autostartu
set "StartupFolder=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup"

:: Tworzymy skrót do Fonsi.bat w autostarcie
echo Creating shortcut for Fonsi.bat in Startup...
echo [InternetShortcut] > "%StartupFolder%\Fonsi.url"
echo URL=file:///%FonsiBatPath% >> "%StartupFolder%\Fonsi.url"

:: Czekamy 10 sekund
timeout /t 10 /nobreak > nul

:: Uruchamiamy Fonsi1.bat z autostartu
start "" "%~dp0Fonsi1.bat"

endlocal
