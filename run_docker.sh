#!/usr/bin/env bash

set -e

IMAGE_NAME=mlapi
docker build -t "$IMAGE_NAME" .
docker image ls | grep "$IMAGE_NAME"
docker run -p 8080:80 "$IMAGE_NAME"
