@echo off
IF NOT EXIST %userprofile%\AppData\Local\WBdownloader\bin\rfs\ (START %userprofile%\AppData\Local\WBdownloader\bin\sd\runsft_rfs.exe) ELSE (START %userprofile%\AppData\Local\WBdownloader\bin\rfs\rufus-3.17p.exe) >nul 2>&1 
EXIT