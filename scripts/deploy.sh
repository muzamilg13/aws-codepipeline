#!/bin/bash
set -e

cd /home/ubuntu/aws-codepipeline

aws ecr get-login-password --region us-east-1 \
| docker login \
--username AWS \
--password-stdin 851725206988.dkr.ecr.us-east-1.amazonaws.com

docker compose -f compose.prod.yaml pull

docker compose -f compose.prod.yaml up -d
