#!/bin/bash

# Create lab-user
useradd -m -s /bin/bash lab-user
echo "lab-user ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

# Set up files in lab-user's home
cd /home/lab-user

# Task 01: secret.txt owned by root initially
touch secret.txt
chown root:root secret.txt
chmod 644 secret.txt

# Task 03: shared.txt and developers group
groupadd developers
touch shared.txt
chown lab-user:root shared.txt

# Task 04: run_me.sh
cat <<EOF > run_me.sh
#!/bin/bash
echo "Hello, Unix Permissions!"
EOF
chown lab-user:lab-user run_me.sh
chmod 644 run_me.sh

# Fix ownership for the home directory
chown lab-user:lab-user /home/lab-user
chown root:root /home/lab-user/secret.txt # Ownership check task needs it to be root initially
