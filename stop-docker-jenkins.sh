#!/bin/sh

docker stop jenkins-master
docker stop jenkins-data

docker rm jenkins-master
