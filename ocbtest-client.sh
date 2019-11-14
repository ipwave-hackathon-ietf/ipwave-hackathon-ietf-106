#!/bin/bash
# by Yiwen Shen (SKKU)
# Email: chrisshen@skku.edu

sudo iw reg set DE
sudo ip link set wlp3s0 down
sudo iw dev wlp3s0 set type ocb
sudo ip link set wlp3s0 up
sudo iw dev wlp3s0 ocb join 5890 10MHZ

# Set ipv4 address
sudo ip -4 addr add 192.168.100.199/24 broadcast 192.168.100.255 dev wlp3s0
# sudo ip -4 route add 192.168.100.0/24 dev wlp3s0

# set ipv6 address
sudo ip -6 addr add 2001:db8:100:15a::2/96 dev wlp3s0
sudo ip -6 neigh add 2001:db8:100:15a::3 lladdr 44:39:c4:5a:13:f6 dev wlp3s0
# sudo ip -6 route add 2001:db8:100:15a::0/96 dev wlp3s0

ip addr show
ip -s link show dev wlp3s0
iw dev