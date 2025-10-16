#!/bin/bash

# 添加路由规则
ip rule add fwmark 1 table 100
ip route add local 0.0.0.0/0 dev lo table 100


/app/server/run.sh /app/server &
/app/redirect_pkg_handler &

# 等待子进程结束
wait