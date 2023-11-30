#!/bin/bash

# 定义文件名
filename="miyoo-toolchain-v2.0.0-arm-buildroot-linux-musleabi_sdk-buildroot.tar.gz"

# 检查文件是否存在
if [ ! -e "$filename" ]; then
  echo "$filename 不存在，正在下载..."
  wget "https://github.com/MiyooCFW/toolchain/releases/download/v2.0.0/miyoo-toolchain-v2.0.0-arm-buildroot-linux-musleabi_sdk-buildroot.tar.gz"  #
fi

# 拉取debian
echo "正在拉取debian..."
sudo docker pull debian:latest

# 基于docker12创建miyoo_sdk镜像
echo "正在创建miyoo_sdk..."
sudo docker build -t miyoo_sdk .
