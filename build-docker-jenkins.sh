#!/bin/sh

docker build -t sturtesm/jenkins-data -f Dockerfile-data .
docker build -t sturtesm/jenkins-master -f Dockerfile-master .

