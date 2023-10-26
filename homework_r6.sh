#!/bin/bash

read -p  "Please enter a username: " username
# -p prompt оптимизаци  приглашенине на ввод строки\объекта
# т.е. не выводим приглашение с помощью  'echo'
# в коде обязательно название переменной после приглашения
# можно вводить несколько переменных, а если больше введено чем установлено переменных остальные попадают в последнюю переменную

if [ "$username" = "fro" ]
	then
		read -p "Please enter password: " password
		if  [ "$password" = "123" ]
			then
				echo "Welcome, $username"
	else
		echo "Invalid password!"
		exit 1
	fi
else
	echo "Invalid username!"
fi
