#!/bin/bash

# This will setup docker and docker-compose in local machine

ansible-playbook ./operations/setup_docker_local.yml -K #--ask-pass -v

# post installation of docker install - may include it later in ansible playbook itself
docker --version
docker-compose --version
sudo systemctl enable docker
sudo groupadd docker
sudo usermod -aG docker ${USER}
sudo service docker start
su ${USER}
# Making ready for running docker every time wsl starts
echo "sudo service docker start" >> ~/.profile

# Error occurred while installing -
# E:The repository 'http://ppa.launchpad.net/ansible/ansible/ubuntu focal Release' does not have a Release file."

# Solution - execute below command - sudo add-apt-repository --remove ppa:ansible/ansible
# as focal release not available in ubuntu 20 yet https://github.com/ansible/ansible/issues/68645
# https://itsfoss.com/repository-does-not-have-release-file-error-ubuntu/

# For changing docker-compose version - remove it first - sudo rm -f /usr/local/bin/docker-compose