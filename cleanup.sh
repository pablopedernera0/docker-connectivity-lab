#!/bin/bash

# Detener y eliminar todos los contenedores del lab
docker stop container-a container-b container-c web-server web-client \
  isolated-a isolated-b firewall-test 2>/dev/null

docker rm container-a container-b container-c web-server web-client \
  isolated-a isolated-b firewall-test 2>/dev/null

# Eliminar redes
docker network rm lab-network lab-network-2 2>/dev/null