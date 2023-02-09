#!/bin/bash
base=`tcpdump -ttr dumpfile.pcap | head -n 1 | awk  '{print $1}'`
#suffix=`date '+%Y%m%d-%H%M%S'`
tcpdump -ttr dumpfile.pcap  | awk -v base="$base"  '{print ($1-base)*1000}'  | awk -F '.' '{print $1}' > tmp.trace
