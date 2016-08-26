#!/bin/sh

docker run -p 8080:8080 -p 50000:50000 --name=sturtesm-jenkins-master --volumes-from=jenkins-data -d sturtesm/jenkins-master
