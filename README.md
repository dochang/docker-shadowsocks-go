Docker shadowsocks-go
=====================

[![Docker Stars](https://img.shields.io/docker/stars/dochang/shadowsocks-go.svg)](https://hub.docker.com/r/dochang/shadowsocks-go/)
[![Docker Pulls](https://img.shields.io/docker/pulls/dochang/shadowsocks-go.svg)](https://hub.docker.com/r/dochang/shadowsocks-go/)
[![](https://images.microbadger.com/badges/image/dochang/shadowsocks-go:latest.svg)](http://microbadger.com/images/dochang/shadowsocks-go:latest "Get your own image badge on microbadger.com")
[![](https://images.microbadger.com/badges/version/dochang/shadowsocks-go:latest.svg)](http://microbadger.com/images/dochang/shadowsocks-go:latest "Get your own version badge on microbadger.com")

build
-----

    docker build .

run
---

    docker run -d -v /confdir:/etc/shadowsocks dochang/shadowsocks-go:latest shadowsocks-local|shadowsocks-server [...]

