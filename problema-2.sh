#!/bin/bash
docker run -d --name container-c \
  --network lab-network \
  --dns 1.1.1.1 \
  alpine:latest sleep 3600

docker exec container-c apk add --no-cache curl bind-tools iputils