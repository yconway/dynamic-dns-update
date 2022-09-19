#!/bin/bash
echo current directory
pwd
source ../../config/config.shlib; # load the config library functions
USERNAME="$(config_get USERNAME)";
PASSWORD="$(config_get PASSWORD)";
DOMAIN="$(config_get DOMAIN)";

echo USERNAME $USERNAME
echo PASSWORD $PASSWORD
echo DOMAIN $DOMAIN

# IP=$(curl -H "Metadata-Flavor: Google" http://metadata/computeMetadata/v1/instance/network-interfaces/0/access-configs/0/external-ip)
# URL="https://${USERNAME}:${PASSWORD}@domains.google.com/nic/update?hostname=${DOMAIN}&myip=${IP}"
# echo curling
# echo $URL
# curl -s $URL