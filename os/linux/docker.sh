#!/bin/bash

# Uninstall old versions
sudo apt-get -qq remove -y docker docker-engine docker.io containerd runc

# install packages to allow apt to use a repository over HTTPS
sudo apt-get -qq install -y \
  ca-certificates \
  curl \
  gnupg \
  lsb-release

# Add Docker’s official GPG key
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

# Use the following command to set up the repository:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Update the apt package index:
sudo apt-get -qq update -y

# Install Docker Engine, containerd, and Docker Compose.
sudo apt-get -qq install -y docker-ce docker-ce-cli containerd.io docker-compose-plugin

# Run docker engine
sudo service docker start
sleep 5  # Waits 5 seconds.

# Verify that the Docker Engine installation is successful by running the hello-world image:
sudo docker run hello-world

# Add current user to docker group. Use docker without sudo
sudo gpasswd -a $USER docker