FROM debian:12.4-slim
RUN apt update && apt install -y zsh dropbear && \
    useradd -u 1000 -s /bin/zsh coder && apt clean && \
    ln -sf /usr/share/zoneinfo/PRC /etc/localtime && \
    echo 'Asia/Shanghai' > /etc/timezone

CMD [ "/usr/sbin/dropbear", "-swEF" ]
