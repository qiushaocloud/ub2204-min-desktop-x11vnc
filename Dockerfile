FROM ubuntu:22.04

ENV DISPLAY=:0 \
    LANG=zh_CN.UTF-8 \
    LANGUAGE=zh_CN.UTF-8 \
    LC_ALL=zh_CN.UTF-8 \
    SCREEN_WIDTH=1280 \
    SCREEN_HEIGHT=720 \
    SCREEN_DEPTH=24 \
    VNC_PASSWORD="" \
    TZ=Asia/Shanghai

RUN apt-get update && \
    ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && \
    echo $TZ > /etc/timezone && \
    apt-get install -y apt-utils && \
    apt-get install -y \
        xvfb \
        fluxbox \
        x11vnc \
        vim \
        xterm \
        xfonts-wqy \
        fonts-wqy-zenhei \
        locales \
        language-pack-zh-hans && \
    locale-gen zh_CN.UTF-8 && \
    update-locale LANG=zh_CN.UTF-8 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

COPY start-desktop.sh /start-desktop.sh
RUN chmod +x /start-desktop.sh && \
    echo "XTerm*faceName: WenQuanYi Zen Hei" >> /etc/X11/app-defaults/XTerm

EXPOSE 5900

CMD ["/start-desktop.sh"]