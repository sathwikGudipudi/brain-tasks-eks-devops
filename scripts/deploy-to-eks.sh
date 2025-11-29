#!/bin/bash
set -e

echo "Starting deploy-to-eks script..."

# Optional: show current context and nodes
kubectl config current-context
kubectl get nodes

echo "Applying Kubernetes manifests..."
kubectl apply -f k8s/deployment.yaml
kubectl apply -f k8s/service.yaml

echo "Waiting for deployment rollout..."
kubectl rollout status deployment/brain-tasks-deployment

echo "Deployment to EKS completed."
