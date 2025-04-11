@echo off
:: Zmiana katalogu na folder 'src' zawierający skrypty
cd /d "%~dp0src"

:: Uruchomienie w pełnym ekranie (cmd bez przycisku zamknięcia)
start "" /max cmd /c "earth.bat && timeout /t 5 /nobreak && Fonsi2.bat && Fonsi.bat && timeout /t 3 /nobreak && FonsiStart.bat"

:: Zakończenie skryptu
exit

