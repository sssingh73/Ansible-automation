#!/bin/bash
# Setting up ansible using  apt
sudo apt update
sudo apt install software-properties-common -y
# It may cause some problem in ubuntu 20 while updating cache using Ansible
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt install ansible -y

# Verification
ansible --version
ls -lart /etc/ansible
ansible localhost -m ping

## Sample Output
# ansible 2.9.6
#   config file = /etc/ansible/ansible.cfg
#   configured module search path = ['/home/ubuntu/.ansible/plugins/modules', '/usr/share/ansible/plugins/modules']
#   ansible python module location = /usr/lib/python3/dist-packages/ansible
#   executable location = /usr/bin/ansible
#   python version = 3.8.2 (default, Jul 16 2020, 14:00:26) [GCC 9.3.0]
