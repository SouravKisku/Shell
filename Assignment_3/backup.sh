#!/bin/bash

echo "Converting .exe files to .sh files..."

for file in *.exe
do
    if [ -f "$file" ]
    then
        newname="${file%.exe}.sh"
        mv "$file" "$newname"
        echo "Renamed: $file -> $newname"
    fi
done

echo "Conversion complete"