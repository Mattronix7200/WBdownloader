@echo off
IF NOT EXIST %userprofile%\AppData\Local\WBdownloader\bin\baf\ (START %userprofile%\AppData\Local\WBdownloader\bin\sd\runsft_baf.exe) ELSE (START %userprofile%\AppData\Local\WBdownloader\bin\baf\BurnAware.exe) >nul 2>&1 
EXIT