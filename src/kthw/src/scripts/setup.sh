#!/usr/bin/env bash

KUBERNETES_VERSION="v1.12.0"

# remove swap
# swapoff $(cat /etc/fstab | grep swap | cut -d ' ' -f1)
# sed -e '/swap/ s/^#*/#/' -i /etc/fstab

# supress console warnings
cat <<EOF > /etc/environment
LANG=en_US.utf-8
LC_ALL=en_US.utf-8
EOF

# configure /etc/hosts file
echo "10.240.0.10   controller-0 controller-0.local" >> /etc/hosts
echo "10.240.0.11   controller-1 controller-0.local" >> /etc/hosts
echo "10.240.0.12   controller-2 controller-0.local" >> /etc/hosts
echo "10.240.0.20   worker-0 worker-0.local" >> /etc/hosts
echo "10.240.0.21   worker-1 worker-1.local" >> /etc/hosts
echo "10.240.0.22   worker-2 worker-2.local" >> /etc/hosts

# install Client Tools
wget -q --show-progress --https-only --timestamping \
  https://pkg.cfssl.org/R1.2/cfssl_linux-amd64 \
  https://pkg.cfssl.org/R1.2/cfssljson_linux-amd64
chmod +x cfssl_linux-amd64 cfssljson_linux-amd64
sudo mv cfssl_linux-amd64 /usr/local/bin/cfssl
sudo mv cfssljson_linux-amd64 /usr/local/bin/cfssljson

# install kubectl
wget https://storage.googleapis.com/kubernetes-release/release/${KUBERNETES_VERSION}/bin/linux/amd64/kubectl
chmod +x kubectl
sudo mv kubectl /usr/local/bin/