#!/bin/bash
# Define the source and destination directories
SOURCE_DIRECTORY="/path/to/source_directory"
DESTINATION_DIRECTORY="/path/to/destination_directory"

#Define an empty list
File_List=()

# Find files modified in the last 24 hours and add their paths to the list
while IFS = read -r file; do
 File_List+=("$file")
done <<(find $SOURCE_DIRECTORY -type f -mtime -1)

# Iterate through the list and copy each file to the destination directory
for files in "${File_List[@]}"; do
  cp "$file" $DESTINATION_DIRECTORY"
  echo "copied: $file"
done

# Explanation:
# - `find "$SOURCE_DIRECTORY"`: Search in the specified source directory.
# - `-type f`: Look for files.
# - `-mtime -1`: Find files modified in the last 24 hours.
# - `while IFS= read -r file; do ... done < <(find ...)`: Read each file path into the list.
# - `for file in "${file_list[@]}"; do ... done`: Iterate through the list and copy each file to the destination directory.
  
