#!/bin/sh
VERSION=v0.1
AUTHOR="Steve Sturtevant"
COMMENT="Committing Jenkins v2.0 Image with Data Mounted Volume"

docker commit -a "${AUTHOR}" -m "${COMMENT}" jenkins-master sturtesm/jenkins2-docker-master:${VERSION}
docker commit -a "${AUTHOR}" -m "${COMMENT}" jenkins-data sturtesm/jenkins2-docker-data:${VERSION}

docker push sturtesm/jenkins2-docker-master
docker push sturtesm/jenkins2-docker-data
