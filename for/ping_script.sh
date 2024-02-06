#!/bin/bash

for i in  ya.ru vk.com google.com facebook.com twitter.com
do
	ping -c4 -q $i &> /dev/null && echo "$i is available!" || echo "$i is unreachable."
done

for ((a=1;a<=10;a++)) # $(seq 1 10) - список от 1 до 10
do
	echo "Hello World!"
done
