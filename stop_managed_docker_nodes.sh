#!/bin/bash
cd dev
docker-compose stop 
docker-compose rm -f
docker-compose ps
cd ..