#!/bin/bash
# Crear segunda red
docker network create lab-network-2
# Crear contenedores en diferentes redes
docker run -d --name isolated-a \
  --network lab-network \
  alpine:latest sleep 3600

docker run -d --name isolated-b \
  --network lab-network-2 \
  alpine:latest sleep 3600

docker exec isolated-a apk add --no-cache iputils
docker exec isolated-b apk add --no-cache iputils