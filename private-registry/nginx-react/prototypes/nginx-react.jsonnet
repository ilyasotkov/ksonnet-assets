// @apiVersion 0.1.0
// @name pw.swarm.pkg.nginx-react
// @description Deploys a simple, stateless nginx server. The nginx container is
//   deployed using a Kubernetes deployment, and is exposed to a network with a
//   service.
// @shortDescription A simple, stateless nginx server for hosting React apps.
// @optionalParam namespace string default Namespace in which to put the application
// @param name string Name to give to each of the components

local k = import 'k.libsonnet';
local nginxReact = import 'private-registry/nginx-react/nginx-react.libsonnet';

local namespace = import 'param://namespace';
local appName = import 'param://name';
local appDomain = import 'param://domain';

k.core.v1.list.new([
  nginxReact.parts.deployment(namespace, appName),
  nginxReact.parts.service(namespace, appName),
  nginxReact.parts.ingress(namespace, appName, appDomain),
  nginxReact.parts.configMap(namespace, appName),
])
