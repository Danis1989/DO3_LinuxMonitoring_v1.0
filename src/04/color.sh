#!/bin/bash

source config.conf 

# Функция для присвоения цвета для вывода информации о системе 

#Цвет фона

color_fon() {
 case $1 in
  1) echo '\033[47m';; # белый
  2) echo '\033[41m';; # красный 
  3) echo '\033[42m';; # зеленый
  4) echo '\033[44m';; # синий
  5) echo '\033[45m';; # фиолетовый
  6) echo '\033[40m';; # черный
  *) echo '\033[42m';; # По умолчанию зеленый цвет фона
 esac

 }

#Цвет шрифта

color_shrift(){
 case $1 in
  1) echo '\033[37m';; # белый
  2) echo '\033[31m';; # красный
  3) echo '\033[32m';; # зеленый
  4) echo '\033[34m';; # синий
  5) echo '\033[35m';; # фиолетовый
  6) echo '\033[30m';; # черный
  *) echo '\033[35m';; # По умолчанию фиолетовый цвет шрифта
 esac

}

color_reset="\033[0m"  # сброс цветов

color_fon1="$(color_fon "${column1_background:-}")"
color_shrift1="$(color_shrift "${column1_font_color:-}")"
color_fon2="$(color_fon "${column2_background:-}")"
color_shrift2="$(color_shrift "${column2_font_color:-}")"


