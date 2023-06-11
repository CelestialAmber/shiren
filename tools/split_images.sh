#!/bin/bash

#Exit if the folder has already been processed.
for file in "$1"/*.png
do
	if [ $file == *"_part"* ]; then
		exit 1
	fi
done

for file in "$1"/*.png
do
	tools/gfx.py split "$file"
done
