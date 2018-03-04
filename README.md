Docker shadowsocks-go
=====================

[![Docker Stars](https://img.shields.io/docker/stars/dochang/shadowsocks-go.svg)](https://hub.docker.com/r/dochang/shadowsocks-go/)
[![Docker Pulls](https://img.shields.io/docker/pulls/dochang/shadowsocks-go.svg)](https://hub.docker.com/r/dochang/shadowsocks-go/)
[![Docker Automated build](https://img.shields.io/docker/automated/dochang/shadowsocks-go.svg)](https://hub.docker.com/r/dochang/shadowsocks-go/)
[![Docker Build Status](https://img.shields.io/docker/build/dochang/shadowsocks-go.svg)](https://hub.docker.com/r/dochang/shadowsocks-go/)
[![](https://images.microbadger.com/badges/image/dochang/shadowsocks-go.svg)](https://microbadger.com/images/dochang/shadowsocks-go "Get your own image badge on microbadger.com")
[![](https://images.microbadger.com/badges/version/dochang/shadowsocks-go.svg)](https://microbadger.com/images/dochang/shadowsocks-go "Get your own version badge on microbadger.com")

build
-----

    docker build .

run
---

    docker run -d -v /confdir:/etc/shadowsocks dochang/shadowsocks-go:latest shadowsocks-local|shadowsocks-server [...]

