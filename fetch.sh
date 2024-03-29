#!/bin/sh

# If folder already exists, delete contents to force download of new files
if [ -d /tmp/ubs ]
then
  rm /tmp/ubs/*
  rmdir /tmp/ubs
fi

mkdir /tmp/ubs

wget --no-cache -O /tmp/ubs/update-all.sh https://raw.githubusercontent.com/patrickcberry/ubuntu-scripts/master/update-all.sh
wget --no-cache -O /tmp/ubs/default.sh https://raw.githubusercontent.com/patrickcberry/ubuntu-scripts/master/default.sh
wget --no-cache -O /tmp/ubs/netplan.yaml https://raw.githubusercontent.com/patrickcberry/ubuntu-scripts/master/netplan.yaml
wget --no-cache -O /tmp/ubs/motion-eye.sh https://raw.githubusercontent.com/patrickcberry/ubuntu-scripts/master/motion-eye.sh

ls /tmp/ubs
