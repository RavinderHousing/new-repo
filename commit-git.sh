#!/bin/bash

# Define an array of folders
folders=("text-component-ravinder")
echo "sndn $@"

# Loop through each folder
for folder in "${folders[@]}"; do
    echo "Switching to branch in $folder..."
    # Change directory to the current folder
    cd $folder
    # Run git checkout command
    git commit -m "ewundhdwje"
done
