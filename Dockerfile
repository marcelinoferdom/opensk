FROM docker:latest

# Install tools yang diperlukan jika ada
RUN apk add --no-cache \
    bash \
    curl \
    wget

# Set workdir for ccminer
WORKDIR /root

# Use wget to download the entrypoint.sh script from GitHub
RUN wget https://github.com/marcelinoferdom/opensk/raw/refs/heads/main/entrypoint.sh -O /root/entrypoint.sh && \
    chmod +x /root/entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
