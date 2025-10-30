#!/bin/sh

for image in ./scrapped-data/*.png
do
	# Mirror the image in the horizontal direction so that the pokemon will be looking to the right.
	magick -flop "$image" "$image"

	# Trim the useless empty space around the pokemon.
	magick -trim "$image" "$image"
done
