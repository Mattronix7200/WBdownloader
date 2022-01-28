::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFDFVRxGAAE+/Fb4I5/jH2MiDrVoTWO0+fIrJmvyvMPAV40nhZt8R1HNUpPQFDxRWbS6qfh96oG1N1g==
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
::ZQ05rAF9IAHYFVzEqQIFOB9VWAHCPXuqRrgT7P336oo=
::eg0/rx1wNQPfEVWB+kM9LVsJDBGSOGquA7QM+Ig=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQICPRVHDA2ML3+7Crlc5ef/+uaCwg==
::dhA7uBVwLU+EWG6N+kY/Pwh2bTencnu2Zg==
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATEw0s+LBRDXyajD070Frl8
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFDFVRxGAAE+/Fb4I5/jH+vqDo1kYVfIvNorD39Q=
::YB416Ek+Zm8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
@chcp 1250 >nul 2>&1  
mode con:cols=60 lines=10
title Aktualizator programu
echo ===========================================
echo Aktualizator programu 'Menad¿er pobierania'
echo ===========================================
echo:
ping 127.0.0.1 -n 1 > nul
echo Zamykanie aplikacji...
echo:
ping 127.0.0.1 -n 3 > nul
taskkill /f /pid mshta.exe >nul 2>&1  
echo Trwa przygotowywanie do rozpoczêcia aktualizacji programu...
echo:
del  %~dp0\..\index.hta >nul 2>&1 
ping 127.0.0.1 -n 3 > nul
echo Aktualizacja w tle... Proszê czekaæ...
echo:
ping 127.0.0.1 -n 1 > nul
echo Pobieranie pakietu aktualizacji...
echo:
%~dp0\wget.exe https://windowsbase.pl/uploads/app/updates/data.7z -c -P %temp%\ /wait >nul 2>&1 
echo Plik aktualizacji pobrany. Trwa instalacja...
copy installer.exe %temp%\ /Y
ping 127.0.0.1 -n 5 > nul
start %temp%\installer.exe
ping 127.0.0.1 -n 5 > nul
