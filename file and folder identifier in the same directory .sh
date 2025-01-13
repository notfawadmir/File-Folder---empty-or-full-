#!/bin/bash

echo "file and folder finder "
echo "select you option"
echo "1.File"
echo "2.Folder"
read -p "option : " option

if [ option =="1" ]; then
	read -p "Name of The File" file
	if[ -f "$file" ];then
		echo "File Exists"
	else
		echo "File Not Exists"
	fi
elif [ option == "2" ]; then
	read -p "Name of The Folder" folder
	if[ -f "$folder" ];then
		echo "Folder Exists"
	else
		echo "Folder Not Exists" 
	fi

else 
	echo " invalid name"
fi