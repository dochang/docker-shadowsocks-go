#!/bin/sh

tag=1.1.3
image=dochang/shadowsocks-go
url_fmt=http://dl.chenyufei.info/shadowsocks/shadowsocks-%s-linux64-${tag}.gz

download_bin() {
	bin=ss-$1
	url=$(printf ${url_fmt} $1)
	curl -sL ${url} | gzip -d > ${bin}
	chmod +x ${bin}
}

for x in local server; do
	download_bin $x
done
docker build --tag=${image}:${tag} .
