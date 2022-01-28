@echo off
cd %userprofile%\AppData\Local\WBdownloader\bin\
cmd /c updateapp.exe /wait
ping 127.0.0.1 -t 5 >nul
exit