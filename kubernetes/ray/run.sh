#!/bin/bash

# create Raycluster CRD and operator
kubectl create -k "github.com/ray-project/kuberay/ray-operator/config/default?ref=v0.3.0&timeout=90s"

# create a mini ray cluster
kubectl apply -f ray-cluster-mini.yaml