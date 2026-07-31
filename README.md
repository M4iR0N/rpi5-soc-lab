# rpi5-home-lab
My own home lab on my home rpi5 server. I tend to have a habit of not documenting as I just love to get straight into working, so my goal here is to write what I am using and how I am using it so other can follow along if they wish. I will also try to keep this up-to-date, with what packages I've installed, why I've chosen them, and how to install them.

When working with my own projects I really like to lean towards free open-source software (FOSS) as much as I can. If it's open-source but not free, I would still consider using it. With the server being linux (Raspberry Pi OS) nearly everything is going to installed, and configured via the CLI.
My server is headless so it would be much easier for me to SSH into the server itself from my main PC, my laptop or phone when roaming. If you would like to do the same you can either use the server like an ordinary pc with a keyboard, mouse, and monitor or my method of SSH'ing into the server remotely. Please be aware that you would need to setup the server with all the I/O equipment.

# VPN Setup
How to connect to your server when away from home? That's easy a VPN. Basically you are creating a secure tunnel for your devices and server to connect to one another. A little bit of tinkering here and there setting up and configuring your VPN client and port-forwarding on your router and you're basically there.
I use wireguard vpn for my tunnelling. There isn't really a guide from wireguard per se, but to make it easier there is [this guide](https://www.scaleway.com/en/docs/tutorials/install-wireguard/) from scaleway. If you're not up for the task you can use another app that allows users to install it via a script that does it for you, basically a click to install button. (you can find it here)[https://www.pivpn.io/].

# UFW Firewall setup
UFW is a free open-source firewall. To install ufw use the command (based on the apt package manager) `# apt install ufw -y`, once installed reboot the machine. I found that once installed every port will be blocked until you manually allow it within its ruleset. As the port 22 (SSH) and port 51820 (Wireguard VPN) will be blocked we'll need to allow it to make them work. Using `# ufw allow port 22` and `# ufw allow port 51820` will add them to the ruleset and allow incoming and outgoing connections. For now I'm going to leave it as is, but once everything is configured and running smoothly will then make the rules more complex by adding the type of protocols and destinations. If you'd like to read me here is the [help guide](https://help.ubuntu.com/community/UFW).

# Fail2Ban 
Fail2Ban is another free open-source app that should be used on a home server. Obviously there is more professional grade software that have more complex tools and configurations, but this has all we need for now. Maybe in the future it can be upgraded but I'm happy to stick with this. Fail2Ban is an application that will ban any hosts that try to bypass authentication numerous times, normally what happens is bad actors or bots which is more than likely will scan hosts for open ports mostly SSH and try to bruteforce it with common login usernames and passwords. This will try and stop that by banning the hosts, as we've got a secure tunnel (the vpn) it does mean we don't really need fail2ban but I like the extra security just in case, you never know you'll need it until it's too late. If you wish to read up on fail2ban you can visit the github project page here [https://github.com/fail2ban/fail2ban] and the install guide for linux in a package here [https://github.com/fail2ban/fail2ban/wiki/How-to-install-fail2ban-packages] otherwise read the first links readme file and follow the install guide their.



# Ad-blocking
This is probably one of the most anticipated projects I've wanted to do with my own server, fairly basic yes but as a security and privacy advocate it's a must.

I've chosen Pi-hole specifically for this, not only is it a free and open-source project but it is built for a raspberry pi which is exactly what I am using. Pi-hole is an open-source DNS sinkhole that blocks unwanted traffic. A DNS sinkhole will give out a non-routable address if a domain is malicious, the DNS server will give a fake IP rather than the actual IP to that malicious domain stopping a host accessing that site and routing it to a safe domain so the connection is not reached.

Pi-hole can also be installed on other platforms, including a variety of linux distributions, and docker containers. The full list of support platforms can be found on the official documentation here: https://docs.pi-hole.net/main/prerequisites/#supported-operating-systems

# Encryption at Rest
Being an advocate of Privacy and Security, it's essential to keep the number one most valuable asset you have online, and that's your data; Be it online or offline, you need to keep your data secure. Here I will be discussing the importance of Encrypting your data at rest. Let's say you stored your private photos or backed up your bank statements ready for the end of the month budgeting, or doing your own taxes or worse maybe your passwords on a USB flash drive. You took your laptop and usb out with you too coffee, you left and forgot your usb flash drive that contained all of your data at the shop, and someone stole it. Now they have your data, readable format knowing things about you from banking, photos and even passwords. Because you didn't encrypt that data is now freely available to anyone who has that USB flash drive. I will show you how to encrypt your data completly free. If you use Windows or Mac OS you can use Veracrypt it also works on Linux as well so that's a plus. If you solely use Linux, you can use what's included and that's Luks through cryptsetup.

To install Veracrypt goto https://veracrypt.io/en/Downloads.html and download your corresponding file for your operating system. I myself uses the Debian packages .deb so I can get updates via the APT package manager. AppImage is okay if you wish to be portable (USB) but don't forget to check the versions to keep updated.
Be sure to check the PGP Signature before installing to verify the authors Signature.


# Using PGP
When wanting to verify a signature of a file to ensure its the actual author not a bad actor uploading malware to the site, you can use the standard that people use and that's PGP, Pretty Good Privacy. Its an Encryption program that uses the Open Standard OpenPGP 

# Future Plans [no particular order]
1. Open-Source SIEM/IDS project
2. Home ticketing system with Low, Medium, and High Priority tickets.
3. Media Server, Plex or Jellyfin
4. Update Proxmox Desktop Server to communicate with Rpi-Server.
5. Security & Privacy hardening of service configs.
