#!/bin/bash

if [[ "$column1_background" = "$column1_font_color" || "$column2_background" = "$column2_font_color" ]]
   then
   echo "Вводите параметры в config.conf"
   exit 1

elif [[ "$column1_background" =~ ^[[:alpha:]]+$ || "$column1_font_color" =~ ^[[:alpha:]]+$ || "$column2_background" =~ ^[[:alpha:]]+$ || "$column2_font_color" =~ ^[[:alpha:]]+$ ]]  
    then
    echo "Один из введенных вами параметров является буквенным.Воспользуйтесь цифровыми параметрами от 1 до 6"
    exit 1

elif [[ "$column1_background" =~ ^[\.+-\//*:,\;\,]+$ || "$column1_font_color" =~ ^[\.+-\//*:,\;\,]+$ || "$column2_background" =~ ^[\.+-\//*:,\;\,]+$ || "$column2_font_color" =~ ^[\.+-\//*:,\;\,]+$ ]]
    then
    echo "Один из введенных вами параметров являются символом.Воспользуйтесь цифровыми параметрами от 1 до 6"
    exit 1

fi
