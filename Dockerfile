FROM debian:stable-slim

RUN sed -i 's/deb.debian.org/mirrors.aliyun.com/g' /etc/apt/sources.list && \
    apt-get update && apt-get upgrade && \
    apt-get install -y zsh dropbear-bin python3 python3-pip python3-virtualenv vim sudo curl git pkg-config build-essential && \
    mkdir -p /etc/dropbear && \
    useradd -s /bin/zsh -u 1000 coder && \
    echo 'coder ALL=(ALL:ALL) NOPASSWD:ALL' >> /etc/sudoers && \
    apt-get clean 

CMD [ "/usr/sbin/dropbear", "-swEF" ]
