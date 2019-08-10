#!/usr/bin/env bash

# Usage:
#
# sudo sh default.sh HOSTNAME IP
#
# Where:
#   IP is the final term in the IP4 address [0-255]

# System and installed application update

apt-get update
apt-get upgrade -y
apt-get dist-upgrade -y

# Enable SSH

apt-get install openssh-server -y

# Set HOSTNAME

hostname $1

# Set static ip address

sed -i "s/NNN/$2/" /tmp/ubs/netplan.yaml
mkdir /etc/netplan/old
mv /etc/netplan/*.yaml /etc/netplan/old
cp /tmp/ubs/netplan.yaml /etc/netplan/netplan.yaml
netplan apply

# Set timezone

timedatectl set-timezone Australia/Sydney
