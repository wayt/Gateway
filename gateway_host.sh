#!/bin/sh

INTERFACE="enp4s0"
# iptables -L -t nat

echo 1 > /proc/sys/net/ipv4/ip_forward
ifconfig $INTERFACE 192.168.1.1
iptables -F
iptables -X
iptables -F -t nat
iptables -F -t mangle
iptables -t nat -A POSTROUTING -s 192.168.1.1/24 -j  MASQUERADE
iptables -A FORWARD -j ACCEPT
echo "Gateway: Done."

