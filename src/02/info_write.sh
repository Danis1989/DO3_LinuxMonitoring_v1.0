#! /bin/bash

source fails.sh

echo "Хотите записать данные в файл? (Y/N): "
read answer 
if [[ $answer == Y || $answer == y ]]
then
    date=$(date +"%d_%m_%y_%H_%M_%S")
    ./main.sh >> "$date.status"
    echo "Данные записаны в $date.status"
else
   echo "Запись данных отклонена пользователем"    
fi



    
