#!/bin/bash

t=0
y=0
index=''
lower=(a b c d e f g h i j k l m n o p q r s t u v w x y z)
upper=(ABCDEFGHIJKLMNOPQRSTUVWXYZ)
numbers=(1234567890)
bot=0
password='o'
counter=0
answer=''
final=''

while :
do
    if [ $final != $password ]; then
        until [ $x == ${password[$t]} ]; do
            for x in ${lower[$y]}; do
                echo $x
                ((y++))
            done
        done
        final+=${x}
    else
        break
    fi
done

echo ''
echo $final