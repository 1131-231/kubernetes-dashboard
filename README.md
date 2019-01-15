### Installation
* Execute **install.sh**
* Get secret
```
kubectl -n kube-system describe secret $(kubectl -n kube-system get secret | grep eks-admin | awk '{print $1}')
```
* Start proxy
```
kubectl proxy
```
* Open in bowser
```
http://localhost:8001/api/v1/namespaces/kube-system
```
