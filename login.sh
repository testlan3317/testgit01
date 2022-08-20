#!/bin/bash
# Ask the user for login details

read -p 'Username: ' uservar
read -sp 'Password: ' passvar
echo
echo Thank you $uservar we now have your login details


# -p: allows you to specify a prompt
# -s: makes the input silent. (not showing up)
