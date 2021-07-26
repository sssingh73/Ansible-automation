#!/bin/bash
DOCKER_CONTAINER_NAME="ansible-test"
docker build -f ../../dev/Dockerfile.local -t myubuntu .

docker run -ti --privileged --name $DOCKER_CONTAINER_NAME -d -p 5000:22 myubuntu
ansible-playbook -i test_docker ../../dev/hello.yml -v
docker stop $DOCKER_CONTAINER_NAME

docker rm $DOCKER_CONTAINER_NAME