#!/bin/bash
docker container run --name rb-jenkins-lts --rm --detach \
  --network jenkins \
  --add-host dev-mysql.ridebooker.com:10.10.10.7 \
  --add-host dev-server.ridebooker.com:10.10.10.4 \
  --add-host prod-server-1.ridebooker.com:10.30.10.4 \
  --add-host prod-server-2.ridebooker.com:10.30.10.6 \
  --volume jenkins-data:/var/jenkins_home \
  --publish 8080:8080 \
  --publish 50000:50000 \
  --env JAVA_OPTS="-Dorg.apache.commons.jelly.tags.fmt.timeZone=America/Los_Angeles"
  ridebooker/jenkins:v1