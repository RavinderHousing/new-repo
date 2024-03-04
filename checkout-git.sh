#!/bin/bash

# Define an array of folders
folders=("text-component-ravinder")
current_branch=$(git symbolic-ref --short HEAD)
remote_branch="origin/$current_branch"
echo "sndn $remote_branch"

# Loop through each folder
for folder in "${folders[@]}"; do
    echo "Switching to branch in $folder..."

    cd $folder
    
    if git show-ref --quiet --verify "refs/heads/$current_branch" || git ls-remote --exit-code --heads origin "$current_branch" >/dev/null; then
        git checkout "$current_branch"
    else
         git checkout -b "$current_branch"
    fi
done
