#!/bin/bash

# Update the system
sudo apt-get update && sudo apt-get upgrade -y

# Install required dependencies
sudo apt-get install -y apt-transport-https ca-certificates curl gnupg2 software-properties-common

# Add Docker's official GPG key
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -

# Add Docker stable repository
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"

# Install Docker CE
sudo apt-get update && sudo apt-get install -y docker-ce docker-ce-cli containerd.io

# Verify Docker installation
sudo docker run hello-world
