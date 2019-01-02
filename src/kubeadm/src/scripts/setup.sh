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
echo "192.168.101.100   master master.local" >> /etc/hosts
echo "192.168.101.101   node01 node01.local" >> /etc/hosts
echo "192.168.101.102   node02 node02.local" >> /etc/hosts
echo "192.168.101.103   node03 node03.local" >> /etc/hosts