# ub2204-min-desktop-x11vnc

#### introduce
ubuntu 22.04 desktop environment minimal image, supports Chinese, integrates xvfb, fluxbox, x11vnc, xterm, after vnc clinet is connected, only one xterm box will appear on the interface.

#### docker-compose instructions
1. Execute the command to grant permission to execute the script: `sed -i -e 's/\r$//' *.sh && chmod -R 755 *.sh`
2. Execute `copy env.tpl .env`, and configure .env
3. Run ./run-docker.sh [Note: The lower version of docker-compose cannot recognize .env and needs to be upgraded. The version used by the author is: 1.29.2]
4. Check the log: docker logs qiushaocloud-ub2204-min-desktop-x11vnc

#### docker instructions
1. Run the command: `docker run --name qiushaocloud-ub2204-min-desktop-x11vnc -d -p 5900:5900 -e SCREEN_WIDTH=1280 -e SCREEN_HEIGHT=720 -e VNC_PASSWORD= qiushaocloud/ub2204-min-desktop-x11vnc `
2. Check the log: docker logs qiushaocloud-ub2204-min-desktop-x11vnc

#### Environment variables
```
# VNC_PORT, SCREEN_WIDTH, SCREEN_HEIGHT, VNC_PASSWORD to specify port, screen width and height, password.
VNC_PORT = 5900
SCREEN_WIDTH = 1280
SCREEN_HEIGHT = 720
VNC_PASSWORD=
```

#### Contribute
1. Fork this warehouse
2. Create a new Feat_xxx branch
3. Submit the code
4. Create a new Pull Request


#### Sharer information
1. Sharer email: qiushaocloud@126.com
2. [Share site](https://www.qiushaocloud.top)
3. [gitlab built by the sharer](https://gitlab.qiushaocloud.top/qiushaocloud)
3. [Shared by gitee](https://gitee.com/qiushaocloud/dashboard/projects)
3. [Shared by github](https://github.com/qiushaocloud?tab=repositories)