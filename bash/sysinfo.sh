#!/bin/bash

echo Report from myvm 
echo ================

echo "Host Name: $HOSTNAME"


echo Operating System name and version: $(uname -v) / $(uname -o)


z=https://zonzorp.github.io/COMP2101/GCFlex/Labs/bash/COMP2101-bash-lab1.html
echo FQDN:
echo $Domain Name= "$z" | awk -F/ '{print $3}'


echo "IP Address: `hostname -I`"
 
echo Root Filesystem Free Space:$(du -h)
echo ================
