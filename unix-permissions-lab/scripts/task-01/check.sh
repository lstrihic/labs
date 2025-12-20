#!/bin/bash

# Task 01 Check: Owner of secret.txt should be lab-user
OWNER=$(stat -c '%U' /home/lab-user/secret.txt)

if [ "$OWNER" == "lab-user" ]; then
  exit 0
else
  exit 1
fi
