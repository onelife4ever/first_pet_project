#!/bin/bash

# case "$переменная" in
#	"вариант1" ) команда ;;
#	"вариант2" ) команда ;;
#	*) команда
######## * -  действуе по умолчнаю
######## ) -  отделение переменной от комады
######## ;; - отделение команд между собой
# esac
####### в одиночных скобках обязательное экранирование деления умножения выведения остатка
read -p "Enter first value: " x
read -p "Enter second value: " y
read -p "Enter action symbol(+, -, /, *, ^, sqrt): " operator

basic_c() {
}
 
sqrt() {
	echo sqrt "($1)" | bc -l
}

case $operator in
"+" ) echo "$x + $y =" $(expr "$x" + "$y");;
"-" ) echo "$x - $y =" $(expr "$x" - "y");;
"*" ) echo "$x * $y =" $(expr "$x" \* "$y");;
"/" ) if [ "$y" -eq 0]
	then
		 echo "Error! Division by zero!"
	else

		 echo "$x / $y =" $(expr "$x" \/ "$y")
fi;;
"%" ) echo "$x % $y =" $(expr "$x" \% "$y");;
"^" ) echo "$x ^ $y =" $(( "$x" ** "$y"));;
"sqrt") echo "sqrt ($x) = " $(sqrt $x);;

#$(echo sqrt "($x)" | bc -l);;

* ) echo "Unknow operation!"
esac
