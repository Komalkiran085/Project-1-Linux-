#!/bin/bash

# Function to display specific file information based on options
display_file_info() {
    filename="$1"
    option="$2"

    case "$option" in
        "--size" | "-s")
            stat -c "%s" "$filename"  # Print file size
            ;;
        "--permissions" | "-p")
            stat -c "%A" "$filename"  # Print file permissions
            ;;
        "--owner" | "-o")
            stat -c "%U" "$filename"  # Print file owner
            ;;
        "--last-modified" | "-m")
            stat -c "%y" "$filename"  # Print last modified time
            ;;
        *)
            echo "Invalid option. Use '--size', '--permissions', '--owner', or '--last-modified'."
            exit 1
            ;;
    esac
}

# Check if filename and option are provided
if [ -z "$2" ]; then
    echo "Usage: internsctl file getinfo [options] <file-name>"
    exit 1
fi

# Check if file exists
if [ ! -f "$2" ]; then
    echo "File '$2' not found."
    exit 1
fi

# Get file information based on option
display_file_info "$2" "$1"
