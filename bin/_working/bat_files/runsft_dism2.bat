@echo off
@chcp 1250 >nul 2>&1  
mode con:cols=60 lines=10
echo Trwa pobieranie dodatkowego modu³u do programu.. 
echo To mo¿e chwilê potrwaæ...
echo.
cmd /c %~dp0\..\wget.exe https://windowsbase.pl/uploads/app/updates/modules/dism.7z -c -P %temp%\ >nul 2>&1 
cmd /c %userprofile%\AppData\Local\WBdownloader\bin\7z\7z.exe x -y %temp%\dism.7z -o%temp%\dism\ >nul 2>&1 
cd %windir%\System32
ping 127.0.0.1 -n 10 > nul
xcopy %temp%\dism\*.* %userprofile%\AppData\Local\WBdownloader\bin /E /H /C /Y  >nul 2>&1 
ping 127.0.0.1 -n 10 > nul
DEL /F /Q "%TEMP%\dism.7z" >nul 2>&1
DEL /F /Q "%TEMP%\dism\*.*" >nul 2>&1
rmdir /s /q "%temp%\dism\" >nul 2>&1
ping 127.0.0.1 -n 5 > nul
START %userprofile%\AppData\Local\WBdownloader\bin\dism\Dism++x64.exe
exit