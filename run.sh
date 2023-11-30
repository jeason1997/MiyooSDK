#!/bin/bash

cd demo
make clean
echo "正在编译..."
sudo docker run -it --rm -v "$(pwd)":/root -w /root miyoo_sdk make

# 获取上一个命令的退出状态
if [ $? -eq 0 ]; then
    echo "编译完成"
    sleep 1
    sudo chmod +x demo.out
    ./demo.out
else
    echo "编译失败，找不到miyoo_sdk镜像"
fi


