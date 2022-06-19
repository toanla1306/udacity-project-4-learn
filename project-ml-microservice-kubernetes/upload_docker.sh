#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath="504395544721.dkr.ecr.us-east-1.amazonaws.com/project-4-udacity-learning"
# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 504395544721.dkr.ecr.us-east-1.amazonaws.com
docker tag project-4-udacity-learning:latest 504395544721.dkr.ecr.us-east-1.amazonaws.com/project-4-udacity-learning:latest
# Step 3:
# Push image to a docker repository
docker push 504395544721.dkr.ecr.us-east-1.amazonaws.com/project-4-udacity-learning:latest