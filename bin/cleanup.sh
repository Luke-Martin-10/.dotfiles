#!/bin/bash

# This script removes any changes made by the 'linux.sh' script.

# Remove .vimrc file in home directory
rm ~/.vimrc

# Remove 'source ~/.dotfiles/etc/bashrc custom' line from .bashrc file
sed -i '/source ~\/.dotfiles\/etc\/bashrc_custom/d' ~/.bashrc

# Remove .TRASH directory in home directory
rm -rf ~/.TRASH


