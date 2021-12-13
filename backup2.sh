#!/bin/bash

# This bash script is used to backup a user's home directory to /tmp/

user=$(whoami)
input=/home/$user
output=/tmp/${user}_home_$(date +%Y-%m-%d_%H%M%S).tar.gz

#The function total_files reports a total number of files for a given directory.
function total_files {
	find $1 -type f | wc -l
}

# The function total_directories reports a total number of directories
# for a given directory

function total_directories {
	find $1 -type d | wc -l
}

function total_archived_directories {
	tar -tzf $1 | grep /$ | wc -l
}

function total_archived_files {
	tar -tzf $1 | grep -v /$ | wc -l
}

tar -czf $output $input 2> /dev/null

src_files=$( total_files $input )
src_directories=$( total_directories $input )

arch_files=$( total_archived_files $output )
arch_directories=$( total_archived_directories $output )


echo -n "Files to be include: $src_files"
echo -n "Directories to be included: $src_directories"
echo "Files archived $arch_files"
echo "Directories archived: $arch_directories"

if [ $src_files -eq $arch_files ]; then
	echo "Backup of $input completed"
	echo "Details about the output backup file:"
	ls -l $output
else
	echo "Backup of $input failed!"
fi


# the script uses a new shell scripting trick ${} called "parameter expansion". In out case, curly braces {} are required because
# our variable $user is followed by characters which are not part of its variable name.
