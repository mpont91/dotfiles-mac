#!/bin/bash

sudo apt -qq update
sudo apt -qq upgrade -y

sudo apt install -y curl wget zsh

chsh -s $(which zsh)

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended