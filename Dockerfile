#FROM debian:sid-slim
FROM alpine:edge
RUN apk add --no-cache dropbear openssh-sftp-server ca-certificates tzdata && \
    ln -sf /usr/share/zoneinfo/PRC /etc/localtime && \
    adduser -u 1000 -D coder

CMD [ "/usr/sbin/dropbear", "-swEF" ]
