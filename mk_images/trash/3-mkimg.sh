#!/bin/sh

# option: we would use "--no-cache"
option=$2
repo=dhub.ox/simple-mapreduce

docker build $option -t $repo .
docker push $repo
