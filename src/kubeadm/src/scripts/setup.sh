#!/usr/bin/env bash

# supress console warnings
cat <<EOF > /etc/environment
LANG=en_US.utf-8
LC_ALL=en_US.utf-8
EOF

# configure /etc/hosts file
echo "192.168.235.100   lab-control-plane lab-control-plane.local" >> /etc/hosts
echo "192.168.235.101   lab-node lab-node.local" >> /etc/hosts
