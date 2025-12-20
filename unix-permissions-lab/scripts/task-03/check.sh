#!/bin/bash

# Task 03 Check: Group of shared.txt should be developers
GROUP=$(stat -c '%G' /home/lab-user/shared.txt)

if [ "$GROUP" == "developers" ]; then
  exit 0
else
  exit 1
fi
