#!/usr/bin/env bash

# System and installed application update

apt-get update
apt-get upgrade -y
apt-get dist-upgrade -y

# Enable SSH

apt-get install openssh-server -y
