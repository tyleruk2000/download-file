#!/bin/bash

# URL of the file to download
FILE_URL="https://example.com/file.zip"
# Interval in seconds between retry attempts (5 minutes)
RETRY_INTERVAL=300

# Function to attempt download
download_file() {
  echo "Attempting to download ${FILE_URL}..."
  # Attempt to download the file with curl, preserving the original name
  curl -O "$FILE_URL"
}

# Loop until the file is successfully downloaded
until download_file; do
  echo "Download failed. Retrying in 5 minutes..."
  sleep "$RETRY_INTERVAL"
done

echo "Download succeeded."