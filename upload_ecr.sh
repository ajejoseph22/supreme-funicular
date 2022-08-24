#!/usr/bin/env bash

set -e

aws ecr-public get-login-password --region us-east-1 | docker login --username AWS --password-stdin public.ecr.aws/y8f1t1l2
docker tag ajejoseph22/mlapi:latest public.ecr.aws/y8f1t1l2/mlapi:latest
docker push public.ecr.aws/y8f1t1l2/mlapi:latest
