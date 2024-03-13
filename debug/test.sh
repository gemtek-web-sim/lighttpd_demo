#!/bin/bash

# @NOTE MUST NOT echo or print anything to make sure tar.gz file at cURL command at right format
# Create a directory to hold files
mkdir -p temp_dir

# Create some example files in the directory
echo "Hello, this is file1.txt" > temp_dir/file1.txt
echo "This is file2.txt" > temp_dir/file2.txt

# Create a tarball of the directory
tar -czf test.tar.gz temp_dir &

# Trap the PID of the tar command
PID=$!

# Wait for the tar command to complete
wait $PID

# echo "File create -- Wait 5 seconds"
# Loop for 5 seconds
# for ((i=0; i<5; i++)); do
#     # Echo #
#     # echo "#"
#     # Wait for 1 second
#     sleep 1
# done

# Return the content of the tarball
cat test.tar.gz
