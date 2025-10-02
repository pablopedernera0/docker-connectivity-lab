#!/bin/bash
# Crear servidor web
docker run -d --name web-server \
  --network lab-network \
  python:3.9-alpine sh -c "echo 'Hello World' > index.html && python -m http.server 8080 --bind 127.0.0.1"

# Crear cliente
docker run -d --name web-client \
  --network lab-network \
  alpine:latest sleep 3600

docker exec web-client apk add --no-cache curl netcat-openbsd

