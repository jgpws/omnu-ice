#!/bin/bash

# Add theme title to a variable
THEMENAME=OmNu-Ice

# Make a copied directory of OmNu-Ice, only if it doesn't already exist
[ -d ../$THEMENAME-copy ] || mkdir ../$THEMENAME-copy

# Copy the contents of OmNu-Ice directory and place them in the copy directory in parent folder
cp -r ../$THEMENAME/* ../$THEMENAME-copy

# Remove unneeded files and folders from final folder
rm ../$THEMENAME-copy/README.md ../$THEMENAME-copy/update-theme.sh
rm -r ../$THEMENAME-copy/downloads

# Remove any backup files (from Bluefish)
rm ../$THEMENAME-copy/*~

# Move directory back to OmNu-Ice directory inside downloads folder; restore name
mv ../$THEMENAME-copy $THEMENAME

# Compress the file using tar and gunzip
tar -zcvf omnu-ice-MM-DD-YY.tar.gz OmNu-Ice

# Remove copied folder inside parent
rm -r $THEMENAME

# Move new archive to the downloads folder
mv omnu-ice-MM-DD-YY.tar.gz downloads
