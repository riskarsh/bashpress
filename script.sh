#!/bin/bash

#Check if docker is installed
if ! command -v docker &> /dev/null;
then
    echo "docker is not installed"

    #update the package and install docker
    sudo apt-get update         
    sudo apt install -y docker.io
    sudo usermod -aG docker $USER
    
    echo "docker has been installed"
else
    echo "Docker is installed."
    docker_version=$(docker --version)
    echo "Docker VERSION: $docker_version"
fi

#Check if docker-compose is installed
if ! command -v docker-compose &> /dev/null;
then
    echo "Docker compose is not installed"
                         
    #Install docker-compose
    sudo apt-get update         
    sudo apt install -y docker-compose

    echo "Docker compose has been installed"
else
    echo "Docker compose is already installed."
fi