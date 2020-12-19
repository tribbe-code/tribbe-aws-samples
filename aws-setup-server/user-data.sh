#!/bin/bash

# Install Docker
yum install -y docker
systemctl enable docker
systemctl start docker

# Get sample project
yum install -y git
git clone https://github.com/tribbe-code/tribbe-aws-samples

# Build and run container
cd tribbe-aws-samples/aws-setup-server/web-app
docker build -t web-app:1.0 .
docker run -p 8080:8080 -d --name app web-app:1.0
