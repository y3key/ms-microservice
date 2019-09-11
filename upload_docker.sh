#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=y3key/ml-microservice

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login --username=y3key
docker tag $dockerpath y3key/ml-microservice:v1

# Step 3:
# Push image to a docker repository
docker push y3key/ml-microservice:v1