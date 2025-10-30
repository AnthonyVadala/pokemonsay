#!/usr/bin/env bash

# Transform image files pixel per pixel into cow files
if [ ! -d "cows" ]; then
	mkdir cows
fi

for fullfilename in ./scrapped-data/*.png
do
	filename=$(basename "$fullfilename")
	extension="${filename##*.}"
	filename="${filename%.*}"
	img2xterm --cow "$fullfilename" "cows/$filename.cow"
done