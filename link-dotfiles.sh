#!/bin/bash

set -e

export DOTFILES="$HOME/.dotfiles"

echo "Initializing dotfiles configuration..."
echo

# Helper function
link_file() {
  local src=$1
  local dest=$2
  ln -sf "$src" "$dest"
  echo "Linked $(basename "$src") → $dest"
}

# ─── Editors ────────────────────────────────────────────────────────────────
echo "Setting up editors..."
link_file "$DOTFILES/editors/vim/.vimrc" "$HOME/.vimrc"
echo

# ─── Git ────────────────────────────────────────────────────────────────────
echo "Setting up git..."
link_file "$DOTFILES/git/.gitconfig" "$HOME/.gitconfig"
echo

# ─── Terminal ───────────────────────────────────────────────────────────────
echo "Setting up terminal..."
link_file "$DOTFILES/terminal/.aliases" "$HOME/.aliases"
link_file "$DOTFILES/terminal/.zshrc" "$HOME/.zshrc"
link_file "$DOTFILES/terminal/.zprofile" "$HOME/.zprofile"
echo

# ─── VS Code ────────────────────────────────────────────────────────────────
echo "Linking VS Code configuration..."
mkdir -p "$HOME/Library/Application Support/Code/User"
link_file "$DOTFILES/vscode/settings.json" "$HOME/Library/Application Support/Code/User/settings.json"
link_file "$DOTFILES/vscode/keybindings.json" "$HOME/Library/Application Support/Code/User/keybindings.json"
mkdir -p "$HOME/Library/Application Support/Code/User/snippets"
link_file "$DOTFILES/vscode/snippets/js-snippets.json" "$HOME/Library/Application Support/Code/User/snippets/js-snippets.json"
link_file "$DOTFILES/vscode/snippets/react-snippets.json" "$HOME/Library/Application Support/Code/User/snippets/react-snippets.json"
link_file "$DOTFILES/vscode/snippets/astro-snippets.json" "$HOME/Library/Application Support/Code/User/snippets/astro-snippets.json"
link_file "$DOTFILES/vscode/snippets/vue-snippets.json" "$HOME/Library/Application Support/Code/User/snippets/vue-snippets.json"

echo "All symlinks created successfully!"
