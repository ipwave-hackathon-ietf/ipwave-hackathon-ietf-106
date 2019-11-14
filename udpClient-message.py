#!/usr/bin/python2
# by Yiwen Shen (SKKU)
# Email: chrisshen@skku.edu

import socket
import time

# IPv4
# server = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
# IPv6
server = socket.socket(socket.AF_INET6, socket.SOCK_DGRAM)

# server.setsockopt(socket.SOL_SOCKET, socket.SO_BROADCAST, 1)

server.settimeout(0.2)
# server.bind(("", 44444))
message = b"OCB Test Message in a DSRC channel."

while True:
	server.sendto(message, ('2001:db8:100:15a::3', 37020)) # 2001:db8:100:15a::3
	print("message sent!")
	time.sleep(1)