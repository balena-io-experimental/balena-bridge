#!/bin/bash

echo "Enable IP forwarding"
echo 1 > /proc/sys/net/ipv4/ip_forward

echo "Starting paraprouted"
/usr/sbin/parprouted -d eth0 wlan0

# wait around
while : ; do echo "Idling..."; sleep 600; done
