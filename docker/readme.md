## 前提

启动容器之前，需要先把所需要的储存卷先创建成功。
compose 文件在 [_volume](_volume/docker-compose.yaml) 位置，
进入 _volume 目录下使用 `docker compose up -d` 启动并创建卷

```shell
# 启动相关容器
cd docker/_volume
docker compose up -d

# 销毁并删除容器卷
docker compose down -v
```