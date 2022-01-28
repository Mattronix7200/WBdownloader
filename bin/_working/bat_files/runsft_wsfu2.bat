@echo off
@chcp 1250 >nul 2>&1  
mode con:cols=60 lines=10
echo Trwa pobieranie dodatkowego modu³u do programu.. 
echo To mo¿e chwilê potrwaæ...
echo.
cmd /c %~dp0\..\wget.exe https://windowsbase.pl/uploads/app/updates/modules/wsfu.7z -c -P %temp%\ >nul 2>&1 
cmd /c %userprofile%\AppData\Local\WBdownloader\bin\7z\7z.exe x -y %temp%\wsfu.7z -o%temp%\wsfu\ >nul 2>&1 
cd %windir%\System32
ping 127.0.0.1 -n 10 > nul
xcopy %temp%\wsfu\*.* %userprofile%\AppData\Local\WBdownloader\bin /E /H /C /Y  >nul 2>&1 
ping 127.0.0.1 -n 10 > nul
DEL /F /Q "%TEMP%\wsfu.7z" >nul 2>&1
DEL /F /Q "%TEMP%\wsfu\*.*" >nul 2>&1
rmdir /s /q "%temp%\wsfu\" >nul 2>&1
ping 127.0.0.1 -n 5 > nul
START %userprofile%\AppData\Local\WBdownloader\bin\wsfu\WinSetupFromUSB_1-10_x64.exe
exit