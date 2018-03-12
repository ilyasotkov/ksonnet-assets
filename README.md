# Ksonnet Private Registry

⚠️ The purpose of this repo is to learn ksonnet and Jsonnet language

## Jsonnet Language

<https://github.com/databricks/jsonnet-style-guide>

## Docker image for using ksonnet

Build `exekube-ksonnet` image:

```sh
docker build -t exekube-ksonnet:latest .
```

## Ksonnet Libraries

### rails-app

This library is a port of [this Helm chart](https://github.com/exekube/charts/tree/master/charts/rails-app).

### nginx-react

This library is a port of [this Helm chart](https://github.com/exekube/charts/tree/master/charts/nginx-react).
