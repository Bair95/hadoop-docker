#!/bin/bash

# Domain name for containers
CONTAINER_DOMAIN=heartbit.io

# Path to the addn-hosts file
CONTAINER_HOSTS=/docker-container-hosts

echo "# Auto-generated by $0" > $CONTAINER_HOSTS
for CID in `docker ps -q`; do
    IP=`docker inspect --format '{{ .NetworkSettings.IPAddress }}' $CID`
    NAME=`docker inspect --format '{{ .Config.Hostname }}' $CID`
    echo "$IP  $NAME.$CONTAINER_DOMAIN" >> $CONTAINER_HOSTS
done

# Ask dnsmasq to reload addn-hosts
pkill -x -HUP dnsmasq
