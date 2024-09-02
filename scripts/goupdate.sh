#!/bin/bash

# Check if the version argument is provided
if [ $# -ne 1 ]; then
    echo "Usage: $0 <go_version>"
    exit 1
fi

version="$1"
url="https://go.dev/dl/go$version.linux-amd64.tar.gz"
download_dir="/tmp"

# Download the file
echo "Downloading $url..."
if ! curl -o "$download_dir/go$version.linux-amd64.tar.gz" -L "$url"; then
    echo "Failed to download the file. Exiting."
    exit 1
fi

# Remove the existing Go installation
echo "Removing existing installation..."
sudo rm -rf /usr/local/go

# Extract the downloaded archive to /usr/local
echo "Extracting the downloaded file to /usr/local..."
sudo tar -C /usr/local -xzf "$download_dir/go$version.linux-amd64.tar.gz"

# Check if the extraction was successful
if [ $? -eq 0 ]; then
    echo "Go $version was successfully installed."
else
    echo "Failed to install Go. Please check the download and extraction process."
    exit 1
fi
