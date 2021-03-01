#!/usr/bin/env bash
echo "hi"
echo "there"
# make into executable file
# $ chmod +x myscript.sh

mygreeting=hello
echo $mygreeting
echo ${mygreeting} # SAME

myvar="Hello!"
echo "The value of the myvar variable is: $myvar"
myvar="Bonjour!"

# read-only variables
declare -r myname="Mark"
# THIS won't work: myname="Bubu"
echo "The value of the myvar variable is: $myname"

# all lowercase
declare -l lowerstring="Here's some TEXT!"
echo "lowerstring's value: $lowerstring"

# all uppercase
declare -u upperstring="Here's some TEXT!"
echo "upperstring's value: $upperstring"
