@echo off
IF NOT EXIST %userprofile%\AppData\Local\WBdownloader\bin\mti\ (START %userprofile%\AppData\Local\WBdownloader\bin\sd\runsft_mti.exe) ELSE (START %userprofile%\AppData\Local\WBdownloader\bin\mti\mdftoiso.exe) >nul 2>&1 
EXIT