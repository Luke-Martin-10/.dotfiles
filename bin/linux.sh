#!/bin/bash

# This script checks the operating system type, creates a .TRASH directory,
# renames .vimrc file, overwrites contents of etc/vimrc to .vimrc and updates .bashrc.

# Check the operating system type is Linux

CURR_DIR=$(pwd)
CURR_OS=$(uname)

# Sanity check
if [[ "$CURR_OS" != *"Linux"* ]]; then
	    echo "ERROR --> Incorrect OS detected for this target!"
	        exit
fi

# Create .TRASH directory if it doesn't exist
mkdir -p "$HOME/.TRASH"

# Rename .vimrc file if it exists
if [[ -f "$HOME/.vimrc" ]]; then
	    echo "LOG --> Found existing .vimrc file! Saving backup!"
	        mkdir -p "$HOME/.vim_bups"
		    cp "$HOME/.vimrc" "$HOME/.vim_bups/.bup_vimrc"
		        # Rename old .vimrc to .bup_vimrc
			    mv "$HOME/.vimrc" "$HOME/.bup_vimrc"
			        echo "LOG --> The current .vimrc file was changed to '.bup_vimrc'" >> "$HOME/linuxsetup.log"
fi

# Overwrite contents of etc/vimrc to .vimrc in home directory
cat /etc/vimrc > ~/.vimrc

# Add statement to .bashrc
echo 'source ~/.dotfiles/etc/bashrc_custom' >> ~/.bashrc

