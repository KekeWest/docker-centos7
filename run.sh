#!/bin/sh

if [ ! -f /.already_configured ]; then
  /server_setting.sh
  exit 0
fi

exec /usr/sbin/sshd -D

