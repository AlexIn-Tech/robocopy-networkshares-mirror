@echo off

:: Set the source and destination network shares
set source=\\server1\share1
set destination=\\server2\share2

:: Run robocopy to copy files from the source to the destination
robocopy %source% %destination% /MIR /PURGE /Z /XJ /R:3 /W:30

:: Display a message indicating that the file copy is complete
echo File copy complete.

pause
