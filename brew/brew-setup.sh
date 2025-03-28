#!/bin/bash

# Path to Brewfile
BREWFILE="$HOME/.dotfiles/Brew/Brewfile"

# Check if Homebrew is installed
if ! command -v brew &>/dev/null; then
  echo "Homebrew is not installed. Installing..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Install packages from Brewfile
if [ -f "$BREWFILE" ]; then
  echo "Installing packages from Brewfile..."
  brew bundle --file="$BREWFILE"
else
  echo "Brewfile not found at $BREWFILE"
fi
