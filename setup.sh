#!/usr/bin/env bash

export DOTFILES=~/dotfiles

echo "Initializing dotfiles configuration..."
echo

echo "Setting up editors configuration..."
ln -sf $DOTFILES/editors/vim/.vimrc ~/.vimrc
echo "vim symlinks created successfully!"
echo

echo "Setting up git configuration..."
ln -sf $DOTFILES/git/.gitconfig ~/.gitconfig
echo "git symlinks created successfully!"
echo

echo "Setting up terminal configuration..."
ln -sf $DOTFILES/terminal/.bashrc ~/.bashrc
echo "bashrc symlink created successfully!"
ln -sf $DOTFILES/terminal/.aliases ~/.bash_aliases
echo "alias symlink created successfully!"
ln -sf $DOTFILES/terminal/.zshrc ~/.zshrc
echo "zshrc symlink created successfully!"
echo
