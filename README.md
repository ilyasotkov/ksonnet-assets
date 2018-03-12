# Ksonnet Assets

⚠️ The purpose of this repo is to experiment with *ksonnet* and *Jsonnet*

## Jsonnet Language

<https://github.com/databricks/jsonnet-style-guide>

## Docker image for using ksonnet

Build `exekube-ksonnet` image:

```sh
docker build -t exekube-ksonnet:latest .
```

## Ksonnet Libraries

```sh
ks registry add private-registry github.com/ilyasotkov/ksonnet-assets/tree/master/private-registry
```

### rails-app

This library is a port of [this Helm chart](https://github.com/exekube/charts/tree/master/charts/rails-app).

### nginx-app

This library is a port of [this Helm chart](https://github.com/exekube/charts/tree/master/charts/nginx-react).

```sh
ks init my-app --api-spec=version:v1.8.7 && cd my-app
```

```sh
ks pkg install private-registry/nginx-app
```

```sh
ks prototype use \
    pw.swarm.pkg.nginx-app \
    my-app-front \
    --namespace='default' \
    --name='my-app' \
    --image='eu.gcr.io/continuous-integration-194808/forms-app:latest' \
    --domain='my-app.example.com'
```
