#!/bin/bash

source fails.sh

echo "HOSTNAME = $(hostname)"
echo "TIMEZONE = $(timedatectl | grep "Time zone" | sed 's/.*: //')"
echo "USER = $(whoami)"
echo "OS = $( cat /etc/issue | sed 's/\\n \\l//')"
echo "DATE = $(date +"%d %b %Y %T")"
echo "UPTIME = $(uptime -p | sed 's/\bup \b//gi' )"
echo "UPTIME_SEC = $( uptime | awk '{printf $3}' | sed 's/:/ /' | sed 's/,/ /' | awk '{printf $1*3600+$2*60" seconds"}')"
echo "IP = $(ip route | grep "default via" | awk '{printf $9}')"
echo "MASK = $(ifconfig | grep "netmask" | head -n 1 | awk '{printf $4}')"
echo "GATEWAY = $(ip route | grep "default via" | awk '{printf $3}')"
echo "RAM_TOTAL = $(free -h | grep "Mem"| awk '{printf "%.3f" " GB", $2/1024}')"
echo "RAM_USED = $(free -h | grep "Mem" | awk '{printf "%.3f" " GB", $3/1024}')"
echo "RAM_FREE = $(free -h | grep "Mem" | awk '{printf "%.3f" " GB", $4/1024}')"
echo "SPACE_ROOT = $(df -h | grep "/dev/mapper/ubuntu--vg-ubuntu--lv" | awk '{printf "%.2f" " MB", $2*1024}')"
echo "SPACE_ROOT_USED = $(df -h | grep "/dev/mapper/ubuntu--vg-ubuntu--lv" | awk '{printf "%.2f" " MB", $3*1024}')"
echo "SPACE_ROOT_FREE = $(df -h | grep "/dev/mapper/ubuntu--vg-ubuntu--lv" | awk '{printf "%.2f" " MB", $4*1024}')"



