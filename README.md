Dart with Google Chrome Docker image
====================================

[![GitHub release](https://img.shields.io/github/release/instrumentisto/dart-chrome-docker-image.svg)](https://hub.docker.com/r/instrumentisto/dart-chrome/tags) [![Build Status](https://travis-ci.org/instrumentisto/dart-chrome-docker-image.svg?branch=master)](https://travis-ci.org/instrumentisto/dart-chrome-docker-image) [![Docker Pulls](https://img.shields.io/docker/pulls/instrumentisto/dart-chrome.svg)](https://hub.docker.com/r/instrumentisto/dart-chrome) [![License](https://img.shields.io/badge/license-MIT-blue.svg)](https://github.com/instrumentisto/dart-chrome-docker-image/blob/master/LICENSE.md)

This image is a wrapper of [official Google Dart image][1] that contains Google Chrome for running browser tests.

> [www.dartlang.org](https://www.dartlang.org)  
> [hub.docker.com/r/google/dart](https://hub.docker.com/r/google/dart)




## Status

__PROJECT IS CLOSED AND ARCHIVED. NO MAINTAINING WILL BE CONTINUED.__




## How to use this image

Just map your working directory to `/app` inside container:
```bash
docker run --rm -v $(pwd):/app -w /app instrumentisto/dart-test pub run test
```

Make sure that you're using [`chrome` platform][3] in your [testing configuration][4] (`dart_test.yml`):
```yaml
platforms:
  - chrome
override_platforms:
  chrome:
    settings:
      headless: true
      arguments: --no-sandbox  # required if running as root
```

Make sure that you're populating your [pub cache][2] correctly.
```bash
docker run --rm -v $(pwd):/app -w /app \
           -e PUB_CACHE=/path/to/.pub-cache \
           -v /path/to/.pub-cache:/path/to/.pub-cache \
       instrumentisto/dart-test pub run test
```




## Issues

If you have any problems with or questions about this image, please contact us through a [GitHub issue][101].




[1]: https://hub.docker.com/r/google/dart
[2]: https://www.dartlang.org/tools/pub/installing#optional-environment-variables
[3]: https://pub.dartlang.org/packages/test#platform-selectors
[4]: https://pub.dartlang.org/packages/test#whole-package-configuration

[101]: https://github.com/instrumentisto/dart-test-docker-image/issues
