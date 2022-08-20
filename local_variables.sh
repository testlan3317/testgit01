#!/bin/bash

# by default: a variable is global. This means that it is visible everywhere in the script. 

# we may create a variable as a local variable. When we create a local variable within a function, it is only visible within that function. 

# to do that we use:

# local var_name=<var_value>

# it is generally considered good practice to use local variables within functions so as to keep everything within the function contained. This way variables are safer from
# being inadvertently modified by another part of the script which happens to have a variable with the same name ( or vice versa).

var_change (){
    local var1='local 1'
    echo Inside function: var1 is $var1 : var2 is $var2
    var1='changed again'
    var2='2 changed again'
}

var1='global 1'
var2='global 2'

echo Before function call: var1 is $var1 : var2 is $var2

var_change

echo After function call: var1 is $var1 : var2 is $var2
