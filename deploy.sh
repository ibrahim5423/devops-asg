#!/bin/bash

echo "Initializing Terraform..."
terraform init

echo "Applying Terraform Configuration..."
terraform apply -auto-approve

echo "Building Docker Image..."
docker build -t muhammadbilalhassan/e2e-iac:latest ./app

echo "Pushing Docker Image to Docker Hub..."
dcoker push muhammadbilalhassan/e2e-iac:latest

echo "Deployment Complete!"
