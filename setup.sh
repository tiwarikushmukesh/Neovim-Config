#!/bin/bash

echo "🛠️ Setting up Neovim config..."

# Create config directory if it doesn't exist
mkdir -p ~/.config/nvim

# Copy your config to ~/.config/nvim
cp -r ./nvim/* ~/.config/nvim/

echo "✅ Config copied to ~/.config/nvim"

echo "📦 If this is a fresh machine, open Neovim and run :PackerSync"
echo "   Also install Nerd Font and set it in terminal for icons to work"

