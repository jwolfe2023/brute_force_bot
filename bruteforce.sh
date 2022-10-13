#!/bin/bash

echo 'Bash Version' ${BASH_VERSION}

echo 'User:' $(WHOAMI)

# trap '' 2

t=0
y=0
index=''
lower=(abcdefghijklmnopqrstuvwxyz)
upper=(ABCDEFGHIJKLMNOPQRSTUVWXYZ)
numbers=(1234567890)
symbols=(!@#$%^&*()_+;)
bot=0
password=0
counter=0
answer=''
final=''

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
		if [ $counter != 300 ]; then
			((bot++)); ((counter++))
			echo $counter
		else
			echo 'Bot Timed out!'
			break
		fi
	else
		echo 'The bot found the password in' $counter 'Tries!'
		break
	fi

done

while :
do
	until [ $x == $password[$t] ]; then
	for x in ${lower[$y]}; do
	if [ x == $password{$t} ]; then
		final='{$final} ${x}'
	else
		((y++))
	fi
	
done

# trap 2

echo 'Test Complete'
