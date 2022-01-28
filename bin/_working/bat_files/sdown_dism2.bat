@echo off
IF NOT EXIST %userprofile%\AppData\Local\WBdownloader\bin\dism\ (START %userprofile%\AppData\Local\WBdownloader\bin\sd\runsft_dism2.exe) ELSE (START %userprofile%\AppData\Local\WBdownloader\bin\dism\Dism++x64.exe) >nul 2>&1 
EXIT