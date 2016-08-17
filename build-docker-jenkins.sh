#!/bin/sh

docker build -t jenkins-data -f Dockerfile-data .
docker build -t jenkins2 -f Dockerfile-master .

