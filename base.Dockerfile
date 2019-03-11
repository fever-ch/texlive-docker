FROM debian:stretch
RUN apt-get update && apt-get install -y wget unzip perl-modules binutils git make && rm -rf /var/lib/apt/lists/*
COPY install-tex.sh /tmp

