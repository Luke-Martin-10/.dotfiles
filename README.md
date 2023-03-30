# My Dotfiles

This repository contains scripts and configuration files for setting up a Linux development environment.

# Files

## bin/linux.sh
This script checks if the operating system is Linux, creates a .TRASH directory in the user's home directory if it does not exist, renames the .vimrc file to .bup_vimrc if it exists, overwrites the ~/.vimrc file with the contents of /etc/vimrc, and adds the line source ~/.dotfiles/etc/bashrc custom to the end of the ~/.bashrc file. The script appends any output from echo statements to a file called linuxsetup.log.

## bin/cleanup.sh
This script removes the ~/.vimrc file, removes the line source ~/.dotfiles/etc/bashrc custom from the ~/.bashrc file using the sed command, and removes the .TRASH directory from the user's home directory.

## Makefile
The Makefile defines two targets: linux and clean. The linux target runs the bin/linux.sh script, and the clean target runs the bin/cleanup.sh script. The linux target has a dependency on the clean target. The Makefile sets execute permissions on the .sh files.

## .vimrc and .bashrc custom
These configuration files set up custom settings and aliases for the Vim text editor and the Bash shell, respectively. The .vimrc file sets options such as syntax highlighting and indentation, while the .bashrc custom file defines aliases for common commands and sets environment variables.
