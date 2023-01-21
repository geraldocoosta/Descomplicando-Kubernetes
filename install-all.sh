#! bin/bash

apt install docker.io &&
    curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl &&
    chmod +x ./kubectl &&
    mv ./kubectl /usr/local/bin/kubectl &&
    curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.14.0/kind-linux-amd64 &&
    chmod +x ./kind &&
    mv ./kind /usr/local/bin/kind &&
    kind create cluster &&
    kubectl cluster-info --context kind-kind &&
    kubectl get nodes
