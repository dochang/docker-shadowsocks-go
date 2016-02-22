Docker shadowsocks-go
=====================

[![Docker Stars](https://img.shields.io/docker/stars/dochang/shadowsocks-go.svg)](https://hub.docker.com/r/dochang/shadowsocks-go/)
[![Docker Pulls](https://img.shields.io/docker/pulls/dochang/shadowsocks-go.svg)](https://hub.docker.com/r/dochang/shadowsocks-go/)
[![](https://badge.imagelayers.io/dochang/shadowsocks-go:latest.svg)](https://imagelayers.io/?images=dochang/shadowsocks-go:latest 'Get your own badge on imagelayers.io')

build
-----

    docker build .

run
---

    docker run -d -v /confdir:/etc/shadowsocks dochang/shadowsocks-go:latest shadowsocks-local|shadowsocks-server [...]

