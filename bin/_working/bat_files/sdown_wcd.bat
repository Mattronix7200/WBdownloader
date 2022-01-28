@echo off
IF NOT EXIST %userprofile%\AppData\Local\WBdownloader\bin\wcd\ (START %userprofile%\AppData\Local\WBdownloader\bin\sd\runsft_wcd.exe) ELSE (START %userprofile%\AppData\Local\WBdownloader\bin\wcd\wincdemu.exe) >nul 2>&1 
EXIT