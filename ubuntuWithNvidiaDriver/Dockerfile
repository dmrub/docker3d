FROM ubuntu
MAINTAINER github/gklingler

RUN apt-get update
RUN apt-get install -y mesa-utils libxcursor1 libxrandr2

# install nvidia driver
RUN apt-get install -y binutils
ARG NVIDIA_DRIVER
ADD ${NVIDIA_DRIVER} /tmp/NVIDIA-DRIVER.run
RUN sh /tmp/NVIDIA-DRIVER.run -a -N --ui=none --no-kernel-module && \
    ls -la /tmp/NVIDIA-DRIVER.run

ADD UnityTest /UnityTest

RUN apt-get -y --force-yes install x-window-system
RUN apt-get install -y pkg-config x11vnc libgtk2.0-0 twm
RUN nvidia-xconfig -a --use-display-device=None --enable-all-gpus --virtual=1280x1024
