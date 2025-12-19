# Deploy your first Pod

In Kubernetes, a **Pod** is the smallest deployable unit. It represents a single instance of a running process in your cluster.

## Task
Use `kubectl` to run a new pod named `nginx-pod` using the `nginx` image.

```bash
kubectl run nginx-pod --image=nginx
```

Verify the status of your pod:
```bash
kubectl get pods
```

<instruqt-task id="deploy_task"></instruqt-task>