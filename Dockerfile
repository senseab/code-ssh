FROM alpine
RUN apk add --no-cache bash zsh dropbear gcompat && \
    adduser -D -u 1000 -s /bin/zsh coder

CMD [ "/usr/sbin/dropbear", "-swEF" ]
