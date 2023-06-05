#!/bin/bash

for file in "$1"/*.png
do
	tools/gfx.py split "$file"
done
