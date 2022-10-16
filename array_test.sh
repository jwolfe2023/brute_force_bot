#!/bin/bash

echo 'Bash Version:' ${BASH_VERSION}

x=0
t=0
y=0
index=''
lower=(a b c d e f g h i j k l m n o p q r s t u v w x y z)
upper=(ABCDEFGHIJKLMNOPQRSTUVWXYZ)
numbers=(1234567890)
bot=0
password='car'
counter=0
answer=''
final=''

while :
do
    if [ "$final" != $password ]; then
        until [ $x == ${password:$t:1} ]; do
            for x in ${lower[$y]}; do
                echo $x
                ((y++)); ((counter++))
                echo $counter
            done
        done
        final+=${x}
        ((h++))
        ((t++))
        y=0
        else
            break
    fi 
done

echo ''
echo $final $counter