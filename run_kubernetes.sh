#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath="abdulazizgh/udacity-capstone"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run ml-microservices --image=$dockerpath --generator=run-pod/v1

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl wait --for=condition=ready pod --all
kubectl port-forward udacity-capstone 8000:80