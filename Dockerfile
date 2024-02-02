FROM alpine:3.19.1
RUN apk add --no-cache bash zsh dropbear libstdc++ alpine-conf && \
    adduser -D -u 1000 -s /bin/zsh coder && \
    /sbin/setup-timezone -z Asia/Shanghai && \
    apk del alpine-conf && \
    wget -q -O /etc/apk/keys/sgerrand.rsa.pub https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub && \
    wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.35-r1/glibc-2.35-r1.apk && \
    apk add glibc-2.35-r1.apk && rm glibc-2.35-r1.apk

CMD [ "/usr/sbin/dropbear", "-swEF" ]
