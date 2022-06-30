#! /bin/bash
# Como levantar mi cluster 
# Port-forward para ingress 80 
sudo -E kubectl port-forward services/traefik 80:80 --address 0.0.0.0 
# Port-forward para ingress 443 
sudo -E kubectl port-forward services/traefik 443:443--address 0.0.0.0 
# Dashboard traefik 
kubectl port-forward services/traefik 9000:9000 --address 0.0.0.0 
# Dashboard kubernetes 
microk8s kubectl port-forward -n kube-system service/kubernetes-dashboard 10443:443 --address 0.0.0.0
# Dashboard Grafana
kubectl port-forward deployment/prometheus-grafana 3000 --address 0.0.0.0