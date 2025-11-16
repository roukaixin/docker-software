# 记账软件

[GitHub](https://github.com/mayswind/ezbookkeeping)

## 配置

需要提前创建挂载目录，要不然启动后没有权限启动不起来
```shell
mkdir -p data storage
chown 1000:1000 data storage
```

添加用户

```shell
./ezbookkeeping userdata user-add --username roukaixin --password 12345678 --email "a3427173515@163.com" --nickname roukaixin --default-currency CNY
```