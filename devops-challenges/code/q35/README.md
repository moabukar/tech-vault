# Advanced Helm Project Runbook

This runbook outlines the steps for deploying advanced Helm charts using Helmfile.

## Prerequisites

- Helm v3.x installed
- Helmfile installed
- Access to a Kubernetes cluster

## Steps

### Preparing Helm and Helmfile

1. **Navigate to the project directory**
    ```bash
    cd advanced-helm-project
    ```

2. **Update Helm repository**
    ```bash
    helm repo update
    ```

### Deploying Charts with Helmfile

1. **Navigate to the Helmfile directory**
    ```bash
    cd helmfile
    ```

2. **Sync all defined releases**
    ```bash
    helmfile sync
    ```

3. **Alternatively, apply only a single release**
    ```bash
    helmfile -f releases/frontend.yaml sync
    ```

4. For environments
```bash
helmfile -e dev apply
helmfile -e staging apply
helmfile -e prod apply
```

5. Adding Grafana & Prometheus
```bash

helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo add grafana https://grafana.github.io/helm-charts

```

## Rollback

If something goes wrong, you can rollback using Helmfile:
  
```bash
helmfile rollback
```

## Verify your Deployment

```bash
kubectl get pods
```
