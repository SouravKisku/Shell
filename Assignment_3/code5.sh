#!/bin/bash

echo "Renaming .sh files to .exe..."

for file in *.sh
do
    if [ -f "$file" ]
    then
        newname="${file%.sh}.exe"
        mv "$file" "$newname"
        echo "Renamed: $file -> $newname"
    fi
done