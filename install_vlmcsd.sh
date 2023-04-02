#!/bin/bash

# 检查是否已经安装了Docker
if [ ! -x "$(command -v docker)" ]; then
  # 如果没有安装Docker，则安装Docker
  curl -fsSL https://get.docker.com -o get-docker.sh
  sudo sh get-docker.sh
fi

# 下载vlmcsd镜像
docker pull mikolatero/vlmcsd

# 创建vlmcsd容器并运行
docker run --name vlmcsd -d -p 1688:1688 mikolatero/vlmcsd

