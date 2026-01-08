#!/bin/bash

IMAGE_NAME=devops-build
TAG=latest

docker build -t $IMAGE_NAME:$TAG .
docker tag $IMAGE_NAME:$TAG $IMAGE_NAME:$TAG
