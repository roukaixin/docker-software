# 启动 upnp

- 安装 `miniupnpc`
  - `sudo pacman -S miniupnpc`

- 开启防火墙
  - 开启 `upnp-client` 服务或者允许源端口 `1900` 访问

- 添加转发到路由器
  - `upnpc -a ip port eport UPD` ,其中 `eport` 为导出的端口