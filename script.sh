#!/bin/bash

#Check if docker is installed
if ! command -v docker &> /dev/null;
then
    echo "docker is not installed"
    
    sudo apt-get update         #update the package and install docker
    sudo apt install -y docker.io
    sudo usermod -aG docker $USER
    
    echo "docker has been installed"
else
    echo "Docker is installed."
    docker_version=$(docker --version)
    echo "Docker VERSION: $docker_version"
fi
