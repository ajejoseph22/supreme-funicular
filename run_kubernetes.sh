#!/usr/bin/env bash

set -e

DOCKER_PATH=ajejoseph22/mlapi

# Run the Docker Hub container with kubernetes
kubectl run mlapi --image=$DOCKER_PATH --port=80

# While pod is not running, wait
until kubectl get pods | grep mlapi | grep Running; do
  echo "Waiting for pod to be running"
  sleep 1
done

# List kubernetes pods
kubectl get pods

# Forward the container port 80 to port 8080 on a host
kubectl port-forward mlapi 8080:80
