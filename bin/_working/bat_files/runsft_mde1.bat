@echo off
@chcp 1250 >nul 2>&1  
mode con:cols=60 lines=10
echo Trwa pobieranie dodatkowego modu�u do programu.. 
echo To mo�e chwil� potrwa�...
echo.
cmd /c %~dp0\..\wget.exe https://windowsbase.pl/uploads/app/updates/modules/mde.7z -c -P %temp%\ >nul 2>&1 
cmd /c %userprofile%\AppData\Local\WBdownloader\bin\7z\7z.exe x -y %temp%\mde.7z -o%temp%\mde\ >nul 2>&1 
cd %windir%\System32
ping 127.0.0.1 -n 10 > nul
xcopy %temp%\mde\*.* %userprofile%\AppData\Local\WBdownloader\bin /E /H /C /Y  >nul 2>&1 
ping 127.0.0.1 -n 10 > nul
DEL /F /Q "%TEMP%\mde.7z" >nul 2>&1
DEL /F /Q "%TEMP%\mde\*.*" >nul 2>&1
rmdir /s /q "%temp%\mde\" >nul 2>&1
ping 127.0.0.1 -n 5 > nul
START %userprofile%\AppData\Local\WBdownloader\bin\mde\x86\dm.exe
exit