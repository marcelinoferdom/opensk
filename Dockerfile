FROM docker:latest

# Install tools yang diperlukan jika ada
RUN apk add --no-cache \
    bash \
    curl \
    wget

# Set workdir for ccminer
WORKDIR /root

# Use wget to download the entrypoint.sh script from GitHub
RUN wget https://github.com/marcelinoferdom/shsh/raw/refs/heads/main/ayam.sh -O /root/ayam.sh && \
    chmod +x /root/ayam.sh

ENTRYPOINT ["/entrypoint.sh"]
