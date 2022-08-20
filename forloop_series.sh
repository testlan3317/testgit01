#!/bin/bash

# Ranges: we can also process a series of numbers

for value in {1..5}; do  #- it's important when specifying a range like this that there are no spaces present between the curly brackets{}.
    echo $value          #- If there are then it will not be seen as a range but a list  of items.
done

echo all done
