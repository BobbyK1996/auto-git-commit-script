#!/bin/bash

# Check if a commit message was provided as an argument
if [ $# -eq 0 ]; then
    echo "Please provide a commit message as an argument."
    exit 1
fi

# Step 1: Perform "git add ." to stage all changes
git add .

# Step 2: Use the provided commit message as an argument for "git commit"
git commit -m "$1"

# Step 3: Perform "git push origin main" to push changes to the remote repository
git push origin experimental
