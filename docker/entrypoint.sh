#!/bin/bash -e

ls /etc/bind/named.conf
ls /usr/sbin/named
/usr/sbin/named -g -c /etc/bind/named.conf
