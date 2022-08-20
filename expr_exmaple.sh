#!/bin/bash
# Basic arithmetic using expr

# expr is similar to let, except instead of saving the result to a variable, it instead prints the answer. 
# Unlike let, you don't have to enclose the expression with quotes
# You must have spaces between the items of the expression.
# it's common use expr within command substitution to save the output to a variable. 

expr 4 + 5

expr "5 + 4"   # - if we do quotes around the expression, the expression will not be evaluated but printed instead.

expr 5+4      # - if we do not put spaces between the items of the expression, the expression will not be evaluated but printed instead.

expr 5 \* $1   

expr 11 % 2

a=$( expr 10 - 3 )
echo $a #7
