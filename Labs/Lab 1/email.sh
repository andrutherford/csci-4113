#!/bin/bash

echo "Starting..."

disk_used=$(df | tr -s " " | cut -d " " -f5 | head -n 2 | tail -n 1 | cut -d% -f1)
echo $disk_used
if [ $disk_used -ge "80" ]
then
  echo "Utilization >= 80 percent" | mail -s "Utilization >= 80 percent" admin@server.Command
fi
