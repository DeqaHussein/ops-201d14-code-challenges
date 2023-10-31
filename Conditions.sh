#!/bin/bash

# Script Name:                  Conditions.sh
# Author:                       DeqaHussein
# Date of latest revision:      10/30/2023
# Purpose:                      Purpose

# Declaration of variables

# Declaration of functions


# Main

# Define an array of file or directory names
names=("file1.txt" "directory1" "file2.txt")

# Loop through the array
for name in "${names[@]}"; do
    # Check if the file or directory exists
    if [ -e "$name" ]; then
        echo "$name already exists."
    else
        # If it doesn't exist, create it
        touch "$name" # For files
        mkdir "$name" # For directories
        echo "Created $name."
    fi
done


# End