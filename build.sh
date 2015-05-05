#!/bin/bash
VERSION=${VERSION:-master}
SRC_DIR=/go/src/github.com/docker/docker

echo "Building $VERSION"
git fetch
git checkout $VERSION

AUTO_GOPATH=1 ./hack/make.sh dynbinary

cp -R $SRC_DIR/bundles/* /build/

