#!/bin/sh

docker exec jenkins-master tail -f /var/log/jenkins/jenkins.log
