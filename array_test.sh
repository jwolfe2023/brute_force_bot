#!/bin/bash

x=0
t=0
y=0
index=''
lower=(a b c d e f g h i j k l m n o p q r s t u v w x y z)
upper=(A B C D E F G H I J K L M N O P Q R S T U V W X Y Z)
numbers=(1 2 3 4 5 6 7 8 9 0)
symbols=('!' '@' '#' '$' '%' '^' '&' '_' '+')
bot=0
password='A'
counter=0
answer=''
final=''

read -p '' password

while :
do
    if [ "$final" != $password ]; then
        if [[ ${password:$t:1} =~ [a-z] ]]; then
            until [ $x == ${password:$t:1} ]; do
                for x in ${lower[$y]}; do
                    ((y++)); ((counter++))
                done
            done
        elif [[ ${password:$t:1} =~ [A-Z] ]]; then
            until [ $x == ${password:$t:1} ]; do
                for x in ${upper[$y]}; do
                    ((y++)); ((counter++))
                done
            done
        elif [[ ${password:$t:1} =~ [0-9] ]]; then
            until [ $x == ${password:$t:1} ]; do
                for x in ${numbers[$y]}; do
                    ((y++)); ((counter++))
                done
            done
        elif [[ ${password:$t:1} =~ ['!@#$%^&_+'] ]]; then
            until [ $x == ${password:$t:1} ]; do
                for x in ${symbols[$y]}; do
                    ((y++)); ((counter++))
                done
            done
        else
            continue
        fi
        final+=${x}
        ((h++))
        ((t++))
        y=0
    else
       break
    fi 
done

echo ''
echo $final 'took' $counter 'tries'