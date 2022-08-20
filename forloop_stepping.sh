#!/bin/bash

# Basic range with steps for loop

# It's also possible to specify a value to increase or descrease by each time. you do this by adding another two dots (..) and the value to step by.

for value in {10..0..2}; do  #- this syntax only support start from bash 4. my mac is bash 3.2.57, so it wouldn't support this syntax
    echo $value
done

echo all done
