#!/bin/bash

greeting="Welcome"
user=$(whoami)
day=$(date +%A)

echo "$greeting back $user! Today is the $day, which is the best day of the entire week!"
echo "Your bash shell version is $BASH_VERSION. Enjoy!"
