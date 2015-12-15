FROM golang:alpine
MAINTAINER dochang@gmail.com

RUN set -ex && \
    build_deps='git' && \
    apk add --update-cache --virtual build-dependencies ${build_deps} && \
    pkgroot=github.com/shadowsocks/shadowsocks-go && \
    git clone --branch 1.1.4 https://${pkgroot}.git src/${pkgroot} && \
    CGO_ENABLED=0 go get -a -installsuffix nocgo ${pkgroot}/cmd/shadowsocks-server && \
    CGO_ENABLED=0 go get -a -installsuffix nocgo ${pkgroot}/cmd/shadowsocks-local && \
    rm -rf src/* pkg /usr/local/go/pkg/linux_amd64_nocgo && \
    apk del --purge build-dependencies && \
    rm -rf /var/cache/apk/*

VOLUME ["/etc/shadowsocks"]
COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
