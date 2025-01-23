#bib/bash

# input of log file with path
LogFile = 'path/to/the/file/logfile.log'

# Check if the log file exists 
if [[! -f "$LogFile" ]]; then
  echo "File does not exist"
  exit 1

# search for the string , -i will ignore the case ""
grep -i "ERROR" "$LogFile"

# Check if any errors were found
if [[ $? -eq 0 ]]; then
    echo "Errors found in the log file."
else
    echo "No errors found in the log file."
fi

# number of occurances of the string in a file
Occurances=$(grep -i "Error" "$LogFile" | wc -l)

# Display the number of occurrences
if [[ Occurances -gt 0 ]]; then
  counter += counter+1
  echo "Number of occurances: $counter"
else
  echo "No occurances in the log file"
