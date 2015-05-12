#!/usr/bin/bash

/usr/sbin/zebra > /var/log/zebra.log 2>&1 &
/usr/sbin/bgpd > /var/log/bgp.log 2>&1 &

/usr/bin/telnet localhost 2605
