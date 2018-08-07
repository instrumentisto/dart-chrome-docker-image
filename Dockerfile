# https://hub.docker.com/r/google/dart
# https://github.com/dart-lang/dart_docker
FROM google/dart:1.24.3

MAINTAINER Instrumentisto Team <developer@instrumentisto.com>


# Install Google Chrome
RUN DEBIAN_FRONTEND=noninteractive \
 && echo 'deb http://dl.google.com/linux/chrome/deb stable main' \
                                 >> /etc/apt/sources.list.d/google-chrome.list \
 && curl -fL https://dl-ssl.google.com/linux/linux_signing_key.pub \
                                                               | apt-key add - \
 && apt-get update \
    \
 && apt-get install --no-install-recommends -y -q \
            google-chrome-stable \
    \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*
