#!/bin/bash

# Define the threshold for disk space (in percentage)
THRESHOLD_PERCENTAGE=10

# Run df command to check disk space and capture output for C: drive on Windows
df_output=$(df -h | grep -E '/mnt/c$')

percentage_used=$(echo "$df_output" | awk '{print $5}' | tr -d '%')

# Check if disk space is below the threshold
if [ "$percentage_used" -lt "$THRESHOLD_PERCENTAGE" ]; then
    echo "Disk space is below threshold. Current usage: $percentage_used%"
    notify-send "Disk Space Alert" "Disk space is below threshold. Current usage: $percentage_used%"
else
    echo "Disk space is above threshold. Current usage: $percentage_used%"
fi



