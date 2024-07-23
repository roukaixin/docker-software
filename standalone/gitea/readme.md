[官方地址](https://about.gitea.com/)

[github 地址](https://github.com/go-gitea/gitea)


> 创建用户

```shell
# rootful
su tnt -c 'gitea admin user create --username username --password "密码" --email 邮箱 --admin'
```

**注意** : 如果使用无 root 权限的 `compose` 文件，需要其他创建出所需要的目录。命令 : `mkdir -p config/gitea data/gitea data/runner token`
