#!/bin/bash

# Check if filename is provided
if [ -z "$1" ]; then
    echo "Usage: internsctl file getinfo <file-name>"
    exit 1
fi

# Check if file exists
if [ ! -f "$1" ]; then
    echo "File '$1' not found."
    exit 1
fi

# Get file information
stat "$1"
