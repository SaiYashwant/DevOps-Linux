#!/bin/bash
#set the usage threashold
Threshold_Limit=80

# Get the current disk usage percentage
USAGE=$(df / | grep / | awk '{ print $5 }' | sed 's/%//g')

# Check if usage exceeds the threshold
if [ $USAGE -gt $Threshold_Limit ]; then
    # Log the details
    echo "Disk usage is above $Threshold_Limit%: $USAGE%" >> /path/to/logfile
    # Send an alert email
    echo "Disk usage is above $Threshold_Limit%: $USAGE%" | mail -s "Disk Usage Alert" your-email@example.com
fi

# Explanation:
# - `df /`: Get disk usage of the root filesystem.
# - `grep /`: Filter the output for the root filesystem.
# - `awk '{ print $5 }'`: Extract the usage percentage.
# - `sed 's/%//g'`: Remove the percentage sign.
# - `if [ $USAGE -gt $THRESHOLD ]`: Check if usage exceeds the threshold.
# - `echo "message" >> /path/to/logfile`: Log the message.
# - `mail -s "subject" your-email@example.com`: Send an email alert.
