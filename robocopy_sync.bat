@echo off

:: Set the source and destination network shares
set source=\\server1\share1
set destination=\\server2\share2

:: Set the log file location and name
set logfile=C:\Logs\robocopy_sync.log

:: Delete log files that are older than 3 days
forfiles -p "C:\Logs" -s -m *.log -d -3 -c "cmd /c del /q @path"

:: Run robocopy to copy files from the source to the destination
robocopy %source% %destination% /MIR /PURGE /Z /XJ /R:3 /W:30 /LOG+:%logfile%

:: Display a message indicating that the file copy is complete
echo File copy complete.

pause
