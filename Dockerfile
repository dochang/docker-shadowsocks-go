FROM dochang/confd:latest
MAINTAINER dochang@gmail.com

COPY scripts /scripts

RUN set -ex && \
    /scripts/golang/install.sh && \
    /scripts/shadowsocks-go/install.sh && \
    /scripts/golang/clean.sh && \
    /scripts/apk/clean.sh

VOLUME ["/etc/shadowsocks"]
COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
