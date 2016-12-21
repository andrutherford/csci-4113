#!/bin/bash

echo "CPU AND MEMORY RESOURCES --------------------------------"
ram=$(free | tr -s " " | cut -d" " -f4 | tail -n2 | head -n1)
load=$(uptime | cut -d, --fields=3,4,5 | cut -d: -f2)
echo "CPU Load Average: $load  Free RAM: $ram MB"

echo
echo

echo "NETWORK CONNECTIONS --------------------------------"
echo "Io Bytes Received: " `cat /sys/class/net/lo/statistics/rx_packets` " Bytes Trasmitted: " `cat /sys/class/net/lo/statistics/tx_packets`
echo "enp0s3 Bytes Received: " `cat /sys/class/net/enp0s3/statistics/rx_packets` " Bytes Trasmitted: " `cat /sys/class/net/enp0s3/statistics/tx_packets`
echo -n "Internet Connectivity: "
if [[ `cat /sys/class/net/lo/statistics/rx_packets` != "0"]] || [[ `cat /sys/class/net/enp0s3/statistics/rx_packets` != "0" ]]
then
  echo -n "yes"
else
  echo -n "no"
fi

echo
echo

echo "ACCOUNT INFORMATION --------------------------------"
echo "total Users: " `wc -l /etc/passwd | cut -d ' ' -f1 ` "Number Active: " `users | wc -w`

echo "Most Frequently Used Shell: " `cat /etc/passwd | cut -d ':' -f7 | sort | uniq -c | sort -rn | head -n +1 | cut -d ' ' -f7`
