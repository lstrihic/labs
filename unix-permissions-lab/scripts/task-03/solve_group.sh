#!/bin/bash
# Create group if it doesn't exist
groupadd -f q-branch

# Add users
usermod -aG q-branch bond
usermod -aG q-branch q
