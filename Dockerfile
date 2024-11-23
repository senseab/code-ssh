FROM debian:12.8-slim
RUN apt update && apt install -y dropbear ca-certificates && \
    useradd -u 1000 coder && apt clean && \
    rm -rf /var/lib/apt/lists/* &&\
    ln -sf /usr/share/zoneinfo/PRC /etc/localtime && \
    echo 'Asia/Shanghai' > /etc/timezone

CMD [ "/usr/sbin/dropbear", "-swEF" ]
