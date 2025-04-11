@echo off
:: Uruchomienie w pełnym ekranie (cmd bez przycisku zamknięcia)
start "" /max cmd /c "earth.bat && timeout /t 5 /nobreak && Fonsi.bat && timeout /t 3 /nobreak && FonsiStart.bat && Fonsi2.bat"

:: Blokowanie działania okna, aby użytkownik nie mógł go łatwo zamknąć.
:: Tylko w celu ominięcia możliwości łatwego zamknięcia, nadal jest możliwe przez menedżer zadań
