#!/bin/bash
PERMS=$(stat -c '%a' /agency/top_secret.txt)

# Accept 600 or 0600
if [[ "$PERMS" == "600" || "$PERMS" == "0600" ]]; then
  exit 0
else
  exit 1
fi
