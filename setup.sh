#!/usr/bin/env bash

echo "⚙ Setting up editors configuration..."

ln -sf ~/dotfiles/editors/vim/.vimrc ~/.vimrc
echo "vim symlinks created successfully!"

echo "⚙ Setting up git configuration..."

ln -sf ~/dotfiles/git/.gitconfig ~/.gitconfig
echo "git symlinks created successfully!"
