#!/bin/bash

docker network create lab-network
docker run -d --name container-a --network lab-network nginx:alpine
docker run -d --name container-b --network lab-network alpine:latest sleep 3600
docker exec container-b apk add --no-cache curl bind-tools iputils busybox-extras
