#!/bin/sh
# if [ -d /tmp/ubs ]



mkdir /tmp/ubs

wget -O -N /tmp/ubs/update-all.sh https://raw.githubusercontent.com/patrickcberry/ubuntu-scripts/master/update-all.sh

ls /tmp/ubs
