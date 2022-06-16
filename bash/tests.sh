#!/bin/bash
# This is a script to practice doing testing in bash scripts

# This section demonstrates file testing

# Test for the existence of the /etc/resolv.conf file
# TASK 1: Add a test to see if the /etc/resolv.conf file is a regular file
# TASK 2: Add a test to see if the /etc/resolv.conf file is a symbolic link
# TASK 3: Add a test to see if the /etc/resolv.conf file is a directory
# TASK 4: Add a test to see if the /etc/resolv.conf file is readable
# TASK 5: Add a test to see if the /etc/resolv.conf file is writable
# TASK 6: Add a test to see if the /etc/resolv.conf file is executable
test -e /etc/resolv.conf && echo "/etc/resolv.conf exists" || echo "/etc/resolv.conf does not exist"

test -f /etc/resolv.conf && echo "/etc/resolv.conf exists and it is a regular file" || echo "it is not a regular file"
test -h /etc/resolv.conf && echo "/etc/resolv.conf exists and it is a symbolic link" || echo "file does not have a symbolic link"
test -d /etc/resolv.conf && echo "/etc/resolv.conf exists and it is a directory" || echo "file is not a directory"
test -r /etc/resolv.conf && echo "/etc/resolv.conf exists and it is a redeable" || echo "file is not redeable"
test -w /etc/resolv.conf && echo "/etc/resolv.conf exists and it is awritable" || echo "file is not writable"
test -x /etc/resolv.conf && echo "/etc/resolv.conf exists and it is an executable" || echo "file is not executable"

# Tests if /tmp is a directory
# TASK 4: Add a test to see if the /tmp directory is readable
# TASK 5: Add a test to see if the /tmp directory is writable
# TASK 6: Add a test to see if the /tmp directory can be accessed
[ -d /tmp ] && echo "/tmp is a directory" || echo "/tmp is not a directory" 

#tasks 4,5,6 are mentioned below
[ -d /tmp ] && echo "/tmp is a directory" || echo "/tmp is not a directory"
[ -r /tmp ] && echo "/tmp is redeable" || echo "/tmp is not redeable"
[ -w /tmp ] && echo "/tmp is writable" || echo "/tmp is not writable"
[ -x /tmp ] && echo "/tmp is executable" || echo "/tmp is not executable"

# Tests if one file is newer than another
# TASK 7: Add testing to print out which file newest, or if they are the same age

# this section demonstrates doing numeric tests in bash

# TASK 1: Improve it by getting the user to give us the numbers to use in our tests
# TASK 2: Improve it by adding a test to tell the user if the numbers are even or odd
# TASK 3: Improve it by adding a test to tell the user is the second number is a multiple of the first number

# Task 1
read -p "Enter the first number" fn
read -p "Enter the Second number " sn
a=$(( $fn % 2))
b=$(( $sn % 2))
multiple=$(( $fn % $sn ))


[ $fn -eq $sn ] && echo "The two numbers are the same"
[ $fn -ne $sn ] && echo "The two numbers are not the same"
[ $fn -lt $sn ] && echo "The first number is less than the second number"
[ $fn -gt $sn ] && echo "The first number is greater than the second number"

[ $fn -le $sn ] && echo "The first number is less than or equal to the second number"
[ $fn -ge $sn ] && echo "The first number is greater than or equal to the second number"

#task 2
[ "$a" = "0" ] && echo "the first number is even" || echo "the first number is odd"
[ "$b" = "0" ] && echo "the secondNumber is even" || echo "the secondNumber is odd"

fn=4
sn=7


# This section demonstrates testing variables

# Test if the USER variable exists
# TASK 1: Add a command that prints out a labelled description of what is in the USER variable, but only if it is not empty
# TASK 2: Add a command that tells the user if the USER variable exists, but is empty
[ -v USER ] && echo "The variable SHELL exists"

# Tests for string data
# TASK 3: Modify the command to use the != operator instead of the = operator, without breaking the logic of the command
# TASK 4: Use the read command to ask the user running the script to give us strings to use for the tests
a=1
b=01
[ $a = $b ] && echo "$a is alphanumerically equal to $b" || echo "$a is not alphanumerically equal to $b"
