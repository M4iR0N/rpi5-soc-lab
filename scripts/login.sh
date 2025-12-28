#!/bin/bash

echo "Do you wish to create an SSH key? Yes or No?"
read user_input

if [ "$user_input" == "yes" ]; then

	echo "SSH key created"
else
	echo "You have chosen not to create an SSH key"
	echo "Please enter SSH server IP here:"
	read server_ip
	
	ssh $server_ip

fi
