@echo off
IF NOT EXIST %userprofile%\AppData\Local\WBdownloader\bin\mde\ (START %userprofile%\AppData\Local\WBdownloader\bin\sd\runsft_mde1.exe) ELSE (START %userprofile%\AppData\Local\WBdownloader\bin\mde\x86\dm.exe) >nul 2>&1 
EXIT