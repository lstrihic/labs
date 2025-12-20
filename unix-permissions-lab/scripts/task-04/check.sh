#!/bin/bash

# Task 04 Check: run_me.sh should be executable
if [ -x /home/lab-user/run_me.sh ]; then
  exit 0
else
  exit 1
fi
