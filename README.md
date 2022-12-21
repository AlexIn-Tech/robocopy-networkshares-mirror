This script uses robocopy to synchronize files between two network shares.

## Requirements

- Windows operating system
- Robocopy utility (included with Windows)

## Usage

1. Edit the script to specify the source and destination network shares.
2. Save the script to a convenient location on your local machine.
3. Open a command prompt and navigate to the location where the script is saved.
4. Run the script by typing `robocopy_sync.bat` and pressing Enter.

## Options

The script uses the following options when running robocopy:

- `/MIR`: Mirror the source and destination directories. This option copies all files from the source to the destination and deletes any files at the destination that do not exist at the source.
- `/Z`: Enable restartable mode. This allows the copy operation to resume if it is interrupted.
- `/XJ`: Exclude junctions (symbolic links) from the copy operation.
- `/R:1`: Retry the copy operation 1 time if an error occurs.
- `/W:1`: Wait 1 second between retries.

## Tips

- You can modify the script to customize the options used by robocopy. For example, you can change the retry count or wait time by modifying the `/R` and `/W` options.
- You can schedule the script to run automatically using the Windows Task Scheduler. This allows you to sync files on a regular basis without needing to manually run the script.

## License

This script is licensed under the MIT License. You are free to use, modify, and distribute the script as long as you include the original copyright and license notice.
