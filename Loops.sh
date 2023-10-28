#!/bin/bash

# Script Name:                  Loops.sh
# Author:                       DeqaHussein
# Date of latest revision:      10/28/2023
# Purpose:                      Purpose

# Declaration of variables

# Declaration of functions


# Main

while true; do
    # Display running processes
    echo "Running Processes:"
    ps aux

    # Ask the user for a PID
    read -p "Enter the PID of the process to kill (or press Ctrl + C to exit): " pid

    # Check if the user wants to exit
    if [[ -z "$pid" ]]; then
        echo "Exiting..."
        exit 0
    fi

    # Kill the process with the provided PID
    kill -9 "$pid"
    if [ $? -eq 0 ]; then
        echo "Process with PID $pid killed."
    else
        echo "Failed to kill the process with PID $pid."
    fi
done


# End