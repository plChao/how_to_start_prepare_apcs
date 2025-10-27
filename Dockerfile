FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

# 安裝基本開發工具與必要環境
RUN apt-get update && apt-get install -y \
    build-essential \
    gcc g++ make cmake \
    gdb cgdb \
    vim \
    python3 python3-pip idle3 \
    openjdk-8-jdk \
    wget curl git \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# 預設使用 root + 進入 bash
WORKDIR /root
CMD ["/bin/bash"]
