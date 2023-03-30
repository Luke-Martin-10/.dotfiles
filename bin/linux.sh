#!/bin/bash

# This script checks the operating system type, creates a .TRASH directory,
# renames .vimrc file, overwrites contents of etc/vimrc to .vimrc and updates .bashrc.

# Check the operating system type is Linux
if [[ "$(uname)" != "Linux" ]]; then
	  echo "Error: This script only works on Linux." >> ~/linuxsetup.log
	    exit 1
fi

# Create .TRASH directory if it doesn't exist
if [[ ! -d "$HOME/.TRASH" ]]; then
	  mkdir "$HOME/.TRASH"
fi

# Rename .vimrc file if it exists
if [[ -f "$HOME/.vimrc" ]]; then
	  mv "$HOME/.vimrc" "$HOME/.bup_vimrc"
	    echo "The current .vimrc file was changed to .bup_vimrc" >> ~/linuxsetup.log
fi

# Overwrite contents of etc/vimrc to .vimrc in home directory
sudo cat /etc/vimrc > "$HOME/.vimrc"

# Add statement to .bashrc
echo 'source ~/.dotfiles/etc/bashrc custom' >> ~/.bashrc

