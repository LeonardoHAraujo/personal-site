#!/bin/bash

TAG=$1

docker buildx build --platform linux/amd64 -t personal-site:$TAG .
docker tag personal-site:$TAG ledharaujo/personal-site:$TAG
docker push ledharaujo/personal-site:$TAG
