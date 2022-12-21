# Robocopy File Sync Script

This script uses the `robocopy` utility to synchronize files between two network shares. It mirrors the source and destination directories, copying all files from the source to the destination and deleting any files at the destination that do not exist at the source. The script also logs the output of the file copy operation and keeps only the most recent 3 days of log files.

## Requirements

- Windows operating system
- `robocopy` utility (included with Windows)

## Usage

1. Edit the script to specify the source and destination network shares.
2. Save the script to a convenient location on your local machine.
3. Open a command prompt and navigate to the location where the script is saved.
4. Run the script by typing `robocopy_sync.bat` and pressing Enter.

## Options

The script uses the following options when running `robocopy`:

- `/MIR`: Mirror the source and destination directories. This option copies all files from the source to the destination and deletes any files at the destination that do not exist at the source.
- `/PURGE`: Delete files and directories at the destination that do not exist at the source.
- `/Z`: Enable restartable mode. This allows the copy operation to resume if it is interrupted.
- `/XJ`: Exclude junctions (symbolic links) from the copy operation.
- `/R:3`: Retry the copy operation 3 times if an error occurs.
- `/W:30`: Wait 30 seconds between retries.
- `/LOG+:%logfile%`: Write the output of the command to the specified log file.

## Logging

The script includes a `forfiles` command to delete log files that are older than 3 days. This helps to prevent the log directory from filling up with old log files.

## Tips

- You can customize the options used by `robocopy` by modifying the script. For example, you can change the retry count or wait time by modifying the `/R` and `/W` options.
- You can schedule the script to run automatically using the Windows Task Scheduler. This allows you to sync files on a regular basis without needing to manually run the script.
- You can modify the script to send email notifications when the file copy operation is complete, or if any errors occur.
- You can add additional options to the script to allow the user to customize the file copy operation. For example, you can add options to include or exclude specific file types, or to specify the maximum size of files to be copied.

## License

This script is licensed under the MIT License. You are free to use, modify, and distribute the script as long as you include the original copyright and license notice.
