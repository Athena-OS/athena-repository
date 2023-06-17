# Welcome to Athena Repository

Add this to your `/etc/pacman.conf`:
```
[athena-repository]
SigLevel = Optional TrustedOnly
Include = /etc/pacman.d/athena-repository-mirrorlist
```
Add mirror file in `/etc/pacman.d/athena-repository-mirrorlist` ,
and choose the mirror location of your region and write it inside the mirror file.

```copy
# Global
https://athena-os.github.io/$repo/$arch

# South Korea
https://mirror.pardesicat.xyz/athena-repository/$repo/$arch
```

and on the terminal execute:
```
sudo pacman-key --recv-keys A3F78B994C2171D5 --keyserver keyserver.ubuntu.com
```
If you receive an error, continue to execute until the key is imported.

# Athena OS

Visit Athena OS Project for getting a new pentesting experience!

https://github.com/Athena-OS/athena-iso
