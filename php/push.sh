#!/bin/bash
#aws ecr get-login-password --region ap-east-1 | docker login --username AWS --password-stdin 742297649564.dkr.ecr.ap-east-1.amazonaws.com
docker build -t 742297649564.dkr.ecr.ap-east-1.amazonaws.com/docker-lamp:latest .
docker push 742297649564.dkr.ecr.ap-east-1.amazonaws.com/docker-lamp:latest
aws ecs update-service --cluster lamp-cluster --service lamp3 --force-new-deployment --no-cli-pager