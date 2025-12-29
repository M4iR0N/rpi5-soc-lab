#!/bin/bash

echo "Do you wish to create an SSH key? Yes or No?"
read user_input # user input for if statement condition.

if [ "$user_input" == "yes" ]; then #if the user input is true, execute.

	echo "SSH key created" # this will be changed later to where it will execute code to start SSH-Keygen sequence.
else #if the user input is false, execute.
	echo "You have chosen not to create an SSH key"
	echo "Please enter SSH server IP here:"
	read server_ip # wait for user input of the server ip.

	ssh $server_ip

fi
