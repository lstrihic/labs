#!/bin/bash
# Check group exists
getent group q-branch > /dev/null || exit 1

# Check users are in group
groups bond | grep -q "q-branch" || exit 1
groups q | grep -q "q-branch" || exit 1

exit 0
