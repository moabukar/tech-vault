#!/bin/bash

echo "Enter the question number (e.g., 26, 27):"
read question_number

folder_name="q${question_number}"

# Check if folder already exists
if [ -d "$folder_name" ]; then
  echo "Folder ${folder_name} already exists."
  exit 1
fi

mkdir $folder_name

cd $folder_name

touch README.md

echo "# DevOps Challenge ${folder_name}" > README.md

# Go back to the original directory
cd ..

# Confirmation message
echo "Folder ${folder_name} with README.md has been created."
