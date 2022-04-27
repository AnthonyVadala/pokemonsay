#!/usr/bin/env bash

# Download images from bulbapedia
echo 'Downloading Pokemon images...'
python3 scrape.py > scrape.log

# Make Cow files
echo 'Making cow files...'
./make_cows.sh >/dev/null 2>&1

# Move and rename Cow files
echo 'Moving Pokemon files...'
cd cows
rename 's/MS.cow/.cow/' *.cow >/dev/null 2>&1
cd ..
mv cows/* ../cows

echo "Done!"