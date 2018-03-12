local k = import 'k.libsonnet';
local deployment = k.extensions.v1beta1.deployment;
local container = deployment.mixin.spec.template.spec.containersType;

{
  parts::{
    deployment(namespace, name, image, labels={app: name})::{
      // TODO
    },

    service(namespace, name, selector={app: name})::{
      // TODO
    },

    ingress(namespace, name, domain)::{
      // TODO
    },

    configMap(namespace, name)::{
      // TODO
    },
  }
}
