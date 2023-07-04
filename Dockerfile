FROM debian:stable-slim

RUN apt-get update && apt-get upgrade && \
    apt-get install -y zsh dropbear-bin sudo && \
    mkdir -p /etc/dropbear && \
    useradd -s /bin/zsh -u 1000 coder && \
    echo 'coder ALL=(ALL:ALL) NOPASSWD:ALL' >> /etc/sudoers && \
    apt-get clean 

CMD [ "/usr/sbin/dropbear", "-swEF" ]
