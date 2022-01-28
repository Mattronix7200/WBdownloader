@echo off
IF NOT EXIST %userprofile%\AppData\Local\WBdownloader\bin\wsfu\ (START %userprofile%\AppData\Local\WBdownloader\bin\sd\runsft_wsfu1.exe) ELSE (START %userprofile%\AppData\Local\WBdownloader\bin\wsfu\WinSetupFromUSB_1-10.exe) >nul 2>&1 
EXIT