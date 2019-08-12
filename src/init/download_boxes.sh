#!/usr/bin/env bash

UBUNTU_BOX_IMAGE="ubuntu/bionic64"
UBUNTU_BOX_VERSION = "20190801.1.0"

CENTOS_BOX_IMAGE="centos/7"
CENTOS_BOX_VERSION = "1905.1"

KUBERNETES_BOX_IMAGE="hlesey/k8s-base"
KUBERNETES_BOX_VERSION = "1.15.1"

# add ubuntu
vagrant box add $UBUNTU_BOX_IMAGE --box-version $UBUNTU_BOX_VERSION --provider virtualbox

# add centos
vagrant box add $CENTOS_BOX_IMAGE --box-version $CENTOS_BOX_VERSION --provider virtualbox

# kubernetes
vagrant box add $KUBERNETES_BOX_IMAGE --box-version $KUBERNETES_BOX_VERSION --provider virtualbox
