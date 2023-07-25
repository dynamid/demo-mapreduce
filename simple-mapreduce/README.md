# simple-mapreduce

Credit :
This is a forked/debugged version of https://github.com/DigWing/simple-mapreduce

## Install and Setup

A `kubernetes` cluster is required to start the system. You can read how to deploy a cluster 
locally on the [official website](https://kubernetes.io/docs/tasks/tools/install-minikube/).

Once you have deployed the cluster and connected to it (for access via `kubectl`), you need to run 
3 commands:

```
kubectl create -f mapreduce-reduce.yaml
kubectl create -f mapreduce-map.yaml
kubectl create -f mapreduce-master.yaml
```

After waiting a little while for the system to deploy, you can start experimenting:

```
kubectl proxy --port=8080 &
curl http://127.0.0.1:8080/api/v1/namespaces/default/pods/mapreduce-master/proxy/compute\?text\=Hello+world+test+test+test+test+test+test+helo+araara+tttt+dddd+araara+test+hello+hi+ih+ih+ih+hi
```
