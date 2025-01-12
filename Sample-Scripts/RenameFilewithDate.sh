#!/bin/bash
# Define the directory
DIRECTORY="/path/to/directory"

# Get the current date
DATE=$(date +%Y-%m-%d)

# Loop through all .txt files and rename them
for file in $DIRECTORY/*.txt; do
  mv "$file" "${file%.txt}_$DATE.txt"
done

# Explanation:
# - `DATE=$(date +%Y-%m-%d)`: Get the current date in YYYY-MM-DD format.
# - `for file in $DIRECTORY/*.txt`: Loop through all .txt files in the directory.
# - `mv "$file" "${file%.txt}_$DATE.txt"`: Rename each file by appending the date.
