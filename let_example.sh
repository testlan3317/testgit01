#!/bin/bash
# Basic arithmetic using let

# let is a builtin function of Bash that allows us to do simple arithmetic. It follows the basic format: let <arithmetic expression>


let a=5+4         # - This is the basic format. Note if we don't put quotes around the expression then it must be written with no spaces.
echo $a    #9

let "a = 5 + 4"   # - We use quotes which allow us to space out the expression to make it more readable.
echo $a     #9

let a++
echo $a   #10

let "a = 4 * 5"
echo $a # 20

let "a = $1 + 30"
echo $a # 30 + first command line argument
