Docker shadowsocks-go
=====================

build
-----

    docker build .

run
---

    docker run -d -v /confdir:/etc/shadowsocks dochang/shadowsocks-go:latest shadowsocks-local|shadowsocks-server [...]

