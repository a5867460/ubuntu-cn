FROM ubuntu:latest

ENV TZ=Asia/Shanghai

RUN apt update \
    && apt install -y tzdata ca-certificates \
    && ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && \
    echo $TZ > /etc/timezone
