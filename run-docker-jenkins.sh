#!/bin/sh

TOP=$(dirname $0)
. ${TOP}/env.sh

docker run --name=sturtesm-jenkins-data sturtesm/jenkins2-docker-data:${VERSION}
docker run -p 8080:8080 -p 50000:50000 --name=sturtesm-jenkins-master --volumes-from=jenkins-data -d sturtesm/jenkins-master:${VERSION}
