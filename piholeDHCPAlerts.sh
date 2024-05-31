#!/bin/bash

# Set your Pushover user key and API token here
USER_KEY="XXXXXX"
API_TOKEN="XXXX"

# Get the latest DHCP lease file
LEASE_FILE=$(ls -t /etc/pihole/dhcp.leases* | head -n1)

# Extract the IP address and hostname of the latest lease
IP=$(tail -n1 "$LEASE_FILE" | awk '{print $3}')
HOSTNAME=$(tail -n1 "$LEASE_FILE" | awk '{print $4}')

# Send a Pushover notification with the IP address and hostname
curl -s \
  --form-string "token=$API_TOKEN" \
  --form-string "user=$USER_KEY" \
  --form-string "title=New DHCP Lease" \
  --form-string "message=IP address: $IP\nHostname: $HOSTNAME" \
  https://api.pushover.net/1/messages.json
