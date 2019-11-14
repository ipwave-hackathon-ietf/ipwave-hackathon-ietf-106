#!/bin/bash
# by Yiwen Shen (SKKU)
# Email: chrisshen@skku.edu

# gst-launch-1.0 v4l2src device=/dev/video1 ! video/x-raw,width=640,height=480,framerate=\(fraction\)30/1 ! videoconvert ! jpegenc ! udpsink host=2001:db8:100:15a::3 port=5000

# IPv4
# gst-launch-1.0 v4l2src ! video/x-raw,width=640,height=480 ! jpegenc ! rtpjpegpay ! udpsink host=192.168.100.198 port=5200

# IPv6
gst-launch-1.0 v4l2src ! video/x-raw,width=640,height=480 ! jpegenc ! rtpjpegpay ! udpsink host=2001:db8:100:15a::3 port=5200