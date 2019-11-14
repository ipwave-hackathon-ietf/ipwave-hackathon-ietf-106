#!/bin/bash
# by Yiwen Shen (SKKU)
# Email: chrisshen@skku.edu

# gst-launch-1.0 udpsrc port=5000 ! application/x-rtp, clock-rate=90000,payload=96 ! rtph263pdepay queue-delay=0 ! ffdec_h263 ! xvimagesink

# gst-launch-1.0 -v udpsrc port=5000 ! jpegdec ! videoconvert ! xvimagesink sync=false

# IPv4
# gst-launch-1.0 udpsrc port=5200 ! application/x-rtp,encoding-name=JPEG,payload=26 ! rtpjpegdepay ! jpegdec ! autovideosink

# IPv6
gst-launch-1.0 udpsrc address=2001:db8:100:15a::3 port=5200 ! application/x-rtp,encoding-name=JPEG,payload=26 ! rtpjpegdepay ! jpegdec ! autovideosink