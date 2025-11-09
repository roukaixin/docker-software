

## 插件
https://github.com/cxfksword/jellyfin-plugin-metashark

https://github.com/JavScraper/Emby.Plugins.JavScraper

https://post.smzdm.com/p/a4x2nenw/

## 教程

https://jellyfin.org/docs/general/server/media/movies


## 代理

需要打开`允许局域网连接`


## nvidia 硬件加速

### 配置 docker

> 安装 nvidia-container-toolkit

```shell
sudo pacman -S nvidia-container-toolkit
``` 

其他系统参考 github ： `https://github.com/NVIDIA/nvidia-container-toolkit`

> 配置 docker runtimes


在 docker 配置文件 `/etc/docker/daemon.json` 加入下面配置

/etc/docker/daemon.json
```json
{
    "runtimes": {
        "nvidia": {
            "path": "/usr/bin/nvidia-container-runtime",
            "runtimeArgs": []
        }
    }
}
```

### 配置 jellyfin

在播放设置中选择自己显卡能支持的解码选项

不知道可以在 `https://developer.nvidia.com/video-encode-and-decode-gpu-support-matrix-new` 中搜索


### metatube

官方文档: `https://metatube-community.github.io/README_ZH/`

部署 `metatube` 刮削后端

`https://madou.club/`

> `api` 接口

- 搜索
  - http://127.0.0.1:8097/v1/movies/search?q=062919_866

- 开启刮削地址列表
  - http://127.0.0.1:8097/v1/providers
