#!/bin/bash

# Define paths
DOTFILES_NIXOS="$HOME/dotfiles/nixos"
ETC_NIXOS="/etc/nixos"

# Check if the source directory exists
if [ ! -d "$DOTFILES_NIXOS" ]; then
    echo "Error: $DOTFILES_NIXOS does not exist!"
    exit 1
fi

# Remove existing /etc/nixos if it's not already a symlink
if [ -e "$ETC_NIXOS" ]; then
    echo "Removing existing /etc/nixos"
    sudo rm -rf "$ETC_NIXOS"
fi

# Create new symlink
echo "Creating symlink: $ETC_NIXOS → $DOTFILES_NIXOS"
sudo ln -sT "$DOTFILES_NIXOS" "$ETC_NIXOS"

echo "Symlink successfully created!"
