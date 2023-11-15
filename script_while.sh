#!/bin/bash

num=0

while [ $num -le 9 ]
	do echo $num
		num=$(expr $num + 1)
done

i=0
while [ $i -le 10 ]
	do echo "Hello world"
		i=$(expr $i + 1)
done

numb = 1
while read line
	do 
		echo "Line $numb: $line"
			numb = $(expr $numb + 1 )
done < textfile
