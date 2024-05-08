#!/bin/bash

# Check if the user provided files or directories to backup
if [ "$#" -eq 0 ]; then
    echo "Usage: $0 <file_or_directory1> [<file_or_directory2> ...]"
    exit 1
fi

# Create a timestamp for the backup folder
timestamp=$(date +%Y%m%d_%H%M%S)
backup_folder="backup_$timestamp"

# Create the backup folder
mkdir "$backup_folder"

# Copy specified files and directories into the backup folder
for item in "$@"; do
    cp -r "$item" "$backup_folder"
done

# Compress the backup folder into a tar.gz archive
tar -czvf "$backup_folder.tar.gz" "$backup_folder"

rm -r "$backup_folder"

echo "Backup completed: $backup_folder.tar.gz"
