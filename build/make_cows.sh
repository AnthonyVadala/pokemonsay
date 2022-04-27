#!/usr/bin/env bash

# Transform image files pixel per pixel into cow files
if [ ! -d "cows" ]; then
	mkdir cows
fi

for fullfilename in images/*.png
do
	filename=$(basename "$fullfilename")
	extension="${filename##*.}"
	filename="${filename%.*}"
	#convert "$fullfilename" -trim +repage "$fullfilename.trim"
	#img2xterm --cow "$fullfilename.trim" "cows/$filename.cow"
	img2xterm --cow "$fullfilename" "cows/$filename.cow"
done