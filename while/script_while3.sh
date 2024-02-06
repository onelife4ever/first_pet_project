#!/bin/bash

num=0
while [ $num -lt 7 ]
do
	mkdir directory-$(date "+%Y%m%d_%H%M")
# создание директории с испольование команды даты
	num=$(expr $num + 1)
	sleep 420 # создавать 1 раз в 7 минут
done
