# Structure of organization of a kubernetes deployment

This is a simple example of how to organize a kubernetes deployment.

## File structure

```plaintext
.
├── .k8s/
│   └── microk8s/
│       ├── 00-namespace.yaml
│       ├── 10-externalsecret-component1.yaml
│       ├── 11-externalsecret-component2.yaml
│       ├── ...
│       ├── 20-deployment-component1.yaml
│       ├── 21-deployment-component2.yaml
│       ├── ...
│       ├── 30-service-component1.yaml
│       ├── 31-service-component2.yaml
│       ├── ...
│       ├── 40-ingress-component1.yaml
│       ├── 41-ingress-component2.yaml
│       ├── ...
│       ├── 50-backend-component1.yaml
│       ├── 51-frontend-component2.yaml
│       ├── ...
│       ├── 60-files-component1.yaml
│       ├── 61-files-component2.yaml
│       ├── ...
│       ├── 70-env-component1.yaml
│       ├── 71-env-component2.yaml
│       ├── ...
│       ├── 80-config-component1.yaml
│       ├── 81-config-component2.yaml
│       ├── ...
│       ├── 90-pvc-component1.yaml
│       ├── 91-pvc-component2.yaml
│       └── ...
...
```

## Apply the deployment with Microk8s

```bash
microk8s.kubectl apply -f .k8s/microk8s/
```
