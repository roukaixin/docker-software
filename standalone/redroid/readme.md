# 描述

使用 docker 运行安卓的一个容器

# 使用

```shell
adb connect 127.0.0.1:5555
# adb 连接成功后在运行下面命令
scrcpy -s 127.0.0.1:5555 --audio-codec=raw

# 安装软件 其中 xxx.apk 是自己下载的 apk 软件
adb -s 127.0.0.1:5555 "xxx.apk"
```


libhoudini libndk

https://lbqaq.top/p/redroid-maa/