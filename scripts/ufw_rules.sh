#!/bin/bash




FIREWALL=$(sudo ufw --dry-run allow 80/tcp;
sudo ufw --dry-run allow 22/tcp;
sudo ufw --dry-run allow 53/tcp;
sudo ufw --dry-run allow 53/udp;
sudo ufw --dry-run allow 67/tcp;
sudo ufw --dry-run allow 67/udp;
sudo ufw --dry-run allow 123/udp;
sudo ufw --dry-run allow 443/tcp)

if sudo ufw status | grep -q "not active"; then

	echo "not active"
else

echo "$FIREWALL"


fi

# At the moment these ports are open to everywhere inside and outside the network. 
# As long as you haven't port forwarded your router it shouldn\'t make it out of the network vice versa.
# I will update the script to only allow only to the local network.
