#!/bin/bash -e

cmd="$@"

if [ ${#cmd} -ge 1 ]; then
	exec "$@"
else
	ls /etc/bind/named.conf
	ls /usr/sbin/named
	/usr/sbin/named -g -c /etc/bind/named.conf
fi