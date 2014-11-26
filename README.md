Docker shadowsocks-go
=====================

build
-----

    ./build.sh

run
---

    docker run -d -v /confdir:/etc/shadowsocks dochang/shadowsocks-go:latest ss-local|ss-server [...]

