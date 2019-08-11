#!/bin/sh

# Install repositories and dependencies

apt-get install motion ffmpeg v4l-utils -y
apt-get install python-pip python-dev curl libssl-dev libcurl4-openssl-dev libjpeg-dev -y

# Install motioneye

pip install motioneye

# Prepare config and media directories

mkdir -p /etc/motioneye
cp /usr/local/share/motioneye/extra/motioneye.conf.sample /etc/motioneye/motioneye.conf

mkdir -p /var/lib/motioneye

# Create init script and configure to run at startup

cp /usr/local/share/motioneye/extra/motioneye.systemd-unit-local /etc/systemd/system/motioneye.service
systemctl daemon-reload
systemctl enable motioneye
systemctl start motioneye

# Update to latest version

pip install motioneye --upgrade
systemctl restart motioneye
