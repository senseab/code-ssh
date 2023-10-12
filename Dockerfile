FROM alpine
RUN apk add --no-cache bash zsh dropbear gcompat libstdc++ curl alpine-conf && \
    adduser -D -u 1000 -s /bin/zsh coder && \
    /sbin/setup-timezone -z Asia/Shanghai && \
    apk del alpine-conf

CMD [ "/usr/sbin/dropbear", "-swEF" ]
