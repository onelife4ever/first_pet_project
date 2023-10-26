#!/bin/bash

name=homework_r5.sh
test 0=O | echo "Первая часть твоего скрипта $name выполнена, код возврата $?."

today=$(date +'%d-%m')
if [ $today = 31-12 ]
	then
		echo "Happy New Year!"
elif [ $today = 08-03 ]
	then
		echo "Happy International Women's Day!"
else
		echo "Today is $today."
fi

if [ $# -ne 2 ]
	then
		echo "2 argumets are needed, direcotry being moved and target directory."
		exit 1
fi

# проверка существовании переносимой директории
if [! -d '$1' ]
	then
		echo "Error! $1 does not exis or not a directory."
		exit 1
fi
# проверка целевой директории
if [ ! -d '$2' ]
	then
		echo "Error! $2 does not exis or not a directory."
	exit 1
fi
# удаление первичной директории
if cp -r '$1' '$2' && rm -rf '$1'
	then
		echo "Directory $1 was successfully moved to $2"
		exit 0
else
	echo "Error! Something want wrong!"
	exit 1
fi
