#!/bin/bash

# directory with name negpod_id-q1
dir="negpod_id-q1"
mkdir "$dir"

# Move all 4 files created in question 1 to the new directory
mv students-list_0923.txt select-emails.sh main.sh move-to-directory.sh student-emails.txt "$dir"

echo "Files moved to $dir successfully!"

