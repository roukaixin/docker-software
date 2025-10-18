#!/bin/bash

sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories
apk update
apk add --no-cache libgcc libelf

sing-box -D "${1}/sing-box" -c "${1}/sing-box/config.json" run &