#!/bin/bash
cd dev
docker-compose build 
docker-compose rm
docker-compose up -d
ansible-playbook -i dev_docker hello.yml -v
cd ..