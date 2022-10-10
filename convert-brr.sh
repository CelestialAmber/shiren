#!/bin/bash

for file in "$1"/*.brr
do
    tools/brr_decoder -s 16000 "$file" "$file".wav
done