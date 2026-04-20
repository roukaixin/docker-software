[官方地址](https://about.gitea.com/)

[github 地址](https://github.com/go-gitea/gitea)

## 注意

由于 action 任务是在 `gitea/runner-images` 镜像中执行的，所以需要设置网络配置，不能设置实例IP为 `127.0.0.1`

如果需要设置为 `127.0.0.1` 那么就需要保证 act_runner 中的网络和实例能通信

## 要求

服务依赖于 mysql、redis、minio 服务，需要先启动依赖服务在启动该服务

## 创建数据库

```mysql
CREATE DATABASE gitea CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_bin';
```

## 生成 runner token

```shell
openssl rand -hex 24
```
替换 `.env` 中的 `RUNNER_REGISTRATION_TOKEN` 变量中

## 启动

### rootless

- 创建目录 `mkdir -p config/gitea data/gitea data/runner`，要不然启动不了，没有权限
- 使用 `docker compose up -d` 启动
- 进入容器 `docker exec -it gitea bash`
- 创建管理员账号 `gitea admin user create --username username --password "密码" --email "邮箱" --admin`

### rootful

> 创建用户

```shell
su tnt -c 'gitea admin user create --username username --password "密码" --email "邮箱" --admin'
```
