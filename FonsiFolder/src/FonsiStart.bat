@echo off

:: Ścieżki do skryptów
set "FonsiBatPath=%~dp0Fonsi.bat"
set "EarthBatPath=%~dp0earth.bat"
set "Fonsi2BatPath=%~dp0Fonsi2.bat"

:: Folder autostartu
set "StartupFolder=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup"

:: Kopiowanie plików .bat do folderu autostartu
echo Copying Fonsi.bat to Startup folder...
copy "%FonsiBatPath%" "%StartupFolder%\Fonsi.bat"

echo Copying earth.bat to Startup folder...
copy "%EarthBatPath%" "%StartupFolder%\earth.bat"

echo Copying Fonsi2.bat to Startup folder...
copy "%Fonsi2BatPath%" "%StartupFolder%\Fonsi2.bat"

:: Czekamy 10 sekund
timeout /t 10 /nobreak > nul

:: Uruchamiamy Fonsi1.bat
start "" "%~dp0Fonsi1.bat"
