#!/bin/bash

sudo apt -qq update
sudo apt -qq upgrade -y

sudo apt install -y build-essential curl wget zsh zsh-syntax-highlighting zsh-autosuggestions

chsh -s $(which zsh)