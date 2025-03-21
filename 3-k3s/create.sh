#!/bin/sh

docker pull dhub.ox/mapreduce-k3s

sudo kubectl create -f mapreduce-master.yaml
sudo kubectl create -f mapreduce-map.yaml
sudo kubectl create -f mapreduce-reduce.yaml
