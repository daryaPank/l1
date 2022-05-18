#!/bin/bash
if [ -z "$1" ]
then
	echo "имя пустое или не передано. пожалуйста передайте в качестве аргумента имя"
	exit 1
fi

if ! [ -d "$1" ]
then 
	echo "нет директории с таким названием"
	exit 2
fi

dir_name="$1"

cp ~/.bashrc $dir_name/.bashrc.backup
