#!/bin/bash
source ./config/dynamic-dns.cfg; # load the config

IP=$(curl http://checkip.amazonaws.com)
URL="https://${USERNAME}:${PASSWORD}@domains.google.com/nic/update?hostname=${DOMAIN}&myip=${IP}"
echo curling
echo $URL
curl -s $URL