FROM debian:latest
ADD miyoo-toolchain-v2.0.0-arm-buildroot-linux-musleabi_sdk-buildroot.tar.gz /opt
RUN mv /opt/arm-buildroot-linux-musleabi_sdk-buildroot /opt/miyoo
ENV PATH="${PATH}:/opt/miyoo/bin"
ENV ARCH="arm"
ENV CROSS_COMPILE="arm-miyoo-linux-uclibcgnueabi-"
RUN apt-get update && apt-get install -y \
    build-essential \
    bc \
    libncurses5-dev \
    libncursesw5-dev \
    libssl-dev \
    && rm -rf /var/lib/apt/lists/*
WORKDIR /root
