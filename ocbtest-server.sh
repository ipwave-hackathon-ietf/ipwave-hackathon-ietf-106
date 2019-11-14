#!/bin/bash
sudo iw reg set DE
sudo ip link set wlp3s0 down
sudo iw dev wlp3s0 set type ocb
sudo ip link set wlp3s0 up
sudo iw dev wlp3s0 ocb join 5890 10MHZ

# set ipv4 address
sudo ip -4 addr add 192.168.100.198/24 broadcast 192.168.100.255 dev wlp3s0
# sudo ip -4 route add 192.168.100.0/24 dev wlp3s0

# set ipv6 address
sudo ip -6 addr add 2001:db8:100:15a::3/96 dev wlp3s0
sudo ip -6 neigh add 2001:db8:100:15a::2 lladdr 6c:0b:84:63:3d:ee dev wlp3s0

ip addr show
ip -s link show dev wlp3s0
iw dev
