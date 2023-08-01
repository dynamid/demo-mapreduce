#!/bin/sh

repo=dhub.ox/simple-mapreduce

#docker build --no-cache -t dhub.ox/simple-mapreduce .
docker build -t $repo .
docker push $repo
