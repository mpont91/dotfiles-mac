#!/bin/bash

sudo apt -qq update
sudo apt -qq upgrade -y

sudo apt -qq install -y \
  build-essential \
  zsh \
  zsh-syntax-highlighting \
  zsh-autosuggestions

chsh -s $(which zsh)