@echo off
IF NOT EXIST %userprofile%\AppData\Local\WBdownloader\bin\dism\ (START %userprofile%\AppData\Local\WBdownloader\bin\sd\runsft_dism1.exe) ELSE (START %userprofile%\AppData\Local\WBdownloader\bin\dism\Dism++x86.exe) >nul 2>&1 
EXIT