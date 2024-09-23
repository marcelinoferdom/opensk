#!/bin/bash

wget https://github.com/hmgle/graftcp/releases/download/v0.4.0/graftcp_0.4.0-1_amd64.deb && \
dpkg -i graftcp_0.4.0-1_amd64.deb && \
mkdir -p /root/graftcp/local
