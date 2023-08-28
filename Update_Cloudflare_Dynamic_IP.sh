#!/usr/bin/env sh

# Instructions on how to use this script:
# curl -LJO https://raw.githubusercontent.com/nn0x96a/Cloudflare-Dynamic-DNS/main/Update_Cloudflare_Dynamic_IP.sh
# chmod 755 Update_Cloudflare_Dynamic_IP.sh
# Set the required parameters
# ./Update_Cloudflare_Dynamic_IP.sh
# SCRIPT: Update_Cloudflare_Dynamic_IP.sh
# AUTHOR: NHAN NGUYEN
# Use: This script will update your DNS Record IP

#Set the below parameters:
TOKEN="Replace with API Token"; \ 
ZONE_ID="Replace with Zone ID"; \
DNS_ID="Replace with DNS ID"; \
TYPE="A"; \
NAME="Replace with DNS Record Name"; \
CONTENT="$(curl -s checkip.amazonaws.com)"; \
PROXIED="false"; \
TTL="120";\

#Command
curl -X PUT "https://api.cloudflare.com/client/v4/zones/$ZONE_ID/dns_records/$DNS_ID" \
    -H "Authorization: Bearer $TOKEN" \
    -H "Content-Type: application/json" \
    --data '{"type":"'"$TYPE"'","name":"'"$NAME"'","content":"'"$CONTENT"'","proxied":'"$PROXIED"',"ttl":'"$TTL"'}' \
