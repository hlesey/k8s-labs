#!/usr/bin/env bash

kubectl -n kube-system scale deployment coredns --replicas=0
