#!/bin/bash

# one way to get around this is to use Command Substitution and have the function print the result (and only the result).

lines_in_file(){
    cat $1 | wc -l
}

num_lines=$( lines_in_file $1 )

echo The file $1 has $num_lines lines in it. 
