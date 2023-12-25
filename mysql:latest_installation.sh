#!/bin/bash

echo "mysql installation started"
docker ps

echo "@@@@ pulling mysql latest file from docker hub  @@@" 
docker pull mysql:latest

docker images

echo " !!!!!! mysql run with password !!!!"
docker run -d -e MYSQL_ROOT_PASSWORD=test@123 mysql:latest

docker ps
