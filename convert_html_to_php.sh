#!/bin/bash

# Make a copy of any html files

for value in $1/*.html; do
    cp $value $1/$( basename -s .html $value ).php
done

#- basename: this command will get the file name itself. -s means the suffix, .html is the suffix value
