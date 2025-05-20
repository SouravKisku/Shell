#!/bin/bash

echo "Files and directories in current directory:"
echo "-----------------------------------------"

for item in *
do
    if [ -f "$item" ]
    then
        echo "$item - Regular file"
    elif [ -d "$item" ]
    then
        echo "$item - Directory"
    fi
done