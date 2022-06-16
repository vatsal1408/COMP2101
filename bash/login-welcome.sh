#!/bin/bash
#
# This script produces a dynamic welcome message
# it should look like
#   Welcome to planet hostname, title name!

# Task 1: Use the variable $USER instead of the myname variable to get your name
# Task 2: Dynamically generate the value for your hostname variable using the hostname command - e.g. $(hostname)
# Task 3: Add the time and day of the week to the welcome message using the format shown below
#   Use a format like this:
#   It is weekday at HH:MM AM.
# Task 4: Set the title using the day of the week
#   e.g. On Monday it might be Optimist, Tuesday might be Realist, Wednesday might be Pessimist, etc.
#   You will need multiple tests to set a title
#   Invent your own titles, do not use the ones from this example

###############
# Variables   #
###############

USER="vatsal"
hostname=$hostname
d=$(date +%A)
time=$(date '+%H:%M')

#setting the different title according to day
test $d = Monday && title="Today is sunny day"
test $d = Tuesday && title="Today is cloudy day"
test $d = Wednesday && title="Very cold day"
test $d = Thursday && title="The temp is high today"
test $d = Friday && title="It is rainy today"
test $d = Saturday && title="Today the weather is very unpredictable"
test $d = Sunday && title="Today has perfect weather"

###############
# Main        #
###############

z=$(echo "welcome to planet $hostname,$title,hello $user , it is weekday at $time am")
echo $z | cowsay
