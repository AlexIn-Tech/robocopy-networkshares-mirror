@echo off

:: Set the source and destination network shares
set source=\\server1\share1
set destination=\\server2\share2

:: Run robocopy to copy files from the source to the destination
robocopy %source% %destination% /MIR /Z /XJ /R:1 /W:1

:: Display a message indicating that the file copy is complete
echo File copy complete.

pause