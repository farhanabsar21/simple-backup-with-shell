#!/bin/bash

# Load configuration
source ../config/backup.conf

# Timestamp for logs
TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")

# Create a log entry for the backup start
echo "[$TIMESTAMP] Starting backup from $SOURCE_DIR to $DEST_DIR" >> ../logs/backup.log

# Perform the backup using rsync (you can also use cp if rsync is not installed)
rsync -avh --delete "$SOURCE_DIR" "$DEST_DIR" >> ../logs/backup.log 2>&1

# Check if the backup was successful
if [ $? -eq 0 ]; then
    echo "[$TIMESTAMP] Backup completed successfully." >> ../logs/backup.log
else
    echo "[$TIMESTAMP] Backup failed!" >> ../logs/backup.log
fi
