# rpi5-soc-lab
SOC lab on home rpi5 server.

When working with my own projects I really like to lean towards free open-source software (FOSS) as much as I can. If it's not free but open-source I would still consider using it. With the server being linux nearly everything is going to installed, and configured via the CLI.
And as my server is headless so it would be much easier for me to SSH into the server itself from my main PC or my laptop when roaming. If you would like to do the same you can either use the server like an ordinary pc with a keyboard, mouse, and monitor or my method of SSH'ing into the server remotely. Please be aware that you would need to setup the server with all the I/O equipment.

# VPN Setup
How to connect to your server when away from home? That's easy a VPN. Basically you are creating a secure tunnel for your devices and server to connect to one another. A little bit of tinkering here and there setting up and configuring your VPN client and port-forwarding on your router and you're basically there.
I use wireguard vpn for my tunnelling. There isn't really a guide from wireguard per se, but to make it easier there is [this guide](https://www.scaleway.com/en/docs/tutorials/install-wireguard/) from scaleway.

# UFW Firewall setup
UFW is a free open-source firewall. To install ufw use the command (based on the apt package manager) `# apt install ufw -y`, once installed reboot the machine. I found that once installed every port will be blocked until you manually allow it within its ruleset.

# Fail2Ban 


# Ad-blocking
