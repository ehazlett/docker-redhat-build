# Docker RedHat Build
This builds Docker binaries for RedHat.

# Usage

Build

```
docker build -t docker-redhat-build .
```

Run
```
docker run --rm -v $(pwd)/build:/build docker-redhat-build
```

Run with a specific version
```
docker run --rm -e VERSION=v1.6.0 -v $(pwd)/build:/build docker-redhat-build
```

# Thanks
Huge thanks to https://github.com/mbentley for instructions :)
