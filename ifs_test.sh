#!/bin/zsh

# note: Unlike Bash, zsh doesn't split strings by default. Therefore, we have to set shell option shwordsplit first.
setopt shwordsplit
IFS=:
#text="one:two:three"
for word in "one:two:three" 
do
   echo $word
   #printf "word: %s\n" $word
done
echo

# note: 
# $IFS is only used for word splitting after unquoted expansions
# so if the program is like
# setopt shwordsplit
# IFS=:
# for word in "one:two:three"
# do
#     echo $word
# done
# the program will output: one two three. 
# Because it is not unquoted expansion. and by default echo outputs its arguments separated by spaces

# if use the below, it will work, because $text is unquoted expansions
# setopt shwordsplit
# IFS=:
# text="one:two:three"
# for word in $text
# do
#     echo $word
# done

# however, from experiment, it doesn't look like printf will be affected by the unquoted expansion. the below still works
# setopt shwordsplit
# IFS=:
# for word in "one:two:three"
# do
#     printf "word %s\n" $word
# done

# As we've observed, Bash performs string splitting and filename expansion(globbing) by default. in Zsh, we can enable both features using shell options.
# splitting('setopt shwordsplit') , globbing('setopt globsubst')

# we have more straightforward possibilities with special syntax for zsh
# $=varialbe can perform word splitting
# % letters="a b c d";for letter ($=letters); do echo $letters; done
# a
# b
# c
# d

# with $~variable, we ask for globbing:
# % pattern=*; for file ($~pattern); do echo $file; done
# array1.zsh
# array.zsh
# glob.zsh
# string_split
# string_split.zsh

# finally, we can use $~=variable to perform both. 
# % pattern="* *"; for file ($=~pattern); do echo $file; done
# array1.zsh
# array.zsh
# glob.zsh
# string_split
# string_split.zsh
# array1.zsh
# array.zsh
# glob.zsh
# string_split
# string_split.zsh
