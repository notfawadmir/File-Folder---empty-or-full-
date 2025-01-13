#!/bin/bash
echo "________________________________________________"
echo " ----------------------------------------------"
echo " || . To Check If File/Folder Is Empty Or Not ||"
echo " || . To Check If File/Folder Exists Or Not   ||"
echo " ______________________________________________"
echo "------------------------------------------------"

echo " "
echo "Do You Want To Check File Or Folder"
echo "1. File"
echo "2. Folder"
read -p "Option Selected: " option

option=$(echo "$option" | tr "[:upper:]" "[:lower:]")

if [ "$option" == "1" ] || [ "$option" == "file" ]; then
    echo "==================================================================="
    read -p "Tell The Directory Of The File: " Directory
    echo "==================================================================="
    if [ -f "$Directory" ]; then
        if [ -s "$Directory" ]; then
            echo " "
            echo "=================="
            echo "File Contains Data"
            echo "=================="
        else
            echo " "
            echo "=============="
            echo "File is Empty"
            echo "=============="
        fi
    else
        echo " "
        echo "==================="
        echo "No Such File Exists"
        echo "==================="
    fi
elif [ "$option" == "2" ] || [ "$option" == "folder" ]; then
    echo "======================================================================"
    read -p "Tell The Directory Of The Folder: " Directory
    echo "======================================================================"
    if [ -d "$Directory" ]; then
        if [ "$(ls -A "$Directory")" ]; then
            echo " "
            echo "======================"
            echo "Folder Contains Data"
            echo "======================"
        else
            echo " "
            echo "===================="
            echo "Folder Is Empty"
            echo "===================="
        fi
    else
        echo " "
        echo "======================"
        echo "No Such Folder Exists"
        echo "======================"
    fi
else
    echo " "
    echo "==============="
    echo "Invalid option"
    echo "==============="
fi
