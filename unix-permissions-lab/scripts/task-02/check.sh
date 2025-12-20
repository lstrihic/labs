#!/bin/bash

# Task 02 Check: Permissions of secret.txt should be 600
PERMS=$(stat -c '%a' /home/lab-user/secret.txt)

if [ "$PERMS" == "600" ]; then
  exit 0
else
  exit 1
fi
