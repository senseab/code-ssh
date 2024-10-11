FROM debian:12.7-slim
RUN apt update && apt install -y zsh dropbear ca-certificates && \
    useradd -u 1000 -s /bin/zsh coder && apt clean && \
    ln -sf /usr/share/zoneinfo/PRC /etc/localtime && \
    echo 'Asia/Shanghai' > /etc/timezone

CMD [ "/usr/sbin/dropbear", "-swEF" ]
