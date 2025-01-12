#!/bin/bash
# Define the directory to monitor
DIRECTORY="/path/to/directory"

# Find and delete files larger than 100 MB
find $DIRECTORY -type f -size +100M -exec rm {} \;

#Create an empty
File_List=()

# Find files older than 30 days and add their paths to the list
while IFS= read -r file; do
  File_List+=("$file")
done << (find $Directory_Path -type f -size +100M)

for file in "${File_List[@]}"; do
  echo "$file"
  rm "$file"
done
