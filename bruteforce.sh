#!/bin/bash

echo 'Bash Version' ${BASH_VERSION}

echo 'User:' $(WHOAMI)

trap '' 2

lower='abcdefghijklmnopqrstuvwxyz'
upper='ABCDEFGHIJKLMNOPQRSTUVWXYZ'
numbers='1234567890'
symbols='!@#$%^&*()_+'
bot=0
password=0
counter=0
answer=''

read -p 'Enter a password: ' password

while :
do

	echo 'Are you sure you wish to continue with this password (' $password ')'
	read -p '> ' answer

	if [ $answer == 'no' ]; then
		read -p 'Enter a new password: ' password
	else
		break
	fi

done

while :
do
	if [ $bot != $password ]; then
		((bot++)); ((counter++))
	else
		break
	fi

done

echo 'The bot found the password in' $counter 'Tries!'

trap 2

echo 'Test Complete'
