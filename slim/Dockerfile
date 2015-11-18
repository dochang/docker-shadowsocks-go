FROM busybox:latest
MAINTAINER dochang@gmail.com

COPY shadowsocks-server /go/bin/shadowsocks-server
COPY shadowsocks-local /go/bin/shadowsocks-local

ENV PATH /go/bin:$PATH

VOLUME ["/etc/shadowsocks"]
COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
