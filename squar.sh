#!/bin/bash

for i in $(seq 10 20) # для чисел от 10 до 20
	do echo "$i"^2 | bc # возвести в квадрат переданые числа
done
