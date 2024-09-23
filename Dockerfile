FROM docker:latest

# Install tools yang diperlukan jika ada
RUN apk add --no-cache \
    bash \
    curl \
    wget

# Jika perlu, copy skrip atau file lain ke dalam image
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
