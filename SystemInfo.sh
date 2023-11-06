#!/bin/bash

# Script Name:                Systeminfo.sh
# Author:                       DeqaHussein
# Date of latest revision:      10/31/2023
# Purpose:                      Purpose

# Declaration of variables

# Declaration of functions


# Main


# Use lshw to get system information
lshw_output=$(sudo lshw)

# Define functions to filter and print specific information
print_component_info() {
    component_name="$1"
    echo "====== $component_name ======"
    echo "$lshw_output" | grep -E "$component_name:" | sed -e "s/$component_name: //"
    echo
}

# Display information for different components
print_component_info "Name of the computer"
print_component_info "CPU"
print_component_info "RAM"
print_component_info "Display adapter"
print_component_info "Network adapter"


# End