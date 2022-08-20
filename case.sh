#!/bin/bash

# case statement syntax

# case <variable> in
#   <pattern1>)
#       <commands>
#       ;;
#   <pattern2>)
#       <commands>
#       ;;
# esac

case $1 in
    start)
        echo starting
        ;;
    stop)
        echo stopping
        ;;
    restart)
        echo restarting
        ;;
    *)     #- The * represents any number of any character. It's essentially a catch all if none of other match. It's not necessary but is often used.
        echo don\'t know
        ;;
esac
