# simple-mapreduce

Credit :
This is a forked/debugged version of https://github.com/DigWing/simple-mapreduce

## Requirements

# Kubernetes

We will install **k3s**, a light version of **kubernetes**
* Installation of k3s
[Original French Version](https://www.invivoo.com/k3s-kubernetes-enfin-ultra-simpl-leger-devoxx/)
[English version](https://www-invivoo-com.translate.goog/k3s-kubernetes-enfin-ultra-simpl-leger-devoxx/?_x_tr_sl=auto&_x_tr_tl=en&_x_tr_hl=en-US&_x_tr_pto=wapp)

In case of: 
* ... couldn't get resource list for metrics.k8s.io/v1beta1: the server is currently unable to handle the request
Do: $ kubectl delete apiservice v1beta1.metrics.k8s.io

* Problem with zfs. Force the use of fuse-overlayfs:

Add "--snapshotter=fuse-overlayfs" to k3s command as in: $ k3s server --snapshotter=fuse-overlayfs11

## Install and Setup

Once you have deployed the cluster and connected to it (for access via `kubectl`), you need to run 
the **create.sh** script:
```
#!/bin/sh
kubectl create -f mapreduce-reduce.yaml
kubectl create -f mapreduce-map.yaml
kubectl create -f mapreduce-master.yaml
```

After waiting a little while for the system to deploy, you can start experimenting:

```
kubectl proxy --port=8080 &
curl http://127.0.0.1:8080/api/v1/namespaces/default/pods/mapreduce-master/proxy/compute\?text\=Hello+world+test+test+test+test+test+test+helo+araara+tttt+dddd+araara+test+hello+hi+ih+ih+ih+hi
```

You can also use the *query.sh* script as: ./query.sh <input-file>
NB: the input-file is limited in size. The "input-text/a-tale-of-two-cities_short.txt" file
is a big enough test file, yet not too big that the program couldn't process it.

A future version of the program will overcome this limitation by passing to curl a file instead of a series of words.
