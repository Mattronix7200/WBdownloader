::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFDFVRxGAAE+/Fb4I5/jH7eOJnksUWOdxcYzUug==
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSTk=
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
::ZQ05rAF9IAHYFVzEqQI2LBYUSAuVMme1B7EZ+qj24O6Srkh9
::eg0/rx1wNQPfEVWB+kM9LVsJDACNK2W2CbQY1+7/4oo=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWG6N+kY/Pwh2bTencnu2Zg==
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATEw0s+LBRDXyajD070Frl8
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFDFVRxGAAE+/Fb4I5/jH7eOJnkkSQ+wzd47f5bKKLa4W8kCE
::YB416Ek+Zm8=
::
::
::978f952a14a936cc963da21a135fa983
@chcp 1250
@ECHO OFF
for /f "usebackq tokens=* delims=" %%i in (`mshta "javascript:Code(close(new ActiveXObject('Scripting.FileSystemObject').GetStandardStream(1).Write(clipboardData.getData('Text'))));"`) do set "clipboardText=%%i"

set download=--dir=%userprofile%/Desktop/WindowsBASE
set inetset=-fs

echo %clipboardText%

cd /d %~dp0/fdm
cmd.exe /c "fdm.exe %clipboardText% %inetset%" 
ping 127.0.0.1 -n 2 > nul
exit
taskkill /f /pid cmd.exe
exit
