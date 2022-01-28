@echo off
IF NOT EXIST %userprofile%\AppData\Local\WBdownloader\bin\mde\ (START %userprofile%\AppData\Local\WBdownloader\bin\sd\runsft_mde2.exe) ELSE (START %userprofile%\AppData\Local\WBdownloader\bin\mde\x64\dm.exe) >nul 2>&1 
EXIT