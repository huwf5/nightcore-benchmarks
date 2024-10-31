#!/bin/bash

# This script is used to initialize the image for running experiments.
# so it will delete the original ssh key and set up the new ssh public key.
# Don't use this script on your local machine.

# delete the original ssh key
rm -rf ~/.ssh/authorized_keys

# set up the ssh public key
bash ./setup_ssh_publickey.sh

# download the docker
bash ./install_docker.sh

# add the current user to the docker group
sudo usermod -aG docker $USER

# clear the apt cache
sudo apt-get clean -y
sudo rm -rf /var/log/*
sudo rm -rf /tmp/*

