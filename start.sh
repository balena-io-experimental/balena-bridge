#!/bin/bash

## Bridging setup start
echo "Enable IP forwarding"
echo 1 > /proc/sys/net/ipv4/ip_forward
echo 1 > /proc/sys/net/ipv4/conf/all/proxy_arp

echo "Cloning IP to eth0"
/sbin/ip addr add $(/sbin/ip addr show wlan0 | perl -wne 'm|^\s+inet (.*)/| && print $1')/32 dev eth0
echo "Starting paraprouted"
/usr/sbin/parprouted eth0 wlan0
## Bridging setup end

## Application start
# here, it's just waiting around
while : ; do echo "Idling..."; sleep 600; done
