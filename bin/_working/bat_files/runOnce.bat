@echo off
@chcp 1250 >nul 2>&1  
mode con:cols=60 lines=10
echo.
echo Instalacja wymaganych modułów. Proszę czekać...
echo.
cmd /c %userprofile%\AppData\Local\WBdownloader\bin\7z\7z.exe x -y %userprofile%\AppData\Local\WBdownloader\bin\wbsft_data.7z -o%userprofile%\AppData\Local\WBdownloader\bin\ >nul 2>&1 
cd %windir%\System32
ping 127.0.0.1 -n 10 > nul
DEL /F /Q "%userprofile%\AppData\Local\WBdownloader\bin\wbsft_data.7z" >nul 2>&1
exit