#!/bin/bash

# Most other programming languages have the concept of a return value for functions, a means for the function to send data back to the original calling location.

# Bash function don't allow us to do this. 

# They do however allow us to set a return status. Similar to how a program or command exists within an exit status which indicates whether it succeeded or not. 

# we use the keyword "return" to indicate a return status.

# Typically a return status of 0 indicates that everything went successfully. A non-zero value indicates an error occurred.

print_something(){
    print hello $1
    return 5
}

print_something Mars
print_something Jupiter

echo The previous function has a retuen value of $?
