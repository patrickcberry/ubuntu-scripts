# ubuntu-scripts
Various Ubuntu configurations scripts (developed and tested with Ubuntu server
18.04 LTS).

## Download all Scripts

The following command will download all scripts and place them in the `/tmp/ubs` folder,

```
sudo -i
wget -O - https://raw.githubusercontent.com/patrickcberry/ubuntu-scripts/master/fetch.sh | sh
exit
```


## Scripts

### Upgrade-all

Upgrade operating system and install packages

`sudo sh /tmp/ubs/upgrade-all.sh`

### Default

This script sets typical settings for Ubuntu server.

#### Usage:

```
sudo sh /tmp/ubs/default.sh HOSTNAME IP
```

Where,
+ HOSTNAME is the desired hostname of the server
+ IP is the final term in the IP4 address [0-255]

#### Actions:
The script will,
+ Update OS and installed applications
+ Install OpenSSH
+ Set the hostname
+ Configure a static IP
+ Set the time zone to Australia/Sydney

HOSTNAME

timezone

static ip address

### Motioneye

Installs motioneye and dependencies.

```
sudo sh /tmp/ubs/motion-eye.sh
```

Installs and starts the server which runs on port 8765.

Issue with Chrome version 76.0.3809.100 (Official Build) (64-bit) where video
is not displayed (spinners only).

A workaround is to set `chrome://flags/#enable-lazy-image-loading` to `disabled`.
