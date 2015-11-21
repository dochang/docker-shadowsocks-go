#!/bin/sh

cd $(dirname $0)

container_id=$(docker run --detach dochang/shadowsocks-go:latest true)

docker cp ${container_id}:/go/bin/shadowsocks-server shadowsocks-server
docker cp ${container_id}:/go/bin/shadowsocks-local shadowsocks-local

docker rm --force ${container_id}

cp ../entrypoint.sh entrypoint.sh

docker build --tag=dochang/shadowsocks-go:slim --no-cache .
