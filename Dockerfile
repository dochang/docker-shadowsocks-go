FROM golang:latest
MAINTAINER dochang@gmail.com

RUN pkgroot=github.com/shadowsocks/shadowsocks-go && \
    git clone --branch 1.1.4 https://${pkgroot}.git src/${pkgroot} && \
    CGO_ENABLED=0 go get -a -installsuffix nocgo ${pkgroot}/cmd/shadowsocks-server && \
    CGO_ENABLED=0 go get -a -installsuffix nocgo ${pkgroot}/cmd/shadowsocks-local && \
    rm -rf src/* pkg /usr/src/go/pkg/linux_amd64_nocgo

VOLUME ["/etc/shadowsocks"]
COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
