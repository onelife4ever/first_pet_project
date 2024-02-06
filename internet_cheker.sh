#!/bin/bash

read -p "Enter domen name:" domen_name

# host - получить по доменному имени ip-адрес
# проверка работы доменного имени

if host "$domen_name" &> /dev/null
	then
		echo "DNS resolve work fine!"
else
	echo "DNS resolve work unavailable"
fi

read -p "Enter IP-adress name:" IP_name

if ping -c4 "$IP_name" &> /dev/null
	then
		echo "Network connection is available!"
else
	echo "Network connection is unavailable!"
exit 1
fi

ping -q -c4 "$IP_name" | tail -3
# -q не выводить информацию по каждому направленному запросу

