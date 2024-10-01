# Automated Backup Script

## Project Overview

This project is a simple shell script to automate the process of backing up files from a source directory to a destination directory. The script logs the status of each backup (success or failure) and provides a timestamp for each operation.

## Folder Structure

```
/backup-project/
├── bin/
│ └── backup.sh # The main backup script
├── config/
│ └── backup.conf # Configuration file for source/destination paths
├── logs/
│ └── backup.log # Log file for backup operations
└── README.md # Project documentation
```

## How to Use

### 1. Setup Configuration

Modify the config/backup.conf file to specify your source and destination directories.

```bash
# backup.conf

# Source directory for the backup (replace with the folder you want to back up)
SOURCE_DIR="/path/to/source/directory"

# Destination directory (replace with your backup location)
DEST_DIR="/path/to/backup/location"

DEST_DIR="/path/to/backup/location"
```

### 2. Run the Backup Script

Navigate to the bin/ folder and run the script:

```
cd bin/
bash backup.sh
```

### 3. Check the Logs

The script will log the results of each backup operation (success or failure) in the logs/backup.log file, along with a timestamp.

### 4. Dependencies

rsync (recommended for efficient file backups). If rsync is not installed, you can use the cp command in place of rsync in backup.sh.

###### Example Log Output:

```
[2024-10-02 12:30:01] Starting backup from /path/to/source to /path/to/backup
[2024-10-02 12:30:10] Backup completed successfully.
```

### Features

- Automated Backup: Copies files from a source directory to a destination.
- Logging: Tracks each backup attempt, success, or failure.
- Configurable: Easily specify source and destination directories via a config file.
- Error Handling: Script checks if the backup operation was successful.

### Future Improvements

- Add email notification for successful or failed backups.
- Schedule automatic backups using cron jobs.
