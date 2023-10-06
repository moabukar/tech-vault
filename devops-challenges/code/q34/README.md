# Runbook for Deploying Helm Charts

## Prerequisites

- Make sure you have Helm v3.x installed.
- Make sure you have access to a Kubernetes cluster.

## Steps

### Packaging Python Flask App

1. **Navigate to the Helm chart directory**

```bash
cd helm-project/charts/my-python-app
```

2. **Lint the chart to catch issues**

```bash
helm lint
```

3. **Package the chart**

```bash
helm package .
```

### Deploying Redis Cluster

1. **Add the Bitnami Helm repo**

```bash
helm repo add bitnami https://charts.bitnami.com/bitnami
```

2. **Install Redis with overridden values**

```bash
helm install my-redis bitnami/redis --set usePassword=false
```

### Deploy Custom Python App

1. **Navigate to your Helm project directory**

```bash
cd helm-project
```

2. **Deploy the chart**

```bash
helm install my-python-app ./charts/my-python-app
```

## Verification

- To check if your Python app is running, use:

```bash
kubectl get pods
```

- To check if Redis is running, use:

```bash
helm ls
```

## Rollback (Bonus)

To rollback a release, you can use:
```bash
helm rollback <RELEASE_NAME> <REVISION>
```

