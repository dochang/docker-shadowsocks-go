#!/bin/sh

set -ex

export SHADOWSOCKS_GO_VERSION=1.1.5

export GOPATH=/go
export PATH=$GOPATH/bin:/usr/local/go/bin:$PATH

apk add --no-cache --virtual shadowsocks-go-dependencies git

mkdir -p "${GOPATH}/src" "${GOPATH}/bin"

pkgroot=github.com/shadowsocks/shadowsocks-go
git clone --branch "${SHADOWSOCKS_GO_VERSION}" https://${pkgroot}.git "${GOPATH}/src/${pkgroot}"
export CGO_ENABLED=0
go get ${pkgroot}/cmd/shadowsocks-server
go get ${pkgroot}/cmd/shadowsocks-local

cd "${GOPATH}/bin"
install -c shadowsocks-server shadowsocks-local /usr/local/bin
cd /

rm -rf "${GOPATH}"

apk del --purge shadowsocks-go-dependencies
