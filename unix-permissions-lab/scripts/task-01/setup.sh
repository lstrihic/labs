#!/bin/bash
# Create the agency directory
mkdir -p /agency

# Create users if they don't exist
id -u bond &>/dev/null || useradd -m -s /bin/bash bond
id -u q &>/dev/null || useradd -m -s /bin/bash q
id -u m &>/dev/null || useradd -m -s /bin/bash m

# Create a file owned by root (the problem)
echo "Mission Report: Success" > /agency/mission_report.txt
chown root:root /agency/mission_report.txt
chmod 644 /agency/mission_report.txt
