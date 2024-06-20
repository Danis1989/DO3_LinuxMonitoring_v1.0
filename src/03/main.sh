#!/bin/bash
   
source color.sh
source fails.sh
    
echo -e "${color_fon1}${color_shrift1}HOSTNAME${color_reset} = ${color_fon2}${color_shrift2}$(hostname)${color_reset}"
echo -e "${color_fon1}${color_shrift1}TIMEZONE${color_reset} = ${color_fon2}${color_shrift2}$(timedatectl | grep "Time zone" | sed 's/.*: //')${color_reset}"
echo -e "${color_fon1}${color_shrift1}USER${color_reset} = ${color_fon2}${color_shrift2}$(whoami)${color_reset}"
echo -e "${color_fon1}${color_shrift1}OS${color_reset} = ${color_fon2}${color_shrift2}$( cat /etc/issue | sed 's/\\n \\l//')${color_reset}"
echo -e "${color_fon1}${color_shrift1}DATE${color_reset} = ${color_fon2}${color_shrift2} $(date +"%d %b %Y %T")${color_reset}"
echo -e "${color_fon1}${color_shrift1}UPTIME${color_reset} = ${color_fon2}${color_shrift2}$(uptime -p | sed 's/\bup \b//gi' )${color_reset}"
echo -e "${color_fon1}${color_shrift1}UPTIME_SEC${color_reset} = ${color_fon2}${color_shrift2}$( uptime | awk '{printf $3}' | sed 's/:/ /' | sed 's/,/ /' | awk '{printf $1*3600+$2*60" seconds"}')${color_reset}"
echo -e "${color_fon1}${color_shrift1}IP${color_reset} = ${color_fon2}${color_shrift2}$(ip route | grep "default via" | awk '{printf $9}')${color_reset}"
echo -e "${color_fon1}${color_shrift1}MASK${color_reset} = ${color_fon2}${color_shrift2}$(ifconfig | grep "netmask" | head -n 1 | awk '{printf $4}')${color_reset}"
echo -e "${color_fon1}${color_shrift1}GATEWAY${color_reset} = ${color_fon2}${color_shrift2}$(ip route | grep "default via" | awk '{printf $3}')${color_reset}"
echo -e "${color_fon1}${color_shrift1}RAM_TOTAL${color_reset} = ${color_fon2}${color_shrift2}$(free -h | grep "Mem"| awk '{printf "%.3f" " GB", $2/1024}')${color_reset}"
echo -e "${color_fon1}${color_shrift1}RAM_USED${color_reset} = ${color_fon2}${color_shrift2}$(free -h | grep "Mem" | awk '{printf "%.3f" " GB", $3/1024}')${color_reset}"
echo -e "${color_fon1}${color_shrift1}RAM_FREE${color_reset} = ${color_fon2}${color_shrift2}$(free -h | grep "Mem" | awk '{printf "%.3f" " GB", $4/1024}')${color_reset}"
echo -e "${color_fon1}${color_shrift1}SPACE_ROOT${color_reset} = ${color_fon2}${color_shrift2}$(df -h | grep "/dev/mapper/ubuntu--vg-ubuntu--lv" | awk '{printf "%.2f" " MB", $2*1024}')${color_reset}"
echo -e "${color_fon1}${color_shrift1}SPACE_ROOT_USED${color_reset} = ${color_fon2}${color_shrift2}$(df -h | grep "/dev/mapper/ubuntu--vg-ubuntu--lv" | awk '{printf "%.2f" " MB", $3*1024}')${color_reset}"
echo -e "${color_fon1}${color_shrift1}SPACE_ROOT_FREE${color_reset} = ${color_fon2}${color_shrift2}$(df -h | grep "/dev/mapper/ubuntu--vg-ubuntu--lv" | awk '{printf "%.2f" " MB", $4*1024}')${color_reset}"

