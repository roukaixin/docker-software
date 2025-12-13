#!/bin/sh

sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories
apk update
apk add --no-cache libgcc libelf

ip rule add fwmark 0x1/0x1 lookup 100
ip route add local default dev lo table 100

ip -6 rule add fwmark 0x1 lookup 106
ip -6 route add local ::/0 dev lo table 106

/app/server/run.sh /app/server &
/app/redirect_pkg_handler &

wait