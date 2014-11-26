FROM busybox:latest
MAINTAINER dochang@gmail.com

COPY ss-local ss-server /usr/local/bin/

VOLUME ["/etc/shadowsocks"]
COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
