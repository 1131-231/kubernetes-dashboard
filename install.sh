#!/bin/sh

kubectl apply -f ./kubernetes-dashboard.yaml
kubectl apply -f ./heapster.yaml
kubectl apply -f ./influxdb.yaml
kubectl apply -f ./heapster-rbac.yaml
kubectl apply -f ./eks-admin-service-account.yaml
kubectl apply -f ./eks-admin-cluster-role-binding.yaml
kubectl -n kube-system describe secret $(kubectl -n kube-system get secret | grep eks-admin | awk '{print $1}')
