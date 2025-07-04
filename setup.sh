#!/bin/bash

echo "🛠️ Setting up Neovim config using symlink..."

# Define source and target
SOURCE_DIR=~/Neovim-Config/nvim
TARGET_DIR=~/.config/nvim

# Remove existing nvim config if it exists (file, folder, or symlink)
if [ -e "$TARGET_DIR" ] || [ -L "$TARGET_DIR" ]; then
    echo "⚠️ Removing existing ~/.config/nvim..."
    rm -rf "$TARGET_DIR"
fi

# Create parent config directory if needed
mkdir -p ~/.config

# Create symlink
ln -s "$SOURCE_DIR" "$TARGET_DIR"

echo "✅ Symlink created: ~/.config/nvim → $SOURCE_DIR"

echo "📦 If this is a fresh machine, open Neovim and run :PackerSync"
echo "   Also install Nerd Font and set it in terminal for icons to work"
