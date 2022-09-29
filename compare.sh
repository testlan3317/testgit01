#!/bin/bash

string_a="UNIX"
string_b="GNU"

echo "Are $string_a and $string_b strings equal?"
[ $string_a == $string_b ]
echo $?

num_a=100
num_b=100

echo "Is $num_a equal to $num_b ?"
[ $num_a -eq $num_b ]
echo $?



: << 'END'
if [ condition ]

[ is another name for the traditional test command. [ / test is a standard POSIX utility. All POSIX shells have it builtin (though that's not required by POSIX²). The test command sets an exit code and the if statement acts accordingly. Typical tests are whether a file exists or one number is equal to another.

if [[ condition ]]

This is a new upgraded variation on test¹ from ksh that bash, zsh, yash, busybox sh also support. This [[ ... ]] construct also sets an exit code and the if statement acts accordingly. Among its extended features, it can test whether a string matches a wildcard pattern (not in busybox sh).

if ((condition))

Another ksh extension that bash and zsh also support. This performs arithmetic. As the result of the arithmetic, an exit code is set and the if statement acts accordingly. It returns an exit code of zero (true) if the result of the arithmetic calculation is nonzero. Like [[...]], this form is not POSIX and therefore not portable.

if (command)

This runs command in a subshell. When command completes, it sets an exit code and the if statement acts accordingly.
END