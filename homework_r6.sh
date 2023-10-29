#!/bin/bash

read -p  "Please enter a username: " username
# -p prompt оптимизаци  приглашенине на ввод строки\объекта
# т.е. не выводим приглашение с помощью  'echo'
# в коде обязательно название переменной после приглашения
# можно вводить несколько переменных
# если больше введено чем установлено переменных остальные попадают в последнюю переменную

if [ "$username" = "fro" ]
	then
		read -s -p "Please enter password: " password
		if  [  "$password" = "123" ]
			then
				echo "Welcome, $username"
	else
		echo "Invalid password!"
		exit 1
	fi
else
	echo "Invalid username!"
fi

#скрипт на сравнение трех чисел

echo "Perfom a comprarison operation between three numbers."

read -p "Please enter three numbers for work: " n1 n2 n3

if [ "$n1" -gt "$n2" ] && [ "$n1" -gt "$n3" ]
	then
		echo "The first number is larger than the others."
		exit 0

elif [ "$n2" -gt "$n1" ] && [ "$n2" -gt "$n3" ]
        then
                echo "The second  number is larger than the others."
                exit 0

elif [ "$n3" -gt "$n2" ] && [ "$n3" -gt "$n1" ]
        then
                echo "The third  number is larger than the others."
                exit 0
else
	echo "In the numbers given there is no more than others."
	exit 0
fi
