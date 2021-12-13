#!/bin/bash

# This bash script is used to backup a user's home directory to /tmp/

user=$(whoami)
input=/home/$user
output=/tmp/${user}_home_$(date +%Y-%m-%d_%H%M%S).tar.gz

tar -czf $output $input 2> /dev/null
echo "Backup of $input completed! Details about the output backup file:"
ls -l $output


# the script uses a new shell scripting trick ${} called "parameter expansion". In out case, curly braces {} are required because
# our variable $user is followed by characters which are not part of its variable name.
