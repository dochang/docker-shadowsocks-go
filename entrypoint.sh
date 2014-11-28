#!/bin/sh

set -e

[ $# -gt 0 ] || {
	set +e
	cat <<EOF >&2

Usage: ss-[local|server]
-------------------------

EOF
	ss-local --help
	echo >&2
	ss-server --help
	echo >&2
	exit 0
}

cmd=$1
shift

conf_dir=/etc/shadowsocks
conf=${conf_dir}/config.json

case $(basename "${cmd}") in
ss-local|ss-server)
	[ ! -e "${conf}" ] || exec "${cmd}" -c "${conf}" "$@"
	;;
esac
exec "${cmd}" "$@"
