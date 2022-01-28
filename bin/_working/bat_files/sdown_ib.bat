@echo off
IF NOT EXIST %userprofile%\AppData\Local\WBdownloader\bin\ib\ (START %userprofile%\AppData\Local\WBdownloader\bin\sd\runsft_ib.exe) ELSE (START %userprofile%\AppData\Local\WBdownloader\bin\ib\ImgBurn.exe) >nul 2>&1 
EXIT