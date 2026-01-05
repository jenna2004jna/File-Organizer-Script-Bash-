#!/bin/bash

# Create folders if they do not exist
mkdir -p Documents Images Videos Music Archives Others

# Move PDF files
find . -type f -name "*.pdf" -exec mv {} Documents/ \;

# Move image files
find . -type f \( -name "*.jpg" -o -name "*.png" -o -name "*.jpeg" \) -exec mv {} Images/ \;

# Move video files
find . -type f \( -name "*.mp4" -o -name "*.mkv" \) -exec mv {} Videos/ \;

# Move audio files
find . -type f \( -name "*.mp3" -o -name "*.wav" \) -exec mv {} Music/ \;

# Move zip/archives
find . -type f \( -name "*.zip" -o -name "*.tar" -o -name "*.gz" \) -exec mv {} Archives/ \;

echo "Files organized successfully!"
