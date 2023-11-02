#!/bin/bash

read -p "Введите год своего рождения: " birthyear
today=`date +%Y`
echo "Тебе сейчас:" $(expr "$today" - "$birthyear")
