#!/bin/bash

# 添加路由规则
#ip rule add fwmark 0x1/0x1 lookup 100
#ip route add local default dev lo table 100
#
#ip -6 rule add fwmark 0x1 lookup 106
#ip -6 route add local ::/0 dev lo table 106

/app/server/run.sh /app/server &
/app/redirect_pkg_handler &

# 等待子进程结束
wait