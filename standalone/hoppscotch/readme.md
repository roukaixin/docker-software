**注意** : 第一次启动需要加入`command: ["sh", "-c", "pnpm exec prisma migrate deploy && node /usr/src/app/aio_run.mjs"]`
命令,才能初始化数据库文件,之后就可以注释掉