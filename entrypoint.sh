#!/bin/sh

set -e

[ $# -gt 0 ] || {
	set +e
	cat <<EOF >&2

Usage: shadowsocks-[local|server]
---------------------------------

EOF
	shadowsocks-local --help
	echo >&2
	shadowsocks-server --help
	echo >&2
	exit 0
}

cmd=$1
shift

conf_dir=/etc/shadowsocks
conf=${conf_dir}/config.json

case $(basename "${cmd}") in
shadowsocks-local|shadowsocks-server)
	[ ! -e "${conf}" ] || exec "${cmd}" -c "${conf}" "$@"
	;;
esac
exec "${cmd}" "$@"
