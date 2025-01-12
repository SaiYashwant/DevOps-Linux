#!/bin/bash
#Define the Directory to search
Directory_Path="path/of/the/directory"

#find and delete file in one line 
#find $Directory_Path -type f -mtime +30 -exec rm {} \;

#copies their paths to a list, and then iterates through the list to print each file name

#Create an empty
File_List=()

# Find files older than 30 days and add their paths to the list
while IFS= read -r file; do
  File_List+=("$file")
done << (find $Directory_Path -type f -mtime +30)

for file in "${File_List[@]}"; do
  echo "$file"
  rm "$file"
done

# Explanation:
# - `find "$DIRECTORY"`: Search in the specified directory.
# - `-type f`: Look for files.
# - `-mtime +30`: Find files modified more than 30 days ago.
# - `while IFS= read -r file; do ... done < <(find ...)`: Read each file path into the list.
# - `for file in "${file_list[@]}"; do ... done`: Iterate through the list and print each file name.

