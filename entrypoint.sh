#!/bin/sh
set -e

# Mulai Docker daemon
dockerd &

# Tunggu Docker daemon untuk siap
sleep 5

# Jalankan perintah yang diteruskan ke container
exec "$@"
