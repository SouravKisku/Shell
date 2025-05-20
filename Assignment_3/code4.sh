#!/bin/bash

echo "Deleting temporary files..."

for file in *~
do
    if [ -f "$file" ]
    then
        rm "$file"
        echo "Deleted: $file"
    fi
done

echo "Temporary file cleanup complete"