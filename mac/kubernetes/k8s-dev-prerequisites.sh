#!/bin/bash

# kubectl
wget https://storage.googleapis.com/kubernetes-release/release/v1.4.4/bin/darwin/amd64/kubectl
chmod +x kubectl
mv kubectl /usr/local/bin/kubectl

# xhyve
brew update
brew install docker-machine-driver-xhyve

# minikube
curl -Lo minikube https://storage.googleapis.com/minikube/releases/v0.15.0/minikube-darwin-amd64 && chmod +x minikube && sudo mv minikube /usr/local/bin/

