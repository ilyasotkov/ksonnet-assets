// @apiVersion 0.1.0
// @name pw.swarm.pkg.nginx-app
// @description Deploys an nginx server specifically for hosting React apps.
// @shortDescription A simple nginx server for hosting React apps.
// @optionalParam namespace string default Namespace in which to put the application
// @param name string Name to give to each of the components
// @param image string Application docker image
// @param domain string Domain name for the ingress resource.

local k = import 'k.libsonnet';
local nginxApp = import 'private-registry/nginx-app/nginx-app.libsonnet';

local namespace = import 'param://namespace';
local appName = import 'param://name';
local appImage = import 'param://image';
local appDomain = import 'param://domain';

k.core.v1.list.new([
  nginxApp.parts.deployment(namespace, appName, appImage),
  nginxApp.parts.service(namespace, appName),
  nginxApp.parts.ingress(namespace, appName, appDomain),
  nginxApp.parts.configMap(namespace, appName),
])
