#!/bin/bash

# case "$переменная" in
#	"вариант1" ) команда ;;
#	"вариант2" ) команда ;;
#	*) команда
######## * -  действуе по умолчнаю
######## ) -  отделение переменной от комады
######## ;; - отделение команд между собой
# esac

read -p "Enter first value: " x
read -p "Enter second value: " y
read -p "Enter action symbol: " operator

case $operator in
"+" ) echo "$x + $y =" $(expr "$x" + "$y");;
"-" ) echo "$x - $y =" $(expr "$x" - "y");;
"*" ) echo "$x * $y =" $(expr "$x" \* "$y");;
"/" ) echo "$x / $y =" $(expr "$x" \/ "$y");;
"%" ) echo "$x % $y =" $(expr "$x" \% "$y");;
#	"**" ) echo "$x ** $y =" $(expr "$x" ** "$y");;		- пока не работает
* ) echo "Unknow operation!"
esac
