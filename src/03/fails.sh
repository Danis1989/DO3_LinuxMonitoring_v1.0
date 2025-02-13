#!/bin/bash

if [[ -z "$1" ]]
    then
    echo "Вы не ввели ни одного параметра.Введите 4 параметра в цифровом диапазоне от 1 до 6,каждый через пробел."
    exit 1

elif [[ "$1" =~ ^[+-\//*:.,\;\.\]+$ || "$2" =~ ^[+-\//*:.,\;\.]+$ || "$3" =~ ^[+-\//*:.,\;\.]+$ || "$4" =~ ^[+-\//*:.,\;\.]+$ ]]
    then
    echo "Один из введенных вами параметров являются символом.Воспользуйтесь цифровыми параметрами от 1 до 6"
    exit 1

elif [[ "$1" =~ ^[[:alpha:]]+$ || "$2" =~ ^[[:alpha:]]+$ || "$3" =~ ^[[:alpha:]]+$ || "$4" =~ ^[[:alpha:]]+$ ]]  
    then
    echo "Один из введенные вами параметров является буквенным.Воспользуйтесь цифровыми параметрами от 1 до 6"
    exit 1

elif [[ "$#" -ge 6 ]]
   then
   echo "Введенных значений должно быть не больше 4х,удалите лишние параметры"
   exit 1

elif [[ "$#" -gt 4 ]]
   then
   echo "Введенных значений должно быть не больше 4х,удалите лишний параметр"
   exit 1

elif [[ "$#" -le 2 ]]
   then
   echo "Введенных значений должно быть не меньше 4х,введите недостающие параметры"
   exit 1  

elif [[ "$#" -le 3 ]]
   then
   echo "Введенных значений должно быть не меньше 4х,введите недостающий параметр"
   exit 1

elif [[ "$1" = "$2" || "$3" = "$4" ]]
   then
   echo "Введенное значение - 'цвет шрифта' и значение - 'цвет фона' не должны совпадать в одном столбце,пожалуйста перезапустите программу с корректными параметрами"
   exit 1

elif [[ "$1" -lt 1  || "$1" -gt 6 ]] || [[ "$2" -lt 1 || "$2" -gt 6 ]] || [[ "$3" -lt 1 || "$3" -gt 6 ]] || [[ "$4" -lt 1 || "$4" -gt 6 ]]
   then
   echo "Все введенные вами параметров должен быть в цифровом дапазоне от 1 до 6"
   exit 1   

fi
