#!/bin/bash
while true; do
    # Get CPU usage
    CPU=$(top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print 100 - $1}')
    # Get memory usage
    MEM=$(free | grep Mem | awk '{print $3/$2 * 100.0}')
    
    # Check if CPU or memory usage exceeds the threshold
    if (( $(echo "$CPU > 90" | bc -l) )) || (( $(echo "$MEM > 75" | bc -l) )); then
        # Log the details
        echo "High usage detected: CPU $CPU%, Memory $MEM%" >> /path/to/logfile
    fi
    
    # Wait for 1 minute
    sleep 60
done

# Explanation:
# - `top -bn1 | grep "Cpu(s)"`: Get CPU usage from top command.
# - `sed "s/.*, *\([0-9.]*\)%* id.*/\1/"`: Extract the idle percentage.
# - `awk '{print 100 - $1}'`: Calculate the CPU usage.
# - `free | grep Mem | awk '{print $3/$2 * 100.0}'`: Calculate memory usage.
# - `if (( $(echo "$CPU > 90" | bc -l) )) || (( $(echo "$MEM > 75" | bc -l) ))`: Check if usage exceeds thresholds.
# - `echo "message" >> /path/to/logfile`: Log the high usage details.
# - `sleep 60`: Wait for 1 minute before the next check.
