#!/bin/bash

read -p "Введите дату в формате ДД-ММ: " date

case $date in
	"31-12" ) echo "С новым годом!";;
	"08-03" ) echo "С международным женским днем!";;
	* ) echo "Сегодня $date."
esac