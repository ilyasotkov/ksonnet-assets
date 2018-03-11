FROM ilyasotkov/exekube:latest

ENV KSONNET_VERSION 0.9.1

RUN curl -L -o ksonnet.tar.gz \
        https://github.com/ksonnet/ksonnet/releases/download/v${KSONNET_VERSION}/ks_${KSONNET_VERSION}_linux_amd64.tar.gz \
        && tar -xvzf ksonnet.tar.gz \
        && rm -rf ksonnet.tar.gz \
        && chmod 0700 ks_${KSONNET_VERSION}_linux_amd64/ks \
        && mv ks_${KSONNET_VERSION}_linux_amd64/ks /usr/bin \
        && rm -rf ks_${KSONNET_VERSION}_linux_amd64
