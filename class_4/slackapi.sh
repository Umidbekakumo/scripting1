#!/bin/bash
function slack_message {
    local message=$1 
curl -X POST \
    -H 'Content-type: application/json' \
    --data '{"text" : "'"$message"'"}' $SLACK_URL 
 }
#slack_message " This is message " 

droplets="""$(curl -X GET \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer $DROPLET_TOKEN" \
  "https://api.digitalocean.com/v2/droplets")"""
 
 droplet_name=$(echo $droplets | jq -r .droplets[2].name)
 droplet_status=$(echo $droplets | jq -r .droplets[2].status)

slack_message " my droplet *$droplet_name* is currently *$droplet_status* :aww_yeah:"
