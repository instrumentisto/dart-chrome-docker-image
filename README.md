Dart with Google Chrome Docker image
====================================

This image is a wrapper of [official Google Dart image][1] that contains Chrome for running browser tests.

> [www.dartlang.org](https://www.dartlang.org)  
> [hub.docker.com/r/google/dart](https://hub.docker.com/r/google/dart)




## How to use this image

Just map your working directory to `/app` inside container:
```bash
docker run --rm -v $(pwd):/app instrumentisto/dart-test pub run test
```

Make sure that you populate your [pub cache][3] correctly.
```bash
docker run --rm -v $(pwd):/app \
           -e PUB_CACHE=/path/to/.pub-cache \
           -v /path/to/.pub-cache:/path/to/.pub-cache \
       instrumentisto/dart-test pub run test
```




## Issues

If you have any problems with or questions about this image, please contact us through a [GitHub issue][2].




[1]: https://hub.docker.com/r/google/dart
[2]: https://github.com/instrumentisto/dart-test-docker-image/issues 
[3]: https://www.dartlang.org/tools/pub/installing#optional-environment-variables
