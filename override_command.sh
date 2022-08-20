#!/bin/bash

# It is possible to name a function as the same name as a command you would normally use on the command line. This allows us to create a wrapper. 
# e.g. maybe every time we call the command ls in our script, what we actually want is ls -lh. we could do the following


ls (){
    command ls -lh   #- run the command with that name as opposed to the function with the same name.   syntax "command <command>"
}

ls
