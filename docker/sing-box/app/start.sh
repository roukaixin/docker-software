#!/bin/sh

ip rule add fwmark 0x1/0x1 lookup 100
ip route add local default dev lo table 100

ip -6 rule add fwmark 0x1 lookup 106
ip -6 route add local ::/0 dev lo table 106

/app/server/run.sh "${SERVER_RUN_WORK_DIR:-/app/server/sing-box}" &
/app/redirect_pkg_handler &

wait