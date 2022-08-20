#!/bin/bash

#   if [ <some test> ]
#   then
#       <commands>
#   fi

if [ $1 -gt 100 ]
then
    echo Hey that\'s a large number
    pwd
fi

date


# You can cancel current command with ⌃ CTRL+c. You can clear command to the beginning with ⌃ CTRL+u. To clear line after the cursor press ⌃ CTRL+K.

# Test:
# The square brackets ([]) in the if statement above are actually a reference to the command "test". This means that all of the operators that test allows may be used
# here as well. 

# Look up the man page for test to see all of the possible operators (there are quite a few) but some of the more common ones are listed below:

# Operator            Description

# !expression         The expression is false

# -n STRING           The length of STRING is greater than 0

# -z STRING           The length of STRING is zero (ie it is empty)

# STRING1 = STRING2   STRING1 is equal to STRING2

# STRING1 != STRING2  STRING1 is not equal to STRING2

# INTEGER1 -eq INTEGER2   INTEGER1 is numerically equal to INTEGER2

# INTEGER1 -gt INTEGER2   INTEGER1 is numerically greater than INTEGER2

# INTEGER1 -lt INTEGER2   INTEGER1 is numerically less than INTEGER2

# -d FILE             FILE exists and is a directory

# -e FILE             FILE exists

# -s FILE             FILE exists and it's size is greater than 0 (ie. it's not empty)

# -r FILE             FILE exists and the read permission is granted

# -w FILE             FILE exists and the write permission is granted

# -x FILE             FILE exists and the execute permission is granted

