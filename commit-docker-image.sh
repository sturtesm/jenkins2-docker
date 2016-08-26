#!/bin/sh

. ./env.sh

AUTHOR="Steve Sturtevant"
COMMENT="Adding AppDynamics Agent to Jenkins Build"

docker commit -a "${AUTHOR}" -m "${COMMENT}" sturtesm-jenkins-master sturtesm/jenkins2-docker-master:${VERSION}
docker commit -a "${AUTHOR}" -m "${COMMENT}" sturtesm-jenkins-data sturtesm/jenkins2-docker-data:${VERSION}

docker push sturtesm/jenkins2-docker-master
docker push sturtesm/jenkins2-docker-data
