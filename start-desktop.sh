#!/bin/bash

# Start Xvfb
Xvfb $DISPLAY -screen 0 "${SCREEN_WIDTH}x${SCREEN_HEIGHT}x${SCREEN_DEPTH}" &
sleep 2

# Start Fluxbox
fluxbox -display $DISPLAY &
sleep 2

# Start x11vnc
# Set vnc password if environment variable is set
if [ -n "${VNC_PASSWORD}" ] && [ "${VNC_PASSWORD}" != "" ]; then
  mkdir -p ~/.vnc && \
  echo "${VNC_PASSWORD}" | vncpasswd -f > ~/.vnc/passwd && \
  chmod 600 ~/.vnc/passwd

  x11vnc -display $DISPLAY -forever -shared -bg -rfbauth ~/.vnc/passwd -xkb &
else
  x11vnc -display $DISPLAY -forever -shared -bg -nopw -xkb &
fi
sleep 2

# Start xterm
xterm &

# Keep the container running
while true
do
  sleep 60
done