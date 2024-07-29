#!/bin/bash

# Navigate to the Downloads directory
cd ~/Downloads

# Find all discord .deb files, sort them by version, and get the latest one
latest_file=$(ls discord-*.deb 2>/dev/null | sort -V | tail -n 1)

# Check if a file was found
if [ -z "$latest_file" ]; then
  echo "No Discord .deb files found in ~/Downloads."
  exit 1
fi

echo "Latest Discord package found: $latest_file"

# Install the latest version
sudo dpkg -i "$latest_file"

sudo apt update

echo "Discord update complete."
