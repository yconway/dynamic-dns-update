#!/bin/bash
IP=$(curl -H "Metadata-Flavor: Google" http://metadata/computeMetadata/v1/instance/network-interfaces/0/access-configs/0/external-ip)
URL="https://${USERNAME}:${PASSWORD}@domains.google.com/nic/update?hostname=${DOMAIN}&myip=${IP}"
echo curling
echo $URL
curl -s $URL