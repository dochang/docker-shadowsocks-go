FROM busybox:latest
MAINTAINER dochang@gmail.com

RUN busybox sh -c 'mkdir -p /usr/local/bin ; for x in local server ; do \
    bin="/usr/local/bin/ss-${x}" ; wget -O - \
    "http://dl.chenyufei.info/shadowsocks/shadowsocks-${x}-linux64-1.1.3.gz" \
    | gzip -d > "${bin}" ; chmod +x "${bin}" ; \
  done'

VOLUME ["/etc/shadowsocks"]
COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
