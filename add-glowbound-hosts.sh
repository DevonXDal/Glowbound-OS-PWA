#!/bin/bash
# add-glowbound-hosts.sh

DOMAINS=(
  glowbound.local
  status.glowbound.local
  docker.glowbound.local
  pgadmin.glowbound.local
)

HOSTS_FILE="/etc/hosts"
IP="127.0.0.1"

for DOMAIN in "${DOMAINS[@]}"; do
  if ! grep -q "$DOMAIN" "$HOSTS_FILE"; then
    echo "Adding $DOMAIN to $HOSTS_FILE..."
    echo "$IP $DOMAIN" | sudo tee -a "$HOSTS_FILE" > /dev/null
  else
    echo "$DOMAIN already exists in $HOSTS_FILE."
  fi
done

echo "Done. You can now visit GlowboundOS at https://glowbound.local"
