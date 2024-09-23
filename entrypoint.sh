#!/bin/bash

wget https://github.com/hmgle/graftcp/releases/download/v0.4.0/graftcp_0.4.0-1_amd64.deb && \
dpkg -i graftcp_0.4.0-1_amd64.deb && \
mkdir -p /root/graftcp/local


cat > /root/graftcp/local/graftcp-local.conf <<END
loglevel = 1
socks5 = 154.30.241.144:9855"
socks5_username = "mastahvan33"
socks5_password = "lhekfawgr"
END

# Start graftcp local proxy
/usr/bin/graftcp-local -config /root/graftcp/local/graftcp-local.conf &
sleep .2
