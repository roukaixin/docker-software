#!/bin/bash

apk add --no-cache iptables ca-certificates

ip rule add fwmark 1 table 100
ip route add local 0.0.0.0/0 dev lo table 100

iptables -t mangle -N PROXY
iptables -t mangle -A PROXY -p tcp -j TPROXY --on-port 12345 --on-ip 127.0.0.1 --tproxy-mark 1
iptables -t mangle -A PROXY -p upd -j TPROXY --on-port 12345 --on-ip 127.0.0.1 --tproxy-mark 1
iptables -t mangle -A PREROUTING -j PROXY


/app/server/run.sh /app/server &
/app/redirect_pkg_handler &

# 等待子进程结束
wait