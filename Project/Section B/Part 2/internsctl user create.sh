#!/bin/bash

# Check if username is provided
if [ -z "$1" ]; then
    echo "Usage: internsctl user create <username>"
    exit 1
fi

# Create a new user
sudo useradd -m "$1"
