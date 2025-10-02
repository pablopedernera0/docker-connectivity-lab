#!/bin/bash
# Crear contenedor con privilegios
docker run -d --name firewall-test \
  --network lab-network \
  --cap-add=NET_ADMIN \
  alpine:latest sleep 3600

docker exec firewall-test apk add --no-cache iputils iptables curl

# Bloquear tráfico ICMP saliente
docker exec firewall-test iptables -A OUTPUT -p icmp -j DROP