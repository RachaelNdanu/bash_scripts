#!/bin/bash

# Backup Script

# Directory to back up
source_dir="/home/ndanu/important_files"

# Destination for backups
dest_dir="/home/ndanu/destination"

# Create a timestamp for the backup directory
timestamp=$(date +"%Y%m%d%H%M")

# Create a new backup directory with the timestamp
backup_dir="$dest_dir/$timestamp"

# Print start status message
echo "Starting backup of  $source_dir to $backup_dir"
date
echo

# Create the backup directory
mkdir -p "$backup_dir"

# Copy files  from the source directory to the backup directory
if [ -d "$source_dir" ]; then  # Check if the source directory exists
    cp -r "$source_dir" "$backup_dir"  # Copy the folder,linux command tu
else
    echo "Warning: Source directory $source_dir does not exist."
fi

# Print end status message
echo "Backup completed successfully."
date



# List the backed-up folders
echo "list of backed-up folders"
ls -lh "$backup_dir"
