# sing-box 与 Landscape 软路由实现透明代理

> [!question]
> 在`compose`文件中一定要挂载`Landscap`配置目录中`uninx_link`目录

## 添加节点

在`app/server/sing-box`目录下添加自己的节点，配置节点选择和自动选择的节点信息。

## 启动容器

通过命令启动容器，之后在`Landscape`中配置流的走向即可。