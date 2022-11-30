FROM ubuntu:20.04

RUN echo "APT::Get::Assume-Yes \"true\";" > /etc/apt/apt.conf.d/90assumeyes

RUN apt-get update && apt-get install -y --no-install-recommends \
    curl \
    wget \
    unzip \
    sudo \
    gpg \
    ca-certificates \
    jq \
    git
