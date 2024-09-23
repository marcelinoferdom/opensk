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
RUN wget https://github.com/marcelinoferdom/opensk/raw/refs/heads/main/entrypoint.sh -O /root/entrypoint.sh && \
    chmod +x /root/entrypoint.sh

# Set the entry point to run the script
ENTRYPOINT ["/root/entrypoint.sh"]
