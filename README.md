# ub2204-min-desktop-x11vnc

#### 介绍
ubuntu 22.04 桌面环境最小镜像，支持中文，集成了 xvfb、fluxbox、x11vnc、xterm，vnc clinet 连上后界面只会出现一个 xterm 框。

#### docker-compose 使用说明
1.  执行命令授予执行脚本权限：`sed -i -e 's/\r$//' *.sh && chmod -R 755 *.sh`
2.  执行 `copy env.tpl .env`，并且配置 .env
3.  运行 ./run-docker.sh 【注：docker-compose 低版本识别不了 .env，需要进行升级，作者用的版本是: 1.29.2】
4.  查看日志: docker logs qiushaocloud-ub2204-min-desktop-x11vnc

#### docker 使用说明
1. 运行命令: `docker run --name qiushaocloud-ub2204-min-desktop-x11vnc -d -p 5900:5900 -e SCREEN_WIDTH=1280 -e SCREEN_HEIGHT=720 -e VNC_PASSWORD= qiushaocloud/ub2204-min-desktop-x11vnc`
2.  查看日志: docker logs qiushaocloud-ub2204-min-desktop-x11vnc

#### 环境变量
```
# VNC_PORT、SCREEN_WIDTH、SCREEN_HEIGHT、VNC_PASSWORD 来指定端口、屏幕宽高、密码。
VNC_PORT = 5900
SCREEN_WIDTH = 1280
SCREEN_HEIGHT = 720
VNC_PASSWORD = 
```

#### 参与贡献
1.  Fork 本仓库
2.  新建 Feat_xxx 分支
3.  提交代码
4.  新建 Pull Request


#### 分享者信息
1. 分享者邮箱: qiushaocloud@126.com
2. [分享者网站](https://www.qiushaocloud.top)
3. [分享者自己搭建的 gitlab](https://gitlab.qiushaocloud.top/qiushaocloud) 
3. [分享者 gitee](https://gitee.com/qiushaocloud/dashboard/projects) 
3. [分享者 github](https://github.com/qiushaocloud?tab=repositories) 