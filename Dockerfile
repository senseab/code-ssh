FROM debian:12.4-slim
ENV TZ="Asia/Shanghai"
RUN apt update && apt install -y zsh dropbear libstdc++ &&\
    useradd -u 1000 -s /bin/zsh coder && apt clean 

CMD [ "/usr/sbin/dropbear", "-swEF" ]
