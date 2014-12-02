Docker shadowsocks-go
=====================

build
-----

    docker build .

run
---

    docker run -d -v /confdir:/etc/shadowsocks dochang/shadowsocks-go:latest ss-local|ss-server [...]

