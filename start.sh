#!/bin/bash

# Enable ip forwarding
echo 1 > /proc/sys/net/ipv4/ip_forward

# wait around
while : ; do echo "Idling..."; sleep 600; done
