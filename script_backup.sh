#!/bin/bash

date=$(date "=%Y_%m_%d")
source_folder="/home/fro"
destination_folder="/home/fro/first_pet_project"
backup_path="$destination_folder"/backup-"$date.tar.gz"



if [! -d $source_folder ]
	then
	echo $source_folder does not exist or not a directory
	exit 1
fi

if [! -d $destination_folder ]
	then
	echo $destination_folder does not exist ir not a directory
	exit 1
fi

if tar -zcpf $backup_path $ source_folder
	then
	echo Data from $source_folder was baced up sucsefully
	exit 0
else
	echo "En error occured during the backup"
	exit 1
fi
