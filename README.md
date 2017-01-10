# resin-bridge

A simple [resin.io](https://resin.io) setup to bridge `wlan0` to `eth0`, and
thus share the device's wifi connection with the devices plugged into it over
Ethernet.

This code has been tested with Raspberry Pi 3.

The setup is based on [Bridging Network Connections with Proxy ARP](https://wiki.debian.org/BridgeNetworkConnectionsProxyArp)
from the Debian Wiki.

To use this code:

* (If you haven't yet, sign up to [resin.io](https://dasboard.resin.io), and follow
  the [getting started guide](https://docs.resin.io/raspberrypi3/nodejs/getting-started/)
  to set up your access)
* Clone this repository to your computer
* Create a new application in the resin.io dashboard
* Push this repository to that application
* Provision a new device with this application, set to connect over wifi
  (download the host OS and boot it up)
* Connect another the device you'd like to connect to the network to this first
  one over Ethernet
