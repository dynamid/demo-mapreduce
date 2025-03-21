#!/bin/sh

# Create multi-arch builder
docker buildx create --name multiarch --driver docker-container --platform \
linux/arm/v8,linux/amd64,linux/arm64 --driver-opt network=host --config buildkitd.toml --use >/dev/null 2>&1

# Build and push mutli-arch images
docker buildx build --no-cache --platform linux/arm64,linux/amd64,linux/armhf --push -t \
dhub.ox/mapreduce-docker -f ../2-docker/Dockerfile ../2-docker/

docker buildx build --no-cache --platform linux/arm64,linux/amd64,linux/armhf --push -t \
dhub.ox/mapreduce-k3s -f ../3-k3s/Dockerfile ../3-k3s/
