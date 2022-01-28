@echo off
IF NOT EXIST %userprofile%\AppData\Local\WBdownloader\bin\cc\ (START %userprofile%\AppData\Local\WBdownloader\bin\sd\runsft_cc.exe) ELSE (START %userprofile%\AppData\Local\WBdownloader\bin\cc\cc.bat) >nul 2>&1 
EXIT