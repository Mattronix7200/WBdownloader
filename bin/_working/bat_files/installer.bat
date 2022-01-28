::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFDFVRxGAAE+/Fb4I5/jH2MiDrVoTWO0+fIrJmvyvMPAV40nhZt8R1HNUpPQFDxRWbS65awkmrH1K+G2GOKc=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJhZksaHErSXA==
::ZQ05rAF9IBncCkqN+0xwdVsFAlTMbCXqZg==
::ZQ05rAF9IAHYFVzEqQIDLQ9BXESPM2+vCrB8
::eg0/rx1wNQPfEVWB+kM9LVsJDA2ML3+7CrkZ+og=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQIZJghATQiOfGq0RqAM7Onv6qqBq0EYR4I=
::dhA7uBVwLU+EWG6N+kY/Pwh2bTencnu2Zg==
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATEw0s+LBRDXyajD070Frl8
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFDFVRxGAAE+/Fb4I5/jH5uSUtkwRWOctNorD39Q=
::YB416Ek+Zm8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
@chcp 1250 >nul 2>&1  
mode con:cols=60 lines=10
cmd /c %userprofile%\AppData\Local\WBdownloader\bin\extractor.exe 
cd %windir%\System32
ping 127.0.0.1 -n 10 > nul
xcopy %temp%\wbd\*.* %userprofile%\AppData\Local\WBdownloader\ /E /H /C /Y  
ping 127.0.0.1 -n 10 > nul
cmd /c %userprofile%\AppData\Local\WBdownloader\bin\clean.exe
DEL /F /Q "%TEMP%\data.7z" >nul 2>&1
echo Aktualizacja programu zakoñczona. Ponownie uruchamiam aplikacjê...
echo:
start mshta.exe %userprofile%\AppData\Local\WBdownloader\bin\index.hta >nul 2>&1  
echo Gotowe. Okno zamknie siê za 5 sekund.
ping 127.0.0.1 -n 5 > nul
taskkill /f /pid cmd.exe >nul 2>&1  
exit