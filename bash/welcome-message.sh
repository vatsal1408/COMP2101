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
title="orbit"
USER="vatsal"
hostname=$hostname
a=$(date +%A)


test $day = Monday && title="Today is sunny day"
test $day = Tuesday && title="Today is cloudy day"
test $day = Wednesday && title="Very cold day"
test $day = Thursday && title="The temp is high today"
test $day = Friday && title="It is rainy today"
test $day = Saturday && title="Today the weather is very unpredictable"
test $day = Sunday && title="Today has perfect weather"


###############
# Main        #
###############
cat <<EOF

  
Welcome to planet $(hostname), "$title" $USER!
It is $(date +%A) at `date +"%H:%M:%p"`
EOF
