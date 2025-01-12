#!/bin/bash
# Define the directories
BACKUP_DIR="/path/to/backup"
TARGET_DIR="/path/to/target"

# Get the current date
DATE=$(date +%Y-%m-%d)

# Create a compressed backup
tar -czf $BACKUP_DIR/backup_$DATE.tar.gz $TARGET_DIR

# Explanation:
# - `BACKUP_DIR="/path/to/backup"`: Directory where the backup will be stored.
# - `TARGET_DIR="/path/to/target"`: Directory to be backed up.
# - `DATE=$(date +%Y-%m-%d)`: Get the current date in YYYY-MM-DD format.
# - `tar -czf $BACKUP_DIR/backup_$DATE.tar.gz $TARGET_DIR`: Create a compressed tarball of the target directory.
To schedule this script to run daily using cron, add the following line to your crontab (edit with crontab -e):
