## Welcome to Athena Repository

Add this to your `/etc/pacman.conf`:
```
[athena-repository]
SigLevel = Optional TrustedOnly
Server = https://athena-os.github.io/$repo/$arch
```
and on the terminal execute:
```
sudo pacman-key --recv-keys E0CF5924036306BF --keyserver keyserver.ubuntu.com
```

### Athena OS

Visit Athena OS Project for getting a new pentesting experience!

[https://github.com/Athena-OS/athena-iso](https://github.com/Athena-OS/athena-iso)
