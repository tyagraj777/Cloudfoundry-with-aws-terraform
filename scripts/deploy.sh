#!/bin/bash

# Build and push Docker image
docker build -t your-dockerhub-username/hello-world-app:latest ./app
docker push your-dockerhub-username/hello-world-app:latest

# Deploy using Cloud Foundry CLI
cf push
