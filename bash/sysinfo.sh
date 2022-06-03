#!/bin/bash

echo "Host Name: $HOSTNAME"

z=https://zonzorp.github.io/COMP2101/GCFlex/Labs/bash/COMP2101-bash-lab1.html
echo $Domain Name= "$z" | awk -F/ '{print $3}'

#Operating system Name and version:

egrep '^(VERSION|NAME)=' /etc/os-release

echo "Ip Addresses="
d= ip addr show ens33 # Ip address
 
echo "Root file system status:"
df /
