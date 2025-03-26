# simple-mapreduce

Credit :
This is a forked/debugged version of https://github.com/DigWing/simple-mapreduce

More information can be found [here](https://medium.com/digitalwing/development-of-a-distributed-computing-system-based-on-mapreduce-and-kubernetes-837fc7f112f9)


## Requirements

### Kubernetes

We will install **k3s**, a light version of **kubernetes**:
[Original French Version](https://www.invivoo.com/k3s-kubernetes-enfin-ultra-simpl-leger-devoxx/)
[English version](https://www-invivoo-com.translate.goog/k3s-kubernetes-enfin-ultra-simpl-leger-devoxx/?_x_tr_sl=auto&_x_tr_tl=en&_x_tr_hl=en-US&_x_tr_pto=wapp)

**Of particular importance:**
In order to fully benefit from kubernetes you want to setup several agent nodes. Is is not mandatory though.
To do so, read the useful section at the above link(s)

In case of: 
* ... **couldn't get resource list for metrics.k8s.io/v1beta1: the server is currently unable to handle the request**
Do:
**$** kubectl delete apiservice v1beta1.metrics.k8s.io

* Problem with zfs; force the use of fuse-overlayfs:
Add "--snapshotter=fuse-overlayfs" to k3s command as in:
**$** k3s server --snapshotter=fuse-overlayfs11

## Install and Setup

Once you have deployed the cluster and connected to it (for access via `kubectl`)
run the **create.sh** script:

It will download the docker image if need be.

After waiting a little while for the system to deploy, you can start experimenting:

```
kubectl proxy --port=8080 &
curl http://127.0.0.1:8080/api/v1/namespaces/default/pods/mapreduce-master/proxy/compute\?text\=Hello+world+test+test+test+test+test+test+helo+araara+tttt+dddd+araara+test+hello+hi+ih+ih+ih+hi
```

You can also use the *mapreduce.sh* script as: **./mapreduce.sh \<input-file\>**

For the sake of this demo, use:
**$** ./mapreduce.sh ../input-text/a-tale-of-two-cities.txt

NB: As previously mentionned (if you read everything), the original novel is too long to be processed by the
program as it is. Therefore we have shortened it.

A future version of the program will overcome this limitation by passing to curl a file instead of a series of words.


It produces as a result: ../results/mapreduce_k3s_results.txt
