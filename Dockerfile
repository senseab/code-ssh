FROM alpine:edge
RUN apk add --no-cache openssh-server openssh-sftp-server ca-certificates tzdata gcompat && \
    ln -sf /usr/share/zoneinfo/PRC /etc/localtime && \
    adduser -u 1000 -D coder && passwd -u coder

CMD [ "/usr/sbin/sshd", "-De" ]
