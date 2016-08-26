#!/bin/sh

ID=`docker ps -a | grep -i jenkins2-docker-master | awk {' print $1 '}`

if [ "${ID}x" = "x" ]; then
    echo "[debug] Docker Jenkins Container Not Found"
    exit 1
fi

echo "[debug] Starting Docker Jekins2 Image: ${ID}"
docker start ${ID}

echo "[debug] Docker Jenkins2 started, give it a few minutes to warm up..."
echo "[debug] Starting Log tail of docker logs..."

./tail-jenkins-logs.sh
