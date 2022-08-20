#!/bin/bash

# Basic arithmetic using double parentheses
# $ (( expression ))


a=$(( 4 + 5 ))
echo $a      # 9

a=$((3+5))
echo $a      # 8

b=$(( $a +4 ))         # - we include $a inside
echo $b      #12

(( b++ ))
echo $b     # 13

a=$(( 4 * 5 ))
echo $a   # 20

