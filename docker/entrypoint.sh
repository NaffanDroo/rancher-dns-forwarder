#!/bin/bash -e

cmd="$@"

if [ ${#cmd} -ge 1 ]; then
	exec "$@"
else
	/usr/sbin/named -g -c /etc/bind/named.conf
fi