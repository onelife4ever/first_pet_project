#!/bin/bash

#строковое исполнение find . -type f -executable

directory="."

find $directory -type f |

while read line
	do if [ -x "$line" ]
		then echo "$line"
	else
		continue
	fi
done
