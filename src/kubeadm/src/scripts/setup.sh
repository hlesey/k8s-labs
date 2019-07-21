#!/usr/bin/env bash

# remove swap
# swapoff $(cat /etc/fstab | grep swap | cut -d ' ' -f1)
# sed -e '/swap/ s/^#*/#/' -i /etc/fstab

# supress console warnings
cat <<EOF > /etc/environment
LANG=en_US.utf-8
LC_ALL=en_US.utf-8
EOF

# configure /etc/hosts file
echo "192.168.101.100   lab-master lab-master.local" >> /etc/hosts
echo "192.168.101.101   lab-node01 lab-node01.local" >> /etc/hosts
