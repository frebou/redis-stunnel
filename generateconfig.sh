#!/bin/sh

clientMode="${REDIS_STUNNEL_CLIENT_MODE:-no}"

#define the template config.
cat  << EOF
cert = /stunnel/private.pem
pid = /var/run/stunnel.pid
foreground = yes
[redis]
accept = 0.0.0.0:6380
; connect and client config are added by start.sh
client = $clientMode
connect = $REDIS_PORT_6379_TCP_ADDR:$REDIS_PORT_6379_TCP_PORT
EOF
