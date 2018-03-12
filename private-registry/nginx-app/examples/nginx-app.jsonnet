local k = import 'k.libsonnet';
local nginxApp = '../nginx-app.libsonnet';

local namespace = "default";
local appName = "nginx-app";
local appImage = "nginx:1.13.9-alpine";
local appDomain = "app.example.com";

k.core.v1.list.new([
  nginxApp.parts.deployment(namespace, appName, appImage),
  nginxApp.parts.service(namespace, appName),
  nginxApp.parts.ingress(namespace, appName, appDomain),
  nginxApp.parts.configMap(namespace, appName),
])
