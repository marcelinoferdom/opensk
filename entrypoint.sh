#!/bin/bash

# Infinite while loop
while true; do
    # Get the current time in HH:MM:SS format
    current_time=$(date +"%H:%M:%S")
    
    # Print the current time with the message
    echo "[$current_time] This loop will run forever until you stop it."

    # Check if the current second is 00, which means the minute has passed
    if [ $(date +"%S") -eq 00 ]; then
        # Generate a random 6-digit number
        verification_code=$(shuf -i 100000-999999 -n 1)
        
        # Print the 6-digit verification code
        echo "[$current_time] Verification Code: $verification_code"
    fi
    
    # Optional: add a 1-second pause to prevent overwhelming the system
    sleep 10
done
