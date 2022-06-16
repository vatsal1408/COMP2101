#!/bin/bash


s=`hostname` # Command to find hostname
FQDN=`hostname -d` # Command to find domainname
osname=`sed -n -e '/^NAME=/s/^NAME="\(.*\)"$/\1/p' /etc/os-release` # Command to find osname 
osversion=`sed -n -e '/^VERSION=/s/^VERSION="\(.*\)"$/\1/p' /etc/os-release` # Command to find osversion
I=`hostname -I` # Command to find IP address
m=`du -h` # Command to find free space of system


#Output Template 

cat<<EOF
Report for myvm
===============
Hostname=$s
FQDN=$FQDN
Operating System name and version:$osname/$osversion
IP Address:$I
Root Filesystem Free Space:$m
================
EOF
