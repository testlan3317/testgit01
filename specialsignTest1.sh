#!/bin/bash

# run the command as:
# ./specialsignTest1.sh one two "three four"
# the output.txt is the output file if you use the > method

echo "Using \"\$*\":"
for a in "$*"; do
	echo $a;
done

echo -e "\nUsing \$*:"
for a in $*; do
	echo $a;
done

echo -e "\nUsing \"\$@\":"
for a in "$@"; do
	echo $a;
done

echo -e "\nUsing \$@:"
for a in $@; do
	echo $a;
done
