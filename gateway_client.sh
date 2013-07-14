#!/bin/sh

INTERFACE="enp4s0"
# iptables -L -t nat

ifconfig $INTERFACE 192.168.1.2
echo "nameserver 8.8.8.8" > /etc/resolv.conf
echo "Gateway: Done."

