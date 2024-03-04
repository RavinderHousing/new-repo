#!/bin/bash

# Define an array of folders
folders=("text-component-ravinder")
current_branch=$(git symbolic-ref --short HEAD)
echo "sndn"

# Loop through each folder
for folder in "${folders[@]}"; do
    echo "Switching to branch in $folder..."
    # Change directory to the current folder
    cd $folder
    # Run git checkout command
    if git show-ref --quiet --verify "refs/heads/$current_branch" || git ls-remote --exit-code --heads origin "$current_branch" >/dev/null; then
        git push  --set-upstream origin $current_branch
    else
        git push
    fi
    
done
