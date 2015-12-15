Docker shadowsocks-go
=====================

[![Docker Stars](https://img.shields.io/docker/stars/dochang/shadowsocks-go.svg)](https://hub.docker.com/r/dochang/shadowsocks-go/)
[![Docker Pulls](https://img.shields.io/docker/pulls/dochang/shadowsocks-go.svg)](https://hub.docker.com/r/dochang/shadowsocks-go/)

build
-----

    docker build .

run
---

    docker run -d -v /confdir:/etc/shadowsocks dochang/shadowsocks-go:latest shadowsocks-local|shadowsocks-server [...]

