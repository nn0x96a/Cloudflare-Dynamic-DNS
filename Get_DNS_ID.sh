TOKEN="Replace with API Token"; \
ZONE_ID="Replace with Zone ID under Overview"; \
TYPE="A"; \
PROXIED="false"; \
TTL="120";\
curl -X GET "https://api.cloudflare.com/client/v4/zones/$ZONE_ID/dns_records/$DNS_ID" \
    -H "Authorization: Bearer $TOKEN" \
    -H "Content-Type: application/json" \
    --data '{"type":"'"$TYPE"'","name":"'"$NAME"'","content":"'"$CONTENT"'","proxied":'"$PROXIED"',"ttl":'"$TTL"'}' \
    | python -m json.tool;
