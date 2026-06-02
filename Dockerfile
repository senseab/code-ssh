FROM debian:sid-slim
RUN apt update && apt install -y openssh-server ca-certificates && \
    useradd -u 1000 -s /bin/bash coder && apt clean && \
    rm -rf /var/lib/apt/lists/* && \
    ln -sf /usr/share/zoneinfo/PRC /etc/localtime && \
    echo 'Asia/Shanghai' > /etc/timezone

ENV TZ=Asia/Shanghai

CMD [ "/usr/sbin/sshd", "-De" ]
