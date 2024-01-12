# Standalone

# Kubernetes

add nginx ingress
```
helm repo add nginx-stable https://helm.nginx.com/stable                                                          
helm install ngninx nginx-stable/nginx-ingress --set controller.enableLatencyMetrics=true --set prometheus.create=true --set controller.config.name=nginx-config

kubectl apply -f dv-ingress.yaml

helm install \                                                                                                    
    --create-namespace --namespace develocity \
    ge \
    gradle/gradle-enterprise \
    --values ./fzhu-values.yaml \
    --set-file global.license.file=./fzhu-develocity.license
```
