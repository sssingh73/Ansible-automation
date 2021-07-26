Automation using Ansible
--------

Getting Started
---------------
- Installing and configuring ansible for control machine
    - ./install_ansible.sh
    - ./configure_docker_local.sh

- To run test -
    cd Test/docker && chmod +x test_ansible.sh
    ./test_ansible.sh

- To start development
    ./start_managed_docker_nodes.sh
    - This will create two containers as managed nodes where you can start executing ansible scripts
    - docker ps  # to see the details
    - update dev/dev_docker for new managed node entries

- To stop development
    ./stop_managed_docker_nodes.sh
    - This will remove all managed containers

- Every installation in local machine should be also managed using playbook


Features
----------
- Install ansible
- Configure local machine / control machine with required apt packages 
- Docker & docker-compose install
- operations folder contains roles to configure local machine 
- Added Test folder to test it with docker
- Added dev folder to start managed nodes for development using docker compose
- Support for Homebrew packages - require addition ruby package to be installed


TODO:
----------
- Make sure docker installation is fine, it should not delete at the start , should be based on some flag may be
- Add steps to yaml file to verify that the docker is installed.
- Add step to make sure docker service restarted 
    - - service: name=docker state=restarted
    - using notifier may be



Additional Activities
-------------

To use community roles

ansible-galaxy collection install community.general


