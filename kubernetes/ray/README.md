Ray Kubernetes Installation
====

Uses instructions from the [KubeRay project](https://docs.ray.io/en/latest/cluster/kubernetes/getting-started.html#kuberay-operator-deploy):

```
# This creates the KubeRay operator and all of the resources it needs.
! kubectl create -k "github.com/ray-project/kuberay/ray-operator/config/default?ref=v0.3.0&timeout=90s"
```

The command registers the Ray CRD and creates a Ray operator to manage Ray clusters in the Kubernetes cluster.

Then apply the configuration to create an actual Ray cluster, e.g.:

```
kubectl apply -f ray-cluster-mini.yaml
```