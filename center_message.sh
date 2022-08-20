#!/bin/bash

# tput is a command which allows you to control the cursor on the terminal and the format of content that is printed. It is quite a powerful and complex tool.

# Print message in center of terminal

cols=$( tput cols )    #- tput cols: will tell us how many columns the terminal has
rows=$( tput lines )   #- tput lines: will tell us how many lines (or rows) the terminal has.

message=$@             #- Take all command line arguments and assign them to s single variable message.

input_length=${#message} 

half_input_length=$(( input_lenght / 2 ))  #- we need to know what 1/2 the length of the string message is in order to center it

middle_row=$(( $rows / 2 ))      #- line 16 and 17, calculate where to place the message for it to be centered.
middle_col=$(( ( $cols / 2 ) - $half_input_length ))

tput clear       #- this will clear the terminal

tput cup $middle_row $middle_col     #- tput cup: will place the cursor at the given row and column

tput bold    #- tput bold: will make everything printed to the screen bold.

echo $@      #- print our message

tput sgr0    #- tput sgr0: will turn bold off (and any other changes we may have made).

tput cup $( tput lines ) 0     #- Place the prompt at the bottom of the screen.
