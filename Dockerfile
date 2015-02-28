FROM golang:latest
MAINTAINER dochang@gmail.com

RUN CGO_ENABLED=0 go get -a -installsuffix nocgo github.com/shadowsocks/shadowsocks-go/cmd/shadowsocks-server && \
    CGO_ENABLED=0 go get -a -installsuffix nocgo github.com/shadowsocks/shadowsocks-go/cmd/shadowsocks-local && \
    rm -rf src/* pkg /usr/src/go/pkg/linux_amd64_nocgo

VOLUME ["/etc/shadowsocks"]
COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
