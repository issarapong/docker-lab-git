#!/bin/bash

# Ensure the script is run as root
if [ "$(id -u)" -ne 0 ]; then
    echo "This script must be run as root" >&2
    exit 1
fi

# Update and upgrade the system
echo "Updating and upgrading your system..."
sudo apt-get update && sudo apt-get upgrade -y

# Install required packages
echo "Installing required packages..."
sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common

# Add Docker’s official GPG key
echo "Adding Docker's official GPG key..."
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Add the Docker repository
echo "Setting up the stable repository..."
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

# Install Docker CE
echo "Installing Docker CE..."
sudo apt-get update && sudo apt-get install -y docker-ce

# Verify Docker Installation
echo "Verifying Docker installation..."
sudo docker run hello-world

# Managing Docker as a non-root user
echo "Adding your user to the Docker group..."
sudo usermod -aG docker ${USER}

# Configure Docker to start on boot
echo "Enabling Docker to start on boot..."
sudo systemctl enable docker

echo "Docker has been installed and configured successfully!"

# Reminder for the user to log out and back in
echo "Please log out and log back in to apply the Docker group changes."
