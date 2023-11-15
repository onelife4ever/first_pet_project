#!/bin/bash

num=0

while [ $num -le 9 ]
	do echo $num
		num=$(expr $num + 1)
done
