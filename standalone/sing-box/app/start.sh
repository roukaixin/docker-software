#!/bin/bash

sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories
apk add --no-cache iptables ca-certificates libgcc libelf

ip rule add fwmark 1 table 100
ip route add local 0.0.0.0/0 dev lo table 100

iptables -t mangle -N PROXY
iptables -t mangle -A PROXY -d 255.255.255.255/32 -j RETURN
iptables -t mangle -A PROXY -d 192.168.5.0/24 -j RETURN
iptables -t mangle -A PROXY -p tcp -j TPROXY --on-port 12345 --on-ip 127.0.0.1 --tproxy-mark 1
iptables -t mangle -A PROXY -p upd -j TPROXY --on-port 12345 --on-ip 127.0.0.1 --tproxy-mark 1
iptables -t mangle -A PREROUTING -j PROXY

iptables -t mangle -N PROXY_SELF
iptables -t mangle -A PROXY_SELF -d 255.255.255.255/32 -j RETURN
iptables -t mangle -A PROXY_SELF -d 192.168.5.0/24 -j RETURN
iptables -t mangle -A PREROUTING -j MARK --set-mark 1
iptables -t mangle -A OUTPUT -j PROXY_SELF


/app/server/run.sh /app/server &
/app/redirect_pkg_handler &

# 等待子进程结束
wait