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

sed -i 's/NNN/163/' /tmp/ubs/netplan.yaml
