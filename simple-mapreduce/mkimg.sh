#!/bin/sh

docker build --no-cache -t dhub.ox/simple-mapreduce .
docker push dhub.ox/simple-mapreduce
