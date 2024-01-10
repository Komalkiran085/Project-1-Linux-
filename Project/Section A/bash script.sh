
#Installation of manual

sudo mkdir -p /usr/local/man/man1
sudo cp internsctl.1 /usr/local/man/man1/internsctl.1
sudo mandb  # Update manual page database

#!/bin/bash
--help
# Function to display help information
display_help() {
    echo "Usage: internsctl [options] [command]"
    echo "Options:"
    echo "  --help          Display help information."
    echo "  --version       Display command version."
    echo "Commands:"
    echo "  cpu getinfo               Get CPU information."
    echo "  memory getinfo            Get memory information."
    echo "  user create <username>    Create a new user."
    echo "  user list                 List all regular users."
    echo "  user list --sudo-only     List users with sudo permissions."
    echo "  file getinfo <file-name>  Get information about a file."
    echo "Examples:"
    echo "  internsctl cpu getinfo"
    echo "  internsctl user list"
}

# Main script logic
case "$1" in
    "--help")
        display_help
        ;;
    # Add cases for other commands and options here
    *)
        echo "Invalid command or option. Use 'internsctl --help' for usage information."
        exit 1
        ;;
esac
