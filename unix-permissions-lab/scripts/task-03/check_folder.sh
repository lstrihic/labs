#!/bin/bash
DIR="/agency/gadgets"

if [ ! -d "$DIR" ]; then
  exit 1
fi

GROUP=$(stat -c '%G' $DIR)
PERMS=$(stat -c '%a' $DIR)

if [ "$GROUP" == "q-branch" ] && [[ "$PERMS" == "770" || "$PERMS" == "2770" ]]; then
  exit 0
fi

exit 1
