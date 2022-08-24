#!/usr/bin/env bash

set -e

# Assumes that an image is built via `run_docker.sh`

IMAGE_NAME=mlapi
DOCKER_PATH=ajejoseph22/$IMAGE_NAME

# Authenticate & tag
echo "Docker ID and Image: $DOCKER_PATH"
docker login
docker tag $IMAGE_NAME $DOCKER_PATH

# Step 3:
# Push image to a docker repository
docker push $DOCKER_PATH
