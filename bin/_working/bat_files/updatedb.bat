::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFDFVRxGAAE+/Fb4I5/jH7eOJnkkfGus8d+8=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSTk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJhZksaHErSXA==
::ZQ05rAF9IBncCkqN+0xwdVsFAlTMbCXqZg==
::ZQ05rAF9IAHYFVzEqQIFOB9VWAHCOGquB7cd++274uWDt0EYNA==
::eg0/rx1wNQPfEVWB+kM9LVsJDBGSOGquA7EeiA==
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQICPRVHDA2ML3+7Crlc5ef/+uaCwg==
::dhA7uBVwLU+EWG6N+kY/Pwh2bTencnu2Zg==
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATEw0s+LBRDXyajD070Frl8
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFDFVRxGAAE+/Fb4I5/jH7eOJnkIWaPcvfI7P37CMbuUL7yU=
::YB416Ek+Zm8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
@chcp 1250 >nul 2>&1  
mode con:cols=60 lines=10
title Aktualizator bazy obrazów 
echo ===========================================
echo Aktualizator bazy obrazów programu 'Menad¿er pobierania'
echo ===========================================
echo:
ping 127.0.0.1 -n 1 > nul
echo Zamykanie aplikacji...
echo:
ping 127.0.0.1 -n 3 > nul
taskkill /f /pid mshta.exe >nul 2>&1  
echo Trwa przygotowywanie do rozpoczêcia aktualizacji bazy...
echo:
ping 127.0.0.1 -n 3 > nul
echo Aktualizacja w tle... Proszê czekaæ...
echo:
del  %~dp0\..\data\mydata.js >nul 2>&1  
ping 127.0.0.1 -n 3 > nul
%~dp0\wget.exe https://windowsbase.pl/uploads/app/updates/mydata.js -c -P %~dp0\..\data\ /wait >nul 2>&1  
ping 127.0.0.1 -n 10 > nul
echo Aktualizacja zakoñczona. Ponownie uruchamiam aplikacjê...
echo:
start C:\Windows\System32\mshta.exe %~dp0\..\..\bin\index.hta /wait >nul 2>&1  
echo Gotowe. Okno zamknie siê za 5 sekund.
ping 127.0.0.1 -n 5 > nul
taskkill /f /pid cmd.exe >nul 2>&1  
exit
