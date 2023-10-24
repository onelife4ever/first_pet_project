#!/bin/bash
name=teach+work_5.sh
test 0=O | echo "Скрипт $name выполнен, код возврата $?."

today=$(date +'%d-%m')
if [ $today = 31-12 ]
then
echo "Happy New Year!"
else
echo "Today is $today."
fi

if [ $# -ne 2 ]
then
echo "2 argumets are needed, direcotry being moved and target directory."
fi

# проверка существовании переносимой директории
if [! -d $1 ]
then
echo "Error! $1 does not exis or not a directory."
fi
# проверка целевой деректории
if [ ! -d $2 ]
then
echo "Error! $2 does not exis or not a directory."
fi
# удаление первичной дерриктории
cp -r $1 $2 $$ rm -rf $1
echo "Directory $1 was successfully moved to $2"
