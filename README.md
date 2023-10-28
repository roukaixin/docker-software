# docker-software

docker构建的软件列表

## mysql
 - 使用 8 版本来进行构建容器
 - 使用 group by 来进行分组时，查询的列不在 group by 中，那么就会报错。修改这个配置，使查询的列不必在 group by 中
 - 设置创建数据库使用的默认编码

## minio
 - 集群部署 minio
 - 使用 nginx 实现负载均衡来访问 minio 服务器
 - 多磁盘，多服务的集群

## rabbitmq
 - 开启 web 管理页面插件

## redis
 - 使用自定义的 config 配置文件

## nacos
 - 单机模式运行
 - 使用 `mysql` 数据库

## clash
 - 容器部署

## v2raya
 - docker compose 文件
 - 支持全局透明代理

 **注意：需要注意 v2raya 容器需要获取 root 权限**