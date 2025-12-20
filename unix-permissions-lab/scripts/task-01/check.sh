#!/bin/bash
OWNER=$(stat -c '%U' /agency/mission_report.txt)

if [ "$OWNER" == "bond" ]; then
  exit 0
else
  exit 1
fi
