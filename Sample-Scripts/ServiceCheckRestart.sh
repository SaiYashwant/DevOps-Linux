#!/bin/bash
# Define the service name
SERVICE=httpd

# Check if the service is running
if ! systemctl is-active --quiet $SERVICE; then
    # Restart the service
    systemctl restart $SERVICE
    # Log the action
    echo "$SERVICE was restarted at $(date)" >> /path/to/logfile
fi

# Explanation:
# - `systemctl is-active --quiet $SERVICE`: Check if the service is active.
# - `if ! ...; then`: If the service is not active.
# - `systemctl restart $SERVICE`: Restart the service.
# - `echo "message" >> /path/to/logfile`: Log the restart action.
