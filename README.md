### Section A: Command Basics
1. **Manual Page:**
 - Create a manual page (`man` page) for the command `internsctl` that outlines its usage, options, and
examples.

2. **--help Option:**
 - Implement the `--help` option for `internsctl` that provides usage guidelines and examples.
3. **Version Information:**
 - Ensure the command `internsctl --version` displays the current version (`v0.1.0`) of the script.
### Section B: Command Implementation
#### Part 1: Easy Level
- **CPU Information:**
 - Implement `internsctl cpu getinfo` to display CPU information similar to `lscpu`.
- **Memory Information:**
 - Implement `internsctl memory getinfo` to display memory information similar to `free`.
#### Part 2: Intermediate Level
- **Create User:**
 - Implement `internsctl user create <username>` to create a new user on the system.
- **List Users:**
 - Implement `internsctl user list` to list all regular users.
- **List Users with Sudo:**
 - Implement `internsctl user list --sudo-only` to list users with sudo permissions.
#### Part 3: Advanced Level
- **File Information:**
 - Implement `internsctl file getinfo <file-name>` to provide file information in a specified format.
- **File Information Options:**
 - Implement options like `--size`, `--permissions`, `--owner`, and `--last-modified` to extract specific file
information.
### Approach and Guidelines:
1. **Bash Scripting:**
 - Create bash scripts for each command (`internsctl cpu getinfo`, `internsctl memory getinfo`, etc.).

2. **Documentation:**
 - Use comments within the script to explain functionality and usage.
 - Create diagrams using Draw.io to illustrate workflows and application architecture.

3. **Git Repository:**
 - Push all configurations and codes to a private Git repository as per the instructions.

4. **Confidentiality:**
 - Maintain confidentiality; do not share the documentation even with colleagues, as stated.
### Workflow:
1. Start with the manual page (`man` page) and `--help` option for `internsctl`.
2. Develop scripts for CPU and memory information retrieval (easy level).
3. Proceed to user management commands (intermediate level).
4. Lastly, implement the file information command with options (advanced level).
Remember, for creating users, listing users, and file operations, administrative privileges might be needed, so
make sure to handle permissions accordingly within the script. 
