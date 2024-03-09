#!/bin/bash
docker container run --name jenkins-blueocean --rm --detach \
  --network jenkins \
  --env DOCKER_HOST=tcp://docker:2376 \
  --env DOCKER_CERT_PATH=/certs/client \
  --env DOCKER_TLS_VERIFY=1 \
  --add-host dev-mysql.ridebooker.com:10.10.10.7 \
  --add-host dev-server.ridebooker.com:10.10.10.4 \
  --add-host prod-server-1.ridebooker.com:10.30.10.4 \
  --add-host prod-server-2.ridebooker.com:10.30.10.6 \
  --add-host sonarqube.ridebooker.com:10.10.01.8 \
  --volume jenkins-data:/var/jenkins_home \
  --volume jenkins-docker-certs:/certs/client:ro \
  --publish 8080:8080 \
  --publish 50000:50000 \
  jenkinsci/blueocean
