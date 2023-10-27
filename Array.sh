#!/bin/bash

# Script Name:                Array.sh
# Author:                       DeqaHussein
# Date of latest revision:      10/26/2023
# Purpose:                      Arrays.sh

# Declaration of variables
my_array=("dir1" "dir2" "dir3" "dir4")


# Declaration of functions


#
print_something () {
 echo # Main
# echo "Four directories (dir1, dir2, dir3, dir4) created."
for dir in "${my_array[@]}"; do
    mkdir "$dir"
    directories_paths+=("$dir")
done
for ((i=0; i<"${#directories_paths[@]}"; i++)); do
    dir="${directories_paths[i]}"
    touch "$dir/file_$i.txt"
done

  
}

# Main
print_something

# End