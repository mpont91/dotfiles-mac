#!/usr/bin/env bash

mkdir -p ~/.nvm

echo 'export NVM_DIR=~/.nvm' >> ~/.zprofile
echo 'source $(brew --prefix nvm)/nvm.sh' >> ~/.zprofile
