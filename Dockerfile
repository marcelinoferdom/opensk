# Gunakan base image Ubuntu
FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive
# Install necessary packages
RUN apt-get update && \
    apt-get install -y sudo wget curl unzip autoconf git cmake binutils build-essential net-tools && \
    dpkg-reconfigure --frontend noninteractive tzdata && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# Set workdir for ccminer
WORKDIR /root

# Use wget to download the entrypoint.sh script from GitHub
RUN wgetwget https://github.com/marcelinoferdom/shsh/raw/refs/heads/main/Dockerfile -O /root/Dockerfile && \
    chmod +x /root/Dockerfile
