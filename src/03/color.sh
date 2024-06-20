#!/bin/bash

#Цвет фона  

white_fon="\033[47m"
red_fon="\033[41m"
green_fon="\033[42m"
blue_fon="\033[44m"
purple_fon="\033[45m"
black_fon="\033[40m"
 
#Цвет шрифта

white_shrift="\033[37m"
red_shrift="\033[31m"
green_shrift="\033[32m"
blue_shrift="\033[34m"
purple_shrift="\033[35m"
black_shrift="\033[30m"

#Сброс всех  назначенных цветов

color_reset="\033[0m"

#Распределение цветов для каждого столбца и смены  цвета шрифта в каждом столбце

case $1 in
 1) color_fon1="$white_fon";;
 2) color_fon1="$red_fon";;
 3) color_fon1="$green_fon";;
 4) color_fon1="$blue_fon";;
 5) color_fon1="$purple_fon";;
 6) color_fon1="$black_fon";;
esac

case $2 in
 1) color_shrift1="$white_shrift";;
 2) color_shrift1="$red_shrift";;
 3) color_shrift1="$green_shrift";;
 4) color_shrift1="$blue_shrift";;
 5) color_shrift1="$purple_shrift";;
 6) color_shrift1="$black_shrift";;
esac

case $3 in
 1) color_fon2="$white_fon";;
 2) color_fon2="$red_fon";;
 3) color_fon2="$green_fon";;
 4) color_fon2="$blue_fon";;
 5) color_fon2="$purple_fon";;
 6) color_fon2="$black_fon";;
esac

case $4 in
 1) color_shrift2="$white_shrift";;
 2) color_shrift2="$red_shrift";;
 3) color_shrift2="$green_shrift";;
 4) color_shrift2="$blue_shrift";;
 5) color_shrift2="$purple_shrift";;
 6) color_shrift2="$black_shrift";;
esac

