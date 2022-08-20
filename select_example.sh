#!/bin/bash

# select mechanism allows you to create a simple menu system. syntax as below:
# select var in <list>
# do
#   <commands>
# done


# when invoked, it will take all the items in list (similar to other loops this is a space separated set of items) and present them on the screen with a number before each item.
# A prompt will be printed after this allowing the user to select a number.
# when they select a number and hit enter, the corresponding item will be assigned to the variable and the commands between do and done are run. 
# once finished a prompt will be displayed again so the user may select another option

# A few points to be note:
# - No error checking is done. If the user enters something other than a number or a number not corresponding to an item, then "var" becomes null (empty)
# - If the user hits enter without entering any data, then the options will be displayed again
# - The loop will end where an EOF signal is entered or the break statement is issued.


# You may chagne the system variable "PS3" to change the prompt that is displayed


names='Kyle Cartman Stan Quit'

PS3='Select character: '

select name in $names; do
    if [ $name == 'Quit' ]; then
        break
    fi
    echo $name
done

echo Bye
