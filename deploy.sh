#!/bin/bash

echo "Initializing Terraform..."
terraform init

echo "Applying Terraform Configuration..."
terraform apply -auto-approve

echo "Building Docker Image..."
docker build -t ibrahim/devops-asg:latest ./app

echo "Pushing Docker Image to Docker Hub..."
dcoker push ibrahim/devops-asg:latest

echo "Deployment Complete!"
