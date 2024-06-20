#!/bin/bash

source config.conf
source fails.sh 
# Функция для получения названия цвета на основе значения

 fon_color() {
  case "$1" in
    1) echo '(white)';;
    2) echo '(red)';;
    3) echo '(green)';;
    4) echo '(blue)';;
    5) echo '(purple)';;
    6) echo '(black)';;
    *) echo default '(green)';; # По умолчанию зеленый цвет фона
   esac
}

 shrift_color() {
  case "$1" in
    1) echo '(white)';;
    2) echo '(red)';;
    3) echo '(green)';;
    4) echo '(blue)';;
    5) echo '(purple)';;
    6) echo '(black)';;
    *) echo default '(purple)';;  #По умолчанию фиолетовый цвет шрифта
   esac
}

fon_color1="$(fon_color "${column1_background:-}")"
shrift_color1="$(shrift_color "${column1_font_color:-}")"
fon_color2="$(fon_color "${column2_background:-}")"
shrift_color2="$(shrift_color "${column2_font_color:-}")"

