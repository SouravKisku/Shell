#!/bin/bash

echo "Disk Space Usage Summary:"
echo "-----------------------"

# The -h flag makes the output human-readable
# The -b flag forces display in bytes
if [ $# -eq 0 ]
then
    df -h .
else
    for dir in "$@"
    do
        if [ -d "$dir" ]
        then
            echo "Directory: $dir"
            du -sh "$dir"
            echo "-----------------------"
        else
            echo "$dir is not a directory"
        fi
    done
fi