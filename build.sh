#!/bin/sh

docker build -t tonychee7000/code-ssh:$1 . &&\
docker push tonychee7000/code-ssh:$1
