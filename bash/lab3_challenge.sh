#!/bin/bash

# Virtual Server creation

#test ##&& echo "lxd is not installed installing lxd ... || echo "lxd not installed"


#Command to check whether lxd is installed or not

if which lxc ; then
  echo "lxd exists in this operating system"
 else
  echo "lxd is not installed in this operating system 
        installing lxd"
  sudo snap install lxd 
fi
  

# Commad to check whether lxd exists or not?

ip a | grep -q lxdbr0 

if [ $? -eq 0 ]; then
       echo "lxbr0 file exits "
else
       echo "Initializing Lxd"
       lxd init –auto
fi
       
#Command to check that is COMP2101-S22 container available ?

lxc list | grep -q COMP2101-S22
if [ $? -eq 0 ]; then
       echo "Container already exists"
else
      lxc launch images:ubuntu/focal COMP2101-S22
fi

#Command to list of containerCOMP2101-S22
lxc list

#Command to add ip address of container in etc/hosts file

cat /etc/hosts | grep -q COMP2101-S22
if [ $? = 0 ]; then
        echo "Ip address is already associated with container in etc/hosts file"
else
        a=$(lxc info COMP2101-S22 | grep inet: | grep global | awk '{print $2}')
fi


# command to install Apache2 in the container

lxc exec COMP2101-S22 -- apt-get install apache2

#retriving webpage using curl command

curl http://COMP2101-S22

#echo "The webpage is successfully retrieved"



