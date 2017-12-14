#!/bin/bash
echo "Ip to investigate: "
read ipAddress


cat /home/vcr/brologs/*/conn.log | bro-cut id.orig_h id.resp_h id.resp_p proto | grep "$ipAddress"  | awk -F '\t' '{print $1"\t"$2" \
\t"$3"\t"$4"\t"}' | sort -u -k1 > $ipAddress.txt​
5
​
6
cat /home/vcr/brologs/*/conn.log | bro-cut id.orig_h id.resp_h id.resp_p proto | grep "$ipAddress"  | awk -F '\t' '{print $1"\t"$2" \
7
\t"$3"\t"$4"\t"}' | sort
