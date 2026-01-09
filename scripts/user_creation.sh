#!/bin/bash

read -p "Do you want to create a new user? Yes or No: " NEW_USER

if [[ "$NEW_USER" != "yes" ]]; then
	echo "Closing Script"
	exit 0

else
	read -p "Please enter username: " USER
	sudo useradd "$USER" -m
fi
	read -s -p "Please enter password: " PASSWORD
	echo "$USER":"$PASSWORD" | sudo chpasswd 


