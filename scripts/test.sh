#!/bin/bash

# Verify Kubernetes resources
kubectl get pods
kubectl get deployments
kubectl get services

# Access the application
APP_URL=$(kubectl get svc hello-world-app -o jsonpath='{.status.loadBalancer.ingress[0].hostname}')
curl http://$APP_URL:8080
