#!/bin/bash
# Define the list of websites
WEBSITES=("http://example1.com" "http://example2.com")

# Loop through each website
for site in "${WEBSITES[@]}"; do
    # Check if the website is reachable
    if ! curl -s --head --request GET $site | grep "200 OK" > /dev/null; then
        # Log the unreachable site
        echo "$site is down" >> /path/to/logfile
        # Send an alert email
        echo "$site is down" | mail -s "Website Down Alert" your-email@example.com
    fi
done


# Explanation:
# - `WEBSITES=("http://example1.com" "http://example2.com")`: List of websites to check.
# - `curl -s --head --request GET $site`: Send a HEAD request to the website.
# - `grep "200 OK"`: Check if the response contains "200 OK".
# - `if ! ... > /dev/null`: If the website is not reachable.
# - `echo "$site is down" >> /path/to/logfile`: Log the unreachable site.
# - `echo "$site is down" | mail -s "Website Down Alert" your-email@example.com`: Send an alert email.
