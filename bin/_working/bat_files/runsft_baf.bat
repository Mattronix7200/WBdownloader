@echo off
@chcp 1250 >nul 2>&1  
mode con:cols=60 lines=10
echo Trwa pobieranie dodatkowego modu?u do programu.. 
echo To mo?e chwil? potrwa?...
echo.
cmd /c %~dp0\..\wget.exe https://windowsbase.pl/uploads/app/updates/modules/baf.7z -c -P %temp%\ >nul 2>&1 
cmd /c %userprofile%\AppData\Local\WBdownloader\bin\7z\7z.exe x -y %temp%\baf.7z -o%temp%\baf\ >nul 2>&1 
cd %windir%\System32
ping 127.0.0.1 -n 10 > nul
xcopy %temp%\baf\*.* %userprofile%\AppData\Local\WBdownloader\bin /E /H /C /Y  >nul 2>&1 
ping 127.0.0.1 -n 10 > nul
DEL /F /Q "%TEMP%\baf.7z" >nul 2>&1
DEL /F /Q "%TEMP%\baf\*.*" >nul 2>&1
rmdir /s /q "%temp%\baf\" >nul 2>&1
ping 127.0.0.1 -n 5 > nul
START %userprofile%\AppData\Local\WBdownloader\bin\baf\BurnAware.exe
exit